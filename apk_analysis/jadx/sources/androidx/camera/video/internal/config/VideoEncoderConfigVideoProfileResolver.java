package androidx.camera.video.internal.config;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.VideoSpec;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import androidx.core.util.Supplier;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class VideoEncoderConfigVideoProfileResolver implements Supplier<VideoEncoderConfig> {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "VidEncVdPrflRslvr";
    private final DynamicRange dynamicRange;
    private final Range<Integer> expectedFrameRateRange;
    private final Timebase inputTimebase;
    private final String mimeType;
    private final Size surfaceSize;
    private final EncoderProfilesProxy.VideoProfileProxy videoProfile;
    private final VideoSpec videoSpec;

    public VideoEncoderConfigVideoProfileResolver(String str, Timebase timebase, VideoSpec videoSpec, Size size, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, DynamicRange dynamicRange, Range<Integer> range) {
        str.getClass();
        timebase.getClass();
        videoSpec.getClass();
        size.getClass();
        videoProfileProxy.getClass();
        dynamicRange.getClass();
        range.getClass();
        this.mimeType = str;
        this.inputTimebase = timebase;
        this.videoSpec = videoSpec;
        this.surfaceSize = size;
        this.videoProfile = videoProfileProxy;
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
            Logger.d(TAG, "Using resolved VIDEO bitrate from EncoderProfiles");
            bitrate = VideoConfigUtil.scaleBitrate(this.videoProfile.getBitrate(), this.dynamicRange.getBitDepth(), this.videoProfile.getBitDepth(), captureEncodeRatesResolveFrameRates$camera_video.getEncodeRate(), this.videoProfile.getFrameRate(), this.surfaceSize.getWidth(), this.videoProfile.getWidth(), this.surfaceSize.getHeight(), this.videoProfile.getHeight());
        }
        int profile = this.videoProfile.getProfile();
        VideoEncoderConfig videoEncoderConfigBuild = VideoEncoderConfig.builder().setMimeType(this.mimeType).setInputTimebase(this.inputTimebase).setResolution(this.surfaceSize).setBitrate(bitrate).setCaptureFrameRate(captureEncodeRatesResolveFrameRates$camera_video.getCaptureRate()).setEncodeFrameRate(captureEncodeRatesResolveFrameRates$camera_video.getEncodeRate()).setProfile(profile).setDataSpace(videoConfigUtil.mimeAndProfileToEncoderDataSpace(this.mimeType, profile)).build();
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
