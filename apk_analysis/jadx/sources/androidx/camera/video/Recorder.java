package androidx.camera.video;

import android.content.ContentValues;
import android.content.Context;
import android.location.Location;
import android.media.MediaFormat;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Range;
import android.util.Rational;
import android.view.Surface;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.MutableStateObservable;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.StateObservable;
import androidx.camera.core.impl.Timebase;
import androidx.camera.core.impl.utils.CloseGuardHelper;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.utils.ArrayRingBuffer;
import androidx.camera.core.internal.utils.RingBuffer;
import androidx.camera.video.AudioSpec;
import androidx.camera.video.VideoSpec;
import androidx.camera.video.internal.DebugUtils;
import androidx.camera.video.internal.OutputStorage;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.camera.video.internal.audio.AudioSettings;
import androidx.camera.video.internal.audio.AudioSource;
import androidx.camera.video.internal.audio.AudioSourceAccessException;
import androidx.camera.video.internal.config.AudioConfigUtil;
import androidx.camera.video.internal.config.AudioMimeInfo;
import androidx.camera.video.internal.config.VideoConfigUtil;
import androidx.camera.video.internal.encoder.BufferCopiedEncodedData;
import androidx.camera.video.internal.encoder.EncodeException;
import androidx.camera.video.internal.encoder.EncodedData;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.camera.video.internal.encoder.EncoderCallback;
import androidx.camera.video.internal.encoder.EncoderFactory;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.camera.video.internal.encoder.InvalidConfigException;
import androidx.camera.video.internal.encoder.OutputConfig;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.camera.video.internal.encoder.VideoEncoderInfoImpl;
import androidx.camera.video.internal.muxer.Media3MuxerImpl;
import androidx.camera.video.internal.muxer.MediaMuxerImpl;
import androidx.camera.video.internal.muxer.Muxer;
import androidx.camera.video.internal.muxer.MuxerException;
import androidx.camera.video.internal.muxer.MuxerFactory;
import androidx.camera.video.internal.utils.OutputUtil;
import androidx.camera.video.internal.utils.StorageUtil;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.ad2;
import defpackage.ah;
import defpackage.fg;
import defpackage.hl0;
import defpackage.i2;
import defpackage.i29;
import defpackage.kg2;
import defpackage.ki0;
import defpackage.kv2;
import defpackage.m2;
import defpackage.n2;
import defpackage.p2;
import defpackage.rk3;
import defpackage.tz6;
import defpackage.vz6;
import defpackage.wz6;
import defpackage.xg;
import defpackage.xz6;
import defpackage.zs2;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class Recorder implements VideoOutput {
    private static final int AUDIO_CACHE_SIZE = 60;
    private static final Executor AUDIO_EXECUTOR;
    static final EncoderFactory DEFAULT_ENCODER_FACTORY;
    private static final MuxerFactory DEFAULT_MUXER_FACTORY;
    public static final QualitySelector DEFAULT_QUALITY_SELECTOR;
    private static final VideoEncoderInfo.Finder DEFAULT_VIDEO_ENCODER_INFO_FINDER;
    private static final String INSUFFICIENT_STORAGE_ERROR_MSG = "Insufficient storage space. The available storage (%d bytes) is below the required threshold of %d bytes.";
    private static final String MEDIA_COLUMN = "_data";
    private static final MediaSpec MEDIA_SPEC_DEFAULT;
    private static final int NOT_PENDING = 0;
    private static final OutputStorage.Factory OUTPUT_STORAGE_FACTORY_DEFAULT;
    private static final int PENDING = 1;
    private static final Exception PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE;
    private static final long REQUIRED_FREE_STORAGE_DEFAULT_BYTES = 52428800;
    private static final long REQUIRED_FREE_STORAGE_UNSET = -1;
    private static final long RETRY_SETUP_VIDEO_DELAY_MS = 1000;
    private static final int RETRY_SETUP_VIDEO_MAX_COUNT = 3;
    private static final long SOURCE_NON_STREAMING_TIMEOUT_MS = 1000;
    private static final String TAG = "Recorder";
    public static final int VIDEO_CAPABILITIES_SOURCE_CAMCORDER_PROFILE = 0;
    public static final int VIDEO_CAPABILITIES_SOURCE_CODEC_CAPABILITIES = 1;
    static final int VIDEO_RECORDING_TYPE_HIGH_SPEED = 2;
    static final int VIDEO_RECORDING_TYPE_REGULAR = 1;
    private static final VideoSpec VIDEO_SPEC_DEFAULT;
    static long sRetrySetupVideoDelayMs;
    static int sRetrySetupVideoMaxCount;
    private final EncoderFactory mAudioEncoderFactory;
    private final Executor mExecutor;
    private final MutableStateObservable<Boolean> mIsRecording;
    SurfaceRequest mLatestSurfaceRequest;
    final MutableStateObservable<MediaSpec> mMediaSpec;
    private final MuxerFactory mMuxerFactory;
    private final OutputStorage.Factory mOutputStorageFactory;
    private final long mRequiredFreeStorageBytes;
    final Executor mSequentialExecutor;
    private final MutableStateObservable<StreamInfo> mStreamInfo;
    private final Executor mUserProvidedExecutor;
    private final int mVideoCapabilitiesSource;
    private final EncoderFactory mVideoEncoderFactory;
    VideoEncoderSession mVideoEncoderSession;
    Timebase mVideoSourceTimebase;
    private static final Set<State> PENDING_STATES = Collections.unmodifiableSet(EnumSet.of(State.PENDING_RECORDING, State.PENDING_PAUSED));
    private static final Set<State> VALID_NON_PENDING_STATES_WHILE_PENDING = Collections.unmodifiableSet(EnumSet.of(State.CONFIGURING, State.IDLING, State.RESETTING, State.STOPPING, State.ERROR));
    private final Object mLock = new Object();
    private final MutableStateObservable<Range<Integer>> mVideoEncoderBitrateRange = MutableStateObservable.withInitialState(null);
    private State mState = State.CONFIGURING;
    private State mNonPendingState = null;
    int mStreamId = 0;
    RecordingRecord mActiveRecordingRecord = null;
    RecordingRecord mPendingRecordingRecord = null;
    private long mLastGeneratedRecordingId = 0;
    RecordingRecord mInProgressRecording = null;
    boolean mInProgressRecordingStopping = false;
    private SurfaceRequest.TransformationInfo mInProgressTransformationInfo = null;
    private SurfaceRequest.TransformationInfo mSourceTransformationInfo = null;
    private VideoValidatedEncoderProfilesProxy mResolvedEncoderProfiles = null;
    final List<ListenableFuture<Void>> mEncodingFutures = new ArrayList();
    Integer mAudioTrackIndex = null;
    Integer mVideoTrackIndex = null;
    Surface mLatestSurface = null;
    Surface mActiveSurface = null;
    Muxer mMuxer = null;
    AudioSource mAudioSource = null;
    Encoder mVideoEncoder = null;
    OutputConfig mVideoOutputConfig = null;
    Encoder mAudioEncoder = null;
    OutputConfig mAudioOutputConfig = null;
    AudioState mAudioState = AudioState.INITIALIZING;
    Uri mOutputUri = Uri.EMPTY;
    long mRecordingBytes = 0;
    long mRecordingAudioBytes = 0;
    long mRecordingDurationUs = 0;
    long mFirstRecordingVideoDataTimeUs = Long.MAX_VALUE;
    int mFirstRecordingVideoBitrate = 0;
    long mFirstRecordingAudioDataTimeUs = Long.MAX_VALUE;
    long mPreviousRecordingVideoDataTimeUs = Long.MAX_VALUE;
    long mPreviousRecordingAudioDataTimeUs = Long.MAX_VALUE;
    long mFileSizeLimitInBytes = 0;
    long mDurationLimitUs = 0;
    int mRecordingStopError = 1;
    Throwable mRecordingStopErrorCause = null;
    EncodedData mPendingFirstVideoData = null;
    final RingBuffer<EncodedData> mPendingAudioRingBuffer = new ArrayRingBuffer(60);
    Throwable mAudioErrorCause = null;
    boolean mIsAudioSourceSilenced = false;
    VideoOutput.SourceState mSourceState = VideoOutput.SourceState.INACTIVE;
    ScheduledFuture<?> mSourceNonStreamingTimeout = null;
    private boolean mNeedsResetBeforeNextStart = false;
    private VideoEncoderConfig mVideoEncoderConfig = null;
    VideoEncoderSession mVideoEncoderSessionToRelease = null;
    double mAudioAmplitude = 0.0d;
    private boolean mShouldSendResumeEvent = false;
    private SetupVideoTask mSetupVideoTask = null;
    private OutputStorage mOutputStorage = null;
    private long mAvailableBytesAboveRequired = Long.MAX_VALUE;
    private boolean mHasGlProcessing = false;

    public enum AudioState {
        INITIALIZING,
        IDLING,
        DISABLED,
        ENABLED,
        ERROR_ENCODER,
        ERROR_SOURCE
    }

    public static final class Builder {
        private EncoderFactory mAudioEncoderFactory;
        private final MediaSpec.Builder mMediaSpecBuilder;
        private MuxerFactory mMuxerFactory;
        private OutputStorage.Factory mOutputStorageFactory;
        private long mRequiredFreeStorageBytes;
        private EncoderFactory mVideoEncoderFactory;
        private int mVideoCapabilitiesSource = 0;
        private Executor mExecutor = null;

        public Builder() {
            EncoderFactory encoderFactory = Recorder.DEFAULT_ENCODER_FACTORY;
            this.mVideoEncoderFactory = encoderFactory;
            this.mAudioEncoderFactory = encoderFactory;
            this.mMuxerFactory = Recorder.DEFAULT_MUXER_FACTORY;
            this.mOutputStorageFactory = Recorder.OUTPUT_STORAGE_FACTORY_DEFAULT;
            this.mRequiredFreeStorageBytes = -1L;
            this.mMediaSpecBuilder = Recorder.MEDIA_SPEC_DEFAULT.toBuilder();
        }

        public Recorder build() {
            return new Recorder(this.mExecutor, this.mMediaSpecBuilder.build(), this.mVideoCapabilitiesSource, this.mVideoEncoderFactory, this.mAudioEncoderFactory, this.mMuxerFactory, this.mOutputStorageFactory, this.mRequiredFreeStorageBytes);
        }

        public Builder setAspectRatio(final int i) {
            this.mMediaSpecBuilder.configureVideo(new Consumer() { // from class: d07
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    ((VideoSpec.Builder) obj).setAspectRatio(i);
                }
            });
            return this;
        }

        public Builder setAudioEncoderFactory(EncoderFactory encoderFactory) {
            this.mAudioEncoderFactory = encoderFactory;
            return this;
        }

        public Builder setAudioSource(final int i) {
            this.mMediaSpecBuilder.configureAudio(new Consumer() { // from class: c07
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    ((AudioSpec.Builder) obj).setSource(i);
                }
            });
            return this;
        }

        public Builder setExecutor(Executor executor) {
            Preconditions.checkNotNull(executor, "The specified executor can't be null.");
            this.mExecutor = executor;
            return this;
        }

        public Builder setMuxerFactory(MuxerFactory muxerFactory) {
            this.mMuxerFactory = muxerFactory;
            return this;
        }

        public Builder setOutputStorageFactory(OutputStorage.Factory factory) {
            this.mOutputStorageFactory = factory;
            return this;
        }

        public Builder setQualitySelector(final QualitySelector qualitySelector) {
            Preconditions.checkNotNull(qualitySelector, "The specified quality selector can't be null.");
            this.mMediaSpecBuilder.configureVideo(new Consumer() { // from class: e07
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    ((VideoSpec.Builder) obj).setQualitySelector(qualitySelector);
                }
            });
            return this;
        }

        public Builder setRequiredFreeStorageBytes(long j) {
            Preconditions.checkArgument(j > 0);
            this.mRequiredFreeStorageBytes = j;
            return this;
        }

        public Builder setTargetVideoEncodingBitRate(final int i) {
            if (i > 0) {
                this.mMediaSpecBuilder.configureVideo(new Consumer() { // from class: b07
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ((VideoSpec.Builder) obj).setBitrate(i);
                    }
                });
                return this;
            }
            fg.c(kv2.b(i, "The requested target bitrate ", " is not supported. Target bitrate must be greater than 0."));
            return null;
        }

        public Builder setVideoCapabilitiesSource(int i) {
            boolean z = true;
            if (i != 0 && i != 1) {
                z = false;
            }
            Preconditions.checkArgument(z, "Not a supported video capabilities source: " + i);
            this.mVideoCapabilitiesSource = i;
            return this;
        }

        public Builder setVideoEncoderFactory(EncoderFactory encoderFactory) {
            this.mVideoEncoderFactory = encoderFactory;
            return this;
        }
    }

    public class SetupVideoTask {
        private final int mMaxRetryCount;
        private final SurfaceRequest mSurfaceRequest;
        private final Timebase mTimebase;
        private boolean mIsFailedRetryCanceled = false;
        private int mRetryCount = 0;
        private ScheduledFuture<?> mRetryFuture = null;

        /* JADX INFO: renamed from: androidx.camera.video.Recorder$SetupVideoTask$1, reason: invalid class name */
        public class AnonymousClass1 implements FutureCallback<Encoder> {
            final /* synthetic */ VideoEncoderSession val$videoEncoderSession;

            public AnonymousClass1(VideoEncoderSession videoEncoderSession) {
                this.val$videoEncoderSession = videoEncoderSession;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onFailure$0() {
                if (SetupVideoTask.this.mIsFailedRetryCanceled) {
                    return;
                }
                Logger.d(Recorder.TAG, "Retry setupVideo #" + SetupVideoTask.this.mRetryCount);
                SetupVideoTask setupVideoTask = SetupVideoTask.this;
                setupVideoTask.setupVideo(setupVideoTask.mSurfaceRequest, SetupVideoTask.this.mTimebase);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(Throwable th) {
                Logger.w(Recorder.TAG, "VideoEncoder Setup error: " + th, th);
                int i = SetupVideoTask.this.mRetryCount;
                int i2 = SetupVideoTask.this.mMaxRetryCount;
                SetupVideoTask setupVideoTask = SetupVideoTask.this;
                if (i >= i2) {
                    Recorder.this.onEncoderSetupError(th);
                    return;
                }
                SetupVideoTask.access$608(setupVideoTask);
                SetupVideoTask setupVideoTask2 = SetupVideoTask.this;
                setupVideoTask2.mRetryFuture = Recorder.scheduleTask(new Runnable() { // from class: androidx.camera.video.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.b.lambda$onFailure$0();
                    }
                }, Recorder.this.mSequentialExecutor, Recorder.sRetrySetupVideoDelayMs, TimeUnit.MILLISECONDS);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(Encoder encoder) {
                Logger.d(Recorder.TAG, "VideoEncoder is created. " + encoder);
                if (encoder == null) {
                    return;
                }
                Preconditions.checkState(Recorder.this.mVideoEncoderSession == this.val$videoEncoderSession);
                Preconditions.checkState(Recorder.this.mVideoEncoder == null);
                Recorder.this.onVideoEncoderReady(this.val$videoEncoderSession);
                Recorder.this.onConfigured();
            }
        }

        public SetupVideoTask(SurfaceRequest surfaceRequest, Timebase timebase, boolean z, int i) {
            this.mSurfaceRequest = surfaceRequest;
            this.mTimebase = timebase;
            Recorder.this.mHasGlProcessing = z;
            this.mMaxRetryCount = i;
        }

        public static /* synthetic */ int access$608(SetupVideoTask setupVideoTask) {
            int i = setupVideoTask.mRetryCount;
            setupVideoTask.mRetryCount = i + 1;
            return i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setupVideo$0(SurfaceRequest surfaceRequest, Timebase timebase) {
            if (surfaceRequest.isServiced() || (Recorder.this.mVideoEncoderSession.isConfiguredSurfaceRequest(surfaceRequest) && !Recorder.this.isPersistentRecordingInProgress())) {
                Logger.w(Recorder.TAG, "Ignore the SurfaceRequest " + surfaceRequest + " isServiced: " + surfaceRequest.isServiced() + " VideoEncoderSession: " + Recorder.this.mVideoEncoderSession + " has been configured with a persistent in-progress recording.");
                return;
            }
            EncoderFactory encoderFactory = Recorder.this.mVideoEncoderFactory;
            Recorder recorder = Recorder.this;
            VideoEncoderSession videoEncoderSession = new VideoEncoderSession(encoderFactory, recorder.mSequentialExecutor, recorder.mExecutor);
            Recorder recorder2 = Recorder.this;
            MediaSpec mediaSpec = (MediaSpec) recorder2.getObservableData(recorder2.mMediaSpec);
            DynamicRange dynamicRange = surfaceRequest.getDynamicRange();
            VideoEncoderConfig videoEncoderConfigWorkaroundDataSpaceIfRequired = VideoConfigUtil.workaroundDataSpaceIfRequired(VideoConfigUtil.resolveVideoEncoderConfig(VideoConfigUtil.resolveVideoMimeInfo(mediaSpec, dynamicRange, Recorder.this.mResolvedEncoderProfiles), timebase, mediaSpec.getVideoSpec(), surfaceRequest.getResolution(), dynamicRange, surfaceRequest.getExpectedFrameRate()), Recorder.this.mHasGlProcessing);
            Recorder.this.mVideoEncoderConfig = videoEncoderConfigWorkaroundDataSpaceIfRequired;
            ListenableFuture<Encoder> listenableFutureConfigure = videoEncoderSession.configure(surfaceRequest, videoEncoderConfigWorkaroundDataSpaceIfRequired);
            Recorder.this.mVideoEncoderSession = videoEncoderSession;
            Futures.addCallback(listenableFutureConfigure, new AnonymousClass1(videoEncoderSession), Recorder.this.mSequentialExecutor);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setupVideo(final SurfaceRequest surfaceRequest, final Timebase timebase) {
            Recorder.this.safeToCloseVideoEncoder().addListener(new Runnable() { // from class: androidx.camera.video.n
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.lambda$setupVideo$0(surfaceRequest, timebase);
                }
            }, Recorder.this.mSequentialExecutor);
        }

        public void cancelFailedRetry() {
            if (this.mIsFailedRetryCanceled) {
                return;
            }
            this.mIsFailedRetryCanceled = true;
            ScheduledFuture<?> scheduledFuture = this.mRetryFuture;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                this.mRetryFuture = null;
            }
        }

        public void start() {
            setupVideo(this.mSurfaceRequest, this.mTimebase);
        }
    }

    public enum State {
        CONFIGURING,
        PENDING_RECORDING,
        PENDING_PAUSED,
        IDLING,
        RECORDING,
        PAUSED,
        STOPPING,
        RESETTING,
        ERROR
    }

    static {
        Quality quality = Quality.FHD;
        QualitySelector qualitySelectorFromOrderedList = QualitySelector.fromOrderedList(Arrays.asList(quality, Quality.HD, Quality.SD), FallbackStrategy.higherQualityOrLowerThan(quality));
        DEFAULT_QUALITY_SELECTOR = qualitySelectorFromOrderedList;
        VideoSpec videoSpecBuild = VideoSpec.builder().setQualitySelector(qualitySelectorFromOrderedList).setAspectRatio(-1).build();
        VIDEO_SPEC_DEFAULT = videoSpecBuild;
        MEDIA_SPEC_DEFAULT = MediaSpec.builder().setOutputFormat(-1).setVideoSpec(videoSpecBuild).build();
        PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE = new RuntimeException("The video frame producer became inactive before any data was received.");
        DEFAULT_ENCODER_FACTORY = new m2(6);
        DEFAULT_VIDEO_ENCODER_INFO_FINDER = VideoEncoderInfoImpl.FINDER;
        DEFAULT_MUXER_FACTORY = new n2();
        OUTPUT_STORAGE_FACTORY_DEFAULT = new p2(3);
        AUDIO_EXECUTOR = CameraXExecutors.newSequentialExecutor(CameraXExecutors.ioExecutor());
        sRetrySetupVideoMaxCount = 3;
        sRetrySetupVideoDelayMs = 1000L;
    }

    public Recorder(Executor executor, MediaSpec mediaSpec, int i, EncoderFactory encoderFactory, EncoderFactory encoderFactory2, MuxerFactory muxerFactory, OutputStorage.Factory factory, long j) {
        this.mUserProvidedExecutor = executor;
        executor = executor == null ? CameraXExecutors.ioExecutor() : executor;
        this.mExecutor = executor;
        Executor executorNewSequentialExecutor = CameraXExecutors.newSequentialExecutor(executor);
        this.mSequentialExecutor = executorNewSequentialExecutor;
        this.mMediaSpec = MutableStateObservable.withInitialState(composeRecorderMediaSpec(mediaSpec));
        this.mVideoCapabilitiesSource = i;
        this.mStreamInfo = MutableStateObservable.withInitialState(StreamInfo.of(this.mStreamId, internalStateToStreamState(this.mState)));
        this.mIsRecording = MutableStateObservable.withInitialState(Boolean.FALSE);
        this.mVideoEncoderFactory = encoderFactory;
        this.mAudioEncoderFactory = encoderFactory2;
        this.mMuxerFactory = muxerFactory;
        this.mOutputStorageFactory = factory;
        this.mVideoEncoderSession = new VideoEncoderSession(encoderFactory, executorNewSequentialExecutor, executor);
        j = j == -1 ? REQUIRED_FREE_STORAGE_DEFAULT_BYTES : j;
        this.mRequiredFreeStorageBytes = j;
        Logger.d(TAG, "mRequiredFreeStorageBytes = " + StorageUtil.formatSize(j));
    }

    private void clearPendingAudioRingBuffer() {
        while (!this.mPendingAudioRingBuffer.isEmpty()) {
            this.mPendingAudioRingBuffer.dequeue().close();
        }
    }

    private MediaSpec composeRecorderMediaSpec(MediaSpec mediaSpec) {
        MediaSpec.Builder builder = mediaSpec.toBuilder();
        if (mediaSpec.getVideoSpec().getAspectRatio() == -1) {
            builder.configureVideo(new wz6());
        }
        return builder.build();
    }

    private void configureInternal(SurfaceRequest surfaceRequest, Timebase timebase, boolean z) {
        if (surfaceRequest.isServiced()) {
            Logger.w(TAG, "Ignore the SurfaceRequest since it is already served.");
            return;
        }
        surfaceRequest.setTransformationInfoListener(this.mSequentialExecutor, new hl0(this, 5));
        this.mResolvedEncoderProfiles = getEncoderProfilesResolver(surfaceRequest.getCamera().getCameraInfo(), surfaceRequest.getSessionType()).findNearestHigherSupportedEncoderProfilesFor(surfaceRequest.getResolution(), surfaceRequest.getDynamicRange());
        Logger.d(TAG, "mResolvedEncoderProfiles = " + this.mResolvedEncoderProfiles);
        SetupVideoTask setupVideoTask = this.mSetupVideoTask;
        if (setupVideoTask != null) {
            setupVideoTask.cancelFailedRetry();
        }
        SetupVideoTask setupVideoTask2 = new SetupVideoTask(surfaceRequest, timebase, this.mHasGlProcessing, z ? sRetrySetupVideoMaxCount : 0);
        this.mSetupVideoTask = setupVideoTask2;
        setupVideoTask2.start();
    }

    private void finalizePendingRecording(RecordingRecord recordingRecord, int i, Throwable th) {
        Uri uri = Uri.EMPTY;
        recordingRecord.finalizeRecording(uri);
        recordingRecord.updateVideoRecordEvent(VideoRecordEvent.finalizeWithError(recordingRecord.getOutputOptions(), RecordingStats.of(0L, 0L, AudioStats.of(1, this.mAudioErrorCause, 0.0d, 0L)), OutputResults.of(uri), i, th));
    }

    private List<EncodedData> getAudioDataToWriteAndClearCache(long j) {
        ArrayList arrayList = new ArrayList();
        while (!this.mPendingAudioRingBuffer.isEmpty()) {
            EncodedData encodedDataDequeue = this.mPendingAudioRingBuffer.dequeue();
            if (encodedDataDequeue.getPresentationTimeUs() >= j) {
                arrayList.add(encodedDataDequeue);
            }
        }
        return arrayList;
    }

    private static EncoderProfilesResolver getEncoderProfilesResolverInternal(int i, CameraInfo cameraInfo, int i2) {
        return EncoderProfilesResolverFactory.getResolver(cameraInfo, i, i2, DEFAULT_VIDEO_ENCODER_INFO_FINDER);
    }

    public static VideoCapabilities getHighSpeedVideoCapabilities(CameraInfo cameraInfo, int i) {
        VideoCapabilities videoCapabilitiesInternal = getVideoCapabilitiesInternal(2, cameraInfo, i, VideoSpec.MIME_TYPE_UNSPECIFIED);
        if (videoCapabilitiesInternal.getSupportedDynamicRanges().isEmpty()) {
            return null;
        }
        return videoCapabilitiesInternal;
    }

    public static VideoCapabilities getVideoCapabilities(CameraInfo cameraInfo) {
        return getVideoCapabilitiesInternal(1, cameraInfo, 0, VideoSpec.MIME_TYPE_UNSPECIFIED);
    }

    private static VideoCapabilities getVideoCapabilitiesInternal(int i, CameraInfo cameraInfo, int i2, String str) {
        CameraInfoInternal cameraInfoInternal = (CameraInfoInternal) cameraInfo;
        return VideoSpec.MIME_TYPE_UNSPECIFIED.equals(str) ? new RecorderVideoCapabilities(getEncoderProfilesResolverInternal(i, cameraInfo, i2), cameraInfoInternal) : new MimeMatchedVideoCapabilities(str, cameraInfoInternal, DEFAULT_VIDEO_ENCODER_INFO_FINDER);
    }

    private boolean hasInsufficientStorage(long j) {
        return j < this.mRequiredFreeStorageBytes;
    }

    private boolean hasInsufficientStorageOrException(Throwable th) {
        if (StorageUtil.isStorageFullException(th)) {
            return true;
        }
        return hasInsufficientStorage(((OutputStorage) Preconditions.checkNotNull(this.mOutputStorage)).getAvailableBytes());
    }

    private boolean hasInvalidRecordData() {
        if (this.mRecordingBytes > 0) {
            return isAudioEnabled() && this.mRecordingAudioBytes <= 0;
        }
        return true;
    }

    private int internalAudioStateToAudioStatsState(AudioState audioState) {
        int iOrdinal = audioState.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1 || iOrdinal == 2) {
            return 1;
        }
        if (iOrdinal == 3) {
            RecordingRecord recordingRecord = this.mInProgressRecording;
            if (recordingRecord == null || !recordingRecord.isMuted()) {
                return this.mIsAudioSourceSilenced ? 2 : 0;
            }
            return 5;
        }
        if (iOrdinal == 4) {
            return 3;
        }
        if (iOrdinal == 5) {
            return 4;
        }
        i2.d(audioState, "Invalid internal audio state: ");
        return 0;
    }

    private StreamInfo.StreamState internalStateToStreamState(State state) {
        return (state == State.RECORDING || state == State.STOPPING) ? StreamInfo.StreamState.ACTIVE : StreamInfo.StreamState.INACTIVE;
    }

    private static boolean isSameRecording(Recording recording, RecordingRecord recordingRecord) {
        return recordingRecord != null && recording.getRecordingId() == recordingRecord.getRecordingId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$composeRecorderMediaSpec$10(VideoSpec.Builder builder) {
        builder.setAspectRatio(VIDEO_SPEC_DEFAULT.getAspectRatio());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$configureInternal$9(SurfaceRequest.TransformationInfo transformationInfo) {
        this.mSourceTransformationInfo = transformationInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupAndStartMuxer$11(Uri uri) {
        this.mOutputUri = uri;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$4() {
        SurfaceRequest surfaceRequest = this.mLatestSurfaceRequest;
        if (surfaceRequest != null) {
            configureInternal(surfaceRequest, this.mVideoSourceTimebase, false);
        } else {
            xg.d("surface request is required to retry initialization.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Muxer lambda$static$0(int i) {
        if (i == 0 || i == 2) {
            Logger.d(TAG, "Create Media3MuxerImpl");
            return new Media3MuxerImpl();
        }
        Logger.d(TAG, "Create MediaMuxerImpl");
        return new MediaMuxerImpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$updateEncoderCallbacks$12(final RecordingRecord recordingRecord, final CallbackToFutureAdapter.Completer completer) {
        this.mVideoEncoder.setEncoderCallback(new EncoderCallback() { // from class: androidx.camera.video.Recorder.3
            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodeError(EncodeException encodeException) {
                completer.setException(encodeException);
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodeStart() {
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodeStop() {
                completer.set(null);
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodedData(EncodedData encodedData) {
                boolean z;
                Recorder recorder = Recorder.this;
                if (recorder.mMuxer != null) {
                    try {
                        recorder.writeVideoData(encodedData, recordingRecord);
                        if (encodedData != null) {
                            encodedData.close();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        if (encodedData != null) {
                            try {
                                encodedData.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                }
                if (recorder.mInProgressRecordingStopping) {
                    Logger.d(Recorder.TAG, "Drop video data since recording is stopping.");
                    encodedData.close();
                    return;
                }
                EncodedData encodedData2 = recorder.mPendingFirstVideoData;
                if (encodedData2 != null) {
                    encodedData2.close();
                    Recorder.this.mPendingFirstVideoData = null;
                    z = true;
                } else {
                    z = false;
                }
                if (!encodedData.isKeyFrame()) {
                    if (z) {
                        Logger.d(Recorder.TAG, "Dropped cached keyframe since we have new video data and have not yet received audio data.");
                    }
                    Logger.d(Recorder.TAG, "Dropped video data since muxer has not yet started and data is not a keyframe.");
                    Recorder.this.mVideoEncoder.requestKeyFrame();
                    encodedData.close();
                    return;
                }
                Recorder recorder2 = Recorder.this;
                recorder2.mPendingFirstVideoData = encodedData;
                if (!recorder2.isAudioEnabled() || !Recorder.this.mPendingAudioRingBuffer.isEmpty()) {
                    Logger.d(Recorder.TAG, "Received video keyframe. Starting muxer...");
                    Recorder.this.setupAndStartMuxer(recordingRecord);
                } else if (z) {
                    Logger.d(Recorder.TAG, "Replaced cached video keyframe with newer keyframe.");
                } else {
                    Logger.d(Recorder.TAG, "Cached video keyframe while we wait for first audio sample before starting muxer.");
                }
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onOutputConfigUpdate(OutputConfig outputConfig) {
                Recorder.this.mVideoOutputConfig = outputConfig;
            }
        }, this.mSequentialExecutor);
        return "videoEncodingFuture";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateEncoderCallbacks$13(CallbackToFutureAdapter.Completer completer, Throwable th) {
        if (this.mAudioErrorCause == null) {
            if (th instanceof EncodeException) {
                setAudioState(AudioState.ERROR_ENCODER);
            } else {
                setAudioState(AudioState.ERROR_SOURCE);
            }
            this.mAudioErrorCause = th;
            updateInProgressStatusEvent(true);
            completer.set(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$updateEncoderCallbacks$14(final RecordingRecord recordingRecord, final CallbackToFutureAdapter.Completer completer) {
        final Consumer consumer = new Consumer() { // from class: yz6
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                this.b.lambda$updateEncoderCallbacks$13(completer, (Throwable) obj);
            }
        };
        this.mAudioSource.setAudioSourceCallback(this.mSequentialExecutor, new AudioSource.AudioSourceCallback() { // from class: androidx.camera.video.Recorder.4
            @Override // androidx.camera.video.internal.audio.AudioSource.AudioSourceCallback
            public void onAmplitudeValue(double d) {
                Recorder.this.mAudioAmplitude = d;
            }

            @Override // androidx.camera.video.internal.audio.AudioSource.AudioSourceCallback
            public void onError(Throwable th) {
                Logger.e(Recorder.TAG, "Error occurred after audio source started.", th);
                if (th instanceof AudioSourceAccessException) {
                    consumer.accept(th);
                }
            }

            @Override // androidx.camera.video.internal.audio.AudioSource.AudioSourceCallback
            public void onSilenceStateChanged(boolean z) {
                Recorder recorder = Recorder.this;
                if (recorder.mIsAudioSourceSilenced != z) {
                    recorder.mIsAudioSourceSilenced = z;
                    recorder.updateInProgressStatusEvent(true);
                } else {
                    Logger.w(Recorder.TAG, "Audio source silenced transitions to the same state " + z);
                }
            }
        });
        this.mAudioEncoder.setEncoderCallback(new EncoderCallback() { // from class: androidx.camera.video.Recorder.5
            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodeError(EncodeException encodeException) {
                if (Recorder.this.mAudioErrorCause == null) {
                    consumer.accept(encodeException);
                }
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodeStart() {
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodeStop() {
                completer.set(null);
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodedData(EncodedData encodedData) {
                Recorder recorder = Recorder.this;
                if (recorder.mAudioState == AudioState.DISABLED) {
                    encodedData.close();
                    xg.d("Audio is not enabled but audio encoded data is being produced.");
                    return;
                }
                if (recorder.mMuxer == null) {
                    if (recorder.mInProgressRecordingStopping) {
                        Logger.d(Recorder.TAG, "Drop audio data since recording is stopping.");
                    } else {
                        recorder.mPendingAudioRingBuffer.enqueue(new BufferCopiedEncodedData(encodedData));
                        if (Recorder.this.mPendingFirstVideoData != null) {
                            Logger.d(Recorder.TAG, "Received audio data. Starting muxer...");
                            Recorder.this.setupAndStartMuxer(recordingRecord);
                        } else {
                            Logger.d(Recorder.TAG, "Cached audio data while we wait for video keyframe before starting muxer.");
                        }
                    }
                    encodedData.close();
                    return;
                }
                try {
                    recorder.writeAudioData(encodedData, recordingRecord);
                    if (encodedData != null) {
                        encodedData.close();
                    }
                } catch (Throwable th) {
                    if (encodedData != null) {
                        try {
                            encodedData.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onOutputConfigUpdate(OutputConfig outputConfig) {
                Recorder.this.mAudioOutputConfig = outputConfig;
            }
        }, this.mSequentialExecutor);
        return "audioEncodingFuture";
    }

    private RecordingRecord makePendingRecordingActiveLocked(State state) {
        boolean z;
        if (state == State.PENDING_PAUSED) {
            z = true;
        } else {
            if (state != State.PENDING_RECORDING) {
                xg.d("makePendingRecordingActiveLocked() can only be called from a pending state.");
                return null;
            }
            z = false;
        }
        if (this.mActiveRecordingRecord != null) {
            xg.d("Cannot make pending recording active because another recording is already active.");
            return null;
        }
        RecordingRecord recordingRecord = this.mPendingRecordingRecord;
        if (recordingRecord == null) {
            xg.d("Pending recording should exist when in a PENDING state.");
            return null;
        }
        this.mActiveRecordingRecord = recordingRecord;
        recordingRecord.getRecordingState().addObserver(CameraXExecutors.directExecutor(), new Observable.Observer<Boolean>() { // from class: androidx.camera.video.Recorder.7
            @Override // androidx.camera.core.impl.Observable.Observer
            public void onError(Throwable th) {
                Recorder.this.mIsRecording.setError(th);
            }

            @Override // androidx.camera.core.impl.Observable.Observer
            public void onNewData(Boolean bool) {
                Recorder.this.mIsRecording.setState(bool);
            }
        });
        this.mPendingRecordingRecord = null;
        if (z) {
            setState(State.PAUSED);
            return recordingRecord;
        }
        setState(State.RECORDING);
        return recordingRecord;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: muteInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$mute$8(RecordingRecord recordingRecord, boolean z) {
        AudioSource audioSource;
        if (recordingRecord.isMuted() == z) {
            return;
        }
        recordingRecord.mute(z);
        if (this.mInProgressRecording != recordingRecord || this.mInProgressRecordingStopping || (audioSource = this.mAudioSource) == null) {
            return;
        }
        audioSource.mute(z);
    }

    public static void notifyEncoderSourceStopped(Encoder encoder) {
        if (encoder instanceof EncoderImpl) {
            ((EncoderImpl) encoder).signalSourceStopped();
        }
    }

    private void onRecordingFinalized(RecordingRecord recordingRecord) {
        RecordingRecord recordingRecordMakePendingRecordingActiveLocked;
        boolean z;
        boolean z2;
        RecordingRecord recordingRecord2;
        Exception exc;
        int i;
        synchronized (this.mLock) {
            try {
                RecordingRecord recordingRecord3 = this.mActiveRecordingRecord;
                if (recordingRecord3 != recordingRecord) {
                    throw new AssertionError("Active recording did not match finalized recording on finalize.");
                }
                recordingRecord3.getRecordingState().removeObservers();
                recordingRecordMakePendingRecordingActiveLocked = null;
                this.mActiveRecordingRecord = null;
                z = true;
                z2 = false;
                switch (this.mState.ordinal()) {
                    case 1:
                        z = false;
                    case 2:
                        if (this.mSourceState == VideoOutput.SourceState.INACTIVE) {
                            recordingRecord2 = this.mPendingRecordingRecord;
                            this.mPendingRecordingRecord = null;
                            setState(State.CONFIGURING);
                            exc = PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE;
                            i = 4;
                            z2 = z;
                            z = false;
                        } else if (this.mVideoEncoder != null) {
                            exc = null;
                            i = 0;
                            recordingRecordMakePendingRecordingActiveLocked = makePendingRecordingActiveLocked(this.mState);
                            z2 = z;
                            z = false;
                            recordingRecord2 = null;
                        } else {
                            recordingRecord2 = null;
                            exc = null;
                            i = 0;
                            z2 = z;
                            z = false;
                        }
                        break;
                    case 3:
                        throw new AssertionError("Unexpected state on finalize of recording: " + this.mState);
                    case 4:
                    case 5:
                    case 6:
                        setState(State.IDLING);
                        recordingRecord2 = null;
                        exc = null;
                        z = false;
                        i = 0;
                        break;
                    case 7:
                        recordingRecord2 = null;
                        exc = null;
                        i = 0;
                        break;
                    default:
                        recordingRecord2 = null;
                        exc = null;
                        z = false;
                        i = 0;
                        break;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            reset();
        } else if (recordingRecordMakePendingRecordingActiveLocked != null) {
            startRecording(recordingRecordMakePendingRecordingActiveLocked, z2);
        } else if (recordingRecord2 != null) {
            finalizePendingRecording(recordingRecord2, i, exc);
        }
    }

    private void onResetVideo() {
        boolean z;
        SurfaceRequest surfaceRequest;
        synchronized (this.mLock) {
            try {
                switch (this.mState.ordinal()) {
                    case 1:
                    case 2:
                        updateNonPendingState(State.CONFIGURING);
                        z = true;
                        break;
                    case 4:
                    case 5:
                    case 8:
                        if (isPersistentRecordingInProgress()) {
                            z = false;
                            break;
                        }
                    case 3:
                    case 6:
                    case 7:
                        setState(State.CONFIGURING);
                        z = true;
                        break;
                    default:
                        z = true;
                        break;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mNeedsResetBeforeNextStart = false;
        if (!z || (surfaceRequest = this.mLatestSurfaceRequest) == null || surfaceRequest.isServiced()) {
            return;
        }
        configureInternal(this.mLatestSurfaceRequest, this.mVideoSourceTimebase, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onSurfaceRequestedInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$onSurfaceRequested$1(SurfaceRequest surfaceRequest, Timebase timebase, boolean z) {
        SurfaceRequest surfaceRequest2 = this.mLatestSurfaceRequest;
        if (surfaceRequest2 != null && !surfaceRequest2.isServiced()) {
            this.mLatestSurfaceRequest.willNotProvideSurface();
        }
        this.mHasGlProcessing = z;
        this.mLatestSurfaceRequest = surfaceRequest;
        this.mVideoSourceTimebase = timebase;
        configureInternal(surfaceRequest, timebase, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: pauseInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$pause$5(RecordingRecord recordingRecord) {
        if (this.mInProgressRecording != recordingRecord || this.mInProgressRecordingStopping) {
            return;
        }
        if (isAudioEnabled()) {
            this.mAudioEncoder.pause();
        }
        this.mVideoEncoder.pause();
        RecordingRecord recordingRecord2 = this.mInProgressRecording;
        recordingRecord2.updateVideoRecordEvent(VideoRecordEvent.pause(recordingRecord2.getOutputOptions(), getInProgressRecordingStats()));
    }

    private PendingRecording prepareRecordingInternal(Context context, OutputOptions outputOptions) {
        Preconditions.checkNotNull(outputOptions, "The OutputOptions cannot be null.");
        return new PendingRecording(context, this, outputOptions);
    }

    private void releaseCurrentAudioSource() {
        final AudioSource audioSource = this.mAudioSource;
        if (audioSource == null) {
            xg.d("Cannot release null audio source.");
            return;
        }
        this.mAudioSource = null;
        Logger.d(TAG, String.format("Releasing audio source: 0x%x", Integer.valueOf(audioSource.hashCode())));
        Futures.addCallback(audioSource.release(), new FutureCallback<Void>() { // from class: androidx.camera.video.Recorder.2
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(Throwable th) {
                Logger.d(Recorder.TAG, String.format("An error occurred while attempting to release audio source: 0x%x", Integer.valueOf(audioSource.hashCode())));
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(Void r1) {
                Logger.d(Recorder.TAG, String.format("Released audio source successfully: 0x%x", Integer.valueOf(audioSource.hashCode())));
            }
        }, CameraXExecutors.directExecutor());
    }

    private void reset() {
        if (this.mAudioEncoder != null) {
            Logger.d(TAG, "Releasing audio encoder.");
            this.mAudioEncoder.release();
            this.mAudioEncoder = null;
            this.mAudioOutputConfig = null;
        }
        if (this.mAudioSource != null) {
            releaseCurrentAudioSource();
        }
        setAudioState(AudioState.INITIALIZING);
        resetVideo();
    }

    private void resetVideo() {
        if (this.mVideoEncoder != null) {
            Logger.d(TAG, "Releasing video encoder.");
            tryReleaseVideoEncoder();
        }
        onResetVideo();
    }

    private void restoreNonPendingState() {
        if (PENDING_STATES.contains(this.mState)) {
            setState(this.mNonPendingState);
        } else {
            ad2.e(this.mState, "Cannot restore non-pending state when in state ");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: resumeInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$resume$6(RecordingRecord recordingRecord) {
        if (this.mInProgressRecording != recordingRecord || this.mInProgressRecordingStopping) {
            return;
        }
        if (isAudioEnabled()) {
            this.mAudioEncoder.start();
        }
        Encoder encoder = this.mVideoEncoder;
        if (encoder == null) {
            this.mShouldSendResumeEvent = true;
            return;
        }
        encoder.start();
        RecordingRecord recordingRecord2 = this.mInProgressRecording;
        recordingRecord2.updateVideoRecordEvent(VideoRecordEvent.resume(recordingRecord2.getOutputOptions(), getInProgressRecordingStats()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ListenableFuture<Void> safeToCloseVideoEncoder() {
        Logger.d(TAG, "Try to safely release video encoder: " + this.mVideoEncoder);
        return this.mVideoEncoderSession.signalTermination();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ScheduledFuture<?> scheduleTask(Runnable runnable, Executor executor, long j, TimeUnit timeUnit) {
        return CameraXExecutors.mainThreadExecutor().schedule(new vz6(0, executor, runnable), j, timeUnit);
    }

    private void setStreamId(int i) {
        if (this.mStreamId == i) {
            return;
        }
        Logger.d(TAG, "Transitioning streamId: " + this.mStreamId + " --> " + i);
        this.mStreamId = i;
        this.mStreamInfo.setState(StreamInfo.of(i, internalStateToStreamState(this.mState), this.mInProgressTransformationInfo));
    }

    private void setupAudio(RecordingRecord recordingRecord) {
        MediaSpec mediaSpec = (MediaSpec) getObservableData(this.mMediaSpec);
        AudioMimeInfo audioMimeInfoResolveAudioMimeInfo = AudioConfigUtil.resolveAudioMimeInfo(mediaSpec, this.mResolvedEncoderProfiles);
        Timebase timebase = Timebase.UPTIME;
        VideoEncoderConfig videoEncoderConfig = (VideoEncoderConfig) Preconditions.checkNotNull(this.mVideoEncoderConfig);
        AudioSettings audioSettingsResolveAudioSettings = AudioConfigUtil.resolveAudioSettings(audioMimeInfoResolveAudioMimeInfo, mediaSpec.getAudioSpec(), videoEncoderConfig.isSlowMotion() ? new Rational(videoEncoderConfig.getCaptureFrameRate(), videoEncoderConfig.getEncodeFrameRate()) : null);
        if (this.mAudioSource != null) {
            releaseCurrentAudioSource();
        }
        AudioSource audioSource = setupAudioSource(recordingRecord, audioSettingsResolveAudioSettings);
        this.mAudioSource = audioSource;
        Logger.d(TAG, String.format("Set up new audio source: 0x%x", Integer.valueOf(audioSource.hashCode())));
        Encoder encoderCreateEncoder = this.mAudioEncoderFactory.createEncoder(this.mExecutor, AudioConfigUtil.resolveAudioEncoderConfig(audioMimeInfoResolveAudioMimeInfo, timebase, audioSettingsResolveAudioSettings, mediaSpec.getAudioSpec()), ((SurfaceRequest) Preconditions.checkNotNull(this.mLatestSurfaceRequest)).getSessionType());
        this.mAudioEncoder = encoderCreateEncoder;
        Encoder.EncoderInput input = encoderCreateEncoder.getInput();
        if (input instanceof Encoder.ByteBufferInput) {
            this.mAudioSource.setBufferProvider((Encoder.ByteBufferInput) input);
        } else {
            xg.d("The EncoderInput of audio isn't a ByteBufferInput.");
        }
    }

    private AudioSource setupAudioSource(RecordingRecord recordingRecord, AudioSettings audioSettings) {
        return recordingRecord.performOneTimeAudioSourceCreation(audioSettings);
    }

    /* JADX WARN: Code duplicated, block: B:53:0x011c  */
    /* JADX WARN: Code duplicated, block: B:54:0x011f  */
    private void startInternal(RecordingRecord recordingRecord) {
        AudioState audioState;
        if (this.mInProgressRecording != null) {
            xg.d("Attempted to start a new recording while another was in progress.");
            return;
        }
        this.mInProgressRecording = recordingRecord;
        OutputStorage outputStorageCreate = this.mOutputStorageFactory.create(recordingRecord.getOutputOptions());
        this.mOutputStorage = outputStorageCreate;
        long availableBytes = outputStorageCreate.getAvailableBytes();
        Logger.d(TAG, "availableBytes = " + StorageUtil.formatSize(availableBytes));
        boolean zHasInsufficientStorage = hasInsufficientStorage(availableBytes);
        long j = this.mRequiredFreeStorageBytes;
        if (zHasInsufficientStorage) {
            finalizeInProgressRecording(3, new IOException(String.format(INSUFFICIENT_STORAGE_ERROR_MSG, Long.valueOf(availableBytes), Long.valueOf(j))));
            return;
        }
        this.mAvailableBytesAboveRequired = availableBytes - j;
        if (recordingRecord.getOutputOptions().getFileSizeLimit() > 0) {
            this.mFileSizeLimitInBytes = Math.round(recordingRecord.getOutputOptions().getFileSizeLimit() * 0.95d);
            Logger.d(TAG, "File size limit in bytes: " + this.mFileSizeLimitInBytes);
        } else {
            this.mFileSizeLimitInBytes = 0L;
        }
        if (recordingRecord.getOutputOptions().getDurationLimitMillis() > 0) {
            this.mDurationLimitUs = TimeUnit.MILLISECONDS.toMicros(recordingRecord.getOutputOptions().getDurationLimitMillis());
            Logger.d(TAG, "Duration limit in microseconds: " + this.mDurationLimitUs);
        } else {
            this.mDurationLimitUs = 0L;
        }
        int iOrdinal = this.mAudioState.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                setAudioState(recordingRecord.hasAudioEnabled() ? AudioState.ENABLED : AudioState.DISABLED);
            } else if (iOrdinal == 2 || iOrdinal == 3 || iOrdinal == 4 || iOrdinal == 5) {
                ad2.e(this.mAudioState, "Incorrectly invoke startInternal in audio state ");
                return;
            }
        } else if (recordingRecord.hasAudioEnabled()) {
            if (!isAudioSupported()) {
                xg.d("The Recorder doesn't support recording with audio");
                return;
            }
            try {
                if (!this.mInProgressRecording.isPersistent() || this.mAudioEncoder == null) {
                    setupAudio(recordingRecord);
                }
                setAudioState(AudioState.ENABLED);
            } catch (AudioSourceAccessException e) {
                e = e;
                Logger.e(TAG, "Unable to create audio resource with error: ", e);
                if (e instanceof InvalidConfigException) {
                    audioState = AudioState.ERROR_ENCODER;
                } else {
                    audioState = AudioState.ERROR_SOURCE;
                }
                setAudioState(audioState);
                this.mAudioErrorCause = e;
            } catch (InvalidConfigException e2) {
                e = e2;
                Logger.e(TAG, "Unable to create audio resource with error: ", e);
                if (e instanceof InvalidConfigException) {
                    audioState = AudioState.ERROR_ENCODER;
                } else {
                    audioState = AudioState.ERROR_SOURCE;
                }
                setAudioState(audioState);
                this.mAudioErrorCause = e;
            }
        }
        updateEncoderCallbacks(recordingRecord, false);
        if (isAudioEnabled()) {
            this.mAudioSource.start(recordingRecord.isMuted());
            this.mAudioEncoder.start();
        }
        this.mVideoEncoder.start();
        RecordingRecord recordingRecord2 = this.mInProgressRecording;
        recordingRecord2.updateVideoRecordEvent(VideoRecordEvent.start(recordingRecord2.getOutputOptions(), getInProgressRecordingStats()));
    }

    private void startRecording(RecordingRecord recordingRecord, boolean z) {
        startInternal(recordingRecord);
        if (z) {
            lambda$pause$5(recordingRecord);
        }
    }

    private static int supportedMuxerFormatOrDefaultFrom(VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy, int i) {
        if (videoValidatedEncoderProfilesProxy != null) {
            int recommendedFileFormat = videoValidatedEncoderProfilesProxy.getRecommendedFileFormat();
            if (recommendedFileFormat == 1) {
                return 2;
            }
            if (recommendedFileFormat == 2) {
                return 0;
            }
            if (recommendedFileFormat == 9) {
                return 1;
            }
        }
        return i;
    }

    private void tryReleaseVideoEncoder() {
        VideoEncoderSession videoEncoderSession = this.mVideoEncoderSessionToRelease;
        if (videoEncoderSession == null) {
            safeToCloseVideoEncoder();
            return;
        }
        Preconditions.checkState(videoEncoderSession.getVideoEncoder() == this.mVideoEncoder);
        Logger.d(TAG, "Releasing video encoder: " + this.mVideoEncoder);
        this.mVideoEncoderSessionToRelease.terminateNow();
        this.mVideoEncoderSessionToRelease = null;
        this.mVideoEncoder = null;
        this.mVideoOutputConfig = null;
        setLatestSurface(null);
    }

    private void updateEncoderCallbacks(final RecordingRecord recordingRecord, boolean z) {
        if (!this.mEncodingFutures.isEmpty()) {
            ListenableFuture listenableFutureAllAsList = Futures.allAsList(this.mEncodingFutures);
            if (!listenableFutureAllAsList.isDone()) {
                listenableFutureAllAsList.cancel(true);
            }
            this.mEncodingFutures.clear();
        }
        this.mEncodingFutures.add(CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.video.c
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return this.b.lambda$updateEncoderCallbacks$12(recordingRecord, completer);
            }
        }));
        if (isAudioEnabled() && !z) {
            this.mEncodingFutures.add(CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.video.d
                @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                    return this.b.lambda$updateEncoderCallbacks$14(recordingRecord, completer);
                }
            }));
        }
        Futures.addCallback(Futures.allAsList(this.mEncodingFutures), new FutureCallback<List<Void>>() { // from class: androidx.camera.video.Recorder.6
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(Throwable th) {
                Preconditions.checkState(Recorder.this.mInProgressRecording != null, "In-progress recording shouldn't be null");
                if (Recorder.this.mInProgressRecording.isPersistent()) {
                    return;
                }
                Logger.d(Recorder.TAG, "Encodings end with error: " + th);
                Recorder recorder = Recorder.this;
                recorder.finalizeInProgressRecording(recorder.mMuxer == null ? 8 : 6, th);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(List<Void> list) {
                Logger.d(Recorder.TAG, "Encodings end successfully.");
                Recorder recorder = Recorder.this;
                recorder.finalizeInProgressRecording(recorder.mRecordingStopError, recorder.mRecordingStopErrorCause);
            }
        }, CameraXExecutors.directExecutor());
    }

    private void updateNonPendingState(State state) {
        if (!PENDING_STATES.contains(this.mState)) {
            ad2.e(this.mState, "Can only updated non-pending state from a pending state, but state is ");
            return;
        }
        if (!VALID_NON_PENDING_STATES_WHILE_PENDING.contains(state)) {
            i2.d(state, "Invalid state transition. State is not a valid non-pending state while in a pending state: ");
        } else if (this.mNonPendingState != state) {
            this.mNonPendingState = state;
            this.mStreamInfo.setState(StreamInfo.of(this.mStreamId, internalStateToStreamState(state), this.mInProgressTransformationInfo));
        }
    }

    public void finalizeInProgressRecording(int i, Throwable th) {
        if (this.mInProgressRecording == null) {
            xg.d("Attempted to finalize in-progress recording, but no recording is in progress.");
            return;
        }
        if (this.mMuxer != null) {
            try {
                try {
                    Logger.d(TAG, "Muxer.stop()");
                    this.mMuxer.stop();
                } catch (MuxerException e) {
                    Logger.w(TAG, "Muxer failed to stop with error: " + e, e);
                    if (i == 0) {
                        if (hasInsufficientStorageOrException(e)) {
                            i = 3;
                        } else {
                            i = hasInvalidRecordData() ? 8 : 1;
                        }
                        th = e;
                    }
                }
                Logger.d(TAG, "Muxer.release()");
                this.mMuxer.release();
                this.mMuxer = null;
            } catch (Throwable th2) {
                Logger.d(TAG, "Muxer.release()");
                this.mMuxer.release();
                this.mMuxer = null;
                throw th2;
            }
        } else if (i == 0) {
            i = 8;
        }
        this.mInProgressRecording.finalizeRecording(this.mOutputUri);
        OutputOptions outputOptions = this.mInProgressRecording.getOutputOptions();
        RecordingStats inProgressRecordingStats = getInProgressRecordingStats();
        OutputResults outputResultsOf = OutputResults.of(this.mOutputUri);
        this.mInProgressRecording.updateVideoRecordEvent(i == 0 ? VideoRecordEvent.finalize(outputOptions, inProgressRecordingStats, outputResultsOf) : VideoRecordEvent.finalizeWithError(outputOptions, inProgressRecordingStats, outputResultsOf, i, th));
        RecordingRecord recordingRecord = this.mInProgressRecording;
        this.mInProgressRecording = null;
        this.mInProgressRecordingStopping = false;
        this.mAudioTrackIndex = null;
        this.mVideoTrackIndex = null;
        this.mEncodingFutures.clear();
        this.mOutputUri = Uri.EMPTY;
        this.mRecordingBytes = 0L;
        this.mRecordingAudioBytes = 0L;
        this.mRecordingDurationUs = 0L;
        this.mFirstRecordingVideoDataTimeUs = Long.MAX_VALUE;
        this.mFirstRecordingAudioDataTimeUs = Long.MAX_VALUE;
        this.mPreviousRecordingVideoDataTimeUs = Long.MAX_VALUE;
        this.mPreviousRecordingAudioDataTimeUs = Long.MAX_VALUE;
        this.mRecordingStopError = 1;
        this.mRecordingStopErrorCause = null;
        this.mAudioErrorCause = null;
        this.mAudioAmplitude = 0.0d;
        this.mOutputStorage = null;
        this.mAvailableBytesAboveRequired = Long.MAX_VALUE;
        clearPendingAudioRingBuffer();
        setInProgressTransformationInfo(null);
        int iOrdinal = this.mAudioState.ordinal();
        if (iOrdinal == 2 || iOrdinal == 3) {
            setAudioState(AudioState.IDLING);
            this.mAudioSource.stop();
        } else if (iOrdinal == 4 || iOrdinal == 5) {
            setAudioState(AudioState.INITIALIZING);
        }
        onRecordingFinalized(recordingRecord);
    }

    public int getAspectRatio() {
        return ((MediaSpec) getObservableData(this.mMediaSpec)).getVideoSpec().getAspectRatio();
    }

    public int getAudioSource() {
        return ((MediaSpec) getObservableData(this.mMediaSpec)).getAudioSpec().getSource();
    }

    @Override // androidx.camera.video.VideoOutput
    public EncoderProfilesResolver getEncoderProfilesResolver(CameraInfo cameraInfo, int i) {
        return getEncoderProfilesResolverInternal(i == 1 ? 2 : 1, cameraInfo, this.mVideoCapabilitiesSource);
    }

    public Executor getExecutor() {
        return this.mUserProvidedExecutor;
    }

    public RecordingStats getInProgressRecordingStats() {
        return RecordingStats.of(TimeUnit.MICROSECONDS.toNanos(this.mRecordingDurationUs), this.mRecordingBytes, AudioStats.of(internalAudioStateToAudioStatsState(this.mAudioState), this.mAudioErrorCause, this.mAudioAmplitude, this.mRecordingAudioBytes));
    }

    @Override // androidx.camera.video.VideoOutput
    public VideoCapabilities getMediaCapabilities(CameraInfo cameraInfo, int i) {
        return getVideoCapabilitiesInternal(i == 1 ? 2 : 1, cameraInfo, this.mVideoCapabilitiesSource, ((MediaSpec) getObservableData(this.mMediaSpec)).getVideoSpec().getMimeType());
    }

    @Override // androidx.camera.video.VideoOutput
    public Observable<MediaSpec> getMediaSpec() {
        return this.mMediaSpec;
    }

    public <T> T getObservableData(StateObservable<T> stateObservable) {
        try {
            return stateObservable.fetchData().get();
        } catch (InterruptedException | ExecutionException e) {
            i29.a(e);
            return null;
        }
    }

    public QualitySelector getQualitySelector() {
        return ((MediaSpec) getObservableData(this.mMediaSpec)).getVideoSpec().getQualitySelector();
    }

    @Override // androidx.camera.video.VideoOutput
    public Observable<StreamInfo> getStreamInfo() {
        return this.mStreamInfo;
    }

    public int getTargetVideoEncodingBitRate() {
        return ((MediaSpec) getObservableData(this.mMediaSpec)).getVideoSpec().getBitrate();
    }

    public int getVideoCapabilitiesSource() {
        return this.mVideoCapabilitiesSource;
    }

    public Observable<Range<Integer>> getVideoEncoderBitrateRange() {
        return this.mVideoEncoderBitrateRange;
    }

    public int getVideoEncodingFrameRate() {
        return ((MediaSpec) getObservableData(this.mMediaSpec)).getVideoSpec().getEncodeFrameRate();
    }

    public boolean isAudioEnabled() {
        return this.mAudioState == AudioState.ENABLED;
    }

    public boolean isAudioSupported() {
        return ((MediaSpec) getObservableData(this.mMediaSpec)).getAudioSpec().getChannelCount() != 0;
    }

    public boolean isPersistentRecordingInProgress() {
        RecordingRecord recordingRecord = this.mInProgressRecording;
        return recordingRecord != null && recordingRecord.isPersistent();
    }

    @Override // androidx.camera.video.VideoOutput
    public boolean isQualitySelectorDefault() {
        return getQualitySelector() == DEFAULT_QUALITY_SELECTOR;
    }

    @Override // androidx.camera.video.VideoOutput
    public Observable<Boolean> isSourceStreamRequired() {
        return this.mIsRecording;
    }

    public void mute(Recording recording, final boolean z) {
        synchronized (this.mLock) {
            try {
                if (isSameRecording(recording, this.mPendingRecordingRecord) || isSameRecording(recording, this.mActiveRecordingRecord)) {
                    final RecordingRecord recordingRecord = isSameRecording(recording, this.mPendingRecordingRecord) ? this.mPendingRecordingRecord : this.mActiveRecordingRecord;
                    this.mSequentialExecutor.execute(new Runnable() { // from class: androidx.camera.video.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.b.lambda$mute$8(recordingRecord, z);
                        }
                    });
                } else {
                    Logger.d(TAG, "mute() called on a recording that is no longer active: " + recording.getOutputOptions());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0053  */
    /* JADX WARN: Code duplicated, block: B:23:0x0058 A[Catch: all -> 0x001c, TryCatch #0 {all -> 0x001c, blocks: (B:4:0x0005, B:5:0x000e, B:29:0x0080, B:7:0x0013, B:10:0x001f, B:11:0x0026, B:14:0x002a, B:15:0x0038, B:16:0x004b, B:19:0x004f, B:23:0x0058, B:25:0x005e, B:26:0x006a, B:27:0x0076), top: B:45:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x005e A[Catch: all -> 0x001c, TryCatch #0 {all -> 0x001c, blocks: (B:4:0x0005, B:5:0x000e, B:29:0x0080, B:7:0x0013, B:10:0x001f, B:11:0x0026, B:14:0x002a, B:15:0x0038, B:16:0x004b, B:19:0x004f, B:23:0x0058, B:25:0x005e, B:26:0x006a, B:27:0x0076), top: B:45:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x006a A[Catch: all -> 0x001c, TryCatch #0 {all -> 0x001c, blocks: (B:4:0x0005, B:5:0x000e, B:29:0x0080, B:7:0x0013, B:10:0x001f, B:11:0x0026, B:14:0x002a, B:15:0x0038, B:16:0x004b, B:19:0x004f, B:23:0x0058, B:25:0x005e, B:26:0x006a, B:27:0x0076), top: B:45:0x0005 }] */
    public void onConfigured() {
        RecordingRecord recordingRecordMakePendingRecordingActiveLocked;
        boolean z;
        Exception exc;
        int i;
        int i2;
        RecordingRecord recordingRecord;
        synchronized (this.mLock) {
            try {
                recordingRecordMakePendingRecordingActiveLocked = null;
                switch (this.mState) {
                    case CONFIGURING:
                        setState(State.IDLING);
                        recordingRecord = null;
                        exc = null;
                        z = false;
                        i = 0;
                        i2 = i;
                        break;
                    case PENDING_RECORDING:
                        z = false;
                        if (this.mActiveRecordingRecord != null) {
                            recordingRecord = null;
                            exc = null;
                            i = 0;
                            i2 = i;
                        } else if (this.mSourceState == VideoOutput.SourceState.INACTIVE) {
                            recordingRecord = this.mPendingRecordingRecord;
                            this.mPendingRecordingRecord = null;
                            restoreNonPendingState();
                            exc = PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE;
                            i = 4;
                            i2 = 0;
                        } else {
                            exc = null;
                            i = 0;
                            i2 = 0;
                            recordingRecordMakePendingRecordingActiveLocked = makePendingRecordingActiveLocked(this.mState);
                            recordingRecord = null;
                        }
                        break;
                    case PENDING_PAUSED:
                        z = true;
                        if (this.mActiveRecordingRecord != null) {
                            recordingRecord = null;
                            exc = null;
                            i = 0;
                            i2 = i;
                        } else if (this.mSourceState == VideoOutput.SourceState.INACTIVE) {
                            recordingRecord = this.mPendingRecordingRecord;
                            this.mPendingRecordingRecord = null;
                            restoreNonPendingState();
                            exc = PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE;
                            i = 4;
                            i2 = 0;
                        } else {
                            exc = null;
                            i = 0;
                            i2 = 0;
                            recordingRecordMakePendingRecordingActiveLocked = makePendingRecordingActiveLocked(this.mState);
                            recordingRecord = null;
                        }
                        break;
                    case IDLING:
                    case RESETTING:
                        throw new AssertionError("Incorrectly invoke onConfigured() in state " + this.mState);
                    case RECORDING:
                        z = false;
                        Preconditions.checkState(isPersistentRecordingInProgress(), "Unexpectedly invoke onConfigured() when there's a non-persistent in-progress recording");
                        i2 = 1;
                        recordingRecord = null;
                        exc = null;
                        i = 0;
                        break;
                    case PAUSED:
                        z = true;
                        Preconditions.checkState(isPersistentRecordingInProgress(), "Unexpectedly invoke onConfigured() when there's a non-persistent in-progress recording");
                        i2 = 1;
                        recordingRecord = null;
                        exc = null;
                        i = 0;
                        break;
                    case STOPPING:
                        throw new AssertionError("Unexpectedly invoke onConfigured() in a STOPPING state when it's not waiting for a new surface.");
                    case ERROR:
                        Logger.e(TAG, "onConfigured() was invoked when the Recorder had encountered error");
                        recordingRecord = null;
                        exc = null;
                        z = false;
                        i = 0;
                        i2 = i;
                        break;
                    default:
                        recordingRecord = null;
                        exc = null;
                        z = false;
                        i = 0;
                        i2 = i;
                        break;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (i2 == 0) {
            if (recordingRecordMakePendingRecordingActiveLocked != null) {
                startRecording(recordingRecordMakePendingRecordingActiveLocked, z);
                return;
            } else {
                if (recordingRecord != null) {
                    finalizePendingRecording(recordingRecord, i, exc);
                    return;
                }
                return;
            }
        }
        updateEncoderCallbacks(this.mInProgressRecording, true);
        this.mVideoEncoder.start();
        if (this.mShouldSendResumeEvent) {
            RecordingRecord recordingRecord2 = this.mInProgressRecording;
            recordingRecord2.updateVideoRecordEvent(VideoRecordEvent.resume(recordingRecord2.getOutputOptions(), getInProgressRecordingStats()));
            this.mShouldSendResumeEvent = false;
        }
        if (z) {
            this.mVideoEncoder.pause();
        }
    }

    public void onEncoderSetupError(Throwable th) {
        RecordingRecord recordingRecord;
        synchronized (this.mLock) {
            try {
                recordingRecord = null;
                switch (this.mState) {
                    case PENDING_RECORDING:
                    case PENDING_PAUSED:
                        RecordingRecord recordingRecord2 = this.mPendingRecordingRecord;
                        this.mPendingRecordingRecord = null;
                        recordingRecord = recordingRecord2;
                    case CONFIGURING:
                        setStreamId(-1);
                        setState(State.ERROR);
                        break;
                    case IDLING:
                    case RECORDING:
                    case PAUSED:
                    case STOPPING:
                    case RESETTING:
                        throw new AssertionError("Encountered encoder setup error while in unexpected state " + this.mState + ": " + th);
                    default:
                        break;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (recordingRecord != null) {
            finalizePendingRecording(recordingRecord, 7, th);
        }
    }

    public void onInProgressRecordingInternalError(RecordingRecord recordingRecord, int i, Throwable th) {
        boolean z;
        if (recordingRecord != this.mInProgressRecording) {
            xg.d("Internal error occurred on recording that is not the current in-progress recording.");
            return;
        }
        synchronized (this.mLock) {
            try {
                z = false;
                switch (this.mState) {
                    case CONFIGURING:
                    case IDLING:
                    case ERROR:
                        throw new AssertionError("In-progress recording error occurred while in unexpected state: " + this.mState);
                    case RECORDING:
                    case PAUSED:
                        setState(State.STOPPING);
                        z = true;
                    case PENDING_RECORDING:
                    case PENDING_PAUSED:
                    case STOPPING:
                    case RESETTING:
                        if (recordingRecord != this.mActiveRecordingRecord) {
                            throw new AssertionError("Internal error occurred for recording but it is not the active recording.");
                        }
                        break;
                    default:
                        break;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z) {
            lambda$stop$7(recordingRecord, -1L, i, th);
        }
    }

    @Override // androidx.camera.video.VideoOutput
    public void onSourceStateChanged(VideoOutput.SourceState sourceState) {
        this.mSequentialExecutor.execute(new zs2(1, this, sourceState));
    }

    /* JADX INFO: renamed from: onSourceStateChangedInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$onSourceStateChanged$2(VideoOutput.SourceState sourceState) {
        ScheduledFuture<?> scheduledFuture;
        Encoder encoder;
        VideoOutput.SourceState sourceState2 = this.mSourceState;
        this.mSourceState = sourceState;
        if (sourceState2 == sourceState) {
            Logger.d(TAG, "Video source transitions to the same state: " + sourceState);
            return;
        }
        Logger.d(TAG, "Video source has transitioned to state: " + sourceState);
        if (sourceState != VideoOutput.SourceState.INACTIVE) {
            if (sourceState != VideoOutput.SourceState.ACTIVE_NON_STREAMING || (scheduledFuture = this.mSourceNonStreamingTimeout) == null || !scheduledFuture.cancel(false) || (encoder = this.mVideoEncoder) == null) {
                return;
            }
            notifyEncoderSourceStopped(encoder);
            return;
        }
        if (this.mActiveSurface == null) {
            SetupVideoTask setupVideoTask = this.mSetupVideoTask;
            if (setupVideoTask != null) {
                setupVideoTask.cancelFailedRetry();
                this.mSetupVideoTask = null;
            }
            requestReset(4, null, false);
            return;
        }
        this.mNeedsResetBeforeNextStart = true;
        RecordingRecord recordingRecord = this.mInProgressRecording;
        if (recordingRecord == null || recordingRecord.isPersistent()) {
            return;
        }
        onInProgressRecordingInternalError(this.mInProgressRecording, 4, null);
    }

    @Override // androidx.camera.video.VideoOutput
    public void onSurfaceRequested(final SurfaceRequest surfaceRequest, final Timebase timebase, final boolean z) {
        synchronized (this.mLock) {
            try {
                Logger.d(TAG, "Surface is requested in state: " + this.mState + ", Current surface: " + this.mStreamId);
                if (this.mState == State.ERROR) {
                    setState(State.CONFIGURING);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mSequentialExecutor.execute(new Runnable() { // from class: zz6
            @Override // java.lang.Runnable
            public final void run() {
                this.b.lambda$onSurfaceRequested$1(surfaceRequest, timebase, z);
            }
        });
    }

    public void onVideoEncoderReady(final VideoEncoderSession videoEncoderSession) {
        Encoder encoder = (Encoder) Preconditions.checkNotNull(videoEncoderSession.getVideoEncoder());
        this.mVideoEncoder = encoder;
        this.mVideoEncoderBitrateRange.setState(((VideoEncoderInfo) encoder.getEncoderInfo()).getSupportedBitrateRange());
        this.mFirstRecordingVideoBitrate = this.mVideoEncoder.getConfiguredBitrate();
        Surface activeSurface = videoEncoderSession.getActiveSurface();
        this.mActiveSurface = activeSurface;
        setLatestSurface(activeSurface);
        Futures.addCallback(videoEncoderSession.getReadyToReleaseFuture(), new FutureCallback<Encoder>() { // from class: androidx.camera.video.Recorder.1
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(Throwable th) {
                Logger.d(Recorder.TAG, "Error in ReadyToReleaseFuture: " + th);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(Encoder encoder2) {
                Encoder encoder3;
                Logger.d(Recorder.TAG, "VideoEncoder can be released: " + encoder2);
                if (encoder2 == null) {
                    return;
                }
                ScheduledFuture<?> scheduledFuture = Recorder.this.mSourceNonStreamingTimeout;
                if (scheduledFuture != null && scheduledFuture.cancel(false) && (encoder3 = Recorder.this.mVideoEncoder) != null && encoder3 == encoder2) {
                    Recorder.notifyEncoderSourceStopped(encoder3);
                }
                Recorder recorder = Recorder.this;
                recorder.mVideoEncoderSessionToRelease = videoEncoderSession;
                recorder.setLatestSurface(null);
                Recorder recorder2 = Recorder.this;
                recorder2.requestReset(4, null, recorder2.isPersistentRecordingInProgress());
            }
        }, this.mSequentialExecutor);
    }

    public void pause(Recording recording) {
        synchronized (this.mLock) {
            try {
                if (!isSameRecording(recording, this.mPendingRecordingRecord) && !isSameRecording(recording, this.mActiveRecordingRecord)) {
                    Logger.d(TAG, "pause() called on a recording that is no longer active: " + recording.getOutputOptions());
                    return;
                }
                int iOrdinal = this.mState.ordinal();
                if (iOrdinal != 0) {
                    if (iOrdinal == 1) {
                        setState(State.PENDING_PAUSED);
                    } else if (iOrdinal != 3) {
                        if (iOrdinal == 4) {
                            setState(State.PAUSED);
                            final RecordingRecord recordingRecord = this.mActiveRecordingRecord;
                            this.mSequentialExecutor.execute(new Runnable() { // from class: androidx.camera.video.g
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.b.lambda$pause$5(recordingRecord);
                                }
                            });
                        }
                    }
                    return;
                }
                throw new IllegalStateException("Called pause() from invalid state: " + this.mState);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public PendingRecording prepareRecording(Context context, FileOutputOptions fileOutputOptions) {
        return prepareRecordingInternal(context, fileOutputOptions);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void requestReset(int i, Throwable th, boolean z) {
        boolean z2;
        boolean z3;
        synchronized (this.mLock) {
            try {
                z2 = true;
                z3 = false;
                switch (this.mState) {
                    case CONFIGURING:
                    case IDLING:
                    case ERROR:
                        break;
                    case PENDING_RECORDING:
                    case PENDING_PAUSED:
                        updateNonPendingState(State.RESETTING);
                        break;
                    case RECORDING:
                    case PAUSED:
                        Preconditions.checkState(this.mInProgressRecording != null, "In-progress recording shouldn't be null when in state " + this.mState);
                        if (this.mActiveRecordingRecord != this.mInProgressRecording) {
                            throw new AssertionError("In-progress recording does not match the active recording. Unable to reset encoder.");
                        }
                        if (!isPersistentRecordingInProgress()) {
                            setState(State.RESETTING);
                            z3 = true;
                            z2 = false;
                        }
                        break;
                        break;
                    case STOPPING:
                        setState(State.RESETTING);
                        z2 = false;
                        break;
                    case RESETTING:
                    default:
                        z2 = false;
                        break;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (!z2) {
            if (z3) {
                lambda$stop$7(this.mInProgressRecording, -1L, i, th);
            }
        } else if (z) {
            resetVideo();
        } else {
            reset();
        }
    }

    public void resume(Recording recording) {
        synchronized (this.mLock) {
            try {
                if (!isSameRecording(recording, this.mPendingRecordingRecord) && !isSameRecording(recording, this.mActiveRecordingRecord)) {
                    Logger.d(TAG, "resume() called on a recording that is no longer active: " + recording.getOutputOptions());
                    return;
                }
                int iOrdinal = this.mState.ordinal();
                if (iOrdinal != 0) {
                    if (iOrdinal == 5) {
                        setState(State.RECORDING);
                        final RecordingRecord recordingRecord = this.mActiveRecordingRecord;
                        this.mSequentialExecutor.execute(new Runnable() { // from class: androidx.camera.video.e
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.b.lambda$resume$6(recordingRecord);
                            }
                        });
                    } else if (iOrdinal == 2) {
                        setState(State.PENDING_RECORDING);
                    } else if (iOrdinal != 3) {
                    }
                    return;
                }
                throw new IllegalStateException("Called resume() from invalid state: " + this.mState);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setAudioState(AudioState audioState) {
        Logger.d(TAG, "Transitioning audio state: " + this.mAudioState + " --> " + audioState);
        this.mAudioState = audioState;
    }

    public void setInProgressTransformationInfo(SurfaceRequest.TransformationInfo transformationInfo) {
        Logger.d(TAG, "Update stream transformation info: " + transformationInfo);
        this.mInProgressTransformationInfo = transformationInfo;
        synchronized (this.mLock) {
            this.mStreamInfo.setState(StreamInfo.of(this.mStreamId, internalStateToStreamState(this.mState), transformationInfo));
        }
    }

    public void setLatestSurface(Surface surface) {
        int iHashCode;
        if (this.mLatestSurface == surface) {
            return;
        }
        this.mLatestSurface = surface;
        synchronized (this.mLock) {
            if (surface != null) {
                try {
                    iHashCode = surface.hashCode();
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                iHashCode = 0;
            }
            setStreamId(iHashCode);
        }
    }

    public void setState(State state) {
        if (this.mState == state) {
            throw new AssertionError("Attempted to transition to state " + state + ", but Recorder is already in state " + state);
        }
        Logger.d(TAG, "Transitioning Recorder internal state: " + this.mState + " --> " + state);
        Set<State> set = PENDING_STATES;
        StreamInfo.StreamState streamStateInternalStateToStreamState = null;
        if (set.contains(state)) {
            if (!set.contains(this.mState)) {
                boolean zContains = VALID_NON_PENDING_STATES_WHILE_PENDING.contains(this.mState);
                State state2 = this.mState;
                if (!zContains) {
                    i2.d(state2, "Invalid state transition. Should not be transitioning to a PENDING state from state ");
                    return;
                } else {
                    this.mNonPendingState = state2;
                    streamStateInternalStateToStreamState = internalStateToStreamState(state2);
                }
            }
        } else if (this.mNonPendingState != null) {
            this.mNonPendingState = null;
        }
        this.mState = state;
        if (streamStateInternalStateToStreamState == null) {
            streamStateInternalStateToStreamState = internalStateToStreamState(state);
        }
        this.mStreamInfo.setState(StreamInfo.of(this.mStreamId, streamStateInternalStateToStreamState, this.mInProgressTransformationInfo));
    }

    public void setVideoEncodingFrameRate(final int i) {
        Preconditions.checkArgument(i >= 1, "frameRate must be greater than 0.");
        MutableStateObservable<MediaSpec> mutableStateObservable = this.mMediaSpec;
        mutableStateObservable.setState(((MediaSpec) getObservableData(mutableStateObservable)).toBuilder().configureVideo(new Consumer() { // from class: uz6
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                ((VideoSpec.Builder) obj).setEncodeFrameRate(i);
            }
        }).build());
    }

    public void setupAndStartMuxer(RecordingRecord recordingRecord) {
        if (this.mMuxer != null) {
            xg.d("Unable to set up muxer when one already exists.");
            return;
        }
        if (isAudioEnabled() && this.mPendingAudioRingBuffer.isEmpty()) {
            xg.d("Audio is enabled but no audio sample is ready. Cannot start muxer.");
            return;
        }
        EncodedData encodedData = this.mPendingFirstVideoData;
        if (encodedData == null) {
            xg.d("Muxer cannot be started without an encoded video frame.");
            return;
        }
        try {
            this.mPendingFirstVideoData = null;
            List<EncodedData> audioDataToWriteAndClearCache = getAudioDataToWriteAndClearCache(encodedData.getPresentationTimeUs());
            long size = encodedData.size();
            Iterator<EncodedData> it = audioDataToWriteAndClearCache.iterator();
            while (it.hasNext()) {
                size += it.next().size();
            }
            long j = this.mFileSizeLimitInBytes;
            if (j != 0 && size > j) {
                Logger.d(TAG, String.format("Initial data exceeds file size limit %d > %d", Long.valueOf(size), Long.valueOf(this.mFileSizeLimitInBytes)));
                onInProgressRecordingInternalError(recordingRecord, 2, null);
                encodedData.close();
                return;
            }
            int i = 3;
            try {
                MediaSpec mediaSpec = (MediaSpec) getObservableData(this.mMediaSpec);
                Muxer muxerPerformOneTimeMuxerCreation = recordingRecord.performOneTimeMuxerCreation(mediaSpec.getOutputFormat() == -1 ? supportedMuxerFormatOrDefaultFrom(this.mResolvedEncoderProfiles, MediaSpec.outputFormatToMuxerFormat(MEDIA_SPEC_DEFAULT.getOutputFormat())) : MediaSpec.outputFormatToMuxerFormat(mediaSpec.getOutputFormat()), new Consumer() { // from class: a07
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        this.b.lambda$setupAndStartMuxer$11((Uri) obj);
                    }
                });
                SurfaceRequest.TransformationInfo transformationInfo = this.mSourceTransformationInfo;
                if (transformationInfo != null) {
                    setInProgressTransformationInfo(transformationInfo);
                    try {
                        muxerPerformOneTimeMuxerCreation.setOrientationDegrees(transformationInfo.getRotationDegrees());
                    } catch (IllegalArgumentException e) {
                        muxerPerformOneTimeMuxerCreation.release();
                        onInProgressRecordingInternalError(recordingRecord, 5, e);
                        encodedData.close();
                        return;
                    }
                }
                Location location = recordingRecord.getOutputOptions().getLocation();
                if (location != null) {
                    try {
                        muxerPerformOneTimeMuxerCreation.setLocation(location.getLatitude(), location.getLongitude());
                    } catch (IllegalArgumentException e2) {
                        muxerPerformOneTimeMuxerCreation.release();
                        onInProgressRecordingInternalError(recordingRecord, 5, e2);
                        encodedData.close();
                        return;
                    }
                }
                VideoEncoderConfig videoEncoderConfig = (VideoEncoderConfig) Preconditions.checkNotNull(this.mVideoEncoderConfig);
                if (videoEncoderConfig.isSlowMotion()) {
                    try {
                        muxerPerformOneTimeMuxerCreation.setCaptureFps(videoEncoderConfig.getCaptureFrameRate());
                    } catch (IllegalArgumentException e3) {
                        muxerPerformOneTimeMuxerCreation.release();
                        onInProgressRecordingInternalError(recordingRecord, 5, e3);
                        encodedData.close();
                        return;
                    }
                }
                try {
                    Logger.d(TAG, "Muxer.addTrack() for video " + this.mVideoOutputConfig.getMediaFormat());
                    this.mVideoTrackIndex = Integer.valueOf(muxerPerformOneTimeMuxerCreation.addTrack((MediaFormat) Preconditions.checkNotNull(this.mVideoOutputConfig.getMediaFormat())));
                    if (isAudioEnabled()) {
                        Logger.d(TAG, "Muxer.addTrack() for audio " + this.mAudioOutputConfig.getMediaFormat());
                        this.mAudioTrackIndex = Integer.valueOf(muxerPerformOneTimeMuxerCreation.addTrack((MediaFormat) Preconditions.checkNotNull(this.mAudioOutputConfig.getMediaFormat())));
                    }
                    Logger.d(TAG, "Muxer.start()");
                    muxerPerformOneTimeMuxerCreation.start();
                    this.mMuxer = muxerPerformOneTimeMuxerCreation;
                    writeVideoData(encodedData, recordingRecord);
                    Iterator<EncodedData> it2 = audioDataToWriteAndClearCache.iterator();
                    while (it2.hasNext()) {
                        writeAudioData(it2.next(), recordingRecord);
                    }
                    encodedData.close();
                } catch (MuxerException e4) {
                    Logger.w(TAG, "Failed to setup and start muxer", e4);
                    muxerPerformOneTimeMuxerCreation.release();
                    if (!hasInsufficientStorageOrException(e4)) {
                        i = 1;
                    }
                    onInProgressRecordingInternalError(recordingRecord, i, e4);
                    encodedData.close();
                }
            } catch (IOException e5) {
                if (!hasInsufficientStorageOrException(e5)) {
                    i = 5;
                }
                onInProgressRecordingInternalError(recordingRecord, i, e5);
                encodedData.close();
            }
        } catch (Throwable th) {
            try {
                encodedData.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public Recording start(PendingRecording pendingRecording) {
        long j;
        int i;
        IOException iOException;
        RecordingRecord recordingRecord;
        Preconditions.checkNotNull(pendingRecording, "The given PendingRecording cannot be null.");
        synchronized (this.mLock) {
            try {
                j = this.mLastGeneratedRecordingId + 1;
                this.mLastGeneratedRecordingId = j;
                int i2 = 0;
                switch (this.mState) {
                    case CONFIGURING:
                    case IDLING:
                    case STOPPING:
                    case RESETTING:
                    case ERROR:
                        State state = this.mState;
                        State state2 = State.IDLING;
                        if (state == state2) {
                            Preconditions.checkState(this.mActiveRecordingRecord == null && this.mPendingRecordingRecord == null, "Expected recorder to be idle but a recording is either pending or in progress.");
                        }
                        try {
                            RecordingRecord recordingRecordFrom = RecordingRecord.from(pendingRecording, j);
                            recordingRecordFrom.initializeRecording(pendingRecording.getApplicationContext(), this.mMuxerFactory);
                            this.mPendingRecordingRecord = recordingRecordFrom;
                            State state3 = this.mState;
                            if (state3 == state2) {
                                setState(State.PENDING_RECORDING);
                                this.mSequentialExecutor.execute(new xz6(this, i2));
                            } else if (state3 == State.ERROR) {
                                setState(State.PENDING_RECORDING);
                                this.mSequentialExecutor.execute(new kg2(this, 2));
                            } else {
                                setState(State.PENDING_RECORDING);
                            }
                            recordingRecord = null;
                            i = 0;
                            iOException = null;
                        } catch (IOException e) {
                            i = 5;
                            iOException = e;
                            recordingRecord = null;
                        }
                        break;
                    case PENDING_RECORDING:
                    case PENDING_PAUSED:
                        recordingRecord = (RecordingRecord) Preconditions.checkNotNull(this.mPendingRecordingRecord);
                        i = 0;
                        iOException = null;
                        break;
                    case RECORDING:
                    case PAUSED:
                        recordingRecord = this.mActiveRecordingRecord;
                        i = 0;
                        iOException = null;
                        break;
                    default:
                        recordingRecord = null;
                        i = 0;
                        iOException = null;
                        break;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (recordingRecord != null) {
            ah.f("A recording is already in progress. Previous recordings must be stopped before a new recording can be started.");
            return null;
        }
        if (i == 0) {
            return Recording.from(pendingRecording, j);
        }
        Logger.e(TAG, "Recording was started when the Recorder had encountered error " + iOException);
        finalizePendingRecording(RecordingRecord.from(pendingRecording, j), i, iOException);
        return Recording.createFinalizedFrom(pendingRecording, j);
    }

    public void stop(Recording recording, final int i, final Throwable th) {
        synchronized (this.mLock) {
            try {
                if (!isSameRecording(recording, this.mPendingRecordingRecord) && !isSameRecording(recording, this.mActiveRecordingRecord)) {
                    Logger.d(TAG, "stop() called on a recording that is no longer active: " + recording.getOutputOptions());
                    return;
                }
                RecordingRecord recordingRecord = null;
                switch (this.mState) {
                    case CONFIGURING:
                    case IDLING:
                        throw new IllegalStateException("Calling stop() while idling or initializing is invalid.");
                    case PENDING_RECORDING:
                    case PENDING_PAUSED:
                        Preconditions.checkState(isSameRecording(recording, this.mPendingRecordingRecord));
                        RecordingRecord recordingRecord2 = this.mPendingRecordingRecord;
                        this.mPendingRecordingRecord = null;
                        restoreNonPendingState();
                        recordingRecord = recordingRecord2;
                        break;
                    case RECORDING:
                    case PAUSED:
                        setState(State.STOPPING);
                        final long jNanoTime = System.nanoTime() / 1000;
                        final RecordingRecord recordingRecord3 = this.mActiveRecordingRecord;
                        this.mSequentialExecutor.execute(new Runnable() { // from class: androidx.camera.video.b
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.b.lambda$stop$7(recordingRecord3, jNanoTime, i, th);
                            }
                        });
                        break;
                    case STOPPING:
                    case RESETTING:
                        Preconditions.checkState(isSameRecording(recording, this.mActiveRecordingRecord));
                        break;
                }
                if (recordingRecord != null) {
                    if (i == 10) {
                        Logger.e(TAG, "Recording was stopped due to recording being garbage collected before any valid data has been produced.");
                    }
                    finalizePendingRecording(recordingRecord, 8, new RuntimeException("Recording was stopped before any data could be produced.", th));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: renamed from: stopInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$stop$7(RecordingRecord recordingRecord, long j, int i, Throwable th) {
        if (this.mInProgressRecording != recordingRecord || this.mInProgressRecordingStopping) {
            return;
        }
        this.mInProgressRecordingStopping = true;
        this.mRecordingStopError = i;
        this.mRecordingStopErrorCause = th;
        if (isAudioEnabled()) {
            clearPendingAudioRingBuffer();
            this.mAudioEncoder.stop(j);
        }
        EncodedData encodedData = this.mPendingFirstVideoData;
        if (encodedData != null) {
            encodedData.close();
            this.mPendingFirstVideoData = null;
        }
        if (this.mSourceState != VideoOutput.SourceState.ACTIVE_NON_STREAMING) {
            this.mSourceNonStreamingTimeout = scheduleTask(new tz6(), this.mSequentialExecutor, 1000L, TimeUnit.MILLISECONDS);
        } else {
            notifyEncoderSourceStopped(this.mVideoEncoder);
        }
        this.mVideoEncoder.stop(j);
    }

    public void tryServicePendingRecording() {
        boolean z;
        RecordingRecord recordingRecordMakePendingRecordingActiveLocked;
        int i;
        Throwable th;
        synchronized (this.mLock) {
            try {
                Logger.d(TAG, "tryServicePendingRecording on state: " + this.mState);
                int iOrdinal = this.mState.ordinal();
                boolean z2 = true;
                z = false;
                i = 0;
                recordingRecordMakePendingRecordingActiveLocked = null;
                if (iOrdinal != 1) {
                    if (iOrdinal != 2) {
                        i = 0;
                        recordingRecordMakePendingRecordingActiveLocked = null;
                    }
                    th = recordingRecordMakePendingRecordingActiveLocked;
                } else {
                    z2 = false;
                }
                if (this.mSourceState == VideoOutput.SourceState.INACTIVE) {
                    RecordingRecord recordingRecord = this.mPendingRecordingRecord;
                    this.mPendingRecordingRecord = null;
                    restoreNonPendingState();
                    recordingRecordMakePendingRecordingActiveLocked = recordingRecord;
                    i = 4;
                    z = z2;
                    th = PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE;
                } else {
                    if (this.mActiveRecordingRecord != null || this.mNeedsResetBeforeNextStart) {
                        Logger.w(TAG, "PendingRecording is not handled, active recording = " + this.mActiveRecordingRecord + ", need reset flag = " + this.mNeedsResetBeforeNextStart);
                    } else {
                        recordingRecordMakePendingRecordingActiveLocked = this.mVideoEncoder != null ? makePendingRecordingActiveLocked(this.mState) : null;
                        z = z2;
                        th = recordingRecordMakePendingRecordingActiveLocked;
                    }
                    z = z2;
                    th = recordingRecordMakePendingRecordingActiveLocked;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (recordingRecordMakePendingRecordingActiveLocked != null) {
            startRecording(recordingRecordMakePendingRecordingActiveLocked, z);
        } else if (recordingRecordMakePendingRecordingActiveLocked != null) {
            finalizePendingRecording(recordingRecordMakePendingRecordingActiveLocked, i, th);
        }
    }

    public void updateInProgressStatusEvent(boolean z) {
        RecordingRecord recordingRecord = this.mInProgressRecording;
        if (recordingRecord != null) {
            recordingRecord.updateVideoRecordEvent(VideoRecordEvent.status(recordingRecord.getOutputOptions(), getInProgressRecordingStats()), z);
        }
    }

    public void writeAudioData(EncodedData encodedData, RecordingRecord recordingRecord) {
        if (this.mAudioEncoder == null) {
            Logger.d(TAG, "Ignore the audio data since the audio encoder has been released.");
            return;
        }
        if (encodedData.getPresentationTimeUs() < this.mFirstRecordingVideoDataTimeUs) {
            Logger.d(TAG, "Skipping audio data: timestamp precedes first video frame.");
            return;
        }
        long size = encodedData.size() + this.mRecordingBytes;
        long j = this.mFileSizeLimitInBytes;
        if (j != 0 && size > j) {
            Logger.d(TAG, String.format("Reach file size limit %d > %d", Long.valueOf(size), Long.valueOf(this.mFileSizeLimitInBytes)));
            onInProgressRecordingInternalError(recordingRecord, 2, null);
            return;
        }
        long presentationTimeUs = encodedData.getPresentationTimeUs();
        long j2 = presentationTimeUs - this.mFirstRecordingVideoDataTimeUs;
        if (this.mFirstRecordingAudioDataTimeUs == Long.MAX_VALUE) {
            this.mFirstRecordingAudioDataTimeUs = presentationTimeUs;
            Logger.d(TAG, String.format("First audio time: %d (%s)", Long.valueOf(presentationTimeUs), DebugUtils.readableUs(this.mFirstRecordingAudioDataTimeUs)));
        } else if (this.mDurationLimitUs != 0) {
            Preconditions.checkState(this.mPreviousRecordingAudioDataTimeUs != Long.MAX_VALUE, "There should be a previous data for adjusting the duration.");
            long j3 = (presentationTimeUs - this.mPreviousRecordingAudioDataTimeUs) + j2;
            if (j3 > this.mDurationLimitUs) {
                Logger.d(TAG, String.format("Audio data reaches duration limit %d > %d", Long.valueOf(j3), Long.valueOf(this.mDurationLimitUs)));
                onInProgressRecordingInternalError(recordingRecord, 9, null);
                return;
            }
        }
        encodedData.getBufferInfo().presentationTimeUs = j2;
        try {
            this.mMuxer.writeSampleData(this.mAudioTrackIndex.intValue(), encodedData.getByteBuffer(), encodedData.getBufferInfo());
            this.mRecordingBytes = size;
            this.mRecordingAudioBytes = encodedData.size() + this.mRecordingAudioBytes;
            this.mPreviousRecordingAudioDataTimeUs = presentationTimeUs;
        } catch (MuxerException e) {
            Logger.w(TAG, "writeAudioData failed", e);
            onInProgressRecordingInternalError(recordingRecord, hasInsufficientStorageOrException(e) ? 3 : 1, e);
        }
    }

    public void writeVideoData(EncodedData encodedData, RecordingRecord recordingRecord) {
        if (this.mVideoEncoder == null) {
            Logger.d(TAG, "Ignore the video data since the video encoder has been released.");
            return;
        }
        if (this.mVideoTrackIndex == null) {
            xg.d("Video data comes before the track is added to Muxer.");
            return;
        }
        long size = encodedData.size() + this.mRecordingBytes;
        long j = this.mFileSizeLimitInBytes;
        long j2 = 0;
        if (j != 0 && size > j) {
            Logger.d(TAG, String.format("Reach file size limit %d > %d", Long.valueOf(size), Long.valueOf(this.mFileSizeLimitInBytes)));
            onInProgressRecordingInternalError(recordingRecord, 2, null);
            return;
        }
        long presentationTimeUs = encodedData.getPresentationTimeUs();
        long j3 = this.mFirstRecordingVideoDataTimeUs;
        if (j3 == Long.MAX_VALUE) {
            this.mFirstRecordingVideoDataTimeUs = presentationTimeUs;
            Logger.d(TAG, String.format("First video time: %d (%s)", Long.valueOf(presentationTimeUs), DebugUtils.readableUs(this.mFirstRecordingVideoDataTimeUs)));
        } else {
            long j4 = presentationTimeUs - j3;
            if (this.mDurationLimitUs != 0) {
                Preconditions.checkState(this.mPreviousRecordingVideoDataTimeUs != Long.MAX_VALUE, "There should be a previous data for adjusting the duration.");
                long j5 = (presentationTimeUs - this.mPreviousRecordingVideoDataTimeUs) + j4;
                if (j5 > this.mDurationLimitUs) {
                    Logger.d(TAG, String.format("Video data reaches duration limit %d > %d", Long.valueOf(j5), Long.valueOf(this.mDurationLimitUs)));
                    onInProgressRecordingInternalError(recordingRecord, 9, null);
                    return;
                }
            }
            j2 = j4;
        }
        encodedData.getBufferInfo().presentationTimeUs = j2;
        try {
            this.mMuxer.writeSampleData(this.mVideoTrackIndex.intValue(), encodedData.getByteBuffer(), encodedData.getBufferInfo());
            this.mRecordingBytes = size;
            this.mRecordingDurationUs = j2;
            this.mPreviousRecordingVideoDataTimeUs = presentationTimeUs;
            updateInProgressStatusEvent(encodedData.isKeyFrame());
            if (size > this.mAvailableBytesAboveRequired) {
                long availableBytes = ((OutputStorage) Preconditions.checkNotNull(this.mOutputStorage)).getAvailableBytes();
                Logger.d(TAG, "availableBytes = " + StorageUtil.formatSize(availableBytes));
                boolean zHasInsufficientStorage = hasInsufficientStorage(availableBytes);
                long j6 = this.mRequiredFreeStorageBytes;
                if (zHasInsufficientStorage) {
                    onInProgressRecordingInternalError(recordingRecord, 3, new IOException(String.format(INSUFFICIENT_STORAGE_ERROR_MSG, Long.valueOf(availableBytes), Long.valueOf(j6))));
                } else {
                    this.mAvailableBytesAboveRequired = availableBytes - j6;
                }
            }
        } catch (MuxerException e) {
            Logger.w(TAG, "writeVideoData failed", e);
            onInProgressRecordingInternalError(recordingRecord, hasInsufficientStorageOrException(e) ? 3 : 1, e);
        }
    }

    public PendingRecording prepareRecording(Context context, FileDescriptorOutputOptions fileDescriptorOutputOptions) {
        return prepareRecordingInternal(context, fileDescriptorOutputOptions);
    }

    public PendingRecording prepareRecording(Context context, MediaStoreOutputOptions mediaStoreOutputOptions) {
        return prepareRecordingInternal(context, mediaStoreOutputOptions);
    }

    public static VideoCapabilities getVideoCapabilities(CameraInfo cameraInfo, String str) {
        return getVideoCapabilitiesInternal(1, cameraInfo, 0, str);
    }

    public static VideoCapabilities getVideoCapabilities(CameraInfo cameraInfo, int i) {
        return getVideoCapabilitiesInternal(1, cameraInfo, i, VideoSpec.MIME_TYPE_UNSPECIFIED);
    }

    public static VideoCapabilities getHighSpeedVideoCapabilities(CameraInfo cameraInfo) {
        return getHighSpeedVideoCapabilities(cameraInfo, 0);
    }

    @Override // androidx.camera.video.VideoOutput
    public void onSurfaceRequested(SurfaceRequest surfaceRequest) {
        onSurfaceRequested(surfaceRequest, Timebase.UPTIME, false);
    }

    public static abstract class RecordingRecord implements AutoCloseable {
        private final CloseGuardHelper mCloseGuard = CloseGuardHelper.create();
        private final AtomicBoolean mInitialized = new AtomicBoolean(false);
        private final AtomicReference<MuxerSupplier> mMuxerSupplier = new AtomicReference<>(null);
        private final AtomicReference<AudioSourceSupplier> mAudioSourceSupplier = new AtomicReference<>(null);
        private final AtomicReference<Consumer<Uri>> mRecordingFinalizer = new AtomicReference<>(new j());
        private final AtomicBoolean mMuted = new AtomicBoolean(false);
        private final MutableStateObservable<Boolean> mRecordingState = MutableStateObservable.withInitialState(Boolean.FALSE);

        public interface AudioSourceSupplier {
            AudioSource get(AudioSettings audioSettings, Executor executor);
        }

        public interface MuxerSupplier {
            Muxer get(int i, Consumer<Uri> consumer);
        }

        private void finalizeRecordingInternal(Consumer<Uri> consumer, Uri uri) {
            if (consumer != null) {
                this.mCloseGuard.close();
                consumer.accept(uri);
            } else {
                throw new AssertionError("Recording " + this + " has already been finalized");
            }
        }

        public static RecordingRecord from(PendingRecording pendingRecording, long j) {
            AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord = new AutoValue_Recorder_RecordingRecord(pendingRecording.getOutputOptions(), pendingRecording.getListenerExecutor(), pendingRecording.getEventListener(), pendingRecording.isAudioEnabled(), pendingRecording.isPersistent(), j);
            autoValue_Recorder_RecordingRecord.mute(pendingRecording.isAudioInitialMuted());
            return autoValue_Recorder_RecordingRecord;
        }

        private static AudioSourceSupplier getAudioSourceSupplier(final Context context) {
            if (Build.VERSION.SDK_INT < 31) {
                context = null;
            }
            return new AudioSourceSupplier() { // from class: androidx.camera.video.Recorder.RecordingRecord.1
                @Override // androidx.camera.video.Recorder.RecordingRecord.AudioSourceSupplier
                public AudioSource get(AudioSettings audioSettings, Executor executor) {
                    return new AudioSource(audioSettings, executor, context);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Muxer lambda$initializeRecording$1(MuxerFactory muxerFactory, OutputOptions outputOptions, ParcelFileDescriptor parcelFileDescriptor, int i, Consumer consumer) throws IOException {
            Muxer muxerCreate = muxerFactory.create(i);
            Uri uriFromFile = Uri.EMPTY;
            if (outputOptions instanceof FileOutputOptions) {
                File file = ((FileOutputOptions) outputOptions).getFile();
                if (!OutputUtil.createParentFolder(file)) {
                    Logger.w(Recorder.TAG, "Failed to create folder for " + file.getAbsolutePath());
                }
                Logger.d(Recorder.TAG, "Muxer.setOutput by path = " + file.getAbsolutePath());
                muxerCreate.setOutput(file.getAbsolutePath(), i);
                uriFromFile = Uri.fromFile(file);
            } else if (outputOptions instanceof FileDescriptorOutputOptions) {
                Logger.d(Recorder.TAG, "Muxer.setOutput by ParcelFileDescriptor");
                muxerCreate.setOutput(parcelFileDescriptor, i);
            } else {
                if (!(outputOptions instanceof MediaStoreOutputOptions)) {
                    xg.d("Invalid output options type: ".concat(outputOptions.getClass().getSimpleName()));
                    return null;
                }
                MediaStoreOutputOptions mediaStoreOutputOptions = (MediaStoreOutputOptions) outputOptions;
                try {
                    Uri uriInsert = mediaStoreOutputOptions.getContentResolver().insert(mediaStoreOutputOptions.getCollectionUri(), resolveContentValues(mediaStoreOutputOptions, muxerCreate));
                    if (uriInsert == null) {
                        ki0.d("Unable to create MediaStore entry.");
                        return null;
                    }
                    ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = mediaStoreOutputOptions.getContentResolver().openFileDescriptor(uriInsert, "rw");
                    if (parcelFileDescriptorOpenFileDescriptor == null) {
                        ki0.d(rk3.c(uriInsert, "Unable to open file descriptor from uri "));
                        return null;
                    }
                    try {
                        Logger.d(Recorder.TAG, "Muxer.setOutput by ParcelFileDescriptor");
                        muxerCreate.setOutput(parcelFileDescriptorOpenFileDescriptor, i);
                        uriFromFile = uriInsert;
                    } catch (IOException e) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                        throw e;
                    }
                } catch (RuntimeException e2) {
                    throw new IOException("Unable to create MediaStore entry by " + e2, e2);
                }
            }
            consumer.accept(uriFromFile);
            return muxerCreate;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$initializeRecording$2(MediaStoreOutputOptions mediaStoreOutputOptions, Uri uri) {
            if (uri.equals(Uri.EMPTY)) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_pending", (Integer) 0);
            mediaStoreOutputOptions.getContentResolver().update(uri, contentValues, null, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$initializeRecording$3(String str, Uri uri) {
            if (uri != null) {
                Logger.d(Recorder.TAG, String.format("File scan completed successfully [path: %s, URI: %s]", str, uri));
                return;
            }
            Logger.e(Recorder.TAG, "File scanning operation failed [path: " + str + "]");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$initializeRecording$4(MediaStoreOutputOptions mediaStoreOutputOptions, Context context, Uri uri) {
            if (uri.equals(Uri.EMPTY)) {
                return;
            }
            String absolutePathFromUri = OutputUtil.getAbsolutePathFromUri(mediaStoreOutputOptions.getContentResolver(), uri, Recorder.MEDIA_COLUMN);
            if (absolutePathFromUri != null) {
                MediaScannerConnection.scanFile(context, new String[]{absolutePathFromUri}, null, new h());
                return;
            }
            Logger.d(Recorder.TAG, "Skipping media scanner scan. Unable to retrieve file path from URI: " + uri);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$new$0(Uri uri) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateVideoRecordEvent$5(VideoRecordEvent videoRecordEvent) {
            getEventListener().accept(videoRecordEvent);
        }

        private ContentValues resolveContentValues(MediaStoreOutputOptions mediaStoreOutputOptions, Muxer muxer) {
            ContentValues contentValues = new ContentValues(mediaStoreOutputOptions.getContentValues());
            if (Build.VERSION.SDK_INT >= 29 && !muxer.isInterruptionResilient()) {
                contentValues.put("is_pending", (Integer) 1);
            }
            return contentValues;
        }

        private void updateRecordingState(VideoRecordEvent videoRecordEvent) {
            if ((videoRecordEvent instanceof VideoRecordEvent.Start) || (videoRecordEvent instanceof VideoRecordEvent.Resume)) {
                this.mRecordingState.setState(Boolean.TRUE);
            } else if ((videoRecordEvent instanceof VideoRecordEvent.Pause) || (videoRecordEvent instanceof VideoRecordEvent.Finalize)) {
                this.mRecordingState.setState(Boolean.FALSE);
            }
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            finalizeRecording(Uri.EMPTY);
        }

        public void finalize() throws Throwable {
            try {
                this.mCloseGuard.warnIfOpen();
                Consumer<Uri> andSet = this.mRecordingFinalizer.getAndSet(null);
                if (andSet != null) {
                    finalizeRecordingInternal(andSet, Uri.EMPTY);
                }
            } finally {
                super.finalize();
            }
        }

        public void finalizeRecording(Uri uri) {
            if (this.mInitialized.get()) {
                finalizeRecordingInternal(this.mRecordingFinalizer.getAndSet(null), uri);
            }
        }

        public abstract Executor getCallbackExecutor();

        public abstract Consumer<VideoRecordEvent> getEventListener();

        public abstract OutputOptions getOutputOptions();

        public abstract long getRecordingId();

        public StateObservable<Boolean> getRecordingState() {
            return this.mRecordingState;
        }

        public abstract boolean hasAudioEnabled();

        public void initializeRecording(final Context context, final MuxerFactory muxerFactory) {
            if (this.mInitialized.getAndSet(true)) {
                throw new AssertionError("Recording " + this + " has already been initialized");
            }
            final OutputOptions outputOptions = getOutputOptions();
            Consumer<Uri> consumer = null;
            final ParcelFileDescriptor parcelFileDescriptorDup = outputOptions instanceof FileDescriptorOutputOptions ? ((FileDescriptorOutputOptions) outputOptions).getParcelFileDescriptor().dup() : null;
            this.mCloseGuard.open("finalizeRecording");
            this.mMuxerSupplier.set(new MuxerSupplier() { // from class: androidx.camera.video.k
                @Override // androidx.camera.video.Recorder.RecordingRecord.MuxerSupplier
                public final Muxer get(int i, Consumer consumer2) {
                    return this.a.lambda$initializeRecording$1(muxerFactory, outputOptions, parcelFileDescriptorDup, i, consumer2);
                }
            });
            if (hasAudioEnabled()) {
                this.mAudioSourceSupplier.set(getAudioSourceSupplier(context));
            }
            if (outputOptions instanceof MediaStoreOutputOptions) {
                final MediaStoreOutputOptions mediaStoreOutputOptions = (MediaStoreOutputOptions) outputOptions;
                consumer = Build.VERSION.SDK_INT >= 29 ? new Consumer() { // from class: androidx.camera.video.l
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        Recorder.RecordingRecord.lambda$initializeRecording$2(mediaStoreOutputOptions, (Uri) obj);
                    }
                } : new Consumer() { // from class: androidx.camera.video.m
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        Recorder.RecordingRecord.lambda$initializeRecording$4(mediaStoreOutputOptions, context, (Uri) obj);
                    }
                };
            }
            if (consumer != null) {
                this.mRecordingFinalizer.set(consumer);
            }
        }

        public boolean isMuted() {
            return this.mMuted.get();
        }

        public abstract boolean isPersistent();

        public void mute(boolean z) {
            this.mMuted.set(z);
        }

        public AudioSource performOneTimeAudioSourceCreation(AudioSettings audioSettings) {
            if (!hasAudioEnabled()) {
                i2.d(this, "Recording does not have audio enabled. Unable to create audio source for recording ");
                return null;
            }
            AudioSourceSupplier andSet = this.mAudioSourceSupplier.getAndSet(null);
            if (andSet != null) {
                return andSet.get(audioSettings, Recorder.AUDIO_EXECUTOR);
            }
            i2.d(this, "One-time audio source creation has already occurred for recording ");
            return null;
        }

        public Muxer performOneTimeMuxerCreation(int i, Consumer<Uri> consumer) throws IOException {
            if (!this.mInitialized.get()) {
                throw new AssertionError("Recording " + this + " has not been initialized");
            }
            MuxerSupplier andSet = this.mMuxerSupplier.getAndSet(null);
            if (andSet == null) {
                i2.d(this, "One-time muxer creation has already occurred for recording ");
                return null;
            }
            try {
                return andSet.get(i, consumer);
            } catch (RuntimeException e) {
                throw new IOException("Failed to create Muxer by " + e, e);
            }
        }

        public void updateVideoRecordEvent(final VideoRecordEvent videoRecordEvent, boolean z) {
            if (!Objects.equals(videoRecordEvent.getOutputOptions(), getOutputOptions())) {
                StringBuilder sb = new StringBuilder("Attempted to update event listener with event from incorrect recording [Recording: ");
                sb.append(videoRecordEvent.getOutputOptions());
                OutputOptions outputOptions = getOutputOptions();
                sb.append(", Expected: ");
                sb.append(outputOptions);
                sb.append("]");
                throw new AssertionError(sb.toString());
            }
            if (z) {
                String strConcat = "Sending VideoRecordEvent ".concat(videoRecordEvent.getClass().getSimpleName());
                if (videoRecordEvent instanceof VideoRecordEvent.Finalize) {
                    VideoRecordEvent.Finalize finalize = (VideoRecordEvent.Finalize) videoRecordEvent;
                    if (finalize.hasError()) {
                        strConcat = strConcat.concat(" [error: " + VideoRecordEvent.Finalize.errorToString(finalize.getError()) + "]");
                    }
                }
                Logger.d(Recorder.TAG, strConcat);
            }
            updateRecordingState(videoRecordEvent);
            if (getCallbackExecutor() == null || getEventListener() == null) {
                return;
            }
            try {
                getCallbackExecutor().execute(new Runnable() { // from class: androidx.camera.video.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.b.lambda$updateVideoRecordEvent$5(videoRecordEvent);
                    }
                });
            } catch (RejectedExecutionException e) {
                Logger.e(Recorder.TAG, "The callback executor is invalid.", e);
            }
        }

        public void updateVideoRecordEvent(VideoRecordEvent videoRecordEvent) {
            updateVideoRecordEvent(videoRecordEvent, true);
        }
    }
}
