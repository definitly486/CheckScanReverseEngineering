package androidx.media3.exoplayer.source.preload;

import android.content.Context;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.datasource.cache.Cache;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.exoplayer.DefaultRendererCapabilitiesList;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.PlaybackLooperProvider;
import androidx.media3.exoplayer.RendererCapabilitiesList;
import androidx.media3.exoplayer.RenderersFactory;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.preload.DefaultPreloadManager;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;
import defpackage.bf6;
import defpackage.cc;
import defpackage.e33;
import defpackage.gi2;
import defpackage.iq;
import defpackage.kd8;
import defpackage.ki0;
import defpackage.ld8;
import defpackage.o8;
import defpackage.o86;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultPreloadManager extends BasePreloadManager<Integer, PreloadStatus> {
    private final PreCacheHelper.Factory preCacheHelperFactory;
    private final HandlerThread preCacheThread;
    private final HandlerWrapper preloadHandler;
    private final PlaybackLooperProvider preloadLooperProvider;
    private final PreloadMediaSource.Factory preloadMediaSourceFactory;
    private boolean releaseCalled;
    private final RendererCapabilitiesList rendererCapabilitiesList;
    private final TrackSelector trackSelector;

    public static class MediaSourceFactorySupplier implements kd8<MediaSource.Factory> {
        private Cache cache;
        private final Context context;
        private MediaSource.Factory customMediaSourceFactory;
        private final kd8<DefaultMediaSourceFactory> defaultMediaSourceFactorySupplier;

        public MediaSourceFactorySupplier(final Context context) {
            this.context = context;
            this.defaultMediaSourceFactorySupplier = ld8.a(new kd8() { // from class: androidx.media3.exoplayer.source.preload.a
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return DefaultPreloadManager.MediaSourceFactorySupplier.lambda$new$0(context);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ DefaultMediaSourceFactory lambda$new$0(Context context) {
            return new DefaultMediaSourceFactory(context);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.kd8
        /* JADX INFO: renamed from: get */
        public MediaSource.Factory get2() {
            MediaSource.Factory factory = this.customMediaSourceFactory;
            if (factory != null) {
                return factory;
            }
            DefaultMediaSourceFactory defaultMediaSourceFactory = this.defaultMediaSourceFactorySupplier.get2();
            Cache cache = this.cache;
            if (cache != null) {
                defaultMediaSourceFactory.setDataSourceFactory(new CacheDataSource.Factory().setUpstreamDataSourceFactory(new DefaultDataSource.Factory(this.context)).setCache(cache).setCacheWriteDataSinkFactory(null));
            }
            return defaultMediaSourceFactory;
        }

        public void setCache(Cache cache) {
            this.cache = cache;
        }

        public void setCustomMediaSourceFactory(MediaSource.Factory factory) {
            this.customMediaSourceFactory = factory;
        }
    }

    public final class PreCacheHelperListener implements PreCacheHelper.Listener {
        private PreCacheHelperListener() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onDownloadError$2(PreloadStatus preloadStatus, PreloadStatus preloadStatus2) {
            return preloadStatus2.equals(preloadStatus);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onPreCacheProgress$0(PreloadStatus preloadStatus, PreloadStatus preloadStatus2) {
            return preloadStatus2.equals(preloadStatus);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onPrepareError$1(PreloadStatus preloadStatus, PreloadStatus preloadStatus2) {
            return preloadStatus2.equals(preloadStatus);
        }

        @Override // androidx.media3.exoplayer.source.preload.PreCacheHelper.Listener
        public void onDownloadError(MediaItem mediaItem, IOException iOException) {
            final PreloadStatus targetPreloadStatusIfCurrentlyPreloading = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(mediaItem);
            if (targetPreloadStatusIfCurrentlyPreloading == null || !targetPreloadStatusIfCurrentlyPreloading.isPreCachingCategory()) {
                return;
            }
            DefaultPreloadManager.this.onError(new PreloadException(mediaItem, null, iOException), mediaItem, new bf6() { // from class: androidx.media3.exoplayer.source.preload.d
                @Override // defpackage.bf6
                public final boolean apply(Object obj) {
                    return DefaultPreloadManager.PreCacheHelperListener.lambda$onDownloadError$2(targetPreloadStatusIfCurrentlyPreloading, (DefaultPreloadManager.PreloadStatus) obj);
                }
            });
        }

        @Override // androidx.media3.exoplayer.source.preload.PreCacheHelper.Listener
        public void onPreCacheProgress(MediaItem mediaItem, long j, long j2, float f) {
            final PreloadStatus targetPreloadStatusIfCurrentlyPreloading;
            if (f == 100.0f && (targetPreloadStatusIfCurrentlyPreloading = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(mediaItem)) != null && targetPreloadStatusIfCurrentlyPreloading.isPreCachingCategory()) {
                DefaultPreloadManager.this.onCompleted(mediaItem, new bf6() { // from class: androidx.media3.exoplayer.source.preload.c
                    @Override // defpackage.bf6
                    public final boolean apply(Object obj) {
                        return DefaultPreloadManager.PreCacheHelperListener.lambda$onPreCacheProgress$0(targetPreloadStatusIfCurrentlyPreloading, (DefaultPreloadManager.PreloadStatus) obj);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.source.preload.PreCacheHelper.Listener
        public void onPrepareError(MediaItem mediaItem, IOException iOException) {
            final PreloadStatus targetPreloadStatusIfCurrentlyPreloading = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(mediaItem);
            if (targetPreloadStatusIfCurrentlyPreloading == null || !targetPreloadStatusIfCurrentlyPreloading.isPreCachingCategory()) {
                return;
            }
            DefaultPreloadManager.this.onError(new PreloadException(mediaItem, null, iOException), mediaItem, new bf6() { // from class: androidx.media3.exoplayer.source.preload.b
                @Override // defpackage.bf6
                public final boolean apply(Object obj) {
                    return DefaultPreloadManager.PreCacheHelperListener.lambda$onPrepareError$1(targetPreloadStatusIfCurrentlyPreloading, (DefaultPreloadManager.PreloadStatus) obj);
                }
            });
        }

        @Override // androidx.media3.exoplayer.source.preload.PreCacheHelper.Listener
        public void onPrepared(MediaItem mediaItem, MediaItem mediaItem2) {
            PreloadStatus targetPreloadStatusIfCurrentlyPreloading = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(mediaItem);
            if (targetPreloadStatusIfCurrentlyPreloading == null || !targetPreloadStatusIfCurrentlyPreloading.isPreCachingCategory()) {
                return;
            }
            DefaultPreloadManager.this.onMediaSourceUpdated(mediaItem, DefaultPreloadManager.this.preloadMediaSourceFactory.createMediaSource(mediaItem2));
        }
    }

    public final class PreloadMediaSourceControl implements PreloadMediaSource.PreloadControl {
        private PreloadMediaSourceControl() {
        }

        private boolean continueOrCompletePreloading(PreloadMediaSource preloadMediaSource, bf6<PreloadStatus> bf6Var) {
            final PreloadStatus targetPreloadStatusIfCurrentlyPreloading = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(preloadMediaSource);
            if (targetPreloadStatusIfCurrentlyPreloading == null || !targetPreloadStatusIfCurrentlyPreloading.isPreloadingCategory()) {
                return false;
            }
            if (bf6Var.apply(targetPreloadStatusIfCurrentlyPreloading)) {
                return true;
            }
            DefaultPreloadManager.this.onCompleted(preloadMediaSource, new bf6() { // from class: androidx.media3.exoplayer.source.preload.k
                @Override // defpackage.bf6
                public final boolean apply(Object obj) {
                    return DefaultPreloadManager.PreloadMediaSourceControl.lambda$continueOrCompletePreloading$6(targetPreloadStatusIfCurrentlyPreloading, (DefaultPreloadManager.PreloadStatus) obj);
                }
            });
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$continueOrCompletePreloading$6(PreloadStatus preloadStatus, PreloadStatus preloadStatus2) {
            return preloadStatus2.equals(preloadStatus);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onContinueLoadingRequested$2(long j, PreloadStatus preloadStatus) {
            if (preloadStatus.stage != 2) {
                return false;
            }
            long j2 = preloadStatus.durationMs;
            return j2 != C.TIME_UNSET && j2 > Util.usToMs(j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onLoadedToTheEndOfSource$4(PreloadStatus preloadStatus, PreloadStatus preloadStatus2) {
            return preloadStatus2.equals(preloadStatus);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onPreloadError$5(PreloadStatus preloadStatus, PreloadStatus preloadStatus2) {
            return preloadStatus2.equals(preloadStatus);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onSourcePrepared$0(PreloadStatus preloadStatus) {
            return preloadStatus.stage > 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onTracksSelected$1(PreloadStatus preloadStatus) {
            return preloadStatus.stage > 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onUsedByPlayer$3(PreloadStatus preloadStatus, PreloadStatus preloadStatus2) {
            return preloadStatus2.equals(preloadStatus);
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public boolean onContinueLoadingRequested(PreloadMediaSource preloadMediaSource, final long j) {
            return continueOrCompletePreloading(preloadMediaSource, new bf6() { // from class: androidx.media3.exoplayer.source.preload.h
                @Override // defpackage.bf6
                public final boolean apply(Object obj) {
                    return DefaultPreloadManager.PreloadMediaSourceControl.lambda$onContinueLoadingRequested$2(j, (DefaultPreloadManager.PreloadStatus) obj);
                }
            });
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public void onLoadedToTheEndOfSource(PreloadMediaSource preloadMediaSource) {
            final PreloadStatus targetPreloadStatusIfCurrentlyPreloading = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(preloadMediaSource);
            if (targetPreloadStatusIfCurrentlyPreloading == null || !targetPreloadStatusIfCurrentlyPreloading.isPreloadingCategory()) {
                return;
            }
            DefaultPreloadManager.this.onCompleted(preloadMediaSource, new bf6() { // from class: androidx.media3.exoplayer.source.preload.j
                @Override // defpackage.bf6
                public final boolean apply(Object obj) {
                    return DefaultPreloadManager.PreloadMediaSourceControl.lambda$onLoadedToTheEndOfSource$4(targetPreloadStatusIfCurrentlyPreloading, (DefaultPreloadManager.PreloadStatus) obj);
                }
            });
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public boolean onLoadingUnableToContinue(PreloadMediaSource preloadMediaSource) {
            BasePreloadManager<Integer, PreloadStatus>.MediaSourceHolder mediaSourceHolderToClear = DefaultPreloadManager.this.getMediaSourceHolderToClear();
            if (mediaSourceHolderToClear == null) {
                return false;
            }
            ((PreloadMediaSource) mediaSourceHolderToClear.getMediaSource()).clear();
            DefaultPreloadManager.this.onSourceCleared();
            return true;
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public void onPreloadError(PreloadException preloadException, PreloadMediaSource preloadMediaSource) {
            final PreloadStatus targetPreloadStatusIfCurrentlyPreloading = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(preloadMediaSource);
            if (targetPreloadStatusIfCurrentlyPreloading == null || !targetPreloadStatusIfCurrentlyPreloading.isPreloadingCategory()) {
                return;
            }
            DefaultPreloadManager.this.onError(preloadException, preloadMediaSource, new bf6() { // from class: androidx.media3.exoplayer.source.preload.i
                @Override // defpackage.bf6
                public final boolean apply(Object obj) {
                    return DefaultPreloadManager.PreloadMediaSourceControl.lambda$onPreloadError$5(targetPreloadStatusIfCurrentlyPreloading, (DefaultPreloadManager.PreloadStatus) obj);
                }
            });
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public boolean onSourcePrepared(PreloadMediaSource preloadMediaSource) {
            return continueOrCompletePreloading(preloadMediaSource, new e());
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public boolean onTracksSelected(PreloadMediaSource preloadMediaSource) {
            return continueOrCompletePreloading(preloadMediaSource, new g());
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public void onUsedByPlayer(PreloadMediaSource preloadMediaSource) {
            final PreloadStatus targetPreloadStatusIfCurrentlyPreloading = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(preloadMediaSource);
            if (targetPreloadStatusIfCurrentlyPreloading == null || !targetPreloadStatusIfCurrentlyPreloading.isPreloadingCategory()) {
                return;
            }
            DefaultPreloadManager.this.onSkipped(preloadMediaSource, new bf6() { // from class: androidx.media3.exoplayer.source.preload.f
                @Override // defpackage.bf6
                public final boolean apply(Object obj) {
                    return DefaultPreloadManager.PreloadMediaSourceControl.lambda$onUsedByPlayer$3(targetPreloadStatusIfCurrentlyPreloading, (DefaultPreloadManager.PreloadStatus) obj);
                }
            });
        }
    }

    public final class PreloadMediaSourceHolder extends BasePreloadManager<Integer, PreloadStatus>.MediaSourceHolder {
        public PreCacheHelper preCacheHelper;

        public PreloadMediaSourceHolder(MediaItem mediaItem, PreloadMediaSource preloadMediaSource, Integer num) {
            super(mediaItem, num, preloadMediaSource);
        }

        @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager.MediaSourceHolder
        public synchronized PreloadMediaSource getMediaSource() {
            return (PreloadMediaSource) super.getMediaSource();
        }

        @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager.MediaSourceHolder
        public synchronized void setMediaSource(MediaSource mediaSource) {
            getMediaSource().releasePreloadMediaSource();
            super.setMediaSource(mediaSource);
        }
    }

    public static final class SimpleRankingDataComparator implements RankingDataComparator<Integer> {
        private int currentPlayingIndex = -1;
        private RankingDataComparator.InvalidationListener invalidationListener;

        @Override // java.util.Comparator
        public int compare(Integer num, Integer num2) {
            return Integer.compare(Math.abs(num.intValue() - this.currentPlayingIndex), Math.abs(num2.intValue() - this.currentPlayingIndex));
        }

        public void setCurrentPlayingIndex(int i) {
            if (i != this.currentPlayingIndex) {
                this.currentPlayingIndex = i;
                RankingDataComparator.InvalidationListener invalidationListener = this.invalidationListener;
                if (invalidationListener != null) {
                    invalidationListener.onRankingDataComparatorInvalidated();
                }
            }
        }

        @Override // androidx.media3.exoplayer.source.preload.RankingDataComparator
        public void setInvalidationListener(RankingDataComparator.InvalidationListener invalidationListener) {
            this.invalidationListener = invalidationListener;
        }
    }

    private DefaultPreloadManager(Builder builder) {
        super(new SimpleRankingDataComparator(), builder.targetPreloadStatusControl, builder.mediaSourceFactorySupplier.get2());
        DefaultRendererCapabilitiesList defaultRendererCapabilitiesListCreateRendererCapabilitiesList = new DefaultRendererCapabilitiesList.Factory((RenderersFactory) builder.renderersFactorySupplier.get2()).createRendererCapabilitiesList();
        this.rendererCapabilitiesList = defaultRendererCapabilitiesListCreateRendererCapabilitiesList;
        PlaybackLooperProvider playbackLooperProvider = builder.preloadLooperProvider;
        this.preloadLooperProvider = playbackLooperProvider;
        TrackSelector trackSelectorCreateTrackSelector = builder.trackSelectorFactory.createTrackSelector(builder.context);
        this.trackSelector = trackSelectorCreateTrackSelector;
        BandwidthMeter bandwidthMeter = (BandwidthMeter) builder.bandwidthMeterSupplier.get2();
        trackSelectorCreateTrackSelector.init(new cc(4), bandwidthMeter);
        Looper looperObtainLooper = playbackLooperProvider.obtainLooper();
        this.preloadMediaSourceFactory = new PreloadMediaSource.Factory(builder.mediaSourceFactorySupplier.get2(), new PreloadMediaSourceControl(), trackSelectorCreateTrackSelector, bandwidthMeter, defaultRendererCapabilitiesListCreateRendererCapabilitiesList.getRendererCapabilities(), (LoadControl) builder.loadControlSupplier.get2(), looperObtainLooper).setClock(builder.clock);
        Cache cache = builder.cache;
        if (cache != null) {
            HandlerThread handlerThread = new HandlerThread("DefaultPreloadManager:PreCacheHelper");
            this.preCacheThread = handlerThread;
            handlerThread.start();
            this.preCacheHelperFactory = new PreCacheHelper.Factory(builder.context, cache, handlerThread.getLooper()).setDownloadExecutor(builder.cachingExecutor).setListener(new PreCacheHelperListener());
        } else {
            this.preCacheThread = null;
            this.preCacheHelperFactory = null;
        }
        this.preloadHandler = builder.clock.createHandler(looperObtainLooper, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$preloadMediaSourceHolderInternal$1(PreloadStatus preloadStatus) {
        return preloadStatus.stage == Integer.MIN_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$releasePreloadUtils$2() {
        this.rendererCapabilitiesList.release();
        this.trackSelector.release();
        this.preloadLooperProvider.releaseLooper();
    }

    private void maybeClearPreloadMediaSource(PreloadMediaSource preloadMediaSource, PreloadStatus preloadStatus) {
        int i = preloadStatus.stage;
        if (i == Integer.MIN_VALUE || i == -1 || i == 0) {
            preloadMediaSource.clear();
        }
    }

    private void releasePreCacheUtils() {
        HandlerThread handlerThread = this.preCacheThread;
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }

    private void releasePreloadUtils() {
        this.preloadHandler.post(new iq(this, 1));
    }

    @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager
    public BasePreloadManager<Integer, PreloadStatus>.MediaSourceHolder createMediaSourceHolder(MediaItem mediaItem, MediaSource mediaSource, Integer num) {
        PreloadMediaSource.Factory factory = this.preloadMediaSourceFactory;
        return new PreloadMediaSourceHolder(mediaItem, mediaSource != null ? factory.createMediaSource(mediaSource) : factory.createMediaSource(mediaItem), num);
    }

    @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager
    public void preloadMediaSourceHolderInternal(BasePreloadManager<Integer, PreloadStatus>.MediaSourceHolder mediaSourceHolder, PreloadStatus preloadStatus) {
        if (this.releaseCalled) {
            return;
        }
        o8.e(mediaSourceHolder instanceof PreloadMediaSourceHolder);
        PreloadMediaSourceHolder preloadMediaSourceHolder = (PreloadMediaSourceHolder) mediaSourceHolder;
        PreloadMediaSource mediaSource = preloadMediaSourceHolder.getMediaSource();
        maybeClearPreloadMediaSource(mediaSource, preloadStatus);
        if (preloadStatus.equals(PreloadStatus.PRELOAD_STATUS_NOT_PRELOADED)) {
            onSkipped(mediaSource, new gi2());
            return;
        }
        if (preloadStatus.stage != -1) {
            mediaSource.preload(Util.msToUs(preloadStatus.startPositionMs));
            return;
        }
        PreCacheHelper preCacheHelperCreate = preloadMediaSourceHolder.preCacheHelper;
        if (preCacheHelperCreate == null) {
            PreCacheHelper.Factory factory = this.preCacheHelperFactory;
            o8.l(factory, "DefaultPreloadManager wasn't configured with a Cache");
            preCacheHelperCreate = factory.create(mediaSourceHolder.mediaItem);
            preloadMediaSourceHolder.preCacheHelper = preCacheHelperCreate;
        }
        preCacheHelperCreate.getClass();
        preCacheHelperCreate.preCache(preloadStatus.startPositionMs, preloadStatus.durationMs);
    }

    @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager
    public void releaseInternal() {
        this.releaseCalled = true;
        releasePreloadUtils();
        releasePreCacheUtils();
    }

    @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager
    public void releaseMediaSourceHolderInternal(BasePreloadManager<Integer, PreloadStatus>.MediaSourceHolder mediaSourceHolder) {
        if (this.releaseCalled) {
            return;
        }
        super.releaseMediaSourceHolderInternal(mediaSourceHolder);
        o8.e(mediaSourceHolder instanceof PreloadMediaSourceHolder);
        PreloadMediaSourceHolder preloadMediaSourceHolder = (PreloadMediaSourceHolder) mediaSourceHolder;
        preloadMediaSourceHolder.getMediaSource().releasePreloadMediaSource();
        PreCacheHelper preCacheHelper = preloadMediaSourceHolder.preCacheHelper;
        if (preCacheHelper != null) {
            preCacheHelper.release(true);
            preloadMediaSourceHolder.preCacheHelper = null;
        }
    }

    public void setCurrentPlayingIndex(int i) {
        ((SimpleRankingDataComparator) this.rankingDataComparator).setCurrentPlayingIndex(i);
    }

    public static final class PreloadStatus {
        public static final PreloadStatus PRELOAD_STATUS_NOT_PRELOADED = new PreloadStatus(Integer.MIN_VALUE, C.TIME_UNSET, 0);
        public static final PreloadStatus PRELOAD_STATUS_SOURCE_PREPARED = new PreloadStatus(0, C.TIME_UNSET, 0);
        public static final PreloadStatus PRELOAD_STATUS_TRACKS_SELECTED = new PreloadStatus(1, C.TIME_UNSET, 0);
        public static final int STAGE_NOT_PRELOADED = Integer.MIN_VALUE;
        public static final int STAGE_SOURCE_PREPARED = 0;
        public static final int STAGE_SPECIFIED_RANGE_CACHED = -1;
        public static final int STAGE_SPECIFIED_RANGE_LOADED = 2;
        public static final int STAGE_TRACKS_SELECTED = 1;
        public final long durationMs;
        public final int stage;
        public final long startPositionMs;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Stage {
        }

        private PreloadStatus(int i, long j, long j2) {
            boolean z = true;
            o8.e(j == C.TIME_UNSET || j >= 0);
            if (j2 != C.TIME_UNSET && j2 < 0) {
                z = false;
            }
            o8.e(z);
            this.stage = i;
            this.startPositionMs = j;
            this.durationMs = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isPreCachingCategory() {
            return this.stage == -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isPreloadingCategory() {
            int i = this.stage;
            return i == 0 || i == 1 || i == 2;
        }

        public static PreloadStatus specifiedRangeCached(long j) {
            return new PreloadStatus(-1, C.TIME_UNSET, j);
        }

        public static PreloadStatus specifiedRangeLoaded(long j) {
            return new PreloadStatus(2, C.TIME_UNSET, j);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && PreloadStatus.class == obj.getClass()) {
                PreloadStatus preloadStatus = (PreloadStatus) obj;
                if (this.stage == preloadStatus.stage && this.startPositionMs == preloadStatus.startPositionMs && this.durationMs == preloadStatus.durationMs) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return ((((527 + this.stage) * 31) + ((int) this.startPositionMs)) * 31) + ((int) this.durationMs);
        }

        public static PreloadStatus specifiedRangeCached(long j, long j2) {
            return new PreloadStatus(-1, j, j2);
        }

        public static PreloadStatus specifiedRangeLoaded(long j, long j2) {
            return new PreloadStatus(2, j, j2);
        }
    }

    public static final class Builder extends BasePreloadManager.BuilderBase<Integer, PreloadStatus> {
        private kd8<BandwidthMeter> bandwidthMeterSupplier;
        private boolean buildCalled;
        private boolean buildExoPlayerCalled;
        private Cache cache;
        private Executor cachingExecutor;
        private Clock clock;
        private final Context context;
        private kd8<LoadControl> loadControlSupplier;
        private PlaybackLooperProvider preloadLooperProvider;
        private kd8<RenderersFactory> renderersFactorySupplier;
        private TrackSelector.Factory trackSelectorFactory;

        public Builder(final Context context, TargetPreloadStatusControl<Integer, PreloadStatus> targetPreloadStatusControl) {
            super(new SimpleRankingDataComparator(), targetPreloadStatusControl, new MediaSourceFactorySupplier(context));
            this.context = context;
            this.preloadLooperProvider = new PlaybackLooperProvider();
            this.trackSelectorFactory = new ki0(1);
            this.bandwidthMeterSupplier = new kd8() { // from class: ki2
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return DefaultBandwidthMeter.getSingletonInstance(context);
                }
            };
            this.renderersFactorySupplier = ld8.a(new kd8() { // from class: li2
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return DefaultPreloadManager.Builder.lambda$new$1(context);
                }
            });
            this.loadControlSupplier = ld8.a(new e33());
            this.cachingExecutor = new o86();
            this.clock = Clock.DEFAULT;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$new$1(Context context) {
            return new DefaultRenderersFactory(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ BandwidthMeter lambda$setBandwidthMeter$4(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ LoadControl lambda$setLoadControl$3(LoadControl loadControl) {
            return loadControl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$setRenderersFactory$2(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager.BuilderBase
        public BasePreloadManager<Integer, PreloadStatus> build() {
            o8.r(!this.buildCalled);
            this.buildCalled = true;
            return new DefaultPreloadManager(this);
        }

        public ExoPlayer buildExoPlayer(ExoPlayer.Builder builder) {
            this.buildExoPlayerCalled = true;
            return builder.setMediaSourceFactory(this.mediaSourceFactorySupplier.get2()).setBandwidthMeter(this.bandwidthMeterSupplier.get2()).setRenderersFactory(this.renderersFactorySupplier.get2()).setLoadControl(this.loadControlSupplier.get2()).setPlaybackLooperProvider(this.preloadLooperProvider).setTrackSelector(this.trackSelectorFactory.createTrackSelector(this.context)).build();
        }

        public Builder setBandwidthMeter(final BandwidthMeter bandwidthMeter) {
            o8.r((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.bandwidthMeterSupplier = new kd8() { // from class: ji2
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return DefaultPreloadManager.Builder.lambda$setBandwidthMeter$4(bandwidthMeter);
                }
            };
            return this;
        }

        public Builder setCache(Cache cache) {
            o8.r((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.cache = cache;
            ((MediaSourceFactorySupplier) this.mediaSourceFactorySupplier).setCache(cache);
            return this;
        }

        public Builder setCachingExecutor(Executor executor) {
            o8.r((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.cachingExecutor = executor;
            return this;
        }

        public Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public Builder setLoadControl(final LoadControl loadControl) {
            o8.r((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.loadControlSupplier = new kd8() { // from class: hi2
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return DefaultPreloadManager.Builder.lambda$setLoadControl$3(loadControl);
                }
            };
            return this;
        }

        public Builder setMediaSourceFactory(MediaSource.Factory factory) {
            o8.r((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            ((MediaSourceFactorySupplier) this.mediaSourceFactorySupplier).setCustomMediaSourceFactory(factory);
            return this;
        }

        public Builder setPreloadLooper(Looper looper) {
            o8.r((this.buildCalled || this.buildExoPlayerCalled || looper == Looper.getMainLooper()) ? false : true);
            this.preloadLooperProvider = new PlaybackLooperProvider(looper);
            return this;
        }

        public Builder setRenderersFactory(final RenderersFactory renderersFactory) {
            o8.r((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.renderersFactorySupplier = new kd8() { // from class: ii2
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return DefaultPreloadManager.Builder.lambda$setRenderersFactory$2(renderersFactory);
                }
            };
            return this;
        }

        public Builder setTrackSelectorFactory(TrackSelector.Factory factory) {
            o8.r((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.trackSelectorFactory = factory;
            return this;
        }

        public ExoPlayer buildExoPlayer() {
            return buildExoPlayer(new ExoPlayer.Builder(this.context));
        }
    }
}
