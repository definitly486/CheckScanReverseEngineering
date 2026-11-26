package androidx.media3.exoplayer;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.bs4;
import defpackage.ea;
import defpackage.en3;
import defpackage.go1;
import defpackage.jn2;
import defpackage.kk2;
import defpackage.nr7;
import defpackage.o8;
import defpackage.xm3;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class MetadataRetrieverInternal implements AutoCloseable {
    private final Clock clock;
    private final MediaItem mediaItem;
    private final MediaSource.Factory mediaSourceFactory;
    private nr7<InternalResult> preparationFuture;
    private boolean released;
    private RetrievalTask retrievalTask;
    private final Object lock = new Object();
    private final List<ListenableFuture<?>> allFutures = new ArrayList();

    public static final class InternalResult {
        public final Timeline timeline;
        public final TrackGroupArray trackGroups;

        public InternalResult(TrackGroupArray trackGroupArray, Timeline timeline) {
            this.trackGroups = trackGroupArray;
            this.timeline = timeline;
        }
    }

    public static final class RetrievalTask {
        private static final int MESSAGE_CHECK_FOR_FAILURE = 2;
        private static final int MESSAGE_CONTINUE_LOADING = 3;
        private static final int MESSAGE_PREPARE_SOURCE = 1;
        private static final int MESSAGE_RELEASE = 4;
        private static final SharedWorkerThread SHARED_WORKER_THREAD = new SharedWorkerThread();
        private final MediaItem mediaItem;
        private final MediaSource.Factory mediaSourceFactory;
        private final HandlerWrapper mediaSourceHandler;
        private final OnFailureListener onFailureListener;
        private final OnPreparedListener onPreparedListener;
        private boolean sentReleaseMessage;

        public final class MediaSourceHandlerCallback implements Handler.Callback {
            private static final int ERROR_POLL_INTERVAL_MS = 100;
            private MediaPeriod mediaPeriod;
            private MediaSource mediaSource;
            private final MediaSourceCaller mediaSourceCaller = new MediaSourceCaller();
            private boolean released;
            private Timeline timeline;

            public final class MediaSourceCaller implements MediaSource.MediaSourceCaller {
                private boolean mediaPeriodCreated;
                private final MediaPeriodCallback mediaPeriodCallback = new MediaPeriodCallback();
                private final Allocator allocator = new DefaultAllocator(true, 65536);

                public final class MediaPeriodCallback implements MediaPeriod.Callback {
                    private MediaPeriodCallback() {
                    }

                    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
                    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
                        RetrievalTask.this.mediaSourceHandler.obtainMessage(3).sendToTarget();
                    }

                    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
                    public void onPrepared(MediaPeriod mediaPeriod) {
                        OnPreparedListener onPreparedListener = RetrievalTask.this.onPreparedListener;
                        TrackGroupArray trackGroups = mediaPeriod.getTrackGroups();
                        Timeline timeline = MediaSourceHandlerCallback.this.timeline;
                        timeline.getClass();
                        onPreparedListener.onPrepared(trackGroups, timeline);
                        RetrievalTask.this.release();
                    }
                }

                public MediaSourceCaller() {
                }

                @Override // androidx.media3.exoplayer.source.MediaSource.MediaSourceCaller
                public void onSourceInfoRefreshed(MediaSource mediaSource, Timeline timeline) {
                    MediaSourceHandlerCallback.this.timeline = timeline;
                    if (this.mediaPeriodCreated) {
                        return;
                    }
                    this.mediaPeriodCreated = true;
                    MediaSourceHandlerCallback.this.mediaPeriod = mediaSource.createPeriod(new MediaSource.MediaPeriodId(timeline.getUidOfPeriod(0)), this.allocator, 0L);
                    MediaSourceHandlerCallback.this.mediaPeriod.prepare(this.mediaPeriodCallback, 0L);
                }
            }

            public MediaSourceHandlerCallback() {
            }

            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (this.released) {
                    return true;
                }
                int i = message.what;
                if (i == 1) {
                    MediaSource mediaSourceCreateMediaSource = RetrievalTask.this.mediaSourceFactory.createMediaSource((MediaItem) message.obj);
                    this.mediaSource = mediaSourceCreateMediaSource;
                    mediaSourceCreateMediaSource.prepareSource(this.mediaSourceCaller, null, PlayerId.UNSET);
                    RetrievalTask.this.mediaSourceHandler.sendEmptyMessage(2);
                    return true;
                }
                if (i == 2) {
                    try {
                        MediaPeriod mediaPeriod = this.mediaPeriod;
                        if (mediaPeriod == null) {
                            MediaSource mediaSource = this.mediaSource;
                            mediaSource.getClass();
                            mediaSource.maybeThrowSourceInfoRefreshError();
                        } else {
                            mediaPeriod.maybeThrowPrepareError();
                        }
                        RetrievalTask.this.mediaSourceHandler.sendEmptyMessageDelayed(2, 100);
                        return true;
                    } catch (IOException e) {
                        RetrievalTask.this.onFailureListener.onFailure(e);
                        RetrievalTask.this.release();
                        return true;
                    }
                }
                if (i == 3) {
                    MediaPeriod mediaPeriod2 = this.mediaPeriod;
                    mediaPeriod2.getClass();
                    mediaPeriod2.continueLoading(new LoadingInfo.Builder().setPlaybackPositionUs(0L).build());
                    return true;
                }
                if (i != 4) {
                    return false;
                }
                if (this.mediaPeriod != null) {
                    MediaSource mediaSource2 = this.mediaSource;
                    mediaSource2.getClass();
                    mediaSource2.releasePeriod(this.mediaPeriod);
                }
                MediaSource mediaSource3 = this.mediaSource;
                if (mediaSource3 != null) {
                    mediaSource3.releaseSource(this.mediaSourceCaller);
                }
                RetrievalTask.this.mediaSourceHandler.removeCallbacksAndMessages(null);
                RetrievalTask.SHARED_WORKER_THREAD.removeWorker();
                this.released = true;
                return true;
            }
        }

        public interface OnFailureListener {
            void onFailure(Exception exc);
        }

        public interface OnPreparedListener {
            void onPrepared(TrackGroupArray trackGroupArray, Timeline timeline);
        }

        public RetrievalTask(MediaSource.Factory factory, MediaItem mediaItem, Clock clock, OnPreparedListener onPreparedListener, OnFailureListener onFailureListener) {
            this.mediaSourceFactory = factory;
            this.mediaItem = mediaItem;
            this.onPreparedListener = onPreparedListener;
            this.onFailureListener = onFailureListener;
            this.mediaSourceHandler = clock.createHandler(SHARED_WORKER_THREAD.addWorker(), new MediaSourceHandlerCallback());
        }

        public void queueRetrieval() {
            SHARED_WORKER_THREAD.startRetrieval(this);
        }

        public synchronized void release() {
            if (!this.sentReleaseMessage) {
                this.sentReleaseMessage = true;
                this.mediaSourceHandler.obtainMessage(4).sendToTarget();
            }
        }

        public void start() {
            this.mediaSourceHandler.obtainMessage(1, this.mediaItem).sendToTarget();
        }
    }

    public static final class SharedWorkerThread {
        public static final AtomicInteger MAX_PARALLEL_RETRIEVALS = new AtomicInteger(5);
        private HandlerThread mediaSourceThread;
        private final Deque<RetrievalTask> pendingRetrievals;
        private int referenceCount;

        private SharedWorkerThread() {
            this.pendingRetrievals = new ArrayDeque();
        }

        private void maybeStartNewRetrieval() {
            if (!this.pendingRetrievals.isEmpty() && this.referenceCount - this.pendingRetrievals.size() < MAX_PARALLEL_RETRIEVALS.get()) {
                this.pendingRetrievals.removeFirst().start();
            }
        }

        public synchronized Looper addWorker() {
            HandlerThread handlerThread;
            try {
                if (this.mediaSourceThread == null) {
                    o8.r(this.referenceCount == 0);
                    HandlerThread handlerThread2 = new HandlerThread("ExoPlayer:MetadataRetriever");
                    this.mediaSourceThread = handlerThread2;
                    handlerThread2.start();
                }
                this.referenceCount++;
                handlerThread = this.mediaSourceThread;
                handlerThread.getClass();
            } catch (Throwable th) {
                throw th;
            }
            return handlerThread.getLooper();
        }

        public synchronized void removeWorker() {
            try {
                int i = this.referenceCount - 1;
                this.referenceCount = i;
                if (i == 0) {
                    HandlerThread handlerThread = this.mediaSourceThread;
                    handlerThread.getClass();
                    handlerThread.quit();
                    this.mediaSourceThread = null;
                    this.pendingRetrievals.clear();
                } else {
                    maybeStartNewRetrieval();
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        public synchronized void startRetrieval(RetrievalTask retrievalTask) {
            this.pendingRetrievals.addLast(retrievalTask);
            maybeStartNewRetrieval();
        }
    }

    public MetadataRetrieverInternal(MediaItem mediaItem, MediaSource.Factory factory, Clock clock) {
        this.mediaItem = mediaItem;
        this.mediaSourceFactory = factory;
        this.clock = clock;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$close$0() {
        synchronized (this.lock) {
            try {
                RetrievalTask retrievalTask = this.retrievalTask;
                if (retrievalTask != null) {
                    retrievalTask.release();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$startPreparation$1(TrackGroupArray trackGroupArray, Timeline timeline) {
        synchronized (this.lock) {
            nr7<InternalResult> nr7Var = this.preparationFuture;
            nr7Var.getClass();
            nr7Var.l(new InternalResult(trackGroupArray, timeline));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$startPreparation$2(Exception exc) {
        synchronized (this.lock) {
            nr7<InternalResult> nr7Var = this.preparationFuture;
            nr7Var.getClass();
            nr7Var.m(exc);
        }
    }

    private void startPreparation() {
        if (this.preparationFuture == null) {
            this.preparationFuture = new nr7<>();
            RetrievalTask retrievalTask = new RetrievalTask(this.mediaSourceFactory, this.mediaItem, this.clock, new ea(this), new kk2(this));
            this.retrievalTask = retrievalTask;
            retrievalTask.queueRetrieval();
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.lock) {
            try {
                if (this.released) {
                    return;
                }
                this.released = true;
                com.google.common.collect.j jVarN = com.google.common.collect.j.n(this.allFutures);
                bs4 bs4Var = new bs4(this, 1);
                jn2 jn2Var = jn2.INSTANCE;
                Callable<Object> callable = Executors.callable(bs4Var);
                go1 go1Var = new go1(jVarN, false);
                go1Var.p = new go1.b(callable, jn2Var);
                go1Var.s();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public ListenableFuture<Long> retrieveDurationUs() {
        synchronized (this.lock) {
            try {
                if (this.released) {
                    return en3.W(new IllegalStateException("Retriever is released."));
                }
                ListenableFuture<Timeline> listenableFutureRetrieveTimeline = retrieveTimeline();
                final nr7 nr7Var = new nr7();
                this.allFutures.add(nr7Var);
                xm3<Timeline> xm3Var = new xm3<Timeline>() { // from class: androidx.media3.exoplayer.MetadataRetrieverInternal.3
                    @Override // defpackage.xm3
                    public void onFailure(Throwable th) {
                        nr7Var.m(th);
                    }

                    @Override // defpackage.xm3
                    public void onSuccess(Timeline timeline) {
                        boolean zIsEmpty = timeline.isEmpty();
                        nr7 nr7Var2 = nr7Var;
                        if (zIsEmpty) {
                            nr7Var2.l(Long.valueOf(C.TIME_UNSET));
                        } else {
                            nr7Var2.l(Long.valueOf(timeline.getWindow(0, new Timeline.Window()).getDurationUs()));
                        }
                    }
                };
                listenableFutureRetrieveTimeline.addListener(new en3.a(listenableFutureRetrieveTimeline, xm3Var), jn2.INSTANCE);
                return nr7Var;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public ListenableFuture<Timeline> retrieveTimeline() {
        synchronized (this.lock) {
            try {
                if (this.released) {
                    return en3.W(new IllegalStateException("Retriever is released."));
                }
                startPreparation();
                final nr7 nr7Var = new nr7();
                this.allFutures.add(nr7Var);
                nr7<InternalResult> nr7Var2 = this.preparationFuture;
                nr7Var2.getClass();
                xm3<InternalResult> xm3Var = new xm3<InternalResult>() { // from class: androidx.media3.exoplayer.MetadataRetrieverInternal.2
                    @Override // defpackage.xm3
                    public void onFailure(Throwable th) {
                        nr7Var.m(th);
                    }

                    @Override // defpackage.xm3
                    public void onSuccess(InternalResult internalResult) {
                        nr7Var.l(internalResult.timeline);
                    }
                };
                nr7Var2.addListener(new en3.a(nr7Var2, xm3Var), jn2.INSTANCE);
                return nr7Var;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public ListenableFuture<TrackGroupArray> retrieveTrackGroups() {
        synchronized (this.lock) {
            try {
                if (this.released) {
                    return en3.W(new IllegalStateException("Retriever is released."));
                }
                startPreparation();
                final nr7 nr7Var = new nr7();
                this.allFutures.add(nr7Var);
                nr7<InternalResult> nr7Var2 = this.preparationFuture;
                nr7Var2.getClass();
                xm3<InternalResult> xm3Var = new xm3<InternalResult>() { // from class: androidx.media3.exoplayer.MetadataRetrieverInternal.1
                    @Override // defpackage.xm3
                    public void onFailure(Throwable th) {
                        nr7Var.m(th);
                    }

                    @Override // defpackage.xm3
                    public void onSuccess(InternalResult internalResult) {
                        nr7Var.l(internalResult.trackGroups);
                    }
                };
                nr7Var2.addListener(new en3.a(nr7Var2, xm3Var), jn2.INSTANCE);
                return nr7Var;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
