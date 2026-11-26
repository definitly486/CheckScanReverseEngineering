package androidx.camera.video.internal.encoder;

import android.media.MediaFormat;
import androidx.camera.core.impl.Timebase;
import com.google.android.gms.common.Scopes;
import defpackage.fg;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class AudioEncoderConfig implements EncoderConfig {

    public static abstract class Builder {
        public abstract AudioEncoderConfig autoBuild();

        public AudioEncoderConfig build() {
            AudioEncoderConfig audioEncoderConfigAutoBuild = autoBuild();
            if (!Objects.equals(audioEncoderConfigAutoBuild.getMimeType(), "audio/mp4a-latm") || audioEncoderConfigAutoBuild.getProfile() != -1) {
                return audioEncoderConfigAutoBuild;
            }
            fg.c("Encoder mime set to AAC, but no AAC profile was provided.");
            return null;
        }

        public abstract Builder setBitrate(int i);

        public abstract Builder setCaptureSampleRate(int i);

        public abstract Builder setChannelCount(int i);

        public abstract Builder setEncodeSampleRate(int i);

        public abstract Builder setInputTimebase(Timebase timebase);

        public abstract Builder setMimeType(String str);

        public abstract Builder setProfile(int i);
    }

    public static Builder builder() {
        return new AutoValue_AudioEncoderConfig.Builder().setProfile(-1);
    }

    public abstract int getBitrate();

    public abstract int getCaptureSampleRate();

    public abstract int getChannelCount();

    public abstract int getEncodeSampleRate();

    @Override // androidx.camera.video.internal.encoder.EncoderConfig
    public abstract Timebase getInputTimebase();

    @Override // androidx.camera.video.internal.encoder.EncoderConfig
    public abstract String getMimeType();

    @Override // androidx.camera.video.internal.encoder.EncoderConfig
    public abstract int getProfile();

    @Override // androidx.camera.video.internal.encoder.EncoderConfig
    public MediaFormat toMediaFormat() {
        MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat(getMimeType(), getEncodeSampleRate(), getChannelCount());
        mediaFormatCreateAudioFormat.setInteger("bitrate", getBitrate());
        if (getProfile() != -1) {
            if (getMimeType().equals("audio/mp4a-latm")) {
                mediaFormatCreateAudioFormat.setInteger("aac-profile", getProfile());
                return mediaFormatCreateAudioFormat;
            }
            mediaFormatCreateAudioFormat.setInteger(Scopes.PROFILE, getProfile());
        }
        return mediaFormatCreateAudioFormat;
    }
}
