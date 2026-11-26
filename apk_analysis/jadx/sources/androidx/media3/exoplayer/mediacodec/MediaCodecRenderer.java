package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Bundle;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.OggOpusAudioPacketizer;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.FrameworkCryptoConfig;
import androidx.media3.extractor.OpusUtil;
import com.google.common.collect.n;
import com.google.common.collect.z;
import com.tapjoy.TJAdUnitConstants;
import defpackage.fh;
import defpackage.o8;
import defpackage.ud;
import defpackage.y69;
import defpackage.z42;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MediaCodecRenderer extends BaseRenderer {
    private static final byte[] ADAPTATION_WORKAROUND_BUFFER = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private static final int ADAPTATION_WORKAROUND_MODE_ALWAYS = 2;
    private static final int ADAPTATION_WORKAROUND_MODE_NEVER = 0;
    private static final int ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION = 1;
    private static final int ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT = 32;
    protected static final float CODEC_OPERATING_RATE_UNSET = -1.0f;
    protected static final boolean DEBUG_LOG_ENABLED = false;
    protected static final String DEBUG_LOG_TAG = "MCRdebug";
    private static final int DRAIN_ACTION_FLUSH = 1;
    private static final int DRAIN_ACTION_FLUSH_AND_UPDATE_DRM_SESSION = 2;
    private static final int DRAIN_ACTION_NONE = 0;
    private static final int DRAIN_ACTION_REINITIALIZE = 3;
    private static final int DRAIN_STATE_NONE = 0;
    private static final int DRAIN_STATE_SIGNAL_END_OF_STREAM = 1;
    private static final int DRAIN_STATE_WAIT_END_OF_STREAM = 2;
    private static final long MAX_CODEC_HOTSWAP_TIME_MS = 1000;
    private static final int RECONFIGURATION_STATE_NONE = 0;
    private static final int RECONFIGURATION_STATE_QUEUE_PENDING = 2;
    private static final int RECONFIGURATION_STATE_WRITE_PENDING = 1;
    private static final String TAG = "MediaCodecRenderer";
    private CodecParameters activeCodecParameters;
    private final float assumedMinimumCodecOperatingRate;
    private ArrayDeque<MediaCodecInfo> availableCodecInfos;
    private final DecoderInputBuffer buffer;
    private final BatchBuffer bypassBatchBuffer;
    private boolean bypassDrainAndReinitialize;
    private boolean bypassEnabled;
    private final DecoderInputBuffer bypassSampleBuffer;
    private boolean bypassSampleBufferPending;
    private MediaCodecAdapter codec;
    private int codecAdaptationWorkaroundMode;
    private final MediaCodecAdapter.Factory codecAdapterFactory;
    private int codecDrainAction;
    private int codecDrainState;
    private DrmSession codecDrmSession;
    private boolean codecHasOutputMediaFormat;
    private long codecHotswapDeadlineMs;
    private MediaCodecInfo codecInfo;
    private Format codecInputFormat;
    private boolean codecNeedsAdaptationWorkaroundBuffer;
    private boolean codecNeedsEosFlushWorkaround;
    private boolean codecNeedsEosPropagation;
    private boolean codecNeedsSosFlushWorkaround;
    private float codecOperatingRate;
    private MediaFormat codecOutputMediaFormat;
    private boolean codecOutputMediaFormatChanged;
    private boolean codecReceivedBuffers;
    private boolean codecReceivedEos;
    private int codecReconfigurationState;
    private boolean codecReconfigured;
    private boolean codecRegisteredOnBufferAvailableListener;
    private float currentPlaybackSpeed;
    protected DecoderCounters decoderCounters;
    private final boolean enableDecoderFallback;
    private boolean experimentalEnableProcessedStreamChangedAtStart;
    private boolean hasSkippedFlushAndWaitingForQueueInputBuffer;
    private Format inputFormat;
    private int inputIndex;
    private boolean inputStreamEnded;
    private boolean isDecodeOnlyOutputBuffer;
    private boolean isLastOutputBuffer;
    private long largestQueuedPresentationTimeUs;
    private CodecParameters lastDispatchedCodecParameters;
    private long lastOutputBufferProcessedRealtimeMs;
    private long lastProcessedOutputBufferTimeUs;
    private final MediaCodecSelector mediaCodecSelector;
    private MediaCrypto mediaCrypto;
    private boolean needToNotifyOutputFormatChangeAfterStreamChange;
    private final DecoderInputBuffer noDataBuffer;
    private final OggOpusAudioPacketizer oggOpusAudioPacketizer;
    private ByteBuffer outputBuffer;
    private final MediaCodec.BufferInfo outputBufferInfo;
    private Format outputFormat;
    private int outputIndex;
    private boolean outputStreamEnded;
    private OutputStreamInfo outputStreamInfo;
    private boolean pendingOutputEndOfStream;
    private final ArrayDeque<OutputStreamInfo> pendingOutputStreamChanges;
    private ExoPlaybackException pendingPlaybackException;
    private DecoderInitializationException preferredDecoderInitializationException;
    private final AtomicInteger readDataResultHolder;
    private long renderTimeLimitMs;
    private boolean shouldSkipAdaptationWorkaroundOutputBuffer;
    private long skippedFlushOffsetUs;
    private DrmSession sourceDrmSession;
    private n<String> subscribedCodecParameterKeys;
    private float targetPlaybackSpeed;
    private boolean waitingForFirstSampleInFormat;
    private Renderer.WakeupListener wakeupListener;

    public static final class Api31 {
        private Api31() {
        }

        public static void setLogSessionIdToMediaCodecFormat(MediaCodecAdapter.Configuration configuration, PlayerId playerId) {
            LogSessionId logSessionId = playerId.getLogSessionId();
            if (logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            configuration.mediaFormat.setString("log-session-id", logSessionId.getStringId());
        }
    }

    public final class MediaCodecRendererCodecAdapterListener implements MediaCodecAdapter.OnBufferAvailableListener {
        private MediaCodecRendererCodecAdapterListener() {
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.OnBufferAvailableListener
        public void onInputBufferAvailable() {
            if (MediaCodecRenderer.this.wakeupListener != null) {
                MediaCodecRenderer.this.wakeupListener.onWakeup();
            }
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.OnBufferAvailableListener
        public void onOutputBufferAvailable() {
            if (MediaCodecRenderer.this.wakeupListener != null) {
                MediaCodecRenderer.this.wakeupListener.onWakeup();
            }
        }
    }

    public static final class OutputStreamInfo {
        public static final OutputStreamInfo UNSET = new OutputStreamInfo(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET);
        public final TimedValueQueue<Format> formatQueue = new TimedValueQueue<>();
        public long lastBufferTimeUs = C.TIME_UNSET;
        public final long previousStreamLastBufferTimeUs;
        public final long startPositionUs;
        public final long streamOffsetUs;

        public OutputStreamInfo(long j, long j2, long j3) {
            this.previousStreamLastBufferTimeUs = j;
            this.startPositionUs = j2;
            this.streamOffsetUs = j3;
        }
    }

    public MediaCodecRenderer(int i, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, boolean z, float f) {
        super(i);
        this.codecAdapterFactory = factory;
        mediaCodecSelector.getClass();
        this.mediaCodecSelector = mediaCodecSelector;
        this.enableDecoderFallback = z;
        this.assumedMinimumCodecOperatingRate = f;
        this.readDataResultHolder = new AtomicInteger();
        this.noDataBuffer = DecoderInputBuffer.newNoDataInstance();
        this.buffer = new DecoderInputBuffer(0);
        this.bypassSampleBuffer = new DecoderInputBuffer(2);
        BatchBuffer batchBuffer = new BatchBuffer();
        this.bypassBatchBuffer = batchBuffer;
        this.outputBufferInfo = new MediaCodec.BufferInfo();
        this.currentPlaybackSpeed = 1.0f;
        this.targetPlaybackSpeed = 1.0f;
        this.renderTimeLimitMs = C.TIME_UNSET;
        this.pendingOutputStreamChanges = new ArrayDeque<>();
        this.outputStreamInfo = OutputStreamInfo.UNSET;
        batchBuffer.ensureSpaceForWrite(0);
        batchBuffer.data.order(ByteOrder.nativeOrder());
        this.oggOpusAudioPacketizer = new OggOpusAudioPacketizer();
        this.codecOperatingRate = -1.0f;
        this.codecAdaptationWorkaroundMode = 0;
        this.codecReconfigurationState = 0;
        this.inputIndex = -1;
        this.outputIndex = -1;
        this.codecHotswapDeadlineMs = C.TIME_UNSET;
        this.largestQueuedPresentationTimeUs = C.TIME_UNSET;
        this.lastProcessedOutputBufferTimeUs = C.TIME_UNSET;
        this.lastOutputBufferProcessedRealtimeMs = C.TIME_UNSET;
        this.codecDrainState = 0;
        this.codecDrainAction = 0;
        this.decoderCounters = new DecoderCounters();
        this.hasSkippedFlushAndWaitingForQueueInputBuffer = false;
        this.skippedFlushOffsetUs = 0L;
        int i2 = n.d;
        this.subscribedCodecParameterKeys = z.k;
        CodecParameters codecParameters = CodecParameters.EMPTY;
        this.activeCodecParameters = codecParameters;
        this.lastDispatchedCodecParameters = codecParameters;
    }

    private void bypassRead() throws ExoPlaybackException {
        o8.r(!this.inputStreamEnded);
        FormatHolder formatHolder = getFormatHolder();
        this.bypassSampleBuffer.clear();
        do {
            this.bypassSampleBuffer.clear();
            int source = readSource(formatHolder, this.bypassSampleBuffer, 0);
            if (source == -5) {
                onInputFormatChanged(formatHolder);
                return;
            }
            if (source == -4) {
                if (!this.bypassSampleBuffer.isEndOfStream()) {
                    this.largestQueuedPresentationTimeUs = Math.max(this.largestQueuedPresentationTimeUs, this.bypassSampleBuffer.timeUs);
                    if (hasReadStreamToEnd() || this.buffer.isLastSample()) {
                        getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                    }
                    if (this.waitingForFirstSampleInFormat) {
                        Format format = this.inputFormat;
                        format.getClass();
                        this.outputFormat = format;
                        if (Objects.equals(format.sampleMimeType, MimeTypes.AUDIO_OPUS) && !this.outputFormat.initializationData.isEmpty()) {
                            this.outputFormat = this.outputFormat.buildUpon().setEncoderDelay(OpusUtil.getPreSkipSamples(this.outputFormat.initializationData.get(0))).build();
                        }
                        onOutputFormatChanged(this.outputFormat, null);
                        this.waitingForFirstSampleInFormat = false;
                    }
                    this.bypassSampleBuffer.flip();
                    Format format2 = this.outputFormat;
                    if (format2 != null && Objects.equals(format2.sampleMimeType, MimeTypes.AUDIO_OPUS)) {
                        if (this.bypassSampleBuffer.hasSupplementalData()) {
                            DecoderInputBuffer decoderInputBuffer = this.bypassSampleBuffer;
                            decoderInputBuffer.format = this.outputFormat;
                            handleInputBufferSupplementalData(decoderInputBuffer);
                        }
                        if (OpusUtil.needToDecodeOpusFrame(getLastResetPositionUs(), this.bypassSampleBuffer.timeUs)) {
                            this.oggOpusAudioPacketizer.packetize(this.bypassSampleBuffer, this.outputFormat.initializationData);
                        }
                    }
                    if (!haveBypassBatchBufferAndNewSampleSameDecodeOnlyState()) {
                        break;
                    }
                } else {
                    this.inputStreamEnded = true;
                    getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                    return;
                }
            } else if (source != -3) {
                ud.g();
                return;
            } else {
                if (hasReadStreamToEnd()) {
                    getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                    return;
                }
                return;
            }
        } while (this.bypassBatchBuffer.append(this.bypassSampleBuffer));
        this.bypassSampleBufferPending = true;
    }

    private boolean bypassRender(long j, long j2) throws ExoPlaybackException {
        boolean z;
        o8.r(!this.outputStreamEnded);
        if (this.bypassBatchBuffer.hasSamples()) {
            BatchBuffer batchBuffer = this.bypassBatchBuffer;
            ByteBuffer byteBuffer = batchBuffer.data;
            int i = this.outputIndex;
            int sampleCount = batchBuffer.getSampleCount();
            long firstSampleTimeUs = this.bypassBatchBuffer.getFirstSampleTimeUs();
            boolean zIsDecodeOnly = isDecodeOnly(getLastResetPositionUs(), this.bypassBatchBuffer.getLastSampleTimeUs());
            boolean zIsEndOfStream = this.bypassBatchBuffer.isEndOfStream();
            Format format = this.outputFormat;
            format.getClass();
            z = false;
            if (!processOutputBuffer(j, j2, null, byteBuffer, i, 0, sampleCount, firstSampleTimeUs, zIsDecodeOnly, zIsEndOfStream, format)) {
                return false;
            }
            onProcessedOutputBuffer(this.bypassBatchBuffer.getLastSampleTimeUs());
            this.bypassBatchBuffer.clear();
        } else {
            z = false;
        }
        if (this.inputStreamEnded) {
            this.outputStreamEnded = true;
            return z;
        }
        if (this.bypassSampleBufferPending) {
            o8.r(this.bypassBatchBuffer.append(this.bypassSampleBuffer));
            this.bypassSampleBufferPending = z;
        }
        if (this.bypassDrainAndReinitialize) {
            if (this.bypassBatchBuffer.hasSamples()) {
                return true;
            }
            disableBypass();
            this.bypassDrainAndReinitialize = z;
            maybeInitCodecOrBypass();
            if (!this.bypassEnabled) {
                return z;
            }
        }
        bypassRead();
        if (this.bypassBatchBuffer.hasSamples()) {
            this.bypassBatchBuffer.flip();
        }
        if (this.bypassBatchBuffer.hasSamples() || this.inputStreamEnded || this.bypassDrainAndReinitialize) {
            return true;
        }
        return z;
    }

    private void checkAndNotifyCodecParameterChanges(MediaFormat mediaFormat) {
        if (this.subscribedCodecParameterKeys.isEmpty()) {
            return;
        }
        CodecParameters codecParametersBuild = CodecParameters.createFrom(mediaFormat, this.subscribedCodecParameterKeys).build();
        if (codecParametersBuild.equals(this.lastDispatchedCodecParameters)) {
            return;
        }
        this.lastDispatchedCodecParameters = codecParametersBuild;
        onCodecParametersChanged(codecParametersBuild);
    }

    private int codecAdaptationWorkaroundMode(String str) {
        return 0;
    }

    private static boolean codecNeedsEosFlushWorkaround(String str) {
        return false;
    }

    private static boolean codecNeedsEosPropagationWorkaround(MediaCodecInfo mediaCodecInfo) {
        String str = mediaCodecInfo.name;
        if (Build.VERSION.SDK_INT > 29 || !("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str) || "OMX.bcm.vdec.avc.tunnel".equals(str) || "OMX.bcm.vdec.avc.tunnel.secure".equals(str) || "OMX.bcm.vdec.hevc.tunnel".equals(str) || "OMX.bcm.vdec.hevc.tunnel.secure".equals(str))) {
            return "Amazon".equals(Build.MANUFACTURER) && "AFTS".equals(Build.MODEL) && mediaCodecInfo.secure;
        }
        return true;
    }

    private static boolean codecNeedsSosFlushWorkaround(String str) {
        return Build.VERSION.SDK_INT == 29 && "c2.android.aac.decoder".equals(str);
    }

    private void disableBypass() {
        this.bypassEnabled = false;
        resetBypassState();
    }

    private boolean drainAndFlushCodec() {
        if (this.codecReceivedBuffers) {
            this.codecDrainState = 1;
            if (this.codecNeedsEosFlushWorkaround) {
                this.codecDrainAction = 3;
                return false;
            }
            this.codecDrainAction = 1;
        }
        return true;
    }

    private void drainAndReinitializeCodec() throws ExoPlaybackException {
        if (!this.codecReceivedBuffers) {
            reinitializeCodec();
        } else {
            this.codecDrainState = 1;
            this.codecDrainAction = 3;
        }
    }

    private boolean drainAndUpdateCodecDrmSession() throws ExoPlaybackException {
        if (this.codecReceivedBuffers) {
            this.codecDrainState = 1;
            if (this.codecNeedsEosFlushWorkaround) {
                this.codecDrainAction = 3;
                return false;
            }
            this.codecDrainAction = 2;
        } else {
            updateDrmSession();
        }
        return true;
    }

    private boolean drainOutputBuffer(long j, long j2) throws ExoPlaybackException {
        MediaCodecAdapter mediaCodecAdapter = this.codec;
        mediaCodecAdapter.getClass();
        if (!hasOutputBuffer()) {
            int iDequeueOutputBufferIndex = mediaCodecAdapter.dequeueOutputBufferIndex(this.outputBufferInfo);
            if (iDequeueOutputBufferIndex < 0) {
                if (iDequeueOutputBufferIndex == -2) {
                    processOutputMediaFormatChanged();
                    return true;
                }
                if (this.codecNeedsEosPropagation && (this.inputStreamEnded || this.codecDrainState == 2)) {
                    processEndOfStream();
                }
                long j3 = this.lastOutputBufferProcessedRealtimeMs;
                if (j3 != C.TIME_UNSET && j3 + 100 < getClock().currentTimeMillis()) {
                    processEndOfStream();
                }
                return false;
            }
            MediaCodec.BufferInfo bufferInfo = this.outputBufferInfo;
            bufferInfo.presentationTimeUs -= this.skippedFlushOffsetUs;
            if (this.shouldSkipAdaptationWorkaroundOutputBuffer) {
                this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
                mediaCodecAdapter.releaseOutputBuffer(iDequeueOutputBufferIndex, false);
                return true;
            }
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                processEndOfStream();
                return false;
            }
            this.outputIndex = iDequeueOutputBufferIndex;
            ByteBuffer outputBuffer = mediaCodecAdapter.getOutputBuffer(iDequeueOutputBufferIndex);
            this.outputBuffer = outputBuffer;
            if (outputBuffer != null) {
                outputBuffer.position(this.outputBufferInfo.offset);
                ByteBuffer byteBuffer = this.outputBuffer;
                MediaCodec.BufferInfo bufferInfo2 = this.outputBufferInfo;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            updateOutputFormatForTime(this.outputBufferInfo.presentationTimeUs);
        }
        boolean z = this.hasSkippedFlushAndWaitingForQueueInputBuffer || this.outputBufferInfo.presentationTimeUs < getLastResetPositionUs();
        this.isDecodeOnlyOutputBuffer = z;
        long j4 = this.outputStreamInfo.lastBufferTimeUs;
        boolean z2 = j4 != C.TIME_UNSET && j4 <= this.outputBufferInfo.presentationTimeUs;
        this.isLastOutputBuffer = z2;
        ByteBuffer byteBuffer2 = this.outputBuffer;
        int i = this.outputIndex;
        MediaCodec.BufferInfo bufferInfo3 = this.outputBufferInfo;
        int i2 = bufferInfo3.flags;
        long j5 = bufferInfo3.presentationTimeUs;
        Format format = this.outputFormat;
        format.getClass();
        if (processOutputBuffer(j, j2, mediaCodecAdapter, byteBuffer2, i, i2, 1, j5, z, z2, format)) {
            onProcessedOutputBuffer(this.outputBufferInfo.presentationTimeUs);
            boolean z3 = (this.outputBufferInfo.flags & 4) != 0;
            if (!z3 && this.codecReceivedEos && this.isLastOutputBuffer) {
                this.lastOutputBufferProcessedRealtimeMs = getClock().currentTimeMillis();
            }
            resetOutputBuffer();
            if (!z3) {
                return true;
            }
            processEndOfStream();
        }
        return false;
    }

    private boolean drmNeedsCodecReinitialization(MediaCodecInfo mediaCodecInfo, Format format, DrmSession drmSession, DrmSession drmSession2) {
        CryptoConfig cryptoConfig;
        CryptoConfig cryptoConfig2;
        if (drmSession == drmSession2) {
            return false;
        }
        if (drmSession2 != null && drmSession != null && (cryptoConfig = drmSession2.getCryptoConfig()) != null && (cryptoConfig2 = drmSession.getCryptoConfig()) != null && cryptoConfig.getClass().equals(cryptoConfig2.getClass())) {
            if (!(cryptoConfig instanceof FrameworkCryptoConfig)) {
                return false;
            }
            if (!drmSession2.getSchemeUuid().equals(drmSession.getSchemeUuid())) {
                return true;
            }
            UUID uuid = C.PLAYREADY_UUID;
            if (!uuid.equals(drmSession.getSchemeUuid()) && !uuid.equals(drmSession2.getSchemeUuid())) {
                if (!mediaCodecInfo.secure) {
                    if (drmSession2.getState() != 2) {
                        if (drmSession2.getState() == 3 || drmSession2.getState() == 4) {
                            String str = format.sampleMimeType;
                            str.getClass();
                            if (drmSession2.requiresSecureDecoder(str)) {
                            }
                        }
                    }
                    return true;
                }
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:101:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:110:0x00a2 A[EDGE_INSN: B:110:0x00a2->B:37:0x00a2 BREAK  A[LOOP:0: B:34:0x007e->B:36:0x008b], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:21:0x0040  */
    /* JADX WARN: Code duplicated, block: B:24:0x0045  */
    /* JADX WARN: Code duplicated, block: B:27:0x0057  */
    /* JADX WARN: Code duplicated, block: B:29:0x005b  */
    /* JADX WARN: Code duplicated, block: B:31:0x0079  */
    /* JADX WARN: Code duplicated, block: B:33:0x007d  */
    /* JADX WARN: Code duplicated, block: B:36:0x008b A[LOOP:0: B:34:0x007e->B:36:0x008b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:42:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:48:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:50:0x00da  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:57:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:60:0x0106  */
    /* JADX WARN: Code duplicated, block: B:62:0x010a  */
    /* JADX WARN: Code duplicated, block: B:65:0x0110  */
    /* JADX WARN: Code duplicated, block: B:67:0x0120  */
    /* JADX WARN: Code duplicated, block: B:75:0x0138  */
    /* JADX WARN: Code duplicated, block: B:78:0x0143  */
    /* JADX WARN: Code duplicated, block: B:80:0x014b  */
    /* JADX WARN: Code duplicated, block: B:83:0x0156  */
    /* JADX WARN: Code duplicated, block: B:86:0x0174  */
    /* JADX WARN: Code duplicated, block: B:88:0x017c  */
    /* JADX WARN: Code duplicated, block: B:91:0x0191  */
    /* JADX WARN: Code duplicated, block: B:94:0x019a  */
    /* JADX WARN: Code duplicated, block: B:96:0x01a0  */
    private boolean feedInputBuffer() throws ExoPlaybackException {
        int iPosition;
        FormatHolder formatHolder;
        int i;
        DecoderInputBuffer decoderInputBuffer;
        long j;
        boolean zIsEncrypted;
        int codecBufferFlags;
        long j2;
        int i2;
        DecoderInputBuffer decoderInputBuffer2;
        long j3;
        int i3;
        Format format;
        if (this.codec != null) {
            int i4 = this.codecDrainState;
            int i5 = 2;
            if (i4 != 2 && !this.inputStreamEnded) {
                if (i4 == 0 && shouldReinitCodec()) {
                    drainAndReinitializeCodec();
                }
                MediaCodecAdapter mediaCodecAdapter = this.codec;
                mediaCodecAdapter.getClass();
                if (this.inputIndex < 0) {
                    int iDequeueInputBufferIndex = mediaCodecAdapter.dequeueInputBufferIndex();
                    this.inputIndex = iDequeueInputBufferIndex;
                    if (iDequeueInputBufferIndex >= 0) {
                        this.buffer.data = mediaCodecAdapter.getInputBuffer(iDequeueInputBufferIndex);
                        this.buffer.clear();
                        if (this.codecDrainState == 1) {
                            if (!this.codecNeedsEosPropagation) {
                                this.codecReceivedEos = true;
                                mediaCodecAdapter.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                                resetInputBuffer();
                            }
                            this.codecDrainState = 2;
                            return false;
                        }
                        if (this.codecNeedsAdaptationWorkaroundBuffer) {
                            this.codecNeedsAdaptationWorkaroundBuffer = false;
                            ByteBuffer byteBuffer = this.buffer.data;
                            byteBuffer.getClass();
                            byte[] bArr = ADAPTATION_WORKAROUND_BUFFER;
                            byteBuffer.put(bArr);
                            mediaCodecAdapter.queueInputBuffer(this.inputIndex, 0, bArr.length, 0L, 0);
                            resetInputBuffer();
                            this.codecReceivedBuffers = true;
                            return true;
                        }
                        if (this.codecReconfigurationState == 1) {
                            i3 = 0;
                            while (true) {
                                format = this.codecInputFormat;
                                format.getClass();
                                if (i3 < format.initializationData.size()) {
                                    break;
                                }
                                byte[] bArr2 = this.codecInputFormat.initializationData.get(i3);
                                ByteBuffer byteBuffer2 = this.buffer.data;
                                byteBuffer2.getClass();
                                byteBuffer2.put(bArr2);
                                i3++;
                            }
                            this.codecReconfigurationState = 2;
                        }
                        ByteBuffer byteBuffer3 = this.buffer.data;
                        byteBuffer3.getClass();
                        iPosition = byteBuffer3.position();
                        formatHolder = getFormatHolder();
                        try {
                            mediaCodecAdapter.useInputBuffer(new z42(i5, this, formatHolder));
                            i = this.readDataResultHolder.get();
                            if (i == -3) {
                                if (hasReadStreamToEnd()) {
                                    getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                                    return false;
                                }
                            } else {
                                if (i == -5) {
                                    if (this.codecReconfigurationState == 2) {
                                        this.buffer.clear();
                                        this.codecReconfigurationState = 1;
                                    }
                                    onInputFormatChanged(formatHolder);
                                    return true;
                                }
                                if (this.buffer.isEndOfStream()) {
                                    if (!this.codecReceivedBuffers || this.buffer.isKeyFrame()) {
                                        decoderInputBuffer = this.buffer;
                                        j = decoderInputBuffer.timeUs;
                                        if (!shouldDiscardDecoderInputBuffer(decoderInputBuffer)) {
                                            zIsEncrypted = this.buffer.isEncrypted();
                                            if (zIsEncrypted) {
                                                this.buffer.cryptoInfo.increaseClearDataFirstSubSampleBy(iPosition);
                                            }
                                            if (this.waitingForFirstSampleInFormat) {
                                                TimedValueQueue<Format> timedValueQueue = getLastOutputStreamInfo().formatQueue;
                                                Format format2 = this.inputFormat;
                                                format2.getClass();
                                                timedValueQueue.add(j, format2);
                                                this.waitingForFirstSampleInFormat = false;
                                            }
                                            this.largestQueuedPresentationTimeUs = Math.max(this.largestQueuedPresentationTimeUs, j);
                                            if (hasReadStreamToEnd() || this.buffer.isLastSample()) {
                                                getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                                            }
                                            this.buffer.flip();
                                            if (this.buffer.hasSupplementalData()) {
                                                handleInputBufferSupplementalData(this.buffer);
                                            }
                                            if (this.hasSkippedFlushAndWaitingForQueueInputBuffer) {
                                                j3 = this.largestQueuedPresentationTimeUs;
                                                if (j <= j3) {
                                                    this.skippedFlushOffsetUs = (j3 - j) + 1 + this.skippedFlushOffsetUs;
                                                }
                                                this.largestQueuedPresentationTimeUs = j;
                                                this.hasSkippedFlushAndWaitingForQueueInputBuffer = false;
                                            }
                                            onQueueInputBuffer(this.buffer);
                                            codecBufferFlags = getCodecBufferFlags(this.buffer);
                                            j2 = j + this.skippedFlushOffsetUs;
                                            i2 = this.inputIndex;
                                            decoderInputBuffer2 = this.buffer;
                                            if (zIsEncrypted) {
                                                mediaCodecAdapter.queueSecureInputBuffer(i2, 0, decoderInputBuffer2.cryptoInfo, j2, codecBufferFlags);
                                            } else {
                                                ByteBuffer byteBuffer4 = decoderInputBuffer2.data;
                                                byteBuffer4.getClass();
                                                mediaCodecAdapter.queueInputBuffer(i2, 0, byteBuffer4.limit(), j2, codecBufferFlags);
                                            }
                                            resetInputBuffer();
                                            this.codecReceivedBuffers = true;
                                            this.codecReconfigurationState = 0;
                                            this.decoderCounters.queuedInputBufferCount++;
                                            return true;
                                        }
                                    } else {
                                        this.buffer.clear();
                                        if (this.codecReconfigurationState == 2) {
                                            this.codecReconfigurationState = 1;
                                            return true;
                                        }
                                    }
                                    return true;
                                }
                                getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                                if (this.codecReconfigurationState == 2) {
                                    this.buffer.clear();
                                    this.codecReconfigurationState = 1;
                                }
                                this.inputStreamEnded = true;
                                if (!this.codecReceivedBuffers) {
                                    processEndOfStream();
                                    return false;
                                }
                                if (!this.codecNeedsEosPropagation) {
                                    this.codecReceivedEos = true;
                                    mediaCodecAdapter.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                                    resetInputBuffer();
                                    return false;
                                }
                            }
                        } catch (DecoderInputBuffer.InsufficientCapacityException e) {
                            onCodecError(e);
                            readSourceOmittingSampleData(0);
                            flushCodec();
                            return true;
                        }
                    }
                } else {
                    if (this.codecDrainState == 1) {
                        if (!this.codecNeedsEosPropagation) {
                            this.codecReceivedEos = true;
                            mediaCodecAdapter.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                            resetInputBuffer();
                        }
                        this.codecDrainState = 2;
                        return false;
                    }
                    if (this.codecNeedsAdaptationWorkaroundBuffer) {
                        this.codecNeedsAdaptationWorkaroundBuffer = false;
                        ByteBuffer byteBuffer5 = this.buffer.data;
                        byteBuffer5.getClass();
                        byte[] bArr3 = ADAPTATION_WORKAROUND_BUFFER;
                        byteBuffer5.put(bArr3);
                        mediaCodecAdapter.queueInputBuffer(this.inputIndex, 0, bArr3.length, 0L, 0);
                        resetInputBuffer();
                        this.codecReceivedBuffers = true;
                        return true;
                    }
                    if (this.codecReconfigurationState == 1) {
                        i3 = 0;
                        while (true) {
                            format = this.codecInputFormat;
                            format.getClass();
                            if (i3 < format.initializationData.size()) {
                                break;
                                break;
                            }
                            byte[] bArr4 = this.codecInputFormat.initializationData.get(i3);
                            ByteBuffer byteBuffer6 = this.buffer.data;
                            byteBuffer6.getClass();
                            byteBuffer6.put(bArr4);
                            i3++;
                        }
                        this.codecReconfigurationState = 2;
                    }
                    ByteBuffer byteBuffer7 = this.buffer.data;
                    byteBuffer7.getClass();
                    iPosition = byteBuffer7.position();
                    formatHolder = getFormatHolder();
                    mediaCodecAdapter.useInputBuffer(new z42(i5, this, formatHolder));
                    i = this.readDataResultHolder.get();
                    if (i == -3) {
                        if (hasReadStreamToEnd()) {
                            getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                            return false;
                        }
                    } else {
                        if (i == -5) {
                            if (this.codecReconfigurationState == 2) {
                                this.buffer.clear();
                                this.codecReconfigurationState = 1;
                            }
                            onInputFormatChanged(formatHolder);
                            return true;
                        }
                        if (this.buffer.isEndOfStream()) {
                            if (this.codecReceivedBuffers) {
                                decoderInputBuffer = this.buffer;
                                j = decoderInputBuffer.timeUs;
                                if (!shouldDiscardDecoderInputBuffer(decoderInputBuffer)) {
                                    zIsEncrypted = this.buffer.isEncrypted();
                                    if (zIsEncrypted) {
                                        this.buffer.cryptoInfo.increaseClearDataFirstSubSampleBy(iPosition);
                                    }
                                    if (this.waitingForFirstSampleInFormat) {
                                        TimedValueQueue<Format> timedValueQueue2 = getLastOutputStreamInfo().formatQueue;
                                        Format format3 = this.inputFormat;
                                        format3.getClass();
                                        timedValueQueue2.add(j, format3);
                                        this.waitingForFirstSampleInFormat = false;
                                    }
                                    this.largestQueuedPresentationTimeUs = Math.max(this.largestQueuedPresentationTimeUs, j);
                                    if (hasReadStreamToEnd()) {
                                        getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                                    } else {
                                        getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                                    }
                                    this.buffer.flip();
                                    if (this.buffer.hasSupplementalData()) {
                                        handleInputBufferSupplementalData(this.buffer);
                                    }
                                    if (this.hasSkippedFlushAndWaitingForQueueInputBuffer) {
                                        j3 = this.largestQueuedPresentationTimeUs;
                                        if (j <= j3) {
                                            this.skippedFlushOffsetUs = (j3 - j) + 1 + this.skippedFlushOffsetUs;
                                        }
                                        this.largestQueuedPresentationTimeUs = j;
                                        this.hasSkippedFlushAndWaitingForQueueInputBuffer = false;
                                    }
                                    onQueueInputBuffer(this.buffer);
                                    codecBufferFlags = getCodecBufferFlags(this.buffer);
                                    j2 = j + this.skippedFlushOffsetUs;
                                    i2 = this.inputIndex;
                                    decoderInputBuffer2 = this.buffer;
                                    if (zIsEncrypted) {
                                        mediaCodecAdapter.queueSecureInputBuffer(i2, 0, decoderInputBuffer2.cryptoInfo, j2, codecBufferFlags);
                                    } else {
                                        ByteBuffer byteBuffer8 = decoderInputBuffer2.data;
                                        byteBuffer8.getClass();
                                        mediaCodecAdapter.queueInputBuffer(i2, 0, byteBuffer8.limit(), j2, codecBufferFlags);
                                    }
                                    resetInputBuffer();
                                    this.codecReceivedBuffers = true;
                                    this.codecReconfigurationState = 0;
                                    this.decoderCounters.queuedInputBufferCount++;
                                    return true;
                                }
                            } else {
                                decoderInputBuffer = this.buffer;
                                j = decoderInputBuffer.timeUs;
                                if (!shouldDiscardDecoderInputBuffer(decoderInputBuffer)) {
                                    zIsEncrypted = this.buffer.isEncrypted();
                                    if (zIsEncrypted) {
                                        this.buffer.cryptoInfo.increaseClearDataFirstSubSampleBy(iPosition);
                                    }
                                    if (this.waitingForFirstSampleInFormat) {
                                        TimedValueQueue<Format> timedValueQueue3 = getLastOutputStreamInfo().formatQueue;
                                        Format format4 = this.inputFormat;
                                        format4.getClass();
                                        timedValueQueue3.add(j, format4);
                                        this.waitingForFirstSampleInFormat = false;
                                    }
                                    this.largestQueuedPresentationTimeUs = Math.max(this.largestQueuedPresentationTimeUs, j);
                                    if (hasReadStreamToEnd()) {
                                        getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                                    } else {
                                        getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                                    }
                                    this.buffer.flip();
                                    if (this.buffer.hasSupplementalData()) {
                                        handleInputBufferSupplementalData(this.buffer);
                                    }
                                    if (this.hasSkippedFlushAndWaitingForQueueInputBuffer) {
                                        j3 = this.largestQueuedPresentationTimeUs;
                                        if (j <= j3) {
                                            this.skippedFlushOffsetUs = (j3 - j) + 1 + this.skippedFlushOffsetUs;
                                        }
                                        this.largestQueuedPresentationTimeUs = j;
                                        this.hasSkippedFlushAndWaitingForQueueInputBuffer = false;
                                    }
                                    onQueueInputBuffer(this.buffer);
                                    codecBufferFlags = getCodecBufferFlags(this.buffer);
                                    j2 = j + this.skippedFlushOffsetUs;
                                    i2 = this.inputIndex;
                                    decoderInputBuffer2 = this.buffer;
                                    if (zIsEncrypted) {
                                        mediaCodecAdapter.queueSecureInputBuffer(i2, 0, decoderInputBuffer2.cryptoInfo, j2, codecBufferFlags);
                                    } else {
                                        ByteBuffer byteBuffer9 = decoderInputBuffer2.data;
                                        byteBuffer9.getClass();
                                        mediaCodecAdapter.queueInputBuffer(i2, 0, byteBuffer9.limit(), j2, codecBufferFlags);
                                    }
                                    resetInputBuffer();
                                    this.codecReceivedBuffers = true;
                                    this.codecReconfigurationState = 0;
                                    this.decoderCounters.queuedInputBufferCount++;
                                    return true;
                                }
                            }
                            return true;
                        }
                        getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                        if (this.codecReconfigurationState == 2) {
                            this.buffer.clear();
                            this.codecReconfigurationState = 1;
                        }
                        this.inputStreamEnded = true;
                        if (!this.codecReceivedBuffers) {
                            processEndOfStream();
                            return false;
                        }
                        if (!this.codecNeedsEosPropagation) {
                            this.codecReceivedEos = true;
                            mediaCodecAdapter.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                            resetInputBuffer();
                            return false;
                        }
                    }
                }
            }
        }
        return false;
    }

    private void flushCodec() {
        try {
            MediaCodecAdapter mediaCodecAdapter = this.codec;
            mediaCodecAdapter.getClass();
            mediaCodecAdapter.flush();
        } finally {
            resetCodecStateForFlush();
        }
    }

    private boolean flushOrReleaseCodec() {
        if (this.codec == null) {
            return false;
        }
        if (shouldReleaseCodecInsteadOfFlushing()) {
            releaseCodec();
            return true;
        }
        if (shouldFlushCodec()) {
            flushCodec();
        } else {
            this.hasSkippedFlushAndWaitingForQueueInputBuffer = true;
        }
        return false;
    }

    private List<MediaCodecInfo> getAvailableCodecInfos(boolean z) {
        Format format = this.inputFormat;
        format.getClass();
        List<MediaCodecInfo> decoderInfos = getDecoderInfos(this.mediaCodecSelector, format, z);
        if (!decoderInfos.isEmpty() || !z) {
            return decoderInfos;
        }
        List<MediaCodecInfo> decoderInfos2 = getDecoderInfos(this.mediaCodecSelector, format, false);
        if (!decoderInfos2.isEmpty()) {
            Log.w(TAG, "Drm session requires secure decoder for " + format.sampleMimeType + ", but no secure decoder available. Trying to proceed with " + decoderInfos2 + ".");
        }
        return decoderInfos2;
    }

    private OutputStreamInfo getLastOutputStreamInfo() {
        return !this.pendingOutputStreamChanges.isEmpty() ? this.pendingOutputStreamChanges.getLast() : this.outputStreamInfo;
    }

    private boolean hasOutputBuffer() {
        return this.outputIndex >= 0;
    }

    private boolean haveBypassBatchBufferAndNewSampleSameDecodeOnlyState() {
        if (!this.bypassBatchBuffer.hasSamples()) {
            return true;
        }
        long lastResetPositionUs = getLastResetPositionUs();
        return isDecodeOnly(lastResetPositionUs, this.bypassBatchBuffer.getLastSampleTimeUs()) == isDecodeOnly(lastResetPositionUs, this.bypassSampleBuffer.timeUs);
    }

    private void initBypass(Format format) {
        disableBypass();
        String str = format.sampleMimeType;
        if ("audio/mp4a-latm".equals(str) || MimeTypes.AUDIO_MPEG.equals(str) || MimeTypes.AUDIO_OPUS.equals(str)) {
            this.bypassBatchBuffer.setMaxSampleCount(32);
        } else {
            this.bypassBatchBuffer.setMaxSampleCount(1);
        }
        this.bypassEnabled = true;
    }

    private void initCodec(MediaCodecInfo mediaCodecInfo, MediaCrypto mediaCrypto) {
        this.codecInfo = mediaCodecInfo;
        Format format = this.inputFormat;
        format.getClass();
        String str = mediaCodecInfo.name;
        float codecOperatingRateV23 = getCodecOperatingRateV23(this.targetPlaybackSpeed, format, getStreamFormats());
        if (codecOperatingRateV23 <= this.assumedMinimumCodecOperatingRate) {
            codecOperatingRateV23 = -1.0f;
        }
        long jElapsedRealtime = getClock().elapsedRealtime();
        MediaCodecAdapter.Configuration mediaCodecConfiguration = getMediaCodecConfiguration(mediaCodecInfo, format, mediaCrypto, codecOperatingRateV23);
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            Api31.setLogSessionIdToMediaCodecFormat(mediaCodecConfiguration, getPlayerId());
        }
        try {
            TraceUtil.beginSection("createCodec:" + str);
            MediaCodecAdapter mediaCodecAdapterCreateAdapter = this.codecAdapterFactory.createAdapter(mediaCodecConfiguration);
            this.codec = mediaCodecAdapterCreateAdapter;
            this.codecRegisteredOnBufferAvailableListener = mediaCodecAdapterCreateAdapter.registerOnBufferAvailableListener(new MediaCodecRendererCodecAdapterListener());
            TraceUtil.endSection();
            long jElapsedRealtime2 = getClock().elapsedRealtime();
            if (!mediaCodecInfo.isFormatSupported(format)) {
                Log.w(TAG, Util.formatInvariant("Format exceeds selected codec's capabilities [%s, %s]", Format.toLogString(format), str));
            }
            this.codecOperatingRate = codecOperatingRateV23;
            this.codecInputFormat = format;
            this.codecAdaptationWorkaroundMode = codecAdaptationWorkaroundMode(str);
            this.codecNeedsSosFlushWorkaround = codecNeedsSosFlushWorkaround(str);
            this.codecNeedsEosFlushWorkaround = codecNeedsEosFlushWorkaround(str);
            this.codecNeedsEosPropagation = codecNeedsEosPropagationWorkaround(mediaCodecInfo);
            MediaCodecAdapter mediaCodecAdapter = this.codec;
            mediaCodecAdapter.getClass();
            if (mediaCodecAdapter.needsReconfiguration()) {
                this.codecReconfigured = true;
                this.codecReconfigurationState = 1;
                this.codecNeedsAdaptationWorkaroundBuffer = this.codecAdaptationWorkaroundMode != 0;
            }
            if (getState() == 2) {
                this.codecHotswapDeadlineMs = getClock().elapsedRealtime() + 1000;
            }
            this.decoderCounters.decoderInitCount++;
            long j = jElapsedRealtime2 - jElapsedRealtime;
            if (i >= 31 && !this.subscribedCodecParameterKeys.isEmpty()) {
                MediaCodecAdapter codec = getCodec();
                codec.getClass();
                codec.subscribeToVendorParameters(new ArrayList(this.subscribedCodecParameterKeys));
            }
            onCodecInitialized(str, mediaCodecConfiguration, jElapsedRealtime2, j);
        } catch (Throwable th) {
            TraceUtil.endSection();
            throw th;
        }
    }

    @RequiresNonNull({"this.codecDrmSession"})
    private boolean initMediaCryptoIfDrmSessionReady() throws ExoPlaybackException {
        o8.r(this.mediaCrypto == null);
        DrmSession drmSession = this.codecDrmSession;
        CryptoConfig cryptoConfig = drmSession.getCryptoConfig();
        if (FrameworkCryptoConfig.WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC && (cryptoConfig instanceof FrameworkCryptoConfig)) {
            int state = drmSession.getState();
            if (state == 1) {
                DrmSession.DrmSessionException error = drmSession.getError();
                error.getClass();
                throw createRendererException(error, this.inputFormat, error.errorCode);
            }
            if (state != 4) {
                return false;
            }
        }
        if (cryptoConfig == null) {
            return drmSession.getError() != null;
        }
        if (cryptoConfig instanceof FrameworkCryptoConfig) {
            FrameworkCryptoConfig frameworkCryptoConfig = (FrameworkCryptoConfig) cryptoConfig;
            try {
                this.mediaCrypto = new MediaCrypto(frameworkCryptoConfig.uuid, frameworkCryptoConfig.sessionId);
            } catch (MediaCryptoException e) {
                throw createRendererException(e, this.inputFormat, PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR);
            }
        }
        return true;
    }

    private boolean isDecodeOnly(long j, long j2) {
        if (j2 >= j) {
            return false;
        }
        Format format = this.outputFormat;
        return (format != null && Objects.equals(format.sampleMimeType, MimeTypes.AUDIO_OPUS) && OpusUtil.needToDecodeOpusFrame(j, j2)) ? false : true;
    }

    private static boolean isMediaCodecException(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return true;
        }
        StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
        return stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$feedInputBuffer$0(FormatHolder formatHolder) {
        this.readDataResultHolder.set(readSource(formatHolder, this.buffer, 0));
    }

    private void maybeInitCodecWithFallback(MediaCrypto mediaCrypto, boolean z) throws DecoderInitializationException {
        Format format = this.inputFormat;
        format.getClass();
        if (this.availableCodecInfos == null) {
            try {
                List<MediaCodecInfo> availableCodecInfos = getAvailableCodecInfos(z);
                ArrayDeque<MediaCodecInfo> arrayDeque = new ArrayDeque<>();
                this.availableCodecInfos = arrayDeque;
                if (this.enableDecoderFallback) {
                    arrayDeque.addAll(availableCodecInfos);
                } else if (!availableCodecInfos.isEmpty()) {
                    this.availableCodecInfos.add(availableCodecInfos.get(0));
                }
                this.preferredDecoderInitializationException = null;
            } catch (MediaCodecUtil.DecoderQueryException e) {
                throw new DecoderInitializationException(format, e, z, -49998);
            }
        }
        if (this.availableCodecInfos.isEmpty()) {
            throw new DecoderInitializationException(format, (Throwable) null, z, -49999);
        }
        ArrayDeque<MediaCodecInfo> arrayDeque2 = this.availableCodecInfos;
        arrayDeque2.getClass();
        while (this.codec == null) {
            MediaCodecInfo mediaCodecInfoPeekFirst = arrayDeque2.peekFirst();
            mediaCodecInfoPeekFirst.getClass();
            if (!maybeInitializeProcessingPipeline(format) || !shouldInitCodec(mediaCodecInfoPeekFirst)) {
                return;
            }
            try {
                initCodec(mediaCodecInfoPeekFirst, mediaCrypto);
            } catch (Exception e2) {
                Log.w(TAG, "Failed to initialize decoder: " + mediaCodecInfoPeekFirst, e2);
                arrayDeque2.removeFirst();
                DecoderInitializationException decoderInitializationException = new DecoderInitializationException(format, e2, z, mediaCodecInfoPeekFirst);
                onCodecError(decoderInitializationException);
                if (this.preferredDecoderInitializationException == null) {
                    this.preferredDecoderInitializationException = decoderInitializationException;
                } else {
                    this.preferredDecoderInitializationException = this.preferredDecoderInitializationException.copyWithFallbackException(decoderInitializationException);
                }
                if (arrayDeque2.isEmpty()) {
                    throw this.preferredDecoderInitializationException;
                }
            }
        }
        this.availableCodecInfos = null;
    }

    private void processEndOfStream() throws ExoPlaybackException {
        int i = this.codecDrainAction;
        if (i == 1) {
            flushCodec();
            return;
        }
        if (i == 2) {
            flushCodec();
            updateDrmSession();
        } else if (i == 3) {
            reinitializeCodec();
        } else {
            this.outputStreamEnded = true;
            renderToEndOfStream();
        }
    }

    private void processOutputMediaFormatChanged() {
        this.codecHasOutputMediaFormat = true;
        MediaCodecAdapter mediaCodecAdapter = this.codec;
        mediaCodecAdapter.getClass();
        MediaFormat outputFormat = mediaCodecAdapter.getOutputFormat();
        if (this.codecAdaptationWorkaroundMode != 0 && outputFormat.getInteger(TJAdUnitConstants.String.WIDTH) == 32 && outputFormat.getInteger(TJAdUnitConstants.String.HEIGHT) == 32) {
            this.shouldSkipAdaptationWorkaroundOutputBuffer = true;
            return;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            checkAndNotifyCodecParameterChanges(outputFormat);
        }
        this.codecOutputMediaFormat = outputFormat;
        this.codecOutputMediaFormatChanged = true;
    }

    private boolean readSourceOmittingSampleData(int i) throws ExoPlaybackException {
        FormatHolder formatHolder = getFormatHolder();
        this.noDataBuffer.clear();
        int source = readSource(formatHolder, this.noDataBuffer, i | 4);
        if (source == -5) {
            onInputFormatChanged(formatHolder);
            return true;
        }
        if (source != -4 || !this.noDataBuffer.isEndOfStream()) {
            return false;
        }
        this.inputStreamEnded = true;
        processEndOfStream();
        return false;
    }

    private void reinitializeCodec() throws ExoPlaybackException {
        releaseCodec();
        maybeInitCodecOrBypass();
    }

    private void resetBypassState() {
        resetCommonStateForFlush();
        this.bypassDrainAndReinitialize = false;
        this.bypassBatchBuffer.clear();
        this.bypassSampleBuffer.clear();
        this.bypassSampleBufferPending = false;
        this.oggOpusAudioPacketizer.reset();
    }

    private void resetCommonStateForFlush() {
        this.largestQueuedPresentationTimeUs = C.TIME_UNSET;
        getLastOutputStreamInfo().lastBufferTimeUs = C.TIME_UNSET;
        this.lastProcessedOutputBufferTimeUs = C.TIME_UNSET;
    }

    private void resetInputBuffer() {
        this.inputIndex = -1;
        this.buffer.data = null;
    }

    private void resetOutputBuffer() {
        this.outputIndex = -1;
        this.outputBuffer = null;
    }

    private void setCodecDrmSession(DrmSession drmSession) {
        DrmSession.replaceSession(this.codecDrmSession, drmSession);
        this.codecDrmSession = drmSession;
    }

    private void setOutputStreamInfo(OutputStreamInfo outputStreamInfo) {
        this.outputStreamInfo = outputStreamInfo;
        long j = outputStreamInfo.streamOffsetUs;
        if (j != C.TIME_UNSET) {
            this.needToNotifyOutputFormatChangeAfterStreamChange = true;
            onOutputStreamOffsetUsChanged(j);
        }
    }

    private void setSourceDrmSession(DrmSession drmSession) {
        DrmSession.replaceSession(this.sourceDrmSession, drmSession);
        this.sourceDrmSession = drmSession;
    }

    private boolean shouldContinueRendering(long j) {
        return this.renderTimeLimitMs == C.TIME_UNSET || getClock().elapsedRealtime() - j < this.renderTimeLimitMs;
    }

    public static boolean supportsFormatDrm(Format format) {
        int i = format.cryptoType;
        return i == 0 || i == 2;
    }

    private boolean updateCodecOperatingRate(Format format) throws ExoPlaybackException {
        if (this.codec != null && this.codecDrainAction != 3 && getState() != 0) {
            float f = this.targetPlaybackSpeed;
            format.getClass();
            float codecOperatingRateV23 = getCodecOperatingRateV23(f, format, getStreamFormats());
            float f2 = this.codecOperatingRate;
            if (f2 == codecOperatingRateV23) {
                return true;
            }
            if (codecOperatingRateV23 == -1.0f) {
                drainAndReinitializeCodec();
                return false;
            }
            if (f2 == -1.0f && codecOperatingRateV23 <= this.assumedMinimumCodecOperatingRate) {
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", codecOperatingRateV23);
            MediaCodecAdapter mediaCodecAdapter = this.codec;
            mediaCodecAdapter.getClass();
            mediaCodecAdapter.setParameters(bundle);
            this.codecOperatingRate = codecOperatingRateV23;
        }
        return true;
    }

    private void updateCodecSubscriptions(n<String> nVar) {
        if (this.subscribedCodecParameterKeys.equals(nVar)) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 31) {
            HashSet hashSet = new HashSet(nVar);
            HashSet hashSet2 = new HashSet();
            y69<String> it = this.subscribedCodecParameterKeys.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (!hashSet.remove(next)) {
                    hashSet2.add(next);
                }
            }
            MediaCodecAdapter codec = getCodec();
            if (codec != null) {
                if (!hashSet2.isEmpty()) {
                    codec.unsubscribeFromVendorParameters(new ArrayList(hashSet2));
                }
                if (!hashSet.isEmpty()) {
                    codec.subscribeToVendorParameters(new ArrayList(hashSet));
                }
            }
        }
        this.subscribedCodecParameterKeys = nVar;
    }

    private void updateDrmSession() throws ExoPlaybackException {
        DrmSession drmSession = this.sourceDrmSession;
        drmSession.getClass();
        CryptoConfig cryptoConfig = drmSession.getCryptoConfig();
        if (cryptoConfig instanceof FrameworkCryptoConfig) {
            try {
                MediaCrypto mediaCrypto = this.mediaCrypto;
                mediaCrypto.getClass();
                mediaCrypto.setMediaDrmSession(((FrameworkCryptoConfig) cryptoConfig).sessionId);
            } catch (MediaCryptoException e) {
                throw createRendererException(e, this.inputFormat, PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR);
            }
        }
        setCodecDrmSession(this.sourceDrmSession);
        this.codecDrainState = 0;
        this.codecDrainAction = 0;
    }

    public final void applyCodecParametersToMediaFormat(MediaFormat mediaFormat) {
        if (Build.VERSION.SDK_INT >= 29) {
            this.activeCodecParameters.applyTo(mediaFormat);
        }
    }

    public DecoderReuseEvaluation canReuseCodec(MediaCodecInfo mediaCodecInfo, Format format, Format format2) {
        return new DecoderReuseEvaluation(mediaCodecInfo.name, format, format2, 0, 1);
    }

    public MediaCodecDecoderException createDecoderException(Throwable th, MediaCodecInfo mediaCodecInfo) {
        return new MediaCodecDecoderException(th, mediaCodecInfo);
    }

    public void experimentalEnableProcessedStreamChangedAtStart() {
        this.experimentalEnableProcessedStreamChangedAtStart = true;
    }

    public final boolean flushOrReinitializeCodec() throws ExoPlaybackException {
        boolean zFlushOrReleaseCodec = flushOrReleaseCodec();
        if (zFlushOrReleaseCodec) {
            maybeInitCodecOrBypass();
        }
        return zFlushOrReleaseCodec;
    }

    public final MediaCodecAdapter getCodec() {
        return this.codec;
    }

    public int getCodecBufferFlags(DecoderInputBuffer decoderInputBuffer) {
        return 0;
    }

    public final MediaCodecInfo getCodecInfo() {
        return this.codecInfo;
    }

    public final Format getCodecInputFormat() {
        return this.codecInputFormat;
    }

    public float getCodecOperatingRate() {
        return this.codecOperatingRate;
    }

    public float getCodecOperatingRateV23(float f, Format format, Format[] formatArr) {
        return -1.0f;
    }

    public final MediaFormat getCodecOutputMediaFormat() {
        return this.codecOutputMediaFormat;
    }

    public abstract List<MediaCodecInfo> getDecoderInfos(MediaCodecSelector mediaCodecSelector, Format format, boolean z);

    @Override // androidx.media3.exoplayer.Renderer
    public final long getDurationToProgressUs(long j, long j2) {
        return getDurationToProgressUs(j, j2, this.codecRegisteredOnBufferAvailableListener);
    }

    public long getLargestQueuedPresentationTimeUs() {
        return this.largestQueuedPresentationTimeUs;
    }

    public long getLastBufferInStreamPresentationTimeUs() {
        return this.outputStreamInfo.lastBufferTimeUs;
    }

    public final long getLastProcessedOutputBufferTimeUs() {
        return this.lastProcessedOutputBufferTimeUs;
    }

    public abstract MediaCodecAdapter.Configuration getMediaCodecConfiguration(MediaCodecInfo mediaCodecInfo, Format format, MediaCrypto mediaCrypto, float f);

    public final long getOutputStreamOffsetUs() {
        return this.outputStreamInfo.streamOffsetUs;
    }

    public final long getOutputStreamStartPositionUs() {
        return this.outputStreamInfo.startPositionUs;
    }

    public float getPlaybackSpeed() {
        return this.currentPlaybackSpeed;
    }

    public long getSkippedFlushOffsetUs() {
        return this.skippedFlushOffsetUs;
    }

    public final Renderer.WakeupListener getWakeupListener() {
        return this.wakeupListener;
    }

    public void handleInputBufferSupplementalData(DecoderInputBuffer decoderInputBuffer) {
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i, Object obj) {
        if (i == 11) {
            Renderer.WakeupListener wakeupListener = (Renderer.WakeupListener) obj;
            wakeupListener.getClass();
            this.wakeupListener = wakeupListener;
            return;
        }
        if (i != 21) {
            if (i != 22) {
                super.handleMessage(i, obj);
                return;
            } else {
                if (Build.VERSION.SDK_INT >= 29) {
                    obj.getClass();
                    updateCodecSubscriptions((n) obj);
                    return;
                }
                return;
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            obj.getClass();
            this.activeCodecParameters = (CodecParameters) obj;
            MediaCodecAdapter codec = getCodec();
            if (codec != null) {
                codec.setParameters(this.activeCodecParameters.toBundle());
            }
        }
    }

    public final boolean isBypassEnabled() {
        return this.bypassEnabled;
    }

    public final boolean isBypassPossible(Format format) {
        return this.sourceDrmSession == null && shouldUseBypass(format);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        return isReadyForDecoding();
    }

    public final boolean isReadyForDecoding() {
        if (this.inputFormat == null) {
            return false;
        }
        if (isSourceReady() || hasOutputBuffer()) {
            return true;
        }
        return this.codecHotswapDeadlineMs != C.TIME_UNSET && getClock().elapsedRealtime() < this.codecHotswapDeadlineMs;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x004c  */
    public final void maybeInitCodecOrBypass() throws ExoPlaybackException {
        Format format;
        boolean z;
        if (this.codec != null || this.bypassEnabled || (format = this.inputFormat) == null) {
            return;
        }
        if (isBypassPossible(format)) {
            initBypass(format);
            return;
        }
        setCodecDrmSession(this.sourceDrmSession);
        if (this.codecDrmSession == null || initMediaCryptoIfDrmSessionReady()) {
            try {
                DrmSession drmSession = this.codecDrmSession;
                if (drmSession == null || !(drmSession.getState() == 3 || this.codecDrmSession.getState() == 4)) {
                    z = false;
                } else {
                    DrmSession drmSession2 = this.codecDrmSession;
                    String str = format.sampleMimeType;
                    str.getClass();
                    if (drmSession2.requiresSecureDecoder(str)) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                maybeInitCodecWithFallback(this.mediaCrypto, z);
            } catch (DecoderInitializationException e) {
                throw createRendererException(e, format, PlaybackException.ERROR_CODE_DECODER_INIT_FAILED);
            }
        }
        MediaCrypto mediaCrypto = this.mediaCrypto;
        if (mediaCrypto == null || this.codec != null) {
            return;
        }
        mediaCrypto.release();
        this.mediaCrypto = null;
    }

    public boolean maybeInitializeProcessingPipeline(Format format) {
        return true;
    }

    public void onCodecError(Exception exc) {
    }

    public void onCodecInitialized(String str, MediaCodecAdapter.Configuration configuration, long j, long j2) {
    }

    public abstract void onCodecParametersChanged(CodecParameters codecParameters);

    public void onCodecReleased(String str) {
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onDisabled() {
        this.inputFormat = null;
        setOutputStreamInfo(OutputStreamInfo.UNSET);
        this.pendingOutputStreamChanges.clear();
        if (this.bypassEnabled) {
            disableBypass();
        } else {
            flushOrReleaseCodec();
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onEnabled(boolean z, boolean z2) {
        this.decoderCounters = new DecoderCounters();
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0090  */
    /* JADX WARN: Code duplicated, block: B:40:0x009c  */
    public DecoderReuseEvaluation onInputFormatChanged(FormatHolder formatHolder) throws ExoPlaybackException {
        boolean z = true;
        this.waitingForFirstSampleInFormat = true;
        Format formatBuild = formatHolder.format;
        formatBuild.getClass();
        String str = formatBuild.sampleMimeType;
        if (str == null) {
            throw createRendererException(new IllegalArgumentException("Sample MIME type is null."), formatBuild, PlaybackException.ERROR_CODE_DECODING_FORMAT_UNSUPPORTED);
        }
        if ((Objects.equals(str, MimeTypes.VIDEO_AV1) || Objects.equals(formatBuild.sampleMimeType, MimeTypes.VIDEO_VP9)) && !formatBuild.initializationData.isEmpty()) {
            formatBuild = formatBuild.buildUpon().setInitializationData(null).build();
        }
        Format format = formatBuild;
        setSourceDrmSession(formatHolder.drmSession);
        this.inputFormat = format;
        if (this.bypassEnabled) {
            this.bypassDrainAndReinitialize = true;
            return null;
        }
        MediaCodecAdapter mediaCodecAdapter = this.codec;
        if (mediaCodecAdapter == null) {
            this.availableCodecInfos = null;
            maybeInitCodecOrBypass();
            return null;
        }
        MediaCodecInfo mediaCodecInfo = this.codecInfo;
        mediaCodecInfo.getClass();
        Format format2 = this.codecInputFormat;
        format2.getClass();
        if (drmNeedsCodecReinitialization(mediaCodecInfo, format, this.codecDrmSession, this.sourceDrmSession)) {
            drainAndReinitializeCodec();
            return new DecoderReuseEvaluation(mediaCodecInfo.name, format2, format, 0, 128);
        }
        int i = 0;
        boolean z2 = this.sourceDrmSession != this.codecDrmSession;
        DecoderReuseEvaluation decoderReuseEvaluationCanReuseCodec = canReuseCodec(mediaCodecInfo, format2, format);
        int i2 = decoderReuseEvaluationCanReuseCodec.result;
        if (i2 == 0) {
            drainAndReinitializeCodec();
        } else if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    ud.g();
                    return null;
                }
                if (updateCodecOperatingRate(format)) {
                    this.codecInputFormat = format;
                    if (z2 && !drainAndUpdateCodecDrmSession()) {
                        i = 2;
                    }
                } else {
                    i = 16;
                }
            } else if (updateCodecOperatingRate(format)) {
                this.codecReconfigured = true;
                this.codecReconfigurationState = 1;
                int i3 = this.codecAdaptationWorkaroundMode;
                if (i3 != 2 && (i3 != 1 || format.width != format2.width || format.height != format2.height)) {
                    z = false;
                }
                this.codecNeedsAdaptationWorkaroundBuffer = z;
                this.codecInputFormat = format;
                if (z2 && !drainAndUpdateCodecDrmSession()) {
                    i = 2;
                }
            } else {
                i = 16;
            }
        } else if (updateCodecOperatingRate(format)) {
            this.codecInputFormat = format;
            if (!z2 ? !drainAndFlushCodec() : !drainAndUpdateCodecDrmSession()) {
                i = 2;
            }
        } else {
            i = 16;
        }
        if (decoderReuseEvaluationCanReuseCodec.result != 0) {
            return (this.codec != mediaCodecAdapter || this.codecDrainAction == 3) ? new DecoderReuseEvaluation(mediaCodecInfo.name, format2, format, 0, i) : decoderReuseEvaluationCanReuseCodec;
        }
        return decoderReuseEvaluationCanReuseCodec;
    }

    public void onOutputFormatChanged(Format format, MediaFormat mediaFormat) {
    }

    public void onOutputStreamOffsetUsChanged(long j) {
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onPositionReset(long j, boolean z, boolean z2) throws ExoPlaybackException {
        if (!this.pendingOutputStreamChanges.isEmpty()) {
            this.outputStreamInfo = this.pendingOutputStreamChanges.getLast();
        }
        this.pendingOutputStreamChanges.clear();
        if (z2) {
            this.inputStreamEnded = false;
            this.outputStreamEnded = false;
            this.pendingOutputEndOfStream = false;
            if (this.bypassEnabled) {
                resetBypassState();
            } else {
                flushOrReinitializeCodec();
            }
            if (this.outputStreamInfo.formatQueue.size() > 0) {
                this.waitingForFirstSampleInFormat = true;
            }
            this.outputStreamInfo.formatQueue.clear();
        }
    }

    public void onProcessedOutputBuffer(long j) {
        this.lastProcessedOutputBufferTimeUs = j;
        while (!this.pendingOutputStreamChanges.isEmpty() && j >= this.pendingOutputStreamChanges.peek().previousStreamLastBufferTimeUs) {
            OutputStreamInfo outputStreamInfoPoll = this.pendingOutputStreamChanges.poll();
            outputStreamInfoPoll.getClass();
            setOutputStreamInfo(outputStreamInfoPoll);
            onProcessedStreamChange();
        }
    }

    public void onProcessedStreamChange() {
    }

    public void onQueueInputBuffer(DecoderInputBuffer decoderInputBuffer) {
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onReset() {
        try {
            disableBypass();
            releaseCodec();
        } finally {
            setSourceDrmSession(null);
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onStarted() {
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onStopped() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
    
        if (r4 >= r0) goto L16;
     */
    @Override // androidx.media3.exoplayer.BaseRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onStreamChanged(androidx.media3.common.Format[] r12, long r13, long r15, androidx.media3.exoplayer.source.MediaSource.MediaPeriodId r17) {
        /*
            r11 = this;
            androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo r12 = r11.outputStreamInfo
            long r0 = r12.streamOffsetUs
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r12 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r12 != 0) goto L24
            androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo r4 = new androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7 = r13
            r9 = r15
            r4.<init>(r5, r7, r9)
            r11.setOutputStreamInfo(r4)
            boolean r12 = r11.experimentalEnableProcessedStreamChangedAtStart
            if (r12 == 0) goto L56
            r11.onProcessedStreamChange()
            return
        L24:
            java.util.ArrayDeque<androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo> r12 = r11.pendingOutputStreamChanges
            boolean r12 = r12.isEmpty()
            if (r12 == 0) goto L57
            long r0 = r11.largestQueuedPresentationTimeUs
            int r12 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r12 == 0) goto L3c
            long r4 = r11.lastProcessedOutputBufferTimeUs
            int r12 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r12 == 0) goto L57
            int r12 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r12 < 0) goto L57
        L3c:
            androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo r4 = new androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7 = r13
            r9 = r15
            r4.<init>(r5, r7, r9)
            r11.setOutputStreamInfo(r4)
            androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo r12 = r11.outputStreamInfo
            long r12 = r12.streamOffsetUs
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 == 0) goto L56
            r11.onProcessedStreamChange()
        L56:
            return
        L57:
            java.util.ArrayDeque<androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo> r12 = r11.pendingOutputStreamChanges
            androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo r0 = new androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo
            long r1 = r11.largestQueuedPresentationTimeUs
            r3 = r13
            r5 = r15
            r0.<init>(r1, r3, r5)
            r12.add(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.mediacodec.MediaCodecRenderer.onStreamChanged(androidx.media3.common.Format[], long, long, androidx.media3.exoplayer.source.MediaSource$MediaPeriodId):void");
    }

    public abstract boolean processOutputBuffer(long j, long j2, MediaCodecAdapter mediaCodecAdapter, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, Format format);

    /* JADX WARN: Multi-variable type inference failed */
    public void releaseCodec() {
        try {
            MediaCodecAdapter mediaCodecAdapter = this.codec;
            if (mediaCodecAdapter != null) {
                mediaCodecAdapter.release();
                this.decoderCounters.decoderReleaseCount++;
                MediaCodecInfo mediaCodecInfo = this.codecInfo;
                mediaCodecInfo.getClass();
                onCodecReleased(mediaCodecInfo.name);
            }
            this.codec = null;
            try {
                MediaCrypto mediaCrypto = this.mediaCrypto;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
                this.mediaCrypto = null;
                setCodecDrmSession(null);
                resetCodecStateForRelease();
            }
        } catch (Throwable th) {
            this.codec = null;
            try {
                MediaCrypto mediaCrypto2 = this.mediaCrypto;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
                this.mediaCrypto = null;
                setCodecDrmSession(null);
                resetCodecStateForRelease();
            }
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void render(long j, long j2) throws ExoPlaybackException {
        boolean z = false;
        if (this.pendingOutputEndOfStream) {
            this.pendingOutputEndOfStream = false;
            processEndOfStream();
        }
        ExoPlaybackException exoPlaybackException = this.pendingPlaybackException;
        if (exoPlaybackException != null) {
            this.pendingPlaybackException = null;
            throw exoPlaybackException;
        }
        try {
            if (this.outputStreamEnded) {
                renderToEndOfStream();
                return;
            }
            if (this.inputFormat != null || readSourceOmittingSampleData(2)) {
                maybeInitCodecOrBypass();
                if (this.bypassEnabled) {
                    TraceUtil.beginSection("bypassRender");
                    while (bypassRender(j, j2)) {
                    }
                    TraceUtil.endSection();
                } else if (this.codec != null) {
                    long jElapsedRealtime = getClock().elapsedRealtime();
                    TraceUtil.beginSection("drainAndFeed");
                    while (drainOutputBuffer(j, j2) && shouldContinueRendering(jElapsedRealtime)) {
                    }
                    while (feedInputBuffer() && shouldContinueRendering(jElapsedRealtime)) {
                    }
                    TraceUtil.endSection();
                } else {
                    this.decoderCounters.skippedInputBufferCount += skipSource(j);
                    readSourceOmittingSampleData(1);
                }
                this.decoderCounters.ensureUpdated();
            }
        } catch (MediaCodec.CryptoException e) {
            throw createRendererException(e, this.inputFormat, Util.getErrorCodeForMediaDrmErrorCode(e.getErrorCode()));
        } catch (IllegalStateException e2) {
            if (!isMediaCodecException(e2)) {
                throw e2;
            }
            onCodecError(e2);
            if ((e2 instanceof MediaCodec.CodecException) && ((MediaCodec.CodecException) e2).isRecoverable()) {
                z = true;
            }
            if (z) {
                releaseCodec();
            }
            MediaCodecDecoderException mediaCodecDecoderExceptionCreateDecoderException = createDecoderException(e2, getCodecInfo());
            throw createRendererException(mediaCodecDecoderExceptionCreateDecoderException, this.inputFormat, z, mediaCodecDecoderExceptionCreateDecoderException.errorCode == 1101 ? PlaybackException.ERROR_CODE_DECODING_RESOURCES_RECLAIMED : PlaybackException.ERROR_CODE_DECODING_FAILED);
        }
    }

    public void renderToEndOfStream() {
    }

    public void resetCodecStateForFlush() {
        resetInputBuffer();
        resetOutputBuffer();
        resetCommonStateForFlush();
        this.codecHotswapDeadlineMs = C.TIME_UNSET;
        this.codecReceivedEos = false;
        this.lastOutputBufferProcessedRealtimeMs = C.TIME_UNSET;
        this.codecReceivedBuffers = false;
        this.codecNeedsAdaptationWorkaroundBuffer = false;
        this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
        this.isDecodeOnlyOutputBuffer = false;
        this.isLastOutputBuffer = false;
        this.codecDrainState = 0;
        this.codecDrainAction = 0;
        this.codecReconfigurationState = this.codecReconfigured ? 1 : 0;
        this.hasSkippedFlushAndWaitingForQueueInputBuffer = false;
        this.skippedFlushOffsetUs = 0L;
    }

    public void resetCodecStateForRelease() {
        resetCodecStateForFlush();
        this.pendingPlaybackException = null;
        this.availableCodecInfos = null;
        this.codecInfo = null;
        this.codecInputFormat = null;
        this.codecOutputMediaFormat = null;
        this.codecOutputMediaFormatChanged = false;
        this.codecHasOutputMediaFormat = false;
        this.codecOperatingRate = -1.0f;
        this.codecAdaptationWorkaroundMode = 0;
        this.codecNeedsSosFlushWorkaround = false;
        this.codecNeedsEosFlushWorkaround = false;
        this.codecNeedsEosPropagation = false;
        this.codecRegisteredOnBufferAvailableListener = false;
        this.codecReconfigured = false;
        this.codecReconfigurationState = 0;
    }

    public final void setPendingOutputEndOfStream() {
        this.pendingOutputEndOfStream = true;
    }

    public final void setPendingPlaybackException(ExoPlaybackException exoPlaybackException) {
        this.pendingPlaybackException = exoPlaybackException;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void setPlaybackSpeed(float f, float f2) throws ExoPlaybackException {
        this.currentPlaybackSpeed = f;
        this.targetPlaybackSpeed = f2;
        updateCodecOperatingRate(this.codecInputFormat);
    }

    public void setRenderTimeLimitMs(long j) {
        this.renderTimeLimitMs = j;
    }

    public boolean shouldDiscardDecoderInputBuffer(DecoderInputBuffer decoderInputBuffer) {
        if (!shouldSkipDecoderInputBuffer(decoderInputBuffer)) {
            return false;
        }
        decoderInputBuffer.clear();
        this.decoderCounters.skippedInputBufferCount++;
        return true;
    }

    public boolean shouldFlushCodec() {
        return true;
    }

    public boolean shouldInitCodec(MediaCodecInfo mediaCodecInfo) {
        return true;
    }

    public boolean shouldReinitCodec() {
        return false;
    }

    public boolean shouldReleaseCodecInsteadOfFlushing() {
        int i = this.codecDrainAction;
        if (i == 3 || ((this.codecNeedsSosFlushWorkaround && !this.codecHasOutputMediaFormat) || (this.codecNeedsEosFlushWorkaround && this.codecReceivedEos))) {
            return true;
        }
        if (i != 2) {
            return false;
        }
        try {
            updateDrmSession();
            return false;
        } catch (ExoPlaybackException e) {
            Log.w(TAG, "Failed to update the DRM session, releasing the codec instead.", e);
            return true;
        }
    }

    public boolean shouldSkipDecoderInputBuffer(DecoderInputBuffer decoderInputBuffer) {
        return false;
    }

    public boolean shouldUseBypass(Format format) {
        return false;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final int supportsFormat(Format format) throws ExoPlaybackException {
        try {
            return supportsFormat(this.mediaCodecSelector, format);
        } catch (MediaCodecUtil.DecoderQueryException e) {
            throw createRendererException(e, format, PlaybackException.ERROR_CODE_DECODER_QUERY_FAILED);
        }
    }

    public abstract int supportsFormat(MediaCodecSelector mediaCodecSelector, Format format);

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.RendererCapabilities
    public final int supportsMixedMimeTypeAdaptation() {
        return 8;
    }

    public final void updateOutputFormatForTime(long j) {
        Format formatPollFloor = this.outputStreamInfo.formatQueue.pollFloor(j);
        if (formatPollFloor == null && this.needToNotifyOutputFormatChangeAfterStreamChange && this.codecOutputMediaFormat != null) {
            formatPollFloor = this.outputStreamInfo.formatQueue.pollFirst();
        }
        if (formatPollFloor != null) {
            this.outputFormat = formatPollFloor;
        } else if (!this.codecOutputMediaFormatChanged || (formatPollFloor = this.outputFormat) == null) {
            return;
        }
        formatPollFloor.getClass();
        onOutputFormatChanged(formatPollFloor, this.codecOutputMediaFormat);
        this.codecOutputMediaFormatChanged = false;
        this.needToNotifyOutputFormatChangeAfterStreamChange = false;
    }

    public long getDurationToProgressUs(long j, long j2, boolean z) {
        return super.getDurationToProgressUs(j, j2);
    }

    public static class DecoderInitializationException extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;
        public final MediaCodecInfo codecInfo;
        public final String diagnosticInfo;
        public final DecoderInitializationException fallbackDecoderInitializationException;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(Format format, Throwable th, boolean z, MediaCodecInfo mediaCodecInfo) {
            this("Decoder init failed: " + mediaCodecInfo.name + ", " + format, th, format.sampleMimeType, z, mediaCodecInfo, th instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) th).getDiagnosticInfo() : null, null);
        }

        private static String buildCustomDiagnosticInfo(int i) {
            StringBuilder sbD = fh.d("androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_", i < 0 ? "neg_" : "");
            sbD.append(Math.abs(i));
            return sbD.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public DecoderInitializationException copyWithFallbackException(DecoderInitializationException decoderInitializationException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.codecInfo, this.diagnosticInfo, decoderInitializationException);
        }

        public DecoderInitializationException(Format format, Throwable th, boolean z, int i) {
            this("Decoder init failed: [" + i + "], " + format, th, format.sampleMimeType, z, null, buildCustomDiagnosticInfo(i), null);
        }

        private DecoderInitializationException(String str, Throwable th, String str2, boolean z, MediaCodecInfo mediaCodecInfo, String str3, DecoderInitializationException decoderInitializationException) {
            super(str, th);
            this.mimeType = str2;
            this.secureDecoderRequired = z;
            this.codecInfo = mediaCodecInfo;
            this.diagnosticInfo = str3;
            this.fallbackDecoderInitializationException = decoderInitializationException;
        }
    }

    public final boolean updateCodecOperatingRate() {
        return updateCodecOperatingRate(this.codecInputFormat);
    }
}
