package androidx.camera.video;

import defpackage.aa4;
import defpackage.jh2;
import defpackage.xp;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class AudioSpec {
    public static final int BITRATE_UNSPECIFIED = 0;
    public static final int CHANNEL_COUNT_MONO = 1;
    public static final int CHANNEL_COUNT_NONE = 0;
    public static final int CHANNEL_COUNT_STEREO = 2;
    public static final int CHANNEL_COUNT_UNSPECIFIED = -1;
    public static final Companion Companion;
    private static final AudioSpec DEFAULT;
    public static final String MIME_TYPE_UNSPECIFIED = "audio/*";
    public static final int SAMPLE_RATE_UNSPECIFIED = 0;
    public static final int SOURCE_CAMCORDER = 5;
    public static final int SOURCE_DEFAULT = 0;
    public static final int SOURCE_FORMAT_PCM_16BIT = 2;
    public static final int SOURCE_FORMAT_UNSPECIFIED = -1;
    public static final int SOURCE_MIC = 1;
    public static final int SOURCE_UNPROCESSED = 9;
    public static final int SOURCE_UNSPECIFIED = -1;
    public static final int SOURCE_VOICE_COMMUNICATION = 7;
    public static final int SOURCE_VOICE_PERFORMANCE = 10;
    public static final int SOURCE_VOICE_RECOGNITION = 6;
    private final int bitrate;
    private final int channelCount;
    private final String mimeType;
    private final int sampleRate;
    private final int source;
    private final int sourceFormat;

    public static final class Builder {
        private int bitrate;
        private int sampleRate;
        private int sourceFormat = -1;
        private int source = -1;
        private int channelCount = -1;
        private String mimeType = AudioSpec.MIME_TYPE_UNSPECIFIED;

        public final AudioSpec build() {
            return new AudioSpec(this.bitrate, this.sourceFormat, this.source, this.sampleRate, this.channelCount, this.mimeType);
        }

        public final Builder setBitrate(int i) {
            this.bitrate = i;
            return this;
        }

        public final Builder setChannelCount(int i) {
            this.channelCount = i;
            return this;
        }

        public final Builder setMimeType(String str) {
            str.getClass();
            this.mimeType = str;
            return this;
        }

        public final Builder setSampleRate(int i) {
            this.sampleRate = i;
            return this;
        }

        public final Builder setSource(int i) {
            this.source = i;
            return this;
        }

        public final Builder setSourceFormat(int i) {
            this.sourceFormat = i;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ChannelCount {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Source {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SourceFormat {
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        DEFAULT = companion.builder().build();
    }

    public /* synthetic */ AudioSpec(int i, int i2, int i3, int i4, int i5, String str, int i6, jh2 jh2Var) {
        this((i6 & 1) != 0 ? 0 : i, (i6 & 2) != 0 ? -1 : i2, (i6 & 4) != 0 ? -1 : i3, (i6 & 8) != 0 ? 0 : i4, (i6 & 16) != 0 ? -1 : i5, (i6 & 32) != 0 ? MIME_TYPE_UNSPECIFIED : str);
    }

    public static final Builder builder() {
        return Companion.builder();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioSpec)) {
            return false;
        }
        AudioSpec audioSpec = (AudioSpec) obj;
        return this.sourceFormat == audioSpec.sourceFormat && this.source == audioSpec.source && this.channelCount == audioSpec.channelCount && this.bitrate == audioSpec.bitrate && this.sampleRate == audioSpec.sampleRate && aa4.e(this.mimeType, audioSpec.mimeType);
    }

    public final int getBitrate() {
        return this.bitrate;
    }

    public final int getChannelCount() {
        return this.channelCount;
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    public final int getSampleRate() {
        return this.sampleRate;
    }

    public final int getSource() {
        return this.source;
    }

    public final int getSourceFormat() {
        return this.sourceFormat;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.bitrate), Integer.valueOf(this.sourceFormat), Integer.valueOf(this.source), Integer.valueOf(this.sampleRate), Integer.valueOf(this.channelCount));
    }

    public final Builder toBuilder() {
        return new Builder().setSampleRate(this.sampleRate).setBitrate(this.bitrate).setChannelCount(this.channelCount).setSource(this.source).setSourceFormat(this.sourceFormat).setMimeType(this.mimeType);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioSpec{bitrate=");
        sb.append(this.bitrate);
        sb.append(", sourceFormat=");
        sb.append(this.sourceFormat);
        sb.append(", source=");
        sb.append(this.source);
        sb.append(", sampleRate=");
        sb.append(this.sampleRate);
        sb.append(", channelCount=");
        sb.append(this.channelCount);
        sb.append(", mimeType=");
        return xp.e(sb, this.mimeType, '}');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Builder builder() {
            return new Builder();
        }

        public final AudioSpec getDEFAULT() {
            return AudioSpec.DEFAULT;
        }

        private Companion() {
        }
    }

    public AudioSpec(int i) {
        this(i, 0, 0, 0, 0, null, 62, null);
    }

    public AudioSpec(int i, int i2) {
        this(i, i2, 0, 0, 0, null, 60, null);
    }

    public AudioSpec(int i, int i2, int i3) {
        this(i, i2, i3, 0, 0, null, 56, null);
    }

    public AudioSpec(int i, int i2, int i3, int i4) {
        this(i, i2, i3, i4, 0, null, 48, null);
    }

    public AudioSpec(int i, int i2, int i3, int i4, int i5) {
        this(i, i2, i3, i4, i5, null, 32, null);
    }

    public AudioSpec(int i, int i2, int i3, int i4, int i5, String str) {
        str.getClass();
        this.bitrate = i;
        this.sourceFormat = i2;
        this.source = i3;
        this.sampleRate = i4;
        this.channelCount = i5;
        this.mimeType = str;
    }

    public AudioSpec() {
        this(0, 0, 0, 0, 0, null, 63, null);
    }
}
