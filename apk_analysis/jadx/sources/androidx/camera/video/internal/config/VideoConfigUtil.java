package androidx.camera.video.internal.config;

import android.util.Range;
import android.util.Rational;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.MediaSpec;
import androidx.camera.video.VideoSpec;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.compat.quirk.MediaCodecDefaultDataSpaceQuirk;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import androidx.camera.video.internal.encoder.VideoEncoderDataSpace;
import androidx.camera.video.internal.utils.DynamicRangeUtil;
import androidx.media3.common.MimeTypes;
import defpackage.aa4;
import defpackage.b36;
import defpackage.bg;
import defpackage.cg;
import defpackage.gg;
import defpackage.hg;
import defpackage.n05;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class VideoConfigUtil {
    public static final VideoConfigUtil INSTANCE = new VideoConfigUtil();
    private static final Map<String, Map<Integer, VideoEncoderDataSpace>> MIME_TO_DATA_SPACE_MAP;
    private static final String TAG = "VideoConfigUtil";
    private static final String VIDEO_ENCODER_MIME_MPEG4_DEFAULT = "video/avc";
    private static final String VIDEO_ENCODER_MIME_WEBM_DEFAULT = "video/x-vnd.on2.vp8";
    public static final int VIDEO_FRAME_RATE_FIXED_DEFAULT = 30;

    static {
        VideoEncoderDataSpace videoEncoderDataSpace = VideoEncoderDataSpace.ENCODER_DATA_SPACE_UNSPECIFIED;
        b36 b36Var = new b36(1, videoEncoderDataSpace);
        VideoEncoderDataSpace videoEncoderDataSpace2 = VideoEncoderDataSpace.ENCODER_DATA_SPACE_BT2020_HLG;
        b36 b36Var2 = new b36(2, videoEncoderDataSpace2);
        VideoEncoderDataSpace videoEncoderDataSpace3 = VideoEncoderDataSpace.ENCODER_DATA_SPACE_BT2020_PQ;
        MIME_TO_DATA_SPACE_MAP = n05.f(new b36(MimeTypes.VIDEO_H265, n05.e(b36Var, b36Var2, new b36(4096, videoEncoderDataSpace3), new b36(8192, videoEncoderDataSpace3))), new b36(MimeTypes.VIDEO_AV1, n05.e(new b36(1, videoEncoderDataSpace), new b36(2, videoEncoderDataSpace2), new b36(4096, videoEncoderDataSpace3), new b36(8192, videoEncoderDataSpace3))), new b36(MimeTypes.VIDEO_VP9, n05.e(new b36(1, videoEncoderDataSpace), new b36(4, videoEncoderDataSpace2), new b36(4096, videoEncoderDataSpace3), new b36(16384, videoEncoderDataSpace3), new b36(2, videoEncoderDataSpace), new b36(8, videoEncoderDataSpace2), new b36(8192, videoEncoderDataSpace3), new b36(32768, videoEncoderDataSpace3))), new b36(MimeTypes.VIDEO_DOLBY_VISION, n05.e(new b36(256, videoEncoderDataSpace2), new b36(512, VideoEncoderDataSpace.ENCODER_DATA_SPACE_BT709))));
    }

    private VideoConfigUtil() {
    }

    private final String getDynamicRangeDefaultMimeOrThrow(DynamicRange dynamicRange) {
        String dynamicRangeDefaultMime = getDynamicRangeDefaultMime(dynamicRange);
        if (dynamicRangeDefaultMime != null) {
            return dynamicRangeDefaultMime;
        }
        throw new UnsupportedOperationException("Unsupported dynamic range: " + dynamicRange + "\nNo supported default mime type available.");
    }

    public static final VideoEncoderConfig resolveVideoEncoderConfig(VideoMimeInfo videoMimeInfo, Timebase timebase, VideoSpec videoSpec, Size size, DynamicRange dynamicRange, Range<Integer> range) {
        videoMimeInfo.getClass();
        timebase.getClass();
        videoSpec.getClass();
        size.getClass();
        dynamicRange.getClass();
        range.getClass();
        Object obj = (videoMimeInfo.getCompatibleVideoProfile() != null ? new VideoEncoderConfigVideoProfileResolver(videoMimeInfo.getMimeType(), timebase, videoSpec, size, videoMimeInfo.getCompatibleVideoProfile(), dynamicRange, range) : new VideoEncoderConfigDefaultResolver(videoMimeInfo.getMimeType(), timebase, videoSpec, size, dynamicRange, range)).get();
        obj.getClass();
        return (VideoEncoderConfig) obj;
    }

    public static final VideoMimeInfo resolveVideoMimeInfo(MediaSpec mediaSpec, DynamicRange dynamicRange, VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy) {
        EncoderProfilesProxy.VideoProfileProxy next;
        mediaSpec.getClass();
        dynamicRange.getClass();
        if (!dynamicRange.isFullySpecified()) {
            cg.f(dynamicRange, "Dynamic range must be a fully specified dynamic range [provided dynamic range: ", 93);
            return null;
        }
        String strOutputFormatToVideoMime = MediaSpec.Companion.outputFormatToVideoMime(mediaSpec.getOutputFormat());
        if (videoValidatedEncoderProfilesProxy != null) {
            Set<Integer> setDynamicRangeToVideoProfileHdrFormats = DynamicRangeUtil.dynamicRangeToVideoProfileHdrFormats(dynamicRange);
            setDynamicRangeToVideoProfileHdrFormats.getClass();
            Set<Integer> setDynamicRangeToVideoProfileBitDepth = DynamicRangeUtil.dynamicRangeToVideoProfileBitDepth(dynamicRange);
            setDynamicRangeToVideoProfileBitDepth.getClass();
            Iterator<EncoderProfilesProxy.VideoProfileProxy> it = videoValidatedEncoderProfilesProxy.getVideoProfiles().iterator();
            while (true) {
                if (it.hasNext()) {
                    next = it.next();
                    if (setDynamicRangeToVideoProfileHdrFormats.contains(Integer.valueOf(next.getHdrFormat())) && setDynamicRangeToVideoProfileBitDepth.contains(Integer.valueOf(next.getBitDepth()))) {
                        String mediaType = next.getMediaType();
                        mediaType.getClass();
                        if (aa4.e(strOutputFormatToVideoMime, mediaType)) {
                            Logger.d(TAG, "MediaSpec video mime matches EncoderProfiles. Using EncoderProfiles to derive VIDEO settings [mime type: " + strOutputFormatToVideoMime + ']');
                        } else if (mediaSpec.getOutputFormat() == -1) {
                            Logger.d(TAG, "MediaSpec contains OUTPUT_FORMAT_UNSPECIFIED. Using CamcorderProfile to derive VIDEO settings [mime type: " + strOutputFormatToVideoMime + ", dynamic range: " + dynamicRange + ']');
                        }
                        strOutputFormatToVideoMime = mediaType;
                    }
                } else {
                    next = null;
                }
            }
        } else {
            next = null;
        }
        if (next == null) {
            if (mediaSpec.getOutputFormat() == -1) {
                strOutputFormatToVideoMime = INSTANCE.getDynamicRangeDefaultMimeOrThrow(dynamicRange);
            }
            if (videoValidatedEncoderProfilesProxy == null) {
                Logger.d(TAG, "No EncoderProfiles present. May rely on fallback defaults to derive VIDEO settings [chosen mime type: " + strOutputFormatToVideoMime + ", dynamic range: " + dynamicRange + ']');
            } else {
                Logger.d(TAG, "No video EncoderProfile is compatible with requested output format and dynamic range. May rely on fallback defaults to derive VIDEO settings [chosen mime type: " + strOutputFormatToVideoMime + ", dynamic range: " + dynamicRange + ']');
            }
        }
        return new VideoMimeInfo(strOutputFormatToVideoMime, 0, next, 2, null);
    }

    public static final int scaleBitrate(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        String string;
        Rational rational = new Rational(i2, i3);
        Rational rational2 = new Rational(i4, i5);
        Rational rational3 = new Rational(i6, i7);
        Rational rational4 = new Rational(i8, i9);
        double dDoubleValue = rational.doubleValue();
        int iDoubleValue = (int) (rational4.doubleValue() * rational3.doubleValue() * rational2.doubleValue() * dDoubleValue * ((double) i));
        if (Logger.isDebugEnabled(TAG)) {
            StringBuilder sbF = bg.f(i, i2, "Base Bitrate(", "bps) * Bit Depth Ratio (", " / ");
            gg.e(sbF, i3, ") * Frame Rate Ratio(", i4, " / ");
            gg.e(sbF, i5, ") * Width Ratio(", i6, " / ");
            gg.e(sbF, i7, ") * Height Ratio(", i8, " / ");
            sbF.append(i9);
            sbF.append(") = ");
            sbF.append(iDoubleValue);
            string = sbF.toString();
        } else {
            string = "";
        }
        Logger.d(TAG, string);
        return iDoubleValue;
    }

    public static final VideoEncoderConfig workaroundDataSpaceIfRequired(VideoEncoderConfig videoEncoderConfig, boolean z) {
        videoEncoderConfig.getClass();
        if (!aa4.e(videoEncoderConfig.getDataSpace(), VideoEncoderDataSpace.ENCODER_DATA_SPACE_UNSPECIFIED)) {
            return videoEncoderConfig;
        }
        MediaCodecDefaultDataSpaceQuirk mediaCodecDefaultDataSpaceQuirk = (MediaCodecDefaultDataSpaceQuirk) DeviceQuirks.get(MediaCodecDefaultDataSpaceQuirk.class);
        if (!z || mediaCodecDefaultDataSpaceQuirk == null) {
            return videoEncoderConfig;
        }
        VideoEncoderDataSpace suggestedDataSpace = mediaCodecDefaultDataSpaceQuirk.getSuggestedDataSpace();
        suggestedDataSpace.getClass();
        VideoEncoderConfig videoEncoderConfigBuild = videoEncoderConfig.toBuilder().setDataSpace(suggestedDataSpace).build();
        videoEncoderConfigBuild.getClass();
        return videoEncoderConfigBuild;
    }

    public final String getDynamicRangeDefaultMime(DynamicRange dynamicRange) {
        dynamicRange.getClass();
        int encoding = dynamicRange.getEncoding();
        if (encoding == 1) {
            return "video/avc";
        }
        if (encoding == 3 || encoding == 4 || encoding == 5) {
            return MimeTypes.VIDEO_H265;
        }
        if (encoding != 6) {
            return null;
        }
        return MimeTypes.VIDEO_DOLBY_VISION;
    }

    public final Set<DynamicRange> getDynamicRangesForMime(String str) {
        str.getClass();
        return DynamicRangeFormatComboRegistry.INSTANCE.getDynamicRangesForVideoMime(str);
    }

    public final VideoEncoderDataSpace mimeAndProfileToEncoderDataSpace(String str, int i) {
        VideoEncoderDataSpace videoEncoderDataSpace;
        str.getClass();
        Map<Integer, VideoEncoderDataSpace> map = MIME_TO_DATA_SPACE_MAP.get(str);
        if (map != null && (videoEncoderDataSpace = map.get(Integer.valueOf(i))) != null) {
            return videoEncoderDataSpace;
        }
        Logger.w(TAG, hg.d(i, "Unsupported mime type ", str, " or profile level ", ". Data space is unspecified."));
        VideoEncoderDataSpace videoEncoderDataSpace2 = VideoEncoderDataSpace.ENCODER_DATA_SPACE_UNSPECIFIED;
        videoEncoderDataSpace2.getClass();
        return videoEncoderDataSpace2;
    }

    public final String outputFormatToVideoMime(int i) {
        return i == 1 ? "video/x-vnd.on2.vp8" : "video/avc";
    }

    public final EncoderProfilesProxy.VideoProfileProxy resolveCompatibleVideoProfile(String str, DynamicRange dynamicRange, List<? extends EncoderProfilesProxy.VideoProfileProxy> list) {
        Object next;
        str.getClass();
        dynamicRange.getClass();
        list.getClass();
        Set<Integer> setDynamicRangeToVideoProfileHdrFormats = DynamicRangeUtil.dynamicRangeToVideoProfileHdrFormats(dynamicRange);
        setDynamicRangeToVideoProfileHdrFormats.getClass();
        Set<Integer> setDynamicRangeToVideoProfileBitDepth = DynamicRangeUtil.dynamicRangeToVideoProfileBitDepth(dynamicRange);
        setDynamicRangeToVideoProfileBitDepth.getClass();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            next = it.next();
            EncoderProfilesProxy.VideoProfileProxy videoProfileProxy = (EncoderProfilesProxy.VideoProfileProxy) next;
            if (setDynamicRangeToVideoProfileHdrFormats.contains(Integer.valueOf(videoProfileProxy.getHdrFormat())) && setDynamicRangeToVideoProfileBitDepth.contains(Integer.valueOf(videoProfileProxy.getBitDepth())) && (str.equals(VideoSpec.MIME_TYPE_UNSPECIFIED) || aa4.e(videoProfileProxy.getMediaType(), str))) {
                return (EncoderProfilesProxy.VideoProfileProxy) next;
            }
        }
        next = null;
        return (EncoderProfilesProxy.VideoProfileProxy) next;
    }

    public final CaptureEncodeRates resolveFrameRates$camera_video(VideoSpec videoSpec, Range<Integer> range) {
        int iIntValue;
        videoSpec.getClass();
        range.getClass();
        Range<Integer> range2 = SurfaceRequest.FRAME_RATE_RANGE_UNSPECIFIED;
        if (range.equals(range2)) {
            iIntValue = 30;
        } else {
            Object upper = range.getUpper();
            upper.getClass();
            iIntValue = ((Number) upper).intValue();
        }
        int encodeFrameRate = videoSpec.getEncodeFrameRate() != 0 ? videoSpec.getEncodeFrameRate() : iIntValue;
        StringBuilder sbF = bg.f(iIntValue, encodeFrameRate, "Resolved capture/encode frame rate ", "fps/", "fps, [Expected operating range: ");
        sbF.append(range.equals(range2) ? "<UNSPECIFIED>" : String.valueOf(range));
        sbF.append(']');
        Logger.d(TAG, sbF.toString());
        return new CaptureEncodeRates(iIntValue, encodeFrameRate);
    }
}
