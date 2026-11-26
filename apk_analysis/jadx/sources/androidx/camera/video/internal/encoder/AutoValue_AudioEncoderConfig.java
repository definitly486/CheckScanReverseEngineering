package androidx.camera.video.internal.encoder;

import androidx.camera.core.impl.Timebase;
import defpackage.ah;
import defpackage.l2;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_AudioEncoderConfig extends AudioEncoderConfig {
    private final int bitrate;
    private final int captureSampleRate;
    private final int channelCount;
    private final int encodeSampleRate;
    private final Timebase inputTimebase;
    private final String mimeType;
    private final int profile;

    public static final class Builder extends AudioEncoderConfig.Builder {
        private Integer bitrate;
        private Integer captureSampleRate;
        private Integer channelCount;
        private Integer encodeSampleRate;
        private Timebase inputTimebase;
        private String mimeType;
        private Integer profile;

        @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig.Builder
        public AudioEncoderConfig autoBuild() {
            String strConcat = this.mimeType == null ? " mimeType" : "";
            if (this.profile == null) {
                strConcat = strConcat.concat(" profile");
            }
            if (this.inputTimebase == null) {
                strConcat = strConcat.concat(" inputTimebase");
            }
            if (this.bitrate == null) {
                strConcat = strConcat.concat(" bitrate");
            }
            if (this.captureSampleRate == null) {
                strConcat = strConcat.concat(" captureSampleRate");
            }
            if (this.encodeSampleRate == null) {
                strConcat = strConcat.concat(" encodeSampleRate");
            }
            if (this.channelCount == null) {
                strConcat = strConcat.concat(" channelCount");
            }
            if (strConcat.isEmpty()) {
                return new AutoValue_AudioEncoderConfig(this.mimeType, this.profile.intValue(), this.inputTimebase, this.bitrate.intValue(), this.captureSampleRate.intValue(), this.encodeSampleRate.intValue(), this.channelCount.intValue());
            }
            ah.f("Missing required properties:".concat(strConcat));
            return null;
        }

        @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig.Builder
        public AudioEncoderConfig.Builder setBitrate(int i) {
            this.bitrate = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig.Builder
        public AudioEncoderConfig.Builder setCaptureSampleRate(int i) {
            this.captureSampleRate = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig.Builder
        public AudioEncoderConfig.Builder setChannelCount(int i) {
            this.channelCount = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig.Builder
        public AudioEncoderConfig.Builder setEncodeSampleRate(int i) {
            this.encodeSampleRate = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig.Builder
        public AudioEncoderConfig.Builder setInputTimebase(Timebase timebase) {
            if (timebase != null) {
                this.inputTimebase = timebase;
                return this;
            }
            o2.d("Null inputTimebase");
            return null;
        }

        @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig.Builder
        public AudioEncoderConfig.Builder setMimeType(String str) {
            if (str != null) {
                this.mimeType = str;
                return this;
            }
            o2.d("Null mimeType");
            return null;
        }

        @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig.Builder
        public AudioEncoderConfig.Builder setProfile(int i) {
            this.profile = Integer.valueOf(i);
            return this;
        }
    }

    private AutoValue_AudioEncoderConfig(String str, int i, Timebase timebase, int i2, int i3, int i4, int i5) {
        this.mimeType = str;
        this.profile = i;
        this.inputTimebase = timebase;
        this.bitrate = i2;
        this.captureSampleRate = i3;
        this.encodeSampleRate = i4;
        this.channelCount = i5;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AudioEncoderConfig) {
            AudioEncoderConfig audioEncoderConfig = (AudioEncoderConfig) obj;
            if (this.mimeType.equals(audioEncoderConfig.getMimeType()) && this.profile == audioEncoderConfig.getProfile() && this.inputTimebase.equals(audioEncoderConfig.getInputTimebase()) && this.bitrate == audioEncoderConfig.getBitrate() && this.captureSampleRate == audioEncoderConfig.getCaptureSampleRate() && this.encodeSampleRate == audioEncoderConfig.getEncodeSampleRate() && this.channelCount == audioEncoderConfig.getChannelCount()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig
    public int getBitrate() {
        return this.bitrate;
    }

    @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig
    public int getCaptureSampleRate() {
        return this.captureSampleRate;
    }

    @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig
    public int getChannelCount() {
        return this.channelCount;
    }

    @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig
    public int getEncodeSampleRate() {
        return this.encodeSampleRate;
    }

    @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig, androidx.camera.video.internal.encoder.EncoderConfig
    public Timebase getInputTimebase() {
        return this.inputTimebase;
    }

    @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig, androidx.camera.video.internal.encoder.EncoderConfig
    public String getMimeType() {
        return this.mimeType;
    }

    @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig, androidx.camera.video.internal.encoder.EncoderConfig
    public int getProfile() {
        return this.profile;
    }

    public int hashCode() {
        return this.channelCount ^ ((((((((((((this.mimeType.hashCode() ^ 1000003) * 1000003) ^ this.profile) * 1000003) ^ this.inputTimebase.hashCode()) * 1000003) ^ this.bitrate) * 1000003) ^ this.captureSampleRate) * 1000003) ^ this.encodeSampleRate) * 1000003);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioEncoderConfig{mimeType=");
        sb.append(this.mimeType);
        sb.append(", profile=");
        sb.append(this.profile);
        sb.append(", inputTimebase=");
        sb.append(this.inputTimebase);
        sb.append(", bitrate=");
        sb.append(this.bitrate);
        sb.append(", captureSampleRate=");
        sb.append(this.captureSampleRate);
        sb.append(", encodeSampleRate=");
        sb.append(this.encodeSampleRate);
        sb.append(", channelCount=");
        return l2.e(sb, "}", this.channelCount);
    }
}
