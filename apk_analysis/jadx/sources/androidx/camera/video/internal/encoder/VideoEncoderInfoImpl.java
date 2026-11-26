package androidx.camera.video.internal.encoder;

import android.media.MediaCodecInfo;
import android.util.Range;
import androidx.camera.core.Logger;
import androidx.camera.video.internal.utils.CodecUtil;
import androidx.camera.video.internal.workaround.VideoEncoderInfoWrapper;
import defpackage.jh2;
import defpackage.md9;

/* JADX INFO: loaded from: classes.dex */
public final class VideoEncoderInfoImpl extends EncoderInfoImpl implements VideoEncoderInfo {
    public static final Companion Companion = new Companion(null);
    public static final VideoEncoderInfo.Finder FINDER = new md9();
    private static final String TAG = "VideoEncoderInfoImpl";
    private final MediaCodecInfo.VideoCapabilities videoCapabilities;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoEncoderInfoImpl(MediaCodecInfo mediaCodecInfo, String str) {
        super(mediaCodecInfo, str);
        mediaCodecInfo.getClass();
        str.getClass();
        MediaCodecInfo.VideoCapabilities videoCapabilities = getCodecCapabilities().getVideoCapabilities();
        videoCapabilities.getClass();
        this.videoCapabilities = videoCapabilities;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VideoEncoderInfo FINDER$lambda$0(String str) {
        str.getClass();
        try {
            return VideoEncoderInfoWrapper.Companion.from(new VideoEncoderInfoImpl(CodecUtil.findCodecAndGetCodecInfo(str), str), null);
        } catch (InvalidConfigException e) {
            Logger.w(TAG, "Unable to find a VideoEncoderInfoImpl", e);
            return null;
        }
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean canSwapWidthHeight() {
        return true;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public int getHeightAlignment() {
        return this.videoCapabilities.getHeightAlignment();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range<Integer> getSupportedBitrateRange() {
        Range<Integer> bitrateRange = this.videoCapabilities.getBitrateRange();
        bitrateRange.getClass();
        return bitrateRange;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range<Integer> getSupportedHeights() {
        Range<Integer> supportedHeights = this.videoCapabilities.getSupportedHeights();
        supportedHeights.getClass();
        return supportedHeights;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range<Integer> getSupportedHeightsFor(int i) {
        try {
            Range<Integer> supportedHeightsFor = this.videoCapabilities.getSupportedHeightsFor(i);
            supportedHeightsFor.getClass();
            return supportedHeightsFor;
        } catch (Throwable th) {
            throw Companion.toIllegalArgumentException(th);
        }
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range<Integer> getSupportedWidths() {
        Range<Integer> supportedWidths = this.videoCapabilities.getSupportedWidths();
        supportedWidths.getClass();
        return supportedWidths;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range<Integer> getSupportedWidthsFor(int i) {
        try {
            Range<Integer> supportedWidthsFor = this.videoCapabilities.getSupportedWidthsFor(i);
            supportedWidthsFor.getClass();
            return supportedWidthsFor;
        } catch (Throwable th) {
            throw Companion.toIllegalArgumentException(th);
        }
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public int getWidthAlignment() {
        return this.videoCapabilities.getWidthAlignment();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean isSizeSupported(int i, int i2) {
        return this.videoCapabilities.isSizeSupported(i, i2);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final IllegalArgumentException toIllegalArgumentException(Throwable th) {
            IllegalArgumentException illegalArgumentException = th instanceof IllegalArgumentException ? (IllegalArgumentException) th : null;
            return illegalArgumentException == null ? new IllegalArgumentException(th) : illegalArgumentException;
        }

        private Companion() {
        }
    }
}
