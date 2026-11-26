package androidx.camera.video.internal.workaround;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.Logger;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.compat.quirk.MediaCodecInfoReportIncorrectInfoQuirk;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import defpackage.d;
import defpackage.jh2;
import defpackage.n7;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class VideoEncoderInfoWrapper implements VideoEncoderInfo {
    public static final Companion Companion = new Companion(null);
    private static final int HEIGHT_4KDCI = 2160;
    private static final String TAG = "VideoEncoderInfoWrapper";
    private static final int WIDTH_4KDCI = 4096;
    private final Range<Integer> _supportedHeights;
    private final Range<Integer> _supportedWidths;
    private final Set<Size> extraSupportedSizes;
    private final VideoEncoderInfo videoEncoderInfo;

    private VideoEncoderInfoWrapper(VideoEncoderInfo videoEncoderInfo) {
        this.videoEncoderInfo = videoEncoderInfo;
        HashSet hashSet = new HashSet();
        this.extraSupportedSizes = hashSet;
        int widthAlignment = videoEncoderInfo.getWidthAlignment();
        Range<Integer> rangeCreate = Range.create(Integer.valueOf(widthAlignment), Integer.valueOf(((int) Math.ceil(4096.0d / ((double) widthAlignment))) * widthAlignment));
        rangeCreate.getClass();
        this._supportedWidths = rangeCreate;
        int heightAlignment = videoEncoderInfo.getHeightAlignment();
        Range<Integer> rangeCreate2 = Range.create(Integer.valueOf(heightAlignment), Integer.valueOf(((int) Math.ceil(2160.0d / ((double) heightAlignment))) * heightAlignment));
        rangeCreate2.getClass();
        this._supportedHeights = rangeCreate2;
        Set<Size> extraSupportedSizes = MediaCodecInfoReportIncorrectInfoQuirk.getExtraSupportedSizes();
        extraSupportedSizes.getClass();
        hashSet.addAll(extraSupportedSizes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addExtraSupportedSize(Size size) {
        this.extraSupportedSizes.add(size);
    }

    public static final VideoEncoderInfo from(VideoEncoderInfo videoEncoderInfo, Size size) {
        return Companion.from(videoEncoderInfo, size);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean canSwapWidthHeight() {
        return this.videoEncoderInfo.canSwapWidthHeight();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public int getHeightAlignment() {
        return this.videoEncoderInfo.getHeightAlignment();
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
        return this._supportedHeights;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range<Integer> getSupportedHeightsFor(int i) {
        if (this._supportedWidths.contains(Integer.valueOf(i)) && i % this.videoEncoderInfo.getWidthAlignment() == 0) {
            return this._supportedHeights;
        }
        StringBuilder sbC = n7.c(i, "Not supported width: ", " which is not in ");
        sbC.append(this._supportedWidths);
        sbC.append(" or can not be divided by alignment ");
        d.d(this.videoEncoderInfo.getWidthAlignment(), sbC);
        return null;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range<Integer> getSupportedWidths() {
        return this._supportedWidths;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range<Integer> getSupportedWidthsFor(int i) {
        if (this._supportedHeights.contains(Integer.valueOf(i)) && i % this.videoEncoderInfo.getHeightAlignment() == 0) {
            return this._supportedWidths;
        }
        StringBuilder sbC = n7.c(i, "Not supported height: ", " which is not in ");
        sbC.append(this._supportedHeights);
        sbC.append(" or can not be divided by alignment ");
        d.d(this.videoEncoderInfo.getHeightAlignment(), sbC);
        return null;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public int getWidthAlignment() {
        return this.videoEncoderInfo.getWidthAlignment();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean isSizeSupported(int i, int i2) {
        if (this.videoEncoderInfo.isSizeSupported(i, i2)) {
            return true;
        }
        Set<Size> set = this.extraSupportedSizes;
        if (!(set instanceof Collection) || !set.isEmpty()) {
            for (Size size : set) {
                if (size.getWidth() == i && size.getHeight() == i2) {
                    return true;
                }
            }
        }
        return this._supportedWidths.contains(Integer.valueOf(i)) && this._supportedHeights.contains(Integer.valueOf(i2)) && i % this.videoEncoderInfo.getWidthAlignment() == 0 && i2 % this.videoEncoderInfo.getHeightAlignment() == 0;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final VideoEncoderInfo from(VideoEncoderInfo videoEncoderInfo, Size size) {
            videoEncoderInfo.getClass();
            if (!(videoEncoderInfo instanceof VideoEncoderInfoWrapper)) {
                if (DeviceQuirks.get(MediaCodecInfoReportIncorrectInfoQuirk.class) != null) {
                    videoEncoderInfo = new VideoEncoderInfoWrapper(videoEncoderInfo, null);
                } else if (size != null && !videoEncoderInfo.isSizeSupportedAllowSwapping(size.getWidth(), size.getHeight())) {
                    Logger.w(VideoEncoderInfoWrapper.TAG, "Detected that the device does not support a size " + size + " that should be valid in widths/heights = " + videoEncoderInfo.getSupportedWidths() + '/' + videoEncoderInfo.getSupportedHeights());
                    videoEncoderInfo = new VideoEncoderInfoWrapper(videoEncoderInfo, null);
                }
            }
            if (size != null && (videoEncoderInfo instanceof VideoEncoderInfoWrapper)) {
                ((VideoEncoderInfoWrapper) videoEncoderInfo).addExtraSupportedSize(size);
            }
            return videoEncoderInfo;
        }

        private Companion() {
        }
    }

    public /* synthetic */ VideoEncoderInfoWrapper(VideoEncoderInfo videoEncoderInfo, jh2 jh2Var) {
        this(videoEncoderInfo);
    }
}
