package androidx.camera.video.internal.config;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.VideoSpec;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import androidx.camera.video.internal.utils.DynamicRangeUtil;
import androidx.core.util.Supplier;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class VideoEncoderConfigDefaultResolver implements Supplier<VideoEncoderConfig> {
    private static final String TAG = "VidEncCfgDefaultRslvr";
    private static final int VIDEO_BITRATE_BASE = 14000000;
    private static final int VIDEO_BIT_DEPTH_BASE = 8;
    private static final int VIDEO_FRAME_RATE_BASE = 30;
    private final DynamicRange dynamicRange;
    private final Range<Integer> expectedFrameRateRange;
    private final Timebase inputTimebase;
    private final String mimeType;
    private final Size surfaceSize;
    private final VideoSpec videoSpec;
    public static final Companion Companion = new Companion(null);
    private static final Size VIDEO_SIZE_BASE = new Size(1280, 720);

    public VideoEncoderConfigDefaultResolver(String str, Timebase timebase, VideoSpec videoSpec, Size size, DynamicRange dynamicRange, Range<Integer> range) {
        str.getClass();
        timebase.getClass();
        videoSpec.getClass();
        size.getClass();
        dynamicRange.getClass();
        range.getClass();
        this.mimeType = str;
        this.inputTimebase = timebase;
        this.videoSpec = videoSpec;
        this.surfaceSize = size;
        this.dynamicRange = dynamicRange;
        this.expectedFrameRateRange = range;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.core.util.Supplier
    public VideoEncoderConfig get() {
        VideoConfigUtil videoConfigUtil = VideoConfigUtil.INSTANCE;
        CaptureEncodeRates captureEncodeRatesResolveFrameRates$camera_video = videoConfigUtil.resolveFrameRates$camera_video(this.videoSpec, this.expectedFrameRateRange);
        Logger.d(TAG, "Resolved VIDEO frame rates: Capture frame rate = " + captureEncodeRatesResolveFrameRates$camera_video.getCaptureRate() + "fps. Encode frame rate = " + captureEncodeRatesResolveFrameRates$camera_video.getEncodeRate() + "fps.");
        int bitrate = this.videoSpec.getBitrate();
        if (bitrate == 0) {
            Logger.d(TAG, "Using fallback VIDEO bitrate");
            int bitDepth = this.dynamicRange.getBitDepth();
            int encodeRate = captureEncodeRatesResolveFrameRates$camera_video.getEncodeRate();
            int width = this.surfaceSize.getWidth();
            Size size = VIDEO_SIZE_BASE;
            bitrate = VideoConfigUtil.scaleBitrate(VIDEO_BITRATE_BASE, bitDepth, 8, encodeRate, 30, width, size.getWidth(), this.surfaceSize.getHeight(), size.getHeight());
        }
        int iDynamicRangeToCodecProfileLevelForMime = DynamicRangeUtil.dynamicRangeToCodecProfileLevelForMime(this.mimeType, this.dynamicRange);
        VideoEncoderConfig videoEncoderConfigBuild = VideoEncoderConfig.builder().setMimeType(this.mimeType).setInputTimebase(this.inputTimebase).setResolution(this.surfaceSize).setBitrate(bitrate).setCaptureFrameRate(captureEncodeRatesResolveFrameRates$camera_video.getCaptureRate()).setEncodeFrameRate(captureEncodeRatesResolveFrameRates$camera_video.getEncodeRate()).setProfile(iDynamicRangeToCodecProfileLevelForMime).setDataSpace(videoConfigUtil.mimeAndProfileToEncoderDataSpace(this.mimeType, iDynamicRangeToCodecProfileLevelForMime)).build();
        videoEncoderConfigBuild.getClass();
        return videoEncoderConfigBuild;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
