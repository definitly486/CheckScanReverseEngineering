package androidx.camera.video.internal.config;

import androidx.camera.core.impl.EncoderProfilesProxy;
import defpackage.aa4;
import defpackage.ej0;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class AudioMimeInfo implements MimeInfo {
    private final EncoderProfilesProxy.AudioProfileProxy compatibleAudioProfile;
    private final String mimeType;
    private final int profile;

    public /* synthetic */ AudioMimeInfo(String str, int i, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy, int i2, jh2 jh2Var) {
        this(str, (i2 & 2) != 0 ? -1 : i, (i2 & 4) != 0 ? null : audioProfileProxy);
    }

    public static /* synthetic */ AudioMimeInfo copy$default(AudioMimeInfo audioMimeInfo, String str, int i, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = audioMimeInfo.mimeType;
        }
        if ((i2 & 2) != 0) {
            i = audioMimeInfo.profile;
        }
        if ((i2 & 4) != 0) {
            audioProfileProxy = audioMimeInfo.compatibleAudioProfile;
        }
        return audioMimeInfo.copy(str, i, audioProfileProxy);
    }

    public final String component1() {
        return this.mimeType;
    }

    public final int component2() {
        return this.profile;
    }

    public final EncoderProfilesProxy.AudioProfileProxy component3() {
        return this.compatibleAudioProfile;
    }

    public final AudioMimeInfo copy(String str, int i, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy) {
        str.getClass();
        return new AudioMimeInfo(str, i, audioProfileProxy);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioMimeInfo)) {
            return false;
        }
        AudioMimeInfo audioMimeInfo = (AudioMimeInfo) obj;
        return aa4.e(this.mimeType, audioMimeInfo.mimeType) && this.profile == audioMimeInfo.profile && aa4.e(this.compatibleAudioProfile, audioMimeInfo.compatibleAudioProfile);
    }

    public final EncoderProfilesProxy.AudioProfileProxy getCompatibleAudioProfile() {
        return this.compatibleAudioProfile;
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
        EncoderProfilesProxy.AudioProfileProxy audioProfileProxy = this.compatibleAudioProfile;
        return iB + (audioProfileProxy == null ? 0 : audioProfileProxy.hashCode());
    }

    public String toString() {
        return "AudioMimeInfo(mimeType=" + this.mimeType + ", profile=" + this.profile + ", compatibleAudioProfile=" + this.compatibleAudioProfile + ')';
    }

    public AudioMimeInfo(String str, int i, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy) {
        str.getClass();
        this.mimeType = str;
        this.profile = i;
        this.compatibleAudioProfile = audioProfileProxy;
    }
}
