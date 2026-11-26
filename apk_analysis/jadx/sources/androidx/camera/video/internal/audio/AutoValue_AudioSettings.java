package androidx.camera.video.internal.audio;

import defpackage.ah;
import defpackage.l2;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_AudioSettings extends AudioSettings {
    private final int audioFormat;
    private final int audioSource;
    private final int captureSampleRate;
    private final int channelCount;
    private final int encodeSampleRate;

    private AutoValue_AudioSettings(int i, int i2, int i3, int i4, int i5) {
        this.audioSource = i;
        this.captureSampleRate = i2;
        this.encodeSampleRate = i3;
        this.channelCount = i4;
        this.audioFormat = i5;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AudioSettings) {
            AudioSettings audioSettings = (AudioSettings) obj;
            if (this.audioSource == audioSettings.getAudioSource() && this.captureSampleRate == audioSettings.getCaptureSampleRate() && this.encodeSampleRate == audioSettings.getEncodeSampleRate() && this.channelCount == audioSettings.getChannelCount() && this.audioFormat == audioSettings.getAudioFormat()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.video.internal.audio.AudioSettings
    public int getAudioFormat() {
        return this.audioFormat;
    }

    @Override // androidx.camera.video.internal.audio.AudioSettings
    public int getAudioSource() {
        return this.audioSource;
    }

    @Override // androidx.camera.video.internal.audio.AudioSettings
    public int getCaptureSampleRate() {
        return this.captureSampleRate;
    }

    @Override // androidx.camera.video.internal.audio.AudioSettings
    public int getChannelCount() {
        return this.channelCount;
    }

    @Override // androidx.camera.video.internal.audio.AudioSettings
    public int getEncodeSampleRate() {
        return this.encodeSampleRate;
    }

    public int hashCode() {
        return this.audioFormat ^ ((((((((this.audioSource ^ 1000003) * 1000003) ^ this.captureSampleRate) * 1000003) ^ this.encodeSampleRate) * 1000003) ^ this.channelCount) * 1000003);
    }

    @Override // androidx.camera.video.internal.audio.AudioSettings
    public AudioSettings.Builder toBuilder() {
        return new Builder(this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioSettings{audioSource=");
        sb.append(this.audioSource);
        sb.append(", captureSampleRate=");
        sb.append(this.captureSampleRate);
        sb.append(", encodeSampleRate=");
        sb.append(this.encodeSampleRate);
        sb.append(", channelCount=");
        sb.append(this.channelCount);
        sb.append(", audioFormat=");
        return l2.e(sb, "}", this.audioFormat);
    }

    public static final class Builder extends AudioSettings.Builder {
        private Integer audioFormat;
        private Integer audioSource;
        private Integer captureSampleRate;
        private Integer channelCount;
        private Integer encodeSampleRate;

        private Builder(AudioSettings audioSettings) {
            this.audioSource = Integer.valueOf(audioSettings.getAudioSource());
            this.captureSampleRate = Integer.valueOf(audioSettings.getCaptureSampleRate());
            this.encodeSampleRate = Integer.valueOf(audioSettings.getEncodeSampleRate());
            this.channelCount = Integer.valueOf(audioSettings.getChannelCount());
            this.audioFormat = Integer.valueOf(audioSettings.getAudioFormat());
        }

        @Override // androidx.camera.video.internal.audio.AudioSettings.Builder
        public AudioSettings autoBuild() {
            String strConcat = this.audioSource == null ? " audioSource" : "";
            if (this.captureSampleRate == null) {
                strConcat = strConcat.concat(" captureSampleRate");
            }
            if (this.encodeSampleRate == null) {
                strConcat = strConcat.concat(" encodeSampleRate");
            }
            if (this.channelCount == null) {
                strConcat = strConcat.concat(" channelCount");
            }
            if (this.audioFormat == null) {
                strConcat = strConcat.concat(" audioFormat");
            }
            if (strConcat.isEmpty()) {
                return new AutoValue_AudioSettings(this.audioSource.intValue(), this.captureSampleRate.intValue(), this.encodeSampleRate.intValue(), this.channelCount.intValue(), this.audioFormat.intValue());
            }
            ah.f("Missing required properties:".concat(strConcat));
            return null;
        }

        @Override // androidx.camera.video.internal.audio.AudioSettings.Builder
        public AudioSettings.Builder setAudioFormat(int i) {
            this.audioFormat = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.audio.AudioSettings.Builder
        public AudioSettings.Builder setAudioSource(int i) {
            this.audioSource = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.audio.AudioSettings.Builder
        public AudioSettings.Builder setCaptureSampleRate(int i) {
            this.captureSampleRate = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.audio.AudioSettings.Builder
        public AudioSettings.Builder setChannelCount(int i) {
            this.channelCount = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.audio.AudioSettings.Builder
        public AudioSettings.Builder setEncodeSampleRate(int i) {
            this.encodeSampleRate = Integer.valueOf(i);
            return this;
        }

        public Builder() {
        }
    }
}
