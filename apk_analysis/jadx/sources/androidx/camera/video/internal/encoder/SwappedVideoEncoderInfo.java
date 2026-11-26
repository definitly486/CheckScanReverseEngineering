package androidx.camera.video.internal.encoder;

import android.util.Range;
import defpackage.fg;

/* JADX INFO: loaded from: classes.dex */
public final class SwappedVideoEncoderInfo implements VideoEncoderInfo {
    private final VideoEncoderInfo videoEncoderInfo;

    public SwappedVideoEncoderInfo(VideoEncoderInfo videoEncoderInfo) {
        videoEncoderInfo.getClass();
        this.videoEncoderInfo = videoEncoderInfo;
        if (videoEncoderInfo.canSwapWidthHeight()) {
            return;
        }
        fg.c("Failed requirement.");
        throw null;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean canSwapWidthHeight() {
        return this.videoEncoderInfo.canSwapWidthHeight();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public int getHeightAlignment() {
        return this.videoEncoderInfo.getWidthAlignment();
    }

    @Override // androidx.camera.video.internal.encoder.EncoderInfo
    public String getName() {
        return this.videoEncoderInfo.getName();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range<Integer> getSupportedBitrateRange() {
        return this.videoEncoderInfo.getSupportedBitrateRange();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range<Integer> getSupportedHeights() {
        return this.videoEncoderInfo.getSupportedWidths();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range<Integer> getSupportedHeightsFor(int i) {
        return this.videoEncoderInfo.getSupportedWidthsFor(i);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range<Integer> getSupportedWidths() {
        return this.videoEncoderInfo.getSupportedHeights();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range<Integer> getSupportedWidthsFor(int i) {
        return this.videoEncoderInfo.getSupportedHeightsFor(i);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public int getWidthAlignment() {
        return this.videoEncoderInfo.getHeightAlignment();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean isSizeSupported(int i, int i2) {
        return this.videoEncoderInfo.isSizeSupported(i2, i);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean isSizeSupportedAllowSwapping(int i, int i2) {
        return this.videoEncoderInfo.isSizeSupportedAllowSwapping(i2, i);
    }
}
