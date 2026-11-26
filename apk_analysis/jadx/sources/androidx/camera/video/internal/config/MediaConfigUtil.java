package androidx.camera.video.internal.config;

import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.video.AudioSpec;
import androidx.camera.video.MediaSpec;
import androidx.camera.video.VideoSpec;
import androidx.camera.video.internal.utils.CodecUtil;
import defpackage.aa4;
import defpackage.ah;
import defpackage.jh2;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MediaConfigUtil {
    public static final MediaConfigUtil INSTANCE = new MediaConfigUtil();
    private static final int OUTPUT_FORMAT_DEFAULT = 0;
    private static final String TAG = "MediaConfigUtil";
    private static List<String> supportedAudioEncoderMimesOverride;
    private static List<String> supportedVideoEncoderMimesOverride;

    private MediaConfigUtil() {
    }

    private final List<String> getSupportedAudioEncoderMimes() {
        List<String> list = supportedAudioEncoderMimesOverride;
        return list == null ? CodecUtil.getAudioEncoderMimeTypes() : list;
    }

    private final List<String> getSupportedVideoEncoderMimes() {
        List<String> list = supportedVideoEncoderMimesOverride;
        return list == null ? CodecUtil.getVideoEncoderMimeTypes() : list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int mediaRecorderFormatToOutputFormat(int i) {
        if (i == 1 || i == 2) {
            return 0;
        }
        return i != 9 ? -1 : 1;
    }

    public static final int outputFormatToMuxerFormat(int i) {
        return i == 1 ? 1 : 0;
    }

    private final MediaInfo resolveByDefault(EncoderProfilesProxy encoderProfilesProxy, DynamicRange dynamicRange, int i, String str, String str2) {
        Integer numValueOf = Integer.valueOf(i);
        if (numValueOf.intValue() == -1) {
            numValueOf = null;
        }
        int iIntValue = numValueOf != null ? numValueOf.intValue() : 0;
        if (aa4.e(str, VideoSpec.MIME_TYPE_UNSPECIFIED)) {
            str = null;
        }
        if (str == null) {
            VideoConfigUtil videoConfigUtil = VideoConfigUtil.INSTANCE;
            String dynamicRangeDefaultMime = videoConfigUtil.getDynamicRangeDefaultMime(dynamicRange);
            str = dynamicRangeDefaultMime == null ? videoConfigUtil.outputFormatToVideoMime(i) : dynamicRangeDefaultMime;
        }
        if (aa4.e(str2, AudioSpec.MIME_TYPE_UNSPECIFIED)) {
            str2 = null;
        }
        if (str2 == null) {
            str2 = AudioConfigUtil.INSTANCE.outputFormatToAudioMime(i);
        }
        int i2 = iIntValue;
        CompatibleProfiles compatibleProfilesResolveCompatibleProfiles = resolveCompatibleProfiles(encoderProfilesProxy, dynamicRange, i2, str, str2);
        MediaInfo mediaInfo = new MediaInfo(new ContainerInfo(i2, compatibleProfilesResolveCompatibleProfiles.getEncoderProfiles()), new VideoMimeInfo(str, 0, compatibleProfilesResolveCompatibleProfiles.getVideoProfile(), 2, null), new AudioMimeInfo(str2, AudioConfigUtil.INSTANCE.audioMimeToAudioProfile(str2), compatibleProfilesResolveCompatibleProfiles.getAudioProfile()));
        Logger.d(TAG, "Resolved MediaInfo by Default: " + mediaInfo);
        return mediaInfo;
    }

    private final MediaInfo resolveByEncoderProfiles(EncoderProfilesProxy encoderProfilesProxy, DynamicRange dynamicRange, int i, String str, String str2) {
        CompatibleProfiles compatibleProfilesResolveCompatibleProfiles = resolveCompatibleProfiles(encoderProfilesProxy, dynamicRange, i, str, str2);
        Logger.d(TAG, "Resolved CompatibleProfiles: " + compatibleProfilesResolveCompatibleProfiles);
        if (!compatibleProfilesResolveCompatibleProfiles.isFullyCompatible()) {
            compatibleProfilesResolveCompatibleProfiles = null;
        }
        if (compatibleProfilesResolveCompatibleProfiles == null) {
            return null;
        }
        MediaInfo mediaInfo = compatibleProfilesResolveCompatibleProfiles.toMediaInfo();
        Logger.d(TAG, "Resolved MediaInfo by CompatibleProfiles: " + mediaInfo);
        return mediaInfo;
    }

    private final MediaInfo resolveByFormatCombo(EncoderProfilesProxy encoderProfilesProxy, DynamicRange dynamicRange, int i, String str, String str2) {
        FormatCombo formatComboResolveFormatCombo = resolveFormatCombo(i, str, str2, dynamicRange, getSupportedVideoEncoderMimes(), getSupportedAudioEncoderMimes());
        Logger.d(TAG, "Resolved FormatCombo: " + formatComboResolveFormatCombo);
        if (formatComboResolveFormatCombo == null) {
            return null;
        }
        int container = formatComboResolveFormatCombo.getContainer();
        String videoMime = formatComboResolveFormatCombo.getVideoMime();
        videoMime.getClass();
        String audioMime = formatComboResolveFormatCombo.getAudioMime();
        if (audioMime == null) {
            audioMime = AudioSpec.MIME_TYPE_UNSPECIFIED;
        }
        CompatibleProfiles compatibleProfilesResolveCompatibleProfiles = resolveCompatibleProfiles(encoderProfilesProxy, dynamicRange, container, videoMime, audioMime);
        ContainerInfo containerInfo = new ContainerInfo(formatComboResolveFormatCombo.getContainer(), compatibleProfilesResolveCompatibleProfiles.getEncoderProfiles());
        VideoMimeInfo videoMimeInfo = new VideoMimeInfo(formatComboResolveFormatCombo.getVideoMime(), 0, compatibleProfilesResolveCompatibleProfiles.getVideoProfile(), 2, null);
        String audioMime2 = formatComboResolveFormatCombo.getAudioMime();
        MediaInfo mediaInfo = new MediaInfo(containerInfo, videoMimeInfo, audioMime2 != null ? new AudioMimeInfo(audioMime2, AudioConfigUtil.INSTANCE.audioMimeToAudioProfile(audioMime2), compatibleProfilesResolveCompatibleProfiles.getAudioProfile()) : null);
        Logger.d(TAG, "Resolved MediaInfo by FormatCombo: " + mediaInfo);
        return mediaInfo;
    }

    private final EncoderProfilesProxy resolveCompatibleEncoderProfiles(int i, EncoderProfilesProxy encoderProfilesProxy) {
        if (encoderProfilesProxy == null) {
            return null;
        }
        if (i == -1 || i == INSTANCE.mediaRecorderFormatToOutputFormat(encoderProfilesProxy.getRecommendedFileFormat())) {
            return encoderProfilesProxy;
        }
        return null;
    }

    private final CompatibleProfiles resolveCompatibleProfiles(EncoderProfilesProxy encoderProfilesProxy, DynamicRange dynamicRange, int i, String str, String str2) {
        if (encoderProfilesProxy == null) {
            return CompatibleProfiles.Companion.getEMPTY();
        }
        EncoderProfilesProxy encoderProfilesProxyResolveCompatibleEncoderProfiles = resolveCompatibleEncoderProfiles(i, encoderProfilesProxy);
        VideoConfigUtil videoConfigUtil = VideoConfigUtil.INSTANCE;
        List<EncoderProfilesProxy.VideoProfileProxy> videoProfiles = encoderProfilesProxy.getVideoProfiles();
        videoProfiles.getClass();
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxyResolveCompatibleVideoProfile = videoConfigUtil.resolveCompatibleVideoProfile(str, dynamicRange, videoProfiles);
        AudioConfigUtil audioConfigUtil = AudioConfigUtil.INSTANCE;
        List<EncoderProfilesProxy.AudioProfileProxy> audioProfiles = encoderProfilesProxy.getAudioProfiles();
        audioProfiles.getClass();
        return new CompatibleProfiles(encoderProfilesProxyResolveCompatibleEncoderProfiles, videoProfileProxyResolveCompatibleVideoProfile, audioConfigUtil.resolveCompatibleAudioProfile(str2, audioProfiles));
    }

    private final FormatCombo resolveFormatCombo(int i, String str, String str2, DynamicRange dynamicRange, List<String> list, List<String> list2) {
        Object next;
        Logger.d(TAG, "resolveFormatCombo - supportedVideoEncoderMimes: " + list + ", supportedAudioEncoderMimes: " + list2);
        FormatComboRegistry registry = DynamicRangeFormatComboRegistry.INSTANCE.getRegistry(dynamicRange);
        Object obj = null;
        if (registry == null) {
            return null;
        }
        List<FormatCombo> combos = registry.getCombos(i, str, str2);
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : combos) {
            if (((FormatCombo) obj2).getVideoMime() != null) {
                arrayList.add(obj2);
            }
        }
        Logger.d(TAG, "eligibleFormatCombos: " + arrayList);
        if (arrayList.isEmpty()) {
            return null;
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            FormatCombo formatCombo = (FormatCombo) next;
            if (qn1.M(list, formatCombo.getVideoMime()) && qn1.M(list2, formatCombo.getAudioMime())) {
                break;
            }
        }
        FormatCombo formatCombo2 = (FormatCombo) next;
        if (formatCombo2 != null) {
            return formatCombo2;
        }
        for (Object obj3 : arrayList) {
            FormatCombo formatCombo3 = (FormatCombo) obj3;
            if (qn1.M(list, formatCombo3.getVideoMime()) && formatCombo3.getAudioMime() == null) {
                obj = obj3;
                break;
            }
        }
        FormatCombo formatCombo4 = (FormatCombo) obj;
        return formatCombo4 == null ? (FormatCombo) qn1.V(arrayList) : formatCombo4;
    }

    public static final MediaInfo resolveMediaInfo(MediaSpec mediaSpec, DynamicRange dynamicRange, EncoderProfilesProxy encoderProfilesProxy) {
        mediaSpec.getClass();
        dynamicRange.getClass();
        Logger.d(TAG, "Resolving MediaInfo for MediaSpec: " + mediaSpec + ", DynamicRange: " + dynamicRange + ", EncoderProfiles: " + encoderProfilesProxy);
        int outputFormat = mediaSpec.getOutputFormat();
        String mimeType = mediaSpec.getVideoSpec().getMimeType();
        String mimeType2 = mediaSpec.getAudioSpec().getMimeType();
        MediaConfigUtil mediaConfigUtil = INSTANCE;
        MediaInfo mediaInfoResolveByEncoderProfiles = mediaConfigUtil.resolveByEncoderProfiles(encoderProfilesProxy, dynamicRange, outputFormat, mimeType, mimeType2);
        if (mediaInfoResolveByEncoderProfiles != null) {
            return mediaInfoResolveByEncoderProfiles;
        }
        MediaInfo mediaInfoResolveByFormatCombo = mediaConfigUtil.resolveByFormatCombo(encoderProfilesProxy, dynamicRange, outputFormat, mimeType, mimeType2);
        return mediaInfoResolveByFormatCombo != null ? mediaInfoResolveByFormatCombo : mediaConfigUtil.resolveByDefault(encoderProfilesProxy, dynamicRange, outputFormat, mimeType, mimeType2);
    }

    public final void setSupportedEncoderMimeTypes(List<String> list, List<String> list2) {
        supportedVideoEncoderMimesOverride = list;
        supportedAudioEncoderMimesOverride = list2;
    }

    public static final class CompatibleProfiles {
        public static final Companion Companion = new Companion(null);
        private static final CompatibleProfiles EMPTY = new CompatibleProfiles(null, null, null, 7, null);
        private final EncoderProfilesProxy.AudioProfileProxy audioProfile;
        private final EncoderProfilesProxy encoderProfiles;
        private final EncoderProfilesProxy.VideoProfileProxy videoProfile;

        public /* synthetic */ CompatibleProfiles(EncoderProfilesProxy encoderProfilesProxy, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? null : encoderProfilesProxy, (i & 2) != 0 ? null : videoProfileProxy, (i & 4) != 0 ? null : audioProfileProxy);
        }

        public static /* synthetic */ CompatibleProfiles copy$default(CompatibleProfiles compatibleProfiles, EncoderProfilesProxy encoderProfilesProxy, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy, int i, Object obj) {
            if ((i & 1) != 0) {
                encoderProfilesProxy = compatibleProfiles.encoderProfiles;
            }
            if ((i & 2) != 0) {
                videoProfileProxy = compatibleProfiles.videoProfile;
            }
            if ((i & 4) != 0) {
                audioProfileProxy = compatibleProfiles.audioProfile;
            }
            return compatibleProfiles.copy(encoderProfilesProxy, videoProfileProxy, audioProfileProxy);
        }

        public final EncoderProfilesProxy component1() {
            return this.encoderProfiles;
        }

        public final EncoderProfilesProxy.VideoProfileProxy component2() {
            return this.videoProfile;
        }

        public final EncoderProfilesProxy.AudioProfileProxy component3() {
            return this.audioProfile;
        }

        public final CompatibleProfiles copy(EncoderProfilesProxy encoderProfilesProxy, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy) {
            return new CompatibleProfiles(encoderProfilesProxy, videoProfileProxy, audioProfileProxy);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CompatibleProfiles)) {
                return false;
            }
            CompatibleProfiles compatibleProfiles = (CompatibleProfiles) obj;
            return aa4.e(this.encoderProfiles, compatibleProfiles.encoderProfiles) && aa4.e(this.videoProfile, compatibleProfiles.videoProfile) && aa4.e(this.audioProfile, compatibleProfiles.audioProfile);
        }

        public final EncoderProfilesProxy.AudioProfileProxy getAudioProfile() {
            return this.audioProfile;
        }

        public final EncoderProfilesProxy getEncoderProfiles() {
            return this.encoderProfiles;
        }

        public final EncoderProfilesProxy.VideoProfileProxy getVideoProfile() {
            return this.videoProfile;
        }

        public int hashCode() {
            EncoderProfilesProxy encoderProfilesProxy = this.encoderProfiles;
            int iHashCode = (encoderProfilesProxy == null ? 0 : encoderProfilesProxy.hashCode()) * 31;
            EncoderProfilesProxy.VideoProfileProxy videoProfileProxy = this.videoProfile;
            int iHashCode2 = (iHashCode + (videoProfileProxy == null ? 0 : videoProfileProxy.hashCode())) * 31;
            EncoderProfilesProxy.AudioProfileProxy audioProfileProxy = this.audioProfile;
            return iHashCode2 + (audioProfileProxy != null ? audioProfileProxy.hashCode() : 0);
        }

        public final boolean isFullyCompatible() {
            return (this.encoderProfiles == null || this.videoProfile == null || this.audioProfile == null) ? false : true;
        }

        public final MediaInfo toMediaInfo() {
            if (!isFullyCompatible()) {
                ah.f("Check failed.");
                return null;
            }
            MediaConfigUtil mediaConfigUtil = MediaConfigUtil.INSTANCE;
            EncoderProfilesProxy encoderProfilesProxy = this.encoderProfiles;
            encoderProfilesProxy.getClass();
            ContainerInfo containerInfo = new ContainerInfo(mediaConfigUtil.mediaRecorderFormatToOutputFormat(encoderProfilesProxy.getRecommendedFileFormat()), this.encoderProfiles);
            EncoderProfilesProxy.VideoProfileProxy videoProfileProxy = this.videoProfile;
            videoProfileProxy.getClass();
            String mediaType = videoProfileProxy.getMediaType();
            mediaType.getClass();
            VideoMimeInfo videoMimeInfo = new VideoMimeInfo(mediaType, 0, this.videoProfile, 2, null);
            EncoderProfilesProxy.AudioProfileProxy audioProfileProxy = this.audioProfile;
            audioProfileProxy.getClass();
            String mediaType2 = audioProfileProxy.getMediaType();
            mediaType2.getClass();
            return new MediaInfo(containerInfo, videoMimeInfo, new AudioMimeInfo(mediaType2, this.audioProfile.getProfile(), this.audioProfile));
        }

        public String toString() {
            return "CompatibleProfiles(encoderProfiles=" + this.encoderProfiles + ", videoProfile=" + this.videoProfile + ", audioProfile=" + this.audioProfile + ')';
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final CompatibleProfiles getEMPTY() {
                return CompatibleProfiles.EMPTY;
            }

            private Companion() {
            }
        }

        public CompatibleProfiles(EncoderProfilesProxy encoderProfilesProxy, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy) {
            this.encoderProfiles = encoderProfilesProxy;
            this.videoProfile = videoProfileProxy;
            this.audioProfile = audioProfileProxy;
        }

        public CompatibleProfiles() {
            this(null, null, null, 7, null);
        }
    }
}
