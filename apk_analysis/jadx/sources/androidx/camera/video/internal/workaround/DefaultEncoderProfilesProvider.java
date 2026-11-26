package androidx.camera.video.internal.workaround;

import android.util.Size;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.video.Quality;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import defpackage.aa4;
import defpackage.cl4;
import defpackage.dz0;
import defpackage.fh8;
import defpackage.jh2;
import defpackage.r01;
import defpackage.u96;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultEncoderProfilesProvider implements EncoderProfilesProvider {
    public static final Companion Companion = new Companion(null);
    public static final int DEFAULT_AUDIO_BITRATE = 96000;
    public static final int DEFAULT_AUDIO_CHANNELS = 1;
    public static final int DEFAULT_AUDIO_CODEC = 3;
    public static final String DEFAULT_AUDIO_MIME_TYPE = "audio/mp4a-latm";
    public static final int DEFAULT_AUDIO_PROFILE = 2;
    public static final int DEFAULT_AUDIO_SAMPLE_RATE = 44100;
    public static final int DEFAULT_DURATION_SECONDS = 60;
    public static final int DEFAULT_OUTPUT_FORMAT = 2;
    public static final int DEFAULT_VIDEO_BITRATE_FHD = 10000000;
    public static final int DEFAULT_VIDEO_BITRATE_HD = 4000000;
    public static final int DEFAULT_VIDEO_BITRATE_SD = 2000000;
    public static final int DEFAULT_VIDEO_BITRATE_UHD = 40000000;
    public static final int DEFAULT_VIDEO_BIT_DEPTH = 8;
    public static final int DEFAULT_VIDEO_CHROMA_SUBSAMPLING = 0;
    public static final int DEFAULT_VIDEO_CODEC = 2;
    public static final int DEFAULT_VIDEO_FRAME_RATE = 30;
    public static final int DEFAULT_VIDEO_HDR_FORMAT = 0;
    public static final String DEFAULT_VIDEO_MIME_TYPE = "video/avc";
    public static final int DEFAULT_VIDEO_PROFILE = -1;
    private final CameraInfoInternal cameraInfo;
    private final Map<Integer, EncoderProfilesProxy> encoderProfilesMap;
    private final cl4 supportedSizes$delegate;
    private final List<Quality> targetQualities;
    private final VideoEncoderInfo.Finder videoEncoderInfoFinder;

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultEncoderProfilesProvider(CameraInfoInternal cameraInfoInternal, List<? extends Quality> list, VideoEncoderInfo.Finder finder) {
        cameraInfoInternal.getClass();
        list.getClass();
        finder.getClass();
        this.cameraInfo = cameraInfoInternal;
        this.targetQualities = list;
        this.videoEncoderInfoFinder = finder;
        this.supportedSizes$delegate = new fh8(new dz0(this, 1));
        this.encoderProfilesMap = new LinkedHashMap();
    }

    private final EncoderProfilesProxy.AudioProfileProxy createDefaultAudioProfile(int i, String str, int i2, int i3, int i4, int i5) {
        EncoderProfilesProxy.AudioProfileProxy audioProfileProxyCreate = EncoderProfilesProxy.AudioProfileProxy.create(i, str, i2, i3, i4, i5);
        audioProfileProxyCreate.getClass();
        return audioProfileProxyCreate;
    }

    public static /* synthetic */ EncoderProfilesProxy.AudioProfileProxy createDefaultAudioProfile$default(DefaultEncoderProfilesProvider defaultEncoderProfilesProvider, int i, String str, int i2, int i3, int i4, int i5, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            i = 3;
        }
        if ((i6 & 2) != 0) {
            str = "audio/mp4a-latm";
        }
        if ((i6 & 4) != 0) {
            i2 = DEFAULT_AUDIO_BITRATE;
        }
        if ((i6 & 8) != 0) {
            i3 = 44100;
        }
        if ((i6 & 16) != 0) {
            i4 = 1;
        }
        if ((i6 & 32) != 0) {
            i5 = 2;
        }
        int i7 = i4;
        int i8 = i5;
        return defaultEncoderProfilesProvider.createDefaultAudioProfile(i, str, i2, i3, i7, i8);
    }

    private final EncoderProfilesProxy createDefaultEncoderProfiles(int i, int i2, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy) {
        EncoderProfilesProxy.ImmutableEncoderProfilesProxy immutableEncoderProfilesProxyCreate = EncoderProfilesProxy.ImmutableEncoderProfilesProxy.create(i, i2, u96.h(audioProfileProxy), u96.h(videoProfileProxy));
        immutableEncoderProfilesProxyCreate.getClass();
        return immutableEncoderProfilesProxyCreate;
    }

    public static /* synthetic */ EncoderProfilesProxy createDefaultEncoderProfiles$default(DefaultEncoderProfilesProvider defaultEncoderProfilesProvider, int i, int i2, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 60;
        }
        if ((i3 & 2) != 0) {
            i2 = 2;
        }
        return defaultEncoderProfilesProvider.createDefaultEncoderProfiles(i, i2, videoProfileProxy, audioProfileProxy);
    }

    private final EncoderProfilesProxy.VideoProfileProxy createDefaultVideoProfile(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxyCreate = EncoderProfilesProxy.VideoProfileProxy.create(i, str, i4, i5, i2, i3, i6, i7, i8, i9);
        videoProfileProxyCreate.getClass();
        return videoProfileProxyCreate;
    }

    public static /* synthetic */ EncoderProfilesProxy.VideoProfileProxy createDefaultVideoProfile$default(DefaultEncoderProfilesProvider defaultEncoderProfilesProvider, int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i = 2;
        }
        if ((i10 & 2) != 0) {
            str = "video/avc";
        }
        if ((i10 & 32) != 0) {
            i5 = 30;
        }
        if ((i10 & 64) != 0) {
            i6 = -1;
        }
        if ((i10 & 128) != 0) {
            i7 = 8;
        }
        if ((i10 & 256) != 0) {
            i8 = 0;
        }
        return defaultEncoderProfilesProvider.createDefaultVideoProfile(i, str, i2, i3, i4, i5, i6, i7, i8, (i10 & 512) != 0 ? 0 : i9);
    }

    private final Quality.ConstantQuality find(List<? extends Quality> list, int i) {
        Object next;
        Quality quality;
        Iterator<T> it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            quality = (Quality) next;
            quality.getClass();
        } while (((Quality.ConstantQuality) quality).getQualityValue(1) != i);
        if (next instanceof Quality.ConstantQuality) {
            return (Quality.ConstantQuality) next;
        }
        return null;
    }

    private final EncoderProfilesProxy generateEncoderProfiles(int i) {
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxyGenerateVideoProfiles = generateVideoProfiles(i);
        if (videoProfileProxyGenerateVideoProfiles == null) {
            return null;
        }
        return createDefaultEncoderProfiles$default(this, 0, 0, videoProfileProxyGenerateVideoProfiles, createDefaultAudioProfile$default(this, 0, null, 0, 0, 0, 0, 63, null), 3, null);
    }

    private final EncoderProfilesProxy.VideoProfileProxy generateVideoProfiles(int i) {
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxyResolveVideoProfile;
        Quality.ConstantQuality constantQualityFind = find(this.targetQualities, i);
        if (constantQualityFind == null) {
            return null;
        }
        for (Size size : constantQualityFind.getTypicalSizes()) {
            if (getSupportedSizes().contains(size) && (videoProfileProxyResolveVideoProfile = resolveVideoProfile(size.getWidth(), size.getHeight(), getTypicalBitrate(constantQualityFind))) != null) {
                return videoProfileProxyResolveVideoProfile;
            }
        }
        return null;
    }

    private final EncoderProfilesProxy getProfileInternal(int i) {
        if (this.encoderProfilesMap.containsKey(Integer.valueOf(i))) {
            return this.encoderProfilesMap.get(Integer.valueOf(i));
        }
        EncoderProfilesProxy encoderProfilesProxyGenerateEncoderProfiles = generateEncoderProfiles(i);
        this.encoderProfilesMap.put(Integer.valueOf(i), encoderProfilesProxyGenerateEncoderProfiles);
        return encoderProfilesProxyGenerateEncoderProfiles;
    }

    private final List<Size> getSupportedSizes() {
        return (List) this.supportedSizes$delegate.getValue();
    }

    private final int getTypicalBitrate(Quality quality) {
        if (aa4.e(quality, Quality.UHD)) {
            return DEFAULT_VIDEO_BITRATE_UHD;
        }
        if (aa4.e(quality, Quality.FHD)) {
            return DEFAULT_VIDEO_BITRATE_FHD;
        }
        if (aa4.e(quality, Quality.HD)) {
            return DEFAULT_VIDEO_BITRATE_HD;
        }
        if (aa4.e(quality, Quality.SD)) {
            return DEFAULT_VIDEO_BITRATE_SD;
        }
        r01.e(quality, "Undefined bitrate for quality: ");
        return 0;
    }

    private final EncoderProfilesProxy.VideoProfileProxy resolveVideoProfile(int i, int i2, int i3) {
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxyCreateDefaultVideoProfile$default = createDefaultVideoProfile$default(this, 0, null, i, i2, i3, 0, 0, 0, 0, 0, 995, null);
        VideoEncoderInfo.Finder finder = this.videoEncoderInfoFinder;
        String mediaType = videoProfileProxyCreateDefaultVideoProfile$default.getMediaType();
        mediaType.getClass();
        VideoEncoderInfo videoEncoderInfoFind = finder.find(mediaType);
        if (videoEncoderInfoFind == null || !videoEncoderInfoFind.isSizeSupportedAllowSwapping(i, i2)) {
            return null;
        }
        Integer num = (Integer) videoEncoderInfoFind.getSupportedBitrateRange().clamp(Integer.valueOf(i3));
        if (num != null && num.intValue() == i3) {
            return videoProfileProxyCreateDefaultVideoProfile$default;
        }
        num.getClass();
        return createDefaultVideoProfile$default(this, 0, null, i, i2, num.intValue(), 0, 0, 0, 0, 0, 995, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List supportedSizes_delegate$lambda$0(DefaultEncoderProfilesProvider defaultEncoderProfilesProvider) {
        return defaultEncoderProfilesProvider.cameraInfo.getSupportedResolutions(34);
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public EncoderProfilesProxy getAll(int i) {
        return getProfileInternal(i);
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public boolean hasProfile(int i) {
        return getProfileInternal(i) != null;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
