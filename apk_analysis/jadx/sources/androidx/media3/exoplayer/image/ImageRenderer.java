package androidx.media3.exoplayer.image;

import android.graphics.Bitmap;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.o8;
import defpackage.ud;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes3.dex */
public class ImageRenderer extends BaseRenderer {
    private static final long IMAGE_PRESENTATION_WINDOW_THRESHOLD_US = 30000;
    private static final int REINITIALIZATION_STATE_NONE = 0;
    private static final int REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM_THEN_WAIT = 2;
    private static final int REINITIALIZATION_STATE_WAIT_END_OF_STREAM = 3;
    private static final String TAG = "ImageRenderer";
    private boolean codecNeedsInitialization;
    private int currentTileIndex;
    private ImageDecoder decoder;
    private final ImageDecoder.Factory decoderFactory;
    private int decoderReinitializationState;
    private int firstFrameState;
    private final DecoderInputBuffer flagsOnlyBuffer;
    private ImageOutput imageOutput;
    private DecoderInputBuffer inputBuffer;
    private Format inputFormat;
    private boolean inputStreamEnded;
    private long largestQueuedPresentationTimeUs;
    private long lastProcessedOutputBufferTimeUs;
    private TileInfo nextTileInfo;
    private Bitmap outputBitmap;
    private boolean outputStreamEnded;
    private OutputStreamInfo outputStreamInfo;
    private final ArrayDeque<OutputStreamInfo> pendingOutputStreamChanges;
    private boolean readyToOutputTiles;
    private TileInfo tileInfo;

    public static final class OutputStreamInfo {
        public static final OutputStreamInfo UNSET = new OutputStreamInfo(C.TIME_UNSET, C.TIME_UNSET);
        public final long previousStreamLastBufferTimeUs;
        public final long streamOffsetUs;

        public OutputStreamInfo(long j, long j2) {
            this.previousStreamLastBufferTimeUs = j;
            this.streamOffsetUs = j2;
        }
    }

    public static class TileInfo {
        private final long presentationTimeUs;
        private Bitmap tileBitmap;
        private final int tileIndex;

        public TileInfo(int i, long j) {
            this.tileIndex = i;
            this.presentationTimeUs = j;
        }

        public long getPresentationTimeUs() {
            return this.presentationTimeUs;
        }

        public Bitmap getTileBitmap() {
            return this.tileBitmap;
        }

        public int getTileIndex() {
            return this.tileIndex;
        }

        public boolean hasTileBitmap() {
            return this.tileBitmap != null;
        }

        public void setTileBitmap(Bitmap bitmap) {
            this.tileBitmap = bitmap;
        }
    }

    public ImageRenderer(ImageDecoder.Factory factory, ImageOutput imageOutput) {
        super(4);
        this.decoderFactory = factory;
        this.imageOutput = getImageOutput(imageOutput);
        this.flagsOnlyBuffer = DecoderInputBuffer.newNoDataInstance();
        this.outputStreamInfo = OutputStreamInfo.UNSET;
        this.pendingOutputStreamChanges = new ArrayDeque<>();
        this.largestQueuedPresentationTimeUs = C.TIME_UNSET;
        this.lastProcessedOutputBufferTimeUs = C.TIME_UNSET;
        this.decoderReinitializationState = 0;
        this.firstFrameState = 1;
    }

    private boolean canCreateDecoderForFormat(Format format) {
        int iSupportsFormat = this.decoderFactory.supportsFormat(format);
        return iSupportsFormat == RendererCapabilities.create(4) || iSupportsFormat == RendererCapabilities.create(3);
    }

    private Bitmap cropTileFromImageGrid(int i) {
        this.outputBitmap.getClass();
        int width = this.outputBitmap.getWidth();
        Format format = this.inputFormat;
        format.getClass();
        int i2 = width / format.tileCountHorizontal;
        int height = this.outputBitmap.getHeight();
        Format format2 = this.inputFormat;
        format2.getClass();
        int i3 = height / format2.tileCountVertical;
        int i4 = this.inputFormat.tileCountHorizontal;
        return Bitmap.createBitmap(this.outputBitmap, (i % i4) * i2, (i / i4) * i3, i2, i3);
    }

