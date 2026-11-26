package androidx.media3.exoplayer.source.preload;

import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import defpackage.ah;
import defpackage.bf6;
import defpackage.kd8;
import defpackage.o8;
import defpackage.p5;
import defpackage.qd0;
import defpackage.rd0;
import defpackage.ud0;
import defpackage.vd0;
import defpackage.yu;
import defpackage.zu;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BasePreloadManager<T, PreloadStatusT> {
    private final Handler applicationHandler;
    private int indexForSourceHolderToClear;
    private int indexForSourceHolderToPreload;
    private final ListenerSet<PreloadManagerListener> listeners;
    private final Object lock = new Object();
    private final MediaSource.Factory mediaSourceFactory;
    private final BasePreloadManager<T, PreloadStatusT>.MediaSourceHolderMap mediaSourceHolderMap;
    protected final RankingDataComparator<T> rankingDataComparator;
    private final List<BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder> sourceHolderPriorityList;
    private final TargetPreloadStatusControl<T, PreloadStatusT> targetPreloadStatusControl;
    private PreloadStatusT targetPreloadStatusOfCurrentPreloadingSource;

    public static abstract class BuilderBase<T, PreloadStatusT> {
        protected kd8<MediaSource.Factory> mediaSourceFactorySupplier;
        protected RankingDataComparator<T> rankingDataComparator;
        protected final TargetPreloadStatusControl<T, PreloadStatusT> targetPreloadStatusControl;

        public BuilderBase(RankingDataComparator<T> rankingDataComparator, TargetPreloadStatusControl<T, PreloadStatusT> targetPreloadStatusControl, kd8<MediaSource.Factory> kd8Var) {
            this.rankingDataComparator = rankingDataComparator;
            this.targetPreloadStatusControl = targetPreloadStatusControl;
            this.mediaSourceFactorySupplier = kd8Var;
        }

        public abstract BasePreloadManager<T, PreloadStatusT> build();
    }

    public class MediaSourceHolder implements Comparable<BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder> {
        public final MediaItem mediaItem;
        private MediaSource mediaSource;
        public final T rankingData;
        private boolean released;

        public MediaSourceHolder(MediaItem mediaItem, T t, MediaSource mediaSource) {
            this.mediaItem = mediaItem;
            this.rankingData = t;
            this.mediaSource = mediaSource;
        }

        @Override // java.lang.Comparable
        public int compareTo(BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder) {
            return BasePreloadManager.this.rankingDataComparator.compare(this.rankingData, mediaSourceHolder.rankingData);
        }

        public synchronized MediaSource getMediaSource() {
            return this.mediaSource;
        }

        public final boolean isReleased() {
            return this.released;
        }

        public final void release() {
            this.released = true;
        }

        public synchronized void setMediaSource(MediaSource mediaSource) {
            this.mediaSource = mediaSource;
        }
    }

    public BasePreloadManager(RankingDataComparator<T> rankingDataComparator, TargetPreloadStatusControl<T, PreloadStatusT> targetPreloadStatusControl, MediaSource.Factory factory) {
        Handler handlerCreateHandlerForCurrentOrMainLooper = Util.createHandlerForCurrentOrMainLooper();
        this.applicationHandler = handlerCreateHandlerForCurrentOrMainLooper;
        this.rankingDataComparator = rankingDataComparator;
        this.targetPreloadStatusControl = targetPreloadStatusControl;
        this.mediaSourceFactory = factory;
        this.listeners = new ListenerSet<>(handlerCreateHandlerForCurrentOrMainLooper.getLooper());
        this.mediaSourceHolderMap = new MediaSourceHolderMap();
        rankingDataComparator.setInvalidationListener(new rd0(this));
        this.sourceHolderPriorityList = new ArrayList();
    }

    private BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder getCurrentlyPreloadingMediaSourceHolder() {
        if (this.indexForSourceHolderToPreload >= this.sourceHolderPriorityList.size()) {
            return null;
        }
        return this.sourceHolderPriorityList.get(this.indexForSourceHolderToPreload);
    }

    private boolean isCurrentlyPreloading(BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder) {
        boolean z;
        synchronized (this.lock) {
            z = mediaSourceHolder == getCurrentlyPreloadingMediaSourceHolder();
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onCompleted$0(MediaSourceHolder mediaSourceHolder, PreloadManagerListener preloadManagerListener) {
        preloadManagerListener.onCompleted(mediaSourceHolder.mediaItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$onCompleted$1(MediaSource mediaSource, bf6 bf6Var) {
        PreloadStatusT targetPreloadStatusIfCurrentlyPreloading = getTargetPreloadStatusIfCurrentlyPreloading(mediaSource);
        if (targetPreloadStatusIfCurrentlyPreloading == null) {
            return;
        }
        BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder = this.mediaSourceHolderMap.get(mediaSource);
        mediaSourceHolder.getClass();
        if (bf6Var.apply(targetPreloadStatusIfCurrentlyPreloading)) {
            this.listeners.sendEvent(new ud0(mediaSourceHolder));
            maybeAdvanceToNextMediaSourceHolder();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onCompleted$2(MediaSourceHolder mediaSourceHolder, PreloadManagerListener preloadManagerListener) {
        preloadManagerListener.onCompleted(mediaSourceHolder.mediaItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$onCompleted$3(MediaItem mediaItem, bf6 bf6Var) {
        PreloadStatusT targetPreloadStatusIfCurrentlyPreloading = getTargetPreloadStatusIfCurrentlyPreloading(mediaItem);
        if (targetPreloadStatusIfCurrentlyPreloading == null) {
            return;
        }
        BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder = this.mediaSourceHolderMap.get(mediaItem);
        mediaSourceHolder.getClass();
        if (bf6Var.apply(targetPreloadStatusIfCurrentlyPreloading)) {
            this.listeners.sendEvent(new vd0(mediaSourceHolder, 0));
            maybeAdvanceToNextMediaSourceHolder();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onError$5(MediaSource mediaSource, bf6 bf6Var, PreloadException preloadException) {
        PreloadStatusT targetPreloadStatusIfCurrentlyPreloading = getTargetPreloadStatusIfCurrentlyPreloading(mediaSource);
        if (targetPreloadStatusIfCurrentlyPreloading != null && bf6Var.apply(targetPreloadStatusIfCurrentlyPreloading)) {
            this.listeners.sendEvent(new zu(preloadException));
            maybeAdvanceToNextMediaSourceHolder();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onError$7(MediaItem mediaItem, bf6 bf6Var, PreloadException preloadException) {
        PreloadStatusT targetPreloadStatusIfCurrentlyPreloading = getTargetPreloadStatusIfCurrentlyPreloading(mediaItem);
        if (targetPreloadStatusIfCurrentlyPreloading != null && bf6Var.apply(targetPreloadStatusIfCurrentlyPreloading)) {
            this.listeners.sendEvent(new p5(preloadException, 1));
            maybeAdvanceToNextMediaSourceHolder();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$onMediaSourceUpdated$9(MediaItem mediaItem, MediaSource mediaSource) {
        if (getTargetPreloadStatusIfCurrentlyPreloading(mediaItem) == null) {
            return;
        }
        BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder = this.mediaSourceHolderMap.get(mediaItem);
        mediaSourceHolder.getClass();
        this.mediaSourceHolderMap.remove(mediaItem);
        mediaSourceHolder.setMediaSource(mediaSource);
        this.mediaSourceHolderMap.put(mediaItem, mediaSource, mediaSourceHolder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSkipped$8(MediaSource mediaSource, bf6 bf6Var) {
        PreloadStatusT targetPreloadStatusIfCurrentlyPreloading = getTargetPreloadStatusIfCurrentlyPreloading(mediaSource);
        if (targetPreloadStatusIfCurrentlyPreloading != null && bf6Var.apply(targetPreloadStatusIfCurrentlyPreloading)) {
            maybeAdvanceToNextMediaSourceHolder();
        }
    }

    private void maybeAdvanceToNextMediaSourceHolder() {
        synchronized (this.lock) {
            do {
                try {
                    int i = this.indexForSourceHolderToPreload + 1;
                    this.indexForSourceHolderToPreload = i;
                    if (i >= this.sourceHolderPriorityList.size()) {
                        break;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } while (!maybeStartPreloadingNextSourceHolder());
        }
    }

    private boolean maybeStartPreloadingNextSourceHolder() {
        if (!shouldStartPreloadingNextSource()) {
            return false;
        }
        BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder = this.sourceHolderPriorityList.get(this.indexForSourceHolderToPreload);
        if (mediaSourceHolder.isReleased()) {
            return false;
        }
        PreloadStatusT targetPreloadStatus = this.targetPreloadStatusControl.getTargetPreloadStatus(mediaSourceHolder.rankingData);
        this.targetPreloadStatusOfCurrentPreloadingSource = targetPreloadStatus;
        preloadMediaSourceHolderInternal(mediaSourceHolder, targetPreloadStatus);
        return true;
    }

    private void resetSourceHolderPriorityList() {
        this.sourceHolderPriorityList.clear();
        this.sourceHolderPriorityList.addAll(this.mediaSourceHolderMap.values());
        Collections.sort(this.sourceHolderPriorityList);
        this.indexForSourceHolderToPreload = 0;
        this.indexForSourceHolderToClear = this.sourceHolderPriorityList.size() - 1;
    }

    private void verifyApplicationThread() {
        if (Looper.myLooper() == this.applicationHandler.getLooper()) {
            return;
        }
        ah.f("Preload manager is accessed on the wrong thread.");
    }

    public final void add(MediaSource mediaSource, T t) {
        BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolderCreateMediaSourceHolder = createMediaSourceHolder(mediaSource.getMediaItem(), mediaSource, t);
        this.mediaSourceHolderMap.put(mediaSourceHolderCreateMediaSourceHolder.mediaItem, mediaSourceHolderCreateMediaSourceHolder.getMediaSource(), mediaSourceHolderCreateMediaSourceHolder);
    }

    public void addListener(PreloadManagerListener preloadManagerListener) {
        this.listeners.add(preloadManagerListener);
    }

    public final void addMediaItems(List<MediaItem> list, List<T> list2) {
        o8.e(list.size() == list2.size());
        for (int i = 0; i < list.size(); i++) {
            add(list.get(i), list2.get(i));
        }
        invalidate();
    }

    public final void addMediaSources(List<MediaSource> list, List<T> list2) {
        o8.e(list.size() == list2.size());
        for (int i = 0; i < list.size(); i++) {
            add(list.get(i), list2.get(i));
        }
        invalidate();
    }

    public void clearListeners() {
        verifyApplicationThread();
        this.listeners.clear();
    }

    public abstract BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder createMediaSourceHolder(MediaItem mediaItem, MediaSource mediaSource, T t);

    public final MediaSource getMediaSource(MediaItem mediaItem) {
        if (!this.mediaSourceHolderMap.containsKey(mediaItem)) {
            return null;
        }
        BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder = this.mediaSourceHolderMap.get(mediaItem);
        mediaSourceHolder.getClass();
        return mediaSourceHolder.getMediaSource();
    }

    public BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder getMediaSourceHolderToClear() {
        synchronized (this.lock) {
            try {
                int i = this.indexForSourceHolderToPreload;
                int i2 = this.indexForSourceHolderToClear;
                if (i >= i2) {
                    return null;
                }
                return this.sourceHolderPriorityList.get(i2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int getSourceCount() {
        return this.mediaSourceHolderMap.size();
    }

    public final PreloadStatusT getTargetPreloadStatusIfCurrentlyPreloading(MediaItem mediaItem) {
        synchronized (this.lock) {
            try {
                BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder currentlyPreloadingMediaSourceHolder = getCurrentlyPreloadingMediaSourceHolder();
                if (currentlyPreloadingMediaSourceHolder != null && mediaItem.equals(currentlyPreloadingMediaSourceHolder.mediaItem)) {
                    return this.targetPreloadStatusOfCurrentPreloadingSource;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void invalidate() {
        synchronized (this.lock) {
            try {
                resetSourceHolderPriorityList();
                while (this.indexForSourceHolderToPreload < this.sourceHolderPriorityList.size() && !maybeStartPreloadingNextSourceHolder()) {
                    this.indexForSourceHolderToPreload++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void onCompleted(MediaSource mediaSource, bf6<PreloadStatusT> bf6Var) {
        this.applicationHandler.post(new yu(this, mediaSource, bf6Var, 1));
    }

    public final void onError(final PreloadException preloadException, final MediaSource mediaSource, final bf6<PreloadStatusT> bf6Var) {
        this.applicationHandler.post(new Runnable() { // from class: wd0
            @Override // java.lang.Runnable
            public final void run() {
                this.b.lambda$onError$5(mediaSource, bf6Var, preloadException);
            }
        });
    }

    public final void onMediaSourceUpdated(final MediaItem mediaItem, final MediaSource mediaSource) {
        Util.postOrRun(this.applicationHandler, new Runnable() { // from class: td0
            @Override // java.lang.Runnable
            public final void run() {
                this.b.lambda$onMediaSourceUpdated$9(mediaItem, mediaSource);
            }
        });
    }

    public final void onSkipped(MediaSource mediaSource, bf6<PreloadStatusT> bf6Var) {
        Util.postOrRun(this.applicationHandler, new qd0(this, mediaSource, bf6Var, 0));
    }

    public final void onSourceCleared() {
        synchronized (this.lock) {
            this.indexForSourceHolderToClear--;
        }
    }

    public abstract void preloadMediaSourceHolderInternal(BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder, PreloadStatusT preloadstatust);

    public final void release() {
        reset();
        releaseInternal();
        clearListeners();
    }

    public void releaseInternal() {
    }

    public void releaseMediaSourceHolderInternal(BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder) {
        mediaSourceHolder.release();
    }

    public final boolean remove(MediaItem mediaItem) {
        BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder = this.mediaSourceHolderMap.get(mediaItem);
        if (mediaSourceHolder == null) {
            return false;
        }
        releaseMediaSourceHolderInternal(mediaSourceHolder);
        this.mediaSourceHolderMap.remove(mediaItem);
        if (!isCurrentlyPreloading(mediaSourceHolder)) {
            return true;
        }
        maybeAdvanceToNextMediaSourceHolder();
        return true;
    }

    public void removeListener(PreloadManagerListener preloadManagerListener) {
        verifyApplicationThread();
        this.listeners.remove(preloadManagerListener);
    }

    public final void removeMediaItems(List<MediaItem> list) {
        BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder currentlyPreloadingMediaSourceHolder;
        for (MediaItem mediaItem : list) {
            BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder = this.mediaSourceHolderMap.get(mediaItem);
            if (mediaSourceHolder != null) {
                releaseMediaSourceHolderInternal(mediaSourceHolder);
                this.mediaSourceHolderMap.remove(mediaItem);
            }
        }
        synchronized (this.lock) {
            currentlyPreloadingMediaSourceHolder = getCurrentlyPreloadingMediaSourceHolder();
        }
        if (currentlyPreloadingMediaSourceHolder == null || !currentlyPreloadingMediaSourceHolder.isReleased()) {
            return;
        }
        maybeAdvanceToNextMediaSourceHolder();
    }

    public final void removeMediaSources(List<MediaSource> list) {
        BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder currentlyPreloadingMediaSourceHolder;
        for (MediaSource mediaSource : list) {
            BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder = this.mediaSourceHolderMap.get(mediaSource);
            if (mediaSourceHolder != null) {
                releaseMediaSourceHolderInternal(mediaSourceHolder);
                this.mediaSourceHolderMap.remove(mediaSource);
            }
        }
        synchronized (this.lock) {
            currentlyPreloadingMediaSourceHolder = getCurrentlyPreloadingMediaSourceHolder();
        }
        if (currentlyPreloadingMediaSourceHolder == null || !currentlyPreloadingMediaSourceHolder.isReleased()) {
            return;
        }
        maybeAdvanceToNextMediaSourceHolder();
    }

    public final void reset() {
        Iterator<BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder> it = this.mediaSourceHolderMap.values().iterator();
        while (it.hasNext()) {
            releaseMediaSourceHolderInternal(it.next());
        }
        this.mediaSourceHolderMap.clear();
        synchronized (this.lock) {
            resetSourceHolderPriorityList();
            this.targetPreloadStatusOfCurrentPreloadingSource = null;
        }
    }

    public boolean shouldStartPreloadingNextSource() {
        return true;
    }

    public final void onError(final PreloadException preloadException, final MediaItem mediaItem, final bf6<PreloadStatusT> bf6Var) {
        this.applicationHandler.post(new Runnable() { // from class: sd0
            @Override // java.lang.Runnable
            public final void run() {
                this.b.lambda$onError$7(mediaItem, bf6Var, preloadException);
            }
        });
    }

    public final void onCompleted(final MediaItem mediaItem, final bf6<PreloadStatusT> bf6Var) {
        this.applicationHandler.post(new Runnable() { // from class: xd0
            @Override // java.lang.Runnable
            public final void run() {
                this.b.lambda$onCompleted$3(mediaItem, bf6Var);
            }
        });
    }

    public final void add(MediaItem mediaItem, T t) {
        add(this.mediaSourceFactory.createMediaSource(mediaItem), t);
    }

    public final PreloadStatusT getTargetPreloadStatusIfCurrentlyPreloading(MediaSource mediaSource) {
        synchronized (this.lock) {
            try {
                BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder currentlyPreloadingMediaSourceHolder = getCurrentlyPreloadingMediaSourceHolder();
                if (currentlyPreloadingMediaSourceHolder != null && mediaSource == currentlyPreloadingMediaSourceHolder.getMediaSource()) {
                    return this.targetPreloadStatusOfCurrentPreloadingSource;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean remove(MediaSource mediaSource) {
        BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder = this.mediaSourceHolderMap.get(mediaSource);
        if (mediaSourceHolder == null) {
            return false;
        }
        releaseMediaSourceHolderInternal(mediaSourceHolder);
        this.mediaSourceHolderMap.remove(mediaSource);
        if (!isCurrentlyPreloading(mediaSourceHolder)) {
            return true;
        }
        maybeAdvanceToNextMediaSourceHolder();
        return true;
    }

    public final class MediaSourceHolderMap {
        private final HashMap<MediaItem, BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder> mediaItemToMediaSourceHolder = new HashMap<>();
        private final HashMap<MediaSource, MediaItem> mediaSourceToMediaItem = new HashMap<>();

        public MediaSourceHolderMap() {
        }

        public synchronized void clear() {
            this.mediaItemToMediaSourceHolder.clear();
            this.mediaSourceToMediaItem.clear();
        }

        public synchronized boolean containsKey(MediaItem mediaItem) {
            return this.mediaItemToMediaSourceHolder.containsKey(mediaItem);
        }

        public synchronized BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder get(MediaSource mediaSource) {
            MediaItem mediaItem = this.mediaSourceToMediaItem.get(mediaSource);
            if (mediaItem == null) {
                return null;
            }
            BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder = this.mediaItemToMediaSourceHolder.get(mediaItem);
            mediaSourceHolder.getClass();
            return mediaSourceHolder;
        }

        public synchronized void put(MediaItem mediaItem, MediaSource mediaSource, BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder) {
            this.mediaItemToMediaSourceHolder.put(mediaItem, mediaSourceHolder);
            this.mediaSourceToMediaItem.put(mediaSource, mediaItem);
        }

        public synchronized boolean remove(MediaItem mediaItem) {
            BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolderRemove = this.mediaItemToMediaSourceHolder.remove(mediaItem);
            if (mediaSourceHolderRemove == null) {
                return false;
            }
            this.mediaSourceToMediaItem.remove(mediaSourceHolderRemove.getMediaSource()).getClass();
            return true;
        }

        public synchronized int size() {
            return this.mediaItemToMediaSourceHolder.size();
        }

        public synchronized Collection<BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder> values() {
            return this.mediaItemToMediaSourceHolder.values();
        }

        public synchronized BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder get(MediaItem mediaItem) {
            return this.mediaItemToMediaSourceHolder.get(mediaItem);
        }

        public synchronized boolean remove(MediaSource mediaSource) {
            MediaItem mediaItemRemove = this.mediaSourceToMediaItem.remove(mediaSource);
            if (mediaItemRemove == null) {
                return false;
            }
            this.mediaItemToMediaSourceHolder.remove(mediaItemRemove).getClass();
            return true;
        }
    }
}
