package androidx.media3.exoplayer;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.os.Looper;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.C;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Player;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectionArray;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import androidx.media3.exoplayer.video.spherical.CameraMotionListener;
import androidx.media3.extractor.DefaultExtractorsFactory;
import defpackage.b33;
import defpackage.ck2;
import defpackage.e33;
import defpackage.g33;
import defpackage.kd8;
import defpackage.lm3;
import defpackage.o8;
import defpackage.r23;
import defpackage.t23;
import defpackage.vt;
import defpackage.x23;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface ExoPlayer extends Player {
    public static final long DEFAULT_DETACH_SURFACE_TIMEOUT_MS = 2000;
    public static final long DEFAULT_RELEASE_TIMEOUT_MS = 500;
    public static final int DEFAULT_STUCK_BUFFERING_DETECTION_TIMEOUT_MS = 600000;
    public static final int DEFAULT_STUCK_PLAYING_DETECTION_TIMEOUT_MS;
    public static final int DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS = 60000;
    public static final int DEFAULT_STUCK_SUPPRESSED_DETECTION_TIMEOUT_MS = 600000;

    public interface AudioOffloadListener {
        default void onOffloadedPlayback(boolean z) {
        }

        default void onSleepingForOffloadChanged(boolean z) {
        }
    }

    public static class PreloadConfiguration {
        public static final PreloadConfiguration DEFAULT = new PreloadConfiguration(C.TIME_UNSET);
        public final long targetPreloadDurationUs;

        public PreloadConfiguration(long j) {
            this.targetPreloadDurationUs = j;
        }
    }

    static {
        DEFAULT_STUCK_PLAYING_DETECTION_TIMEOUT_MS = Util.isRunningOnEmulator() ? 30000 : 10000;
    }

    void addAnalyticsListener(AnalyticsListener analyticsListener);

    void addAudioCodecParametersChangeListener(CodecParametersChangeListener codecParametersChangeListener, List<String> list);

    void addAudioOffloadListener(AudioOffloadListener audioOffloadListener);

    void addMediaSource(int i, MediaSource mediaSource);

    void addMediaSource(MediaSource mediaSource);

    void addMediaSources(int i, List<MediaSource> list);

    void addMediaSources(List<MediaSource> list);

    void addVideoCodecParametersChangeListener(CodecParametersChangeListener codecParametersChangeListener, List<String> list);

    void clearAuxEffectInfo();

    void clearCameraMotionListener(CameraMotionListener cameraMotionListener);

    void clearVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

    PlayerMessage createMessage(PlayerMessage.Target target);

    AnalyticsCollector getAnalyticsCollector();

    DecoderCounters getAudioDecoderCounters();

    Format getAudioFormat();

    Clock getClock();

    @Deprecated
    TrackGroupArray getCurrentTrackGroups();

    @Deprecated
    TrackSelectionArray getCurrentTrackSelections();

    boolean getPauseAtEndOfMediaItems();

    Looper getPlaybackLooper();

    @Override // androidx.media3.common.Player
    ExoPlaybackException getPlayerError();

    PreloadConfiguration getPreloadConfiguration();

    Renderer getRenderer(int i);

    int getRendererCount();

    int getRendererType(int i);

    ScrubbingModeParameters getScrubbingModeParameters();

    Renderer getSecondaryRenderer(int i);

    SeekParameters getSeekParameters();

    ShuffleOrder getShuffleOrder();

    boolean getSkipSilenceEnabled();

    TrackSelector getTrackSelector();

    int getVideoChangeFrameRateStrategy();

    DecoderCounters getVideoDecoderCounters();

    Format getVideoFormat();

    int getVideoScalingMode();

    boolean isReleased();

    boolean isScrubbingModeEnabled();

    boolean isSleepingForOffload();

    boolean isTunnelingEnabled();

    @Deprecated
    void prepare(MediaSource mediaSource);

    @Deprecated
    void prepare(MediaSource mediaSource, boolean z, boolean z2);

    @Override // androidx.media3.common.Player
    void release();

    void removeAnalyticsListener(AnalyticsListener analyticsListener);

    void removeAudioCodecParametersChangeListener(CodecParametersChangeListener codecParametersChangeListener);

    void removeAudioOffloadListener(AudioOffloadListener audioOffloadListener);

    void removeVideoCodecParametersChangeListener(CodecParametersChangeListener codecParametersChangeListener);

    @Override // androidx.media3.common.Player
    void replaceMediaItem(int i, MediaItem mediaItem);

    @Override // androidx.media3.common.Player
    void replaceMediaItems(int i, int i2, List<MediaItem> list);

    void setAudioCodecParameters(CodecParameters codecParameters);

    void setAudioSessionId(int i);

    void setAuxEffectInfo(AuxEffectInfo auxEffectInfo);

    void setCameraMotionListener(CameraMotionListener cameraMotionListener);

    void setForegroundMode(boolean z);

    void setHandleAudioBecomingNoisy(boolean z);

    void setImageOutput(ImageOutput imageOutput);

    void setMaxSeekToPreviousPositionMs(long j);

    void setMediaSource(MediaSource mediaSource);

    void setMediaSource(MediaSource mediaSource, long j);

    void setMediaSource(MediaSource mediaSource, boolean z);

    void setMediaSources(List<MediaSource> list);

    void setMediaSources(List<MediaSource> list, int i, long j);

    void setMediaSources(List<MediaSource> list, boolean z);

    void setPauseAtEndOfMediaItems(boolean z);

    void setPreferredAudioDevice(AudioDeviceInfo audioDeviceInfo);

    void setPreloadConfiguration(PreloadConfiguration preloadConfiguration);

    void setPriority(int i);

    void setPriorityTaskManager(PriorityTaskManager priorityTaskManager);

    void setScrubbingModeEnabled(boolean z);

    void setScrubbingModeParameters(ScrubbingModeParameters scrubbingModeParameters);

    void setSeekBackIncrementMs(long j);

    void setSeekForwardIncrementMs(long j);

    void setSeekParameters(SeekParameters seekParameters);

    void setShuffleOrder(ShuffleOrder shuffleOrder);

    void setSkipSilenceEnabled(boolean z);

    void setVideoChangeFrameRateStrategy(int i);

    void setVideoCodecParameters(CodecParameters codecParameters);

    void setVideoEffects(List<Effect> list);

    void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

    void setVideoScalingMode(int i);

    void setVirtualDeviceId(int i);

    void setWakeMode(int i);

    public static final class Builder {
        public static boolean experimentalEnableStuckPlayingDetection = true;
        lm3<Clock, AnalyticsCollector> analyticsCollectorFunction;
        AudioAttributes audioAttributes;
        AudioOutputProvider audioOutputProvider;
        kd8<BandwidthMeter> bandwidthMeterSupplier;
        boolean buildCalled;
        Clock clock;
        final Context context;
        long detachSurfaceTimeoutMs;
        boolean deviceVolumeControlEnabled;
        boolean dynamicSchedulingEnabled;
        long foregroundModeTimeoutMs;
        boolean handleAudioBecomingNoisy;
        boolean handleAudioFocus;
        LivePlaybackSpeedControl livePlaybackSpeedControl;
        kd8<LoadControl> loadControlSupplier;
        Looper looper;
        long maxSeekToPreviousPositionMs;
        kd8<MediaSource.Factory> mediaSourceFactorySupplier;
        boolean pauseAtEndOfMediaItems;
        PlaybackLooperProvider playbackLooperProvider;
        String playerName;
        int priority;
        PriorityTaskManager priorityTaskManager;
        long releaseTimeoutMs;
        kd8<RenderersFactory> renderersFactorySupplier;
        ScrubbingModeParameters scrubbingModeParameters;
        long seekBackIncrementMs;
        long seekForwardIncrementMs;
        SeekParameters seekParameters;
        boolean skipSilenceEnabled;
        int stuckBufferingDetectionTimeoutMs;
        int stuckPlayingDetectionTimeoutMs;
        int stuckPlayingNotEndingTimeoutMs;
        int stuckSuppressedDetectionTimeoutMs;
        SuitableOutputChecker suitableOutputChecker;
        boolean suppressPlaybackOnUnsuitableOutput;
        kd8<TrackSelector> trackSelectorSupplier;
        boolean useLazyPreparation;
        boolean usePlatformDiagnostics;
        int videoChangeFrameRateStrategy;
        int videoScalingMode;
        int wakeMode;
        boolean wakeModeSet;

        private Builder(Context context, kd8<RenderersFactory> kd8Var, kd8<MediaSource.Factory> kd8Var2, kd8<TrackSelector> kd8Var3, kd8<LoadControl> kd8Var4, kd8<BandwidthMeter> kd8Var5, lm3<Clock, AnalyticsCollector> lm3Var) {
            context.getClass();
            this.context = context;
            this.renderersFactorySupplier = kd8Var;
            this.mediaSourceFactorySupplier = kd8Var2;
            this.trackSelectorSupplier = kd8Var3;
            this.loadControlSupplier = kd8Var4;
            this.bandwidthMeterSupplier = kd8Var5;
            this.analyticsCollectorFunction = lm3Var;
            this.looper = Util.getCurrentOrMainLooper();
            this.audioAttributes = AudioAttributes.DEFAULT;
            this.wakeMode = 0;
            this.videoScalingMode = 1;
            this.videoChangeFrameRateStrategy = 0;
            this.useLazyPreparation = true;
            this.seekParameters = SeekParameters.DEFAULT;
            this.seekBackIncrementMs = 5000L;
            this.seekForwardIncrementMs = 15000L;
            this.maxSeekToPreviousPositionMs = 3000L;
            this.scrubbingModeParameters = ScrubbingModeParameters.DEFAULT;
            this.livePlaybackSpeedControl = new DefaultLivePlaybackSpeedControl.Builder().build();
            this.clock = Clock.DEFAULT;
            this.releaseTimeoutMs = 500L;
            this.detachSurfaceTimeoutMs = 2000L;
            this.stuckBufferingDetectionTimeoutMs = 600000;
            this.stuckPlayingDetectionTimeoutMs = experimentalEnableStuckPlayingDetection ? ExoPlayer.DEFAULT_STUCK_PLAYING_DETECTION_TIMEOUT_MS : Integer.MAX_VALUE;
            this.stuckPlayingNotEndingTimeoutMs = experimentalEnableStuckPlayingDetection ? ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS : Integer.MAX_VALUE;
            this.stuckSuppressedDetectionTimeoutMs = 600000;
            this.usePlatformDiagnostics = true;
            this.playerName = "";
            this.priority = -1000;
            this.suitableOutputChecker = new DefaultSuitableOutputChecker();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$new$0(Context context) {
            return new DefaultRenderersFactory(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$new$1(Context context) {
            return new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ TrackSelector lambda$new$10(TrackSelector trackSelector) {
            return trackSelector;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ LoadControl lambda$new$11(LoadControl loadControl) {
            return loadControl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ BandwidthMeter lambda$new$12(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ AnalyticsCollector lambda$new$13(AnalyticsCollector analyticsCollector, Clock clock) {
            return analyticsCollector;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ TrackSelector lambda$new$14(Context context) {
            return new DefaultTrackSelector(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$new$2(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$new$3(Context context) {
            return new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$new$4(Context context) {
            return new DefaultRenderersFactory(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$new$5(MediaSource.Factory factory) {
            return factory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$new$6(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$new$7(MediaSource.Factory factory) {
            return factory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$new$8(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$new$9(MediaSource.Factory factory) {
            return factory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ AnalyticsCollector lambda$setAnalyticsCollector$21(AnalyticsCollector analyticsCollector, Clock clock) {
            return analyticsCollector;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ BandwidthMeter lambda$setBandwidthMeter$20(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ LoadControl lambda$setLoadControl$19(LoadControl loadControl) {
            return loadControl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$setMediaSourceFactory$17(MediaSource.Factory factory) {
            return factory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$setRenderersFactory$16(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ TrackSelector lambda$setTrackSelector$18(TrackSelector trackSelector) {
            return trackSelector;
        }

        public ExoPlayer build() {
            o8.r(!this.buildCalled);
            this.buildCalled = true;
            return new ExoPlayerImpl(this, null);
        }

        public SimpleExoPlayer buildSimpleExoPlayer() {
            o8.r(!this.buildCalled);
            this.buildCalled = true;
            return new SimpleExoPlayer(this);
        }

        public Builder experimentalSetDynamicSchedulingEnabled(boolean z) {
            o8.r(!this.buildCalled);
            this.dynamicSchedulingEnabled = z;
            return this;
        }

        public Builder experimentalSetForegroundModeTimeoutMs(long j) {
            o8.r(!this.buildCalled);
            this.foregroundModeTimeoutMs = j;
            return this;
        }

        public Builder setAnalyticsCollector(final AnalyticsCollector analyticsCollector) {
            o8.r(!this.buildCalled);
            analyticsCollector.getClass();
            this.analyticsCollectorFunction = new lm3() { // from class: o23
                @Override // defpackage.lm3
                public final Object apply(Object obj) {
                    return ExoPlayer.Builder.lambda$setAnalyticsCollector$21(analyticsCollector, (Clock) obj);
                }
            };
            return this;
        }

        public Builder setAudioAttributes(AudioAttributes audioAttributes, boolean z) {
            o8.r(!this.buildCalled);
            audioAttributes.getClass();
            this.audioAttributes = audioAttributes;
            this.handleAudioFocus = z;
            return this;
        }

        public Builder setAudioOutputProvider(AudioOutputProvider audioOutputProvider) {
            o8.r(!this.buildCalled);
            audioOutputProvider.getClass();
            this.audioOutputProvider = audioOutputProvider;
            return this;
        }

        public Builder setBandwidthMeter(final BandwidthMeter bandwidthMeter) {
            o8.r(!this.buildCalled);
            bandwidthMeter.getClass();
            this.bandwidthMeterSupplier = new kd8() { // from class: y23
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return ExoPlayer.Builder.lambda$setBandwidthMeter$20(bandwidthMeter);
                }
            };
            return this;
        }

        public Builder setClock(Clock clock) {
            o8.r(!this.buildCalled);
            this.clock = clock;
            return this;
        }

        public Builder setDetachSurfaceTimeoutMs(long j) {
            o8.r(!this.buildCalled);
            this.detachSurfaceTimeoutMs = j;
            return this;
        }

        public Builder setDeviceVolumeControlEnabled(boolean z) {
            o8.r(!this.buildCalled);
            this.deviceVolumeControlEnabled = z;
            return this;
        }

        public Builder setHandleAudioBecomingNoisy(boolean z) {
            o8.r(!this.buildCalled);
            this.handleAudioBecomingNoisy = z;
            return this;
        }

        public Builder setLivePlaybackSpeedControl(LivePlaybackSpeedControl livePlaybackSpeedControl) {
            o8.r(!this.buildCalled);
            livePlaybackSpeedControl.getClass();
            this.livePlaybackSpeedControl = livePlaybackSpeedControl;
            return this;
        }

        public Builder setLoadControl(final LoadControl loadControl) {
            o8.r(!this.buildCalled);
            loadControl.getClass();
            this.loadControlSupplier = new kd8() { // from class: n23
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return ExoPlayer.Builder.lambda$setLoadControl$19(loadControl);
                }
            };
            return this;
        }

        public Builder setLooper(Looper looper) {
            o8.r(!this.buildCalled);
            looper.getClass();
            this.looper = looper;
            return this;
        }

        public Builder setMaxSeekToPreviousPositionMs(long j) {
            o8.e(j >= 0);
            o8.r(!this.buildCalled);
            this.maxSeekToPreviousPositionMs = j;
            return this;
        }

        public Builder setMediaSourceFactory(final MediaSource.Factory factory) {
            o8.r(!this.buildCalled);
            factory.getClass();
            this.mediaSourceFactorySupplier = new kd8() { // from class: i33
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return ExoPlayer.Builder.lambda$setMediaSourceFactory$17(factory);
                }
            };
            return this;
        }

        public Builder setName(String str) {
            o8.r(!this.buildCalled);
            o8.e(!str.equals(PlayerId.PRELOAD.name));
            this.playerName = str;
            return this;
        }

        public Builder setPauseAtEndOfMediaItems(boolean z) {
            o8.r(!this.buildCalled);
            this.pauseAtEndOfMediaItems = z;
            return this;
        }

        public Builder setPlaybackLooper(Looper looper) {
            o8.r((this.buildCalled || looper == Looper.getMainLooper()) ? false : true);
            this.playbackLooperProvider = new PlaybackLooperProvider(looper);
            return this;
        }

        public Builder setPlaybackLooperProvider(PlaybackLooperProvider playbackLooperProvider) {
            o8.r(!this.buildCalled);
            this.playbackLooperProvider = playbackLooperProvider;
            return this;
        }

        public Builder setPriority(int i) {
            o8.r(!this.buildCalled);
            this.priority = i;
            return this;
        }

        public Builder setPriorityTaskManager(PriorityTaskManager priorityTaskManager) {
            o8.r(!this.buildCalled);
            this.priorityTaskManager = priorityTaskManager;
            return this;
        }

        public Builder setReleaseTimeoutMs(long j) {
            o8.r(!this.buildCalled);
            this.releaseTimeoutMs = j;
            return this;
        }

        public Builder setRenderersFactory(RenderersFactory renderersFactory) {
            o8.r(!this.buildCalled);
            renderersFactory.getClass();
            this.renderersFactorySupplier = new r23(renderersFactory, 0);
            return this;
        }

        public Builder setScrubbingModeParameters(ScrubbingModeParameters scrubbingModeParameters) {
            o8.r(!this.buildCalled);
            scrubbingModeParameters.getClass();
            this.scrubbingModeParameters = scrubbingModeParameters;
            return this;
        }

        public Builder setSeekBackIncrementMs(long j) {
            o8.e(j > 0);
            o8.r(!this.buildCalled);
            this.seekBackIncrementMs = j;
            return this;
        }

        public Builder setSeekForwardIncrementMs(long j) {
            o8.e(j > 0);
            o8.r(!this.buildCalled);
            this.seekForwardIncrementMs = j;
            return this;
        }

        public Builder setSeekParameters(SeekParameters seekParameters) {
            o8.r(!this.buildCalled);
            seekParameters.getClass();
            this.seekParameters = seekParameters;
            return this;
        }

        public Builder setSkipSilenceEnabled(boolean z) {
            o8.r(!this.buildCalled);
            this.skipSilenceEnabled = z;
            return this;
        }

        public Builder setStuckBufferingDetectionTimeoutMs(int i) {
            o8.r(!this.buildCalled);
            o8.e(i > 0);
            this.stuckBufferingDetectionTimeoutMs = i;
            return this;
        }

        public Builder setStuckPlayingDetectionTimeoutMs(int i) {
            o8.r(!this.buildCalled);
            o8.e(i > 0);
            this.stuckPlayingDetectionTimeoutMs = i;
            return this;
        }

        public Builder setStuckPlayingNotEndingTimeoutMs(int i) {
            o8.r(!this.buildCalled);
            o8.e(i > 0);
            this.stuckPlayingNotEndingTimeoutMs = i;
            return this;
        }

        public Builder setStuckSuppressedDetectionTimeoutMs(int i) {
            o8.r(!this.buildCalled);
            o8.e(i > 0);
            this.stuckSuppressedDetectionTimeoutMs = i;
            return this;
        }

        public Builder setSuitableOutputChecker(SuitableOutputChecker suitableOutputChecker) {
            o8.r(!this.buildCalled);
            this.suitableOutputChecker = suitableOutputChecker;
            return this;
        }

        public Builder setSuppressPlaybackOnUnsuitableOutput(boolean z) {
            o8.r(!this.buildCalled);
            this.suppressPlaybackOnUnsuitableOutput = z;
            return this;
        }

        public Builder setTrackSelector(final TrackSelector trackSelector) {
            o8.r(!this.buildCalled);
            trackSelector.getClass();
            this.trackSelectorSupplier = new kd8() { // from class: h33
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return ExoPlayer.Builder.lambda$setTrackSelector$18(trackSelector);
                }
            };
            return this;
        }

        public Builder setUseLazyPreparation(boolean z) {
            o8.r(!this.buildCalled);
            this.useLazyPreparation = z;
            return this;
        }

        public Builder setUsePlatformDiagnostics(boolean z) {
            o8.r(!this.buildCalled);
            this.usePlatformDiagnostics = z;
            return this;
        }

        public Builder setVideoChangeFrameRateStrategy(int i) {
            o8.r(!this.buildCalled);
            this.videoChangeFrameRateStrategy = i;
            return this;
        }

        public Builder setVideoScalingMode(int i) {
            o8.r(!this.buildCalled);
            this.videoScalingMode = i;
            return this;
        }

        public Builder setWakeMode(int i) {
            o8.r(!this.buildCalled);
            this.wakeMode = i;
            this.wakeModeSet = true;
            return this;
        }

        public Builder(final Context context, final RenderersFactory renderersFactory) {
            this(context, (kd8<RenderersFactory>) new kd8() { // from class: u23
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return ExoPlayer.Builder.lambda$new$2(renderersFactory);
                }
            }, (kd8<MediaSource.Factory>) new kd8() { // from class: v23
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return ExoPlayer.Builder.lambda$new$3(context);
                }
            });
            renderersFactory.getClass();
        }

        public Builder(Context context, MediaSource.Factory factory) {
            this(context, new vt(context, 1), new g33(factory, 0));
            factory.getClass();
        }

        public Builder(Context context, final RenderersFactory renderersFactory, MediaSource.Factory factory) {
            this(context, (kd8<RenderersFactory>) new kd8() { // from class: s23
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return ExoPlayer.Builder.lambda$new$6(renderersFactory);
                }
            }, new t23(factory, 0));
            renderersFactory.getClass();
            factory.getClass();
        }

        public Builder(Context context, final RenderersFactory renderersFactory, MediaSource.Factory factory, final TrackSelector trackSelector, final LoadControl loadControl, BandwidthMeter bandwidthMeter, final AnalyticsCollector analyticsCollector) {
            this(context, (kd8<RenderersFactory>) new kd8() { // from class: w23
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return ExoPlayer.Builder.lambda$new$8(renderersFactory);
                }
            }, new x23(factory, 0), (kd8<TrackSelector>) new kd8() { // from class: z23
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return ExoPlayer.Builder.lambda$new$10(trackSelector);
                }
            }, (kd8<LoadControl>) new kd8() { // from class: a33
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return ExoPlayer.Builder.lambda$new$11(loadControl);
                }
            }, new b33(bandwidthMeter, 0), (lm3<Clock, AnalyticsCollector>) new lm3() { // from class: c33
                @Override // defpackage.lm3
                public final Object apply(Object obj) {
                    return ExoPlayer.Builder.lambda$new$13(analyticsCollector, (Clock) obj);
                }
            });
            renderersFactory.getClass();
            factory.getClass();
            trackSelector.getClass();
            bandwidthMeter.getClass();
            analyticsCollector.getClass();
        }

        private Builder(final Context context, kd8<RenderersFactory> kd8Var, kd8<MediaSource.Factory> kd8Var2) {
            this(context, kd8Var, kd8Var2, (kd8<TrackSelector>) new kd8() { // from class: d33
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return ExoPlayer.Builder.lambda$new$14(context);
                }
            }, new e33(), (kd8<BandwidthMeter>) new kd8() { // from class: f33
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return DefaultBandwidthMeter.getSingletonInstance(context);
                }
            }, new ck2(1));
        }

        public Builder(final Context context) {
            this(context, (kd8<RenderersFactory>) new kd8() { // from class: p23
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return ExoPlayer.Builder.lambda$new$0(context);
                }
            }, (kd8<MediaSource.Factory>) new kd8() { // from class: q23
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return ExoPlayer.Builder.lambda$new$1(context);
                }
            });
        }
    }
}