    /* JADX WARN: Code duplicated, block: B:46:0x008c  */
    /* JADX WARN: Code duplicated, block: B:48:0x0090  */
    /* JADX WARN: Code duplicated, block: B:49:0x0099  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:56:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e6  */
    private boolean drainOutput(long j, long j2) throws ExoPlaybackException {
        boolean z;
        Bitmap tileBitmap;
        int tileIndex;
        int i;
        Format format;
        TileInfo tileInfo;
        Bitmap bitmapCropTileFromImageGrid;
        if ((this.outputBitmap == null || this.tileInfo != null) && (this.firstFrameState != 0 || getState() == 2)) {
            if (this.outputBitmap == null) {
                this.decoder.getClass();
                ImageOutputBuffer imageOutputBufferDequeueOutputBuffer = this.decoder.dequeueOutputBuffer();
                if (imageOutputBufferDequeueOutputBuffer != null) {
                    if (!imageOutputBufferDequeueOutputBuffer.isEndOfStream()) {
                        o8.l(imageOutputBufferDequeueOutputBuffer.bitmap, "Non-EOS buffer came back from the decoder without bitmap.");
                        this.outputBitmap = imageOutputBufferDequeueOutputBuffer.bitmap;
                        imageOutputBufferDequeueOutputBuffer.release();
                        if (this.readyToOutputTiles && this.outputBitmap != null && this.tileInfo != null) {
                            this.inputFormat.getClass();
                            Format format2 = this.inputFormat;
                            int i2 = format2.tileCountHorizontal;
                            z = ((i2 != 1 && format2.tileCountVertical == 1) || i2 == -1 || format2.tileCountVertical == -1) ? false : true;
                            if (!this.tileInfo.hasTileBitmap()) {
                                tileInfo = this.tileInfo;
                                if (z) {
                                    bitmapCropTileFromImageGrid = cropTileFromImageGrid(tileInfo.getTileIndex());
                                } else {
                                    bitmapCropTileFromImageGrid = this.outputBitmap;
                                    bitmapCropTileFromImageGrid.getClass();
                                }
                                tileInfo.setTileBitmap(bitmapCropTileFromImageGrid);
                            }
                            tileBitmap = this.tileInfo.getTileBitmap();
                            tileBitmap.getClass();
                            if (processOutputBuffer(j, j2, tileBitmap, this.tileInfo.getPresentationTimeUs())) {
                                TileInfo tileInfo2 = this.tileInfo;
                                tileInfo2.getClass();
                                onProcessedOutputBuffer(tileInfo2.getPresentationTimeUs());
                                this.firstFrameState = 3;
                                if (z) {
                                    TileInfo tileInfo3 = this.tileInfo;
                                    tileInfo3.getClass();
                                    tileIndex = tileInfo3.getTileIndex();
                                    Format format3 = this.inputFormat;
                                    format3.getClass();
                                    i = format3.tileCountVertical;
                                    format = this.inputFormat;
                                    format.getClass();
                                    if (tileIndex == (i * format.tileCountHorizontal) - 1) {
                                        this.outputBitmap = null;
                                    }
                                } else {
                                    this.outputBitmap = null;
                                }
                                this.tileInfo = this.nextTileInfo;
                                this.nextTileInfo = null;
                                return true;
                            }
                        }
                    } else {
                        if (this.decoderReinitializationState == 3) {
                            releaseDecoderResources();
                            this.inputFormat.getClass();
                            maybeInitCodec();
                            return false;
                        }
                        imageOutputBufferDequeueOutputBuffer.release();
                        if (this.pendingOutputStreamChanges.isEmpty()) {
                            this.outputStreamEnded = true;
                            return false;
                        }
                    }
                }
            } else if (this.readyToOutputTiles) {
                this.inputFormat.getClass();
                Format format4 = this.inputFormat;
                int i3 = format4.tileCountHorizontal;
                if (i3 != 1) {
                }
                if (!this.tileInfo.hasTileBitmap()) {
                    tileInfo = this.tileInfo;
                    if (z) {
                        bitmapCropTileFromImageGrid = cropTileFromImageGrid(tileInfo.getTileIndex());
                    } else {
                        bitmapCropTileFromImageGrid = this.outputBitmap;
                        bitmapCropTileFromImageGrid.getClass();
                    }
                    tileInfo.setTileBitmap(bitmapCropTileFromImageGrid);
                }
                tileBitmap = this.tileInfo.getTileBitmap();
                tileBitmap.getClass();
                if (processOutputBuffer(j, j2, tileBitmap, this.tileInfo.getPresentationTimeUs())) {
                    TileInfo tileInfo4 = this.tileInfo;
                    tileInfo4.getClass();
                    onProcessedOutputBuffer(tileInfo4.getPresentationTimeUs());
                    this.firstFrameState = 3;
                    if (z) {
                        TileInfo tileInfo5 = this.tileInfo;
                        tileInfo5.getClass();
                        tileIndex = tileInfo5.getTileIndex();
                        Format format5 = this.inputFormat;
                        format5.getClass();
                        i = format5.tileCountVertical;
                        format = this.inputFormat;
                        format.getClass();
                        if (tileIndex == (i * format.tileCountHorizontal) - 1) {
                            this.outputBitmap = null;
                        }
                    } else {
                        this.outputBitmap = null;
                    }
                    this.tileInfo = this.nextTileInfo;
                    this.nextTileInfo = null;
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x007a  */
    private boolean feedInputBuffer(long j) {
        boolean z;
        if (this.readyToOutputTiles && this.tileInfo != null) {
            return false;
        }
        FormatHolder formatHolder = getFormatHolder();
        ImageDecoder imageDecoder = this.decoder;
        if (imageDecoder == null || this.decoderReinitializationState == 3 || this.inputStreamEnded) {
            return false;
        }
        DecoderInputBuffer decoderInputBufferDequeueInputBuffer = this.inputBuffer;
        if (decoderInputBufferDequeueInputBuffer == null) {
            decoderInputBufferDequeueInputBuffer = imageDecoder.dequeueInputBuffer();
            this.inputBuffer = decoderInputBufferDequeueInputBuffer;
            if (decoderInputBufferDequeueInputBuffer == null) {
                return false;
            }
        }
        if (this.decoderReinitializationState == 2) {
            decoderInputBufferDequeueInputBuffer.getClass();
            this.inputBuffer.setFlags(4);
            ImageDecoder imageDecoder2 = this.decoder;
            imageDecoder2.getClass();
            imageDecoder2.queueInputBuffer(this.inputBuffer);
            this.inputBuffer = null;
            this.decoderReinitializationState = 3;
            return false;
        }
        int source = readSource(formatHolder, decoderInputBufferDequeueInputBuffer, 0);
        if (source == -5) {
            Format format = formatHolder.format;
            format.getClass();
            this.inputFormat = format;
            this.codecNeedsInitialization = true;
            this.decoderReinitializationState = 2;
            return true;
        }
        if (source != -4) {
            if (source == -3) {
                return false;
            }
            ud.g();
            return false;
        }
        this.inputBuffer.flip();
        ByteBuffer byteBuffer = this.inputBuffer.data;
        if (byteBuffer == null || byteBuffer.remaining() <= 0) {
            DecoderInputBuffer decoderInputBuffer = this.inputBuffer;
            decoderInputBuffer.getClass();
            if (decoderInputBuffer.isEndOfStream()) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = true;
        }
        if (z) {
            DecoderInputBuffer decoderInputBuffer2 = this.inputBuffer;
            decoderInputBuffer2.getClass();
            decoderInputBuffer2.format = this.inputFormat;
            ImageDecoder imageDecoder3 = this.decoder;
            imageDecoder3.getClass();
            DecoderInputBuffer decoderInputBuffer3 = this.inputBuffer;
            decoderInputBuffer3.getClass();
            imageDecoder3.queueInputBuffer(decoderInputBuffer3);
            this.currentTileIndex = 0;
        }
        DecoderInputBuffer decoderInputBuffer4 = this.inputBuffer;
        decoderInputBuffer4.getClass();
        maybeAdvanceTileInfo(j, decoderInputBuffer4);
        DecoderInputBuffer decoderInputBuffer5 = this.inputBuffer;
        decoderInputBuffer5.getClass();
        if (decoderInputBuffer5.isEndOfStream()) {
            this.inputStreamEnded = true;
            this.inputBuffer = null;
            return false;
        }
        long j2 = this.largestQueuedPresentationTimeUs;
        DecoderInputBuffer decoderInputBuffer6 = this.inputBuffer;
        decoderInputBuffer6.getClass();
        this.largestQueuedPresentationTimeUs = Math.max(j2, decoderInputBuffer6.timeUs);
        if (z) {
            this.inputBuffer = null;
        } else {
            DecoderInputBuffer decoderInputBuffer7 = this.inputBuffer;
            decoderInputBuffer7.getClass();
            decoderInputBuffer7.clear();
        }
        return !this.readyToOutputTiles;
    }

    private static ImageOutput getImageOutput(ImageOutput imageOutput) {
        return imageOutput == null ? ImageOutput.NO_OP : imageOutput;
    }

    private boolean isTileLastInGrid(TileInfo tileInfo) {
        Format format = this.inputFormat;
        format.getClass();
        if (format.tileCountHorizontal != -1 && this.inputFormat.tileCountVertical != -1) {
            int tileIndex = tileInfo.getTileIndex();
            Format format2 = this.inputFormat;
            format2.getClass();
            if (tileIndex != (format2.tileCountVertical * this.inputFormat.tileCountHorizontal) - 1) {
                return false;
            }
        }
        return true;
    }

    private void lowerFirstFrameState(int i) {
        this.firstFrameState = Math.min(this.firstFrameState, i);
    }

    private void maybeAdvanceTileInfo(long j, DecoderInputBuffer decoderInputBuffer) {
        boolean z = true;
        if (decoderInputBuffer.isEndOfStream()) {
            this.readyToOutputTiles = true;
            return;
        }
        TileInfo tileInfo = new TileInfo(this.currentTileIndex, decoderInputBuffer.timeUs);
        this.nextTileInfo = tileInfo;
        this.currentTileIndex++;
        if (!this.readyToOutputTiles) {
            long presentationTimeUs = tileInfo.getPresentationTimeUs();
            boolean z2 = presentationTimeUs - 30000 <= j && j <= 30000 + presentationTimeUs;
            TileInfo tileInfo2 = this.tileInfo;
            boolean z3 = tileInfo2 != null && tileInfo2.getPresentationTimeUs() <= j && j < presentationTimeUs;
            TileInfo tileInfo3 = this.nextTileInfo;
            tileInfo3.getClass();
            boolean zIsTileLastInGrid = isTileLastInGrid(tileInfo3);
            if (!z2 && !z3 && !zIsTileLastInGrid) {
                z = false;
            }
            this.readyToOutputTiles = z;
            if (z3 && !z2) {
                return;
            }
        }
        this.tileInfo = this.nextTileInfo;
        this.nextTileInfo = null;
    }

    private boolean maybeInitCodec() throws ExoPlaybackException {
        if (!maybeInitializeProcessingPipeline()) {
            return false;
        }
        if (!this.codecNeedsInitialization) {
            return true;
        }
        Format format = this.inputFormat;
        format.getClass();
        if (!canCreateDecoderForFormat(format)) {
            throw createRendererException(new ImageDecoderException("Provided decoder factory can't create decoder for format."), this.inputFormat, PlaybackException.ERROR_CODE_DECODING_FORMAT_UNSUPPORTED);
        }
        ImageDecoder imageDecoder = this.decoder;
        if (imageDecoder != null) {
            imageDecoder.release();
        }
        this.decoder = this.decoderFactory.createImageDecoder();
        this.codecNeedsInitialization = false;
        return true;
    }

    private void onProcessedOutputBuffer(long j) {
        this.lastProcessedOutputBufferTimeUs = j;
        while (!this.pendingOutputStreamChanges.isEmpty() && j >= this.pendingOutputStreamChanges.peek().previousStreamLastBufferTimeUs) {
            this.outputStreamInfo = this.pendingOutputStreamChanges.removeFirst();
        }
    }

    private void releaseDecoderResources() {
        this.inputBuffer = null;
        this.decoderReinitializationState = 0;
        this.largestQueuedPresentationTimeUs = C.TIME_UNSET;
        ImageDecoder imageDecoder = this.decoder;
        if (imageDecoder != null) {
            imageDecoder.release();
            this.decoder = null;
        }
    }

    private void setImageOutput(ImageOutput imageOutput) {
        this.imageOutput = getImageOutput(imageOutput);
    }

    private boolean shouldForceRender() {
        boolean z = getState() == 2;
        int i = this.firstFrameState;
        if (i == 0) {
            return z;
        }
        if (i == 1) {
            return true;
        }
        if (i == 3) {
            return false;
        }
        ud.g();
        return false;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public String getName() {
        return TAG;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i, Object obj) {
        if (i != 15) {
            super.handleMessage(i, obj);
        } else {
            setImageOutput(obj instanceof ImageOutput ? (ImageOutput) obj : null);
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        int i = this.firstFrameState;
        if (i != 3) {
            return i == 0 && this.readyToOutputTiles;
        }
        return true;
    }

    public boolean maybeInitializeProcessingPipeline() {
        return true;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onDisabled() {
        this.inputFormat = null;
        this.outputStreamInfo = OutputStreamInfo.UNSET;
        this.pendingOutputStreamChanges.clear();
        releaseDecoderResources();
        this.imageOutput.onDisabled();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onEnabled(boolean z, boolean z2) {
        this.firstFrameState = z2 ? 1 : 0;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onPositionReset(long j, boolean z, boolean z2) {
        lowerFirstFrameState(1);
        this.outputStreamEnded = false;
        this.inputStreamEnded = false;
        this.outputBitmap = null;
        this.tileInfo = null;
        this.nextTileInfo = null;
        this.readyToOutputTiles = false;
        this.inputBuffer = null;
        ImageDecoder imageDecoder = this.decoder;
        if (imageDecoder != null) {
            imageDecoder.flush();
        }
        this.pendingOutputStreamChanges.clear();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onRelease() {
        releaseDecoderResources();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onReset() {
        releaseDecoderResources();
        lowerFirstFrameState(1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
    
        if (r2 >= r5) goto L15;
     */
    @Override // androidx.media3.exoplayer.BaseRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onStreamChanged(androidx.media3.common.Format[] r5, long r6, long r8, androidx.media3.exoplayer.source.MediaSource.MediaPeriodId r10) {
        /*
            r4 = this;
            super.onStreamChanged(r5, r6, r8, r10)
            androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo r5 = r4.outputStreamInfo
            long r5 = r5.streamOffsetUs
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r5 == 0) goto L36
            java.util.ArrayDeque<androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo> r5 = r4.pendingOutputStreamChanges
            boolean r5 = r5.isEmpty()
            if (r5 == 0) goto L29
            long r5 = r4.largestQueuedPresentationTimeUs
            int r7 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r7 == 0) goto L36
            long r2 = r4.lastProcessedOutputBufferTimeUs
            int r7 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r7 == 0) goto L29
            int r5 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r5 < 0) goto L29
            goto L36
        L29:
            java.util.ArrayDeque<androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo> r5 = r4.pendingOutputStreamChanges
            androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo r6 = new androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo
            long r0 = r4.largestQueuedPresentationTimeUs
            r6.<init>(r0, r8)
            r5.add(r6)
            return
        L36:
            androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo r5 = new androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo
            r5.<init>(r0, r8)
            r4.outputStreamInfo = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.image.ImageRenderer.onStreamChanged(androidx.media3.common.Format[], long, long, androidx.media3.exoplayer.source.MediaSource$MediaPeriodId):void");
    }

    public boolean processOutputBuffer(long j, long j2, Bitmap bitmap, long j3) {
        long j4 = j3 - j;
        if (!shouldForceRender() && j4 >= 30000) {
            return false;
        }
        this.imageOutput.onImageAvailable(j3 - this.outputStreamInfo.streamOffsetUs, bitmap);
        return true;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void render(long j, long j2) throws ExoPlaybackException {
        if (this.outputStreamEnded) {
            return;
        }
        if (this.inputFormat == null) {
            FormatHolder formatHolder = getFormatHolder();
            this.flagsOnlyBuffer.clear();
            int source = readSource(formatHolder, this.flagsOnlyBuffer, 2);
            if (source != -5) {
                if (source == -4) {
                    o8.r(this.flagsOnlyBuffer.isEndOfStream());
                    this.inputStreamEnded = true;
                    this.outputStreamEnded = true;
                    return;
                }
                return;
            }
            Format format = formatHolder.format;
            format.getClass();
            this.inputFormat = format;
            this.codecNeedsInitialization = true;
        }
        if (this.decoder != null || maybeInitCodec()) {
            try {
                TraceUtil.beginSection("drainAndFeedDecoder");
                while (drainOutput(j, j2)) {
                }
                while (feedInputBuffer(j)) {
                }
                TraceUtil.endSection();
            } catch (ImageDecoderException e) {
                throw createRendererException(e, null, PlaybackException.ERROR_CODE_DECODING_FAILED);
            }
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public int supportsFormat(Format format) {
        return this.decoderFactory.supportsFormat(format);
    }
}
