package androidx.camera.video.internal.audio;

import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.OpusUtil;
import defpackage.fg;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class AudioSettings {
    public static final List<Integer> COMMON_SAMPLE_RATES = Collections.unmodifiableList(Arrays.asList(Integer.valueOf(DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND), Integer.valueOf(OpusUtil.SAMPLE_RATE), 44100, 24000, 22050, Integer.valueOf(AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND), 12000, 11025, 8000, 4800));

    public static abstract class Builder {
        public abstract AudioSettings autoBuild();

        public final AudioSettings build() {
            AudioSettings audioSettingsAutoBuild = autoBuild();
            String strConcat = audioSettingsAutoBuild.getAudioSource() == -1 ? " audioSource" : "";
            if (audioSettingsAutoBuild.getCaptureSampleRate() <= 0) {
                strConcat = strConcat.concat(" captureSampleRate");
            }
            if (audioSettingsAutoBuild.getEncodeSampleRate() <= 0) {
                strConcat = strConcat.concat(" encodeSampleRate");
            }
            if (audioSettingsAutoBuild.getChannelCount() <= 0) {
                strConcat = strConcat.concat(" channelCount");
            }
            if (audioSettingsAutoBuild.getAudioFormat() == -1) {
                strConcat = strConcat.concat(" audioFormat");
            }
            if (strConcat.isEmpty()) {
                return audioSettingsAutoBuild;
            }
            fg.c("Required settings missing or non-positive:".concat(strConcat));
            return null;
        }

        public abstract Builder setAudioFormat(int i);

        public abstract Builder setAudioSource(int i);

        public abstract Builder setCaptureSampleRate(int i);

        public abstract Builder setChannelCount(int i);

        public abstract Builder setEncodeSampleRate(int i);
    }

    public static Builder builder() {
        return new AutoValue_AudioSettings.Builder().setAudioSource(-1).setCaptureSampleRate(-1).setEncodeSampleRate(-1).setChannelCount(-1).setAudioFormat(-1);
    }

    public abstract int getAudioFormat();

    public abstract int getAudioSource();

    public int getBytesPerFrame() {
        return AudioUtils.getBytesPerFrame(getAudioFormat(), getChannelCount());
    }

    public abstract int getCaptureSampleRate();

    public abstract int getChannelCount();

    public abstract int getEncodeSampleRate();

    public abstract Builder toBuilder();
}
