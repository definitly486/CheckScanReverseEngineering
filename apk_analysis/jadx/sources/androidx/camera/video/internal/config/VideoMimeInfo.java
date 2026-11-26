package androidx.camera.video.internal.config;

import androidx.camera.core.impl.EncoderProfilesProxy;
import defpackage.aa4;
import defpackage.ej0;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class VideoMimeInfo implements MimeInfo {
    private final EncoderProfilesProxy.VideoProfileProxy compatibleVideoProfile;
    private final String mimeType;
    private final int profile;

    public /* synthetic */ VideoMimeInfo(String str, int i, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, int i2, jh2 jh2Var) {
        this(str, (i2 & 2) != 0 ? -1 : i, (i2 & 4) != 0 ? null : videoProfileProxy);
    }

    public static /* synthetic */ VideoMimeInfo copy$default(VideoMimeInfo videoMimeInfo, String str, int i, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = videoMimeInfo.mimeType;
        }
        if ((i2 & 2) != 0) {
            i = videoMimeInfo.profile;
        }
        if ((i2 & 4) != 0) {
            videoProfileProxy = videoMimeInfo.compatibleVideoProfile;
        }
        return videoMimeInfo.copy(str, i, videoProfileProxy);
    }

    public final String component1() {
        return this.mimeType;
    }

    public final int component2() {
        return this.profile;
    }

    public final EncoderProfilesProxy.VideoProfileProxy component3() {
        return this.compatibleVideoProfile;
    }

    public final VideoMimeInfo copy(String str, int i, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy) {
        str.getClass();
        return new VideoMimeInfo(str, i, videoProfileProxy);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoMimeInfo)) {
            return false;
        }
        VideoMimeInfo videoMimeInfo = (VideoMimeInfo) obj;
        return aa4.e(this.mimeType, videoMimeInfo.mimeType) && this.profile == videoMimeInfo.profile && aa4.e(this.compatibleVideoProfile, videoMimeInfo.compatibleVideoProfile);
    }

    public final EncoderProfilesProxy.VideoProfileProxy getCompatibleVideoProfile() {
        return this.compatibleVideoProfile;
    }

    @Override // androidx.camera.video.internal.config.MimeInfo
    public String getMimeType() {
        return this.mimeType;
    }

    @Override // androidx.camera.video.internal.config.MimeInfo
    public int getProfile() {
        return this.profile;
    }

    public int hashCode() {
        int iB = ej0.b(this.profile, this.mimeType.hashCode() * 31, 31);
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxy = this.compatibleVideoProfile;
        return iB + (videoProfileProxy == null ? 0 : videoProfileProxy.hashCode());
    }

    public String toString() {
        return "VideoMimeInfo(mimeType=" + this.mimeType + ", profile=" + this.profile + ", compatibleVideoProfile=" + this.compatibleVideoProfile + ')';
    }

    public VideoMimeInfo(String str, int i, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy) {
        str.getClass();
        this.mimeType = str;
        this.profile = i;
        this.compatibleVideoProfile = videoProfileProxy;
    }
}
