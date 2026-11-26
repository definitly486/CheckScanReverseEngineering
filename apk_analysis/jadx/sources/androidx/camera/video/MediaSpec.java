package androidx.camera.video;

import androidx.core.util.Consumer;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.rg;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class MediaSpec {
    private static final int AAC_DEFAULT_PROFILE = 2;
    private static final String AUDIO_ENCODER_MIME_MPEG4_DEFAULT = "audio/mp4a-latm";
    private static final String AUDIO_ENCODER_MIME_WEBM_DEFAULT = "audio/vorbis";
    public static final Companion Companion = new Companion(null);
    public static final int OUTPUT_FORMAT_MPEG_4 = 0;
    public static final int OUTPUT_FORMAT_UNSPECIFIED = -1;
    public static final int OUTPUT_FORMAT_WEBM = 1;
    private static final String VIDEO_ENCODER_MIME_MPEG4_DEFAULT = "video/avc";
    private static final String VIDEO_ENCODER_MIME_WEBM_DEFAULT = "video/x-vnd.on2.vp8";
    private final AudioSpec audioSpec;
    private final int outputFormat;
    private final VideoSpec videoSpec;

    public static final class Builder {
        private AudioSpec audioSpec = AudioSpec.Companion.getDEFAULT();
        private VideoSpec videoSpec = VideoSpec.Companion.getDEFAULT();
        private int outputFormat = -1;

        private static /* synthetic */ void getOutputFormat$annotations() {
        }

        public final MediaSpec build() {
            return new MediaSpec(this.videoSpec, this.audioSpec, this.outputFormat);
        }

        public final Builder configureAudio(Consumer<AudioSpec.Builder> consumer) {
            consumer.getClass();
            AudioSpec.Builder builder = this.audioSpec.toBuilder();
            consumer.accept(builder);
            this.audioSpec = builder.build();
            return this;
        }

        public final Builder configureVideo(Consumer<VideoSpec.Builder> consumer) {
            consumer.getClass();
            VideoSpec.Builder builder = this.videoSpec.toBuilder();
            consumer.accept(builder);
            this.videoSpec = builder.build();
            return this;
        }

        public final Builder setAudioSpec(AudioSpec audioSpec) {
            audioSpec.getClass();
            this.audioSpec = audioSpec;
            return this;
        }

        public final Builder setOutputFormat(int i) {
            this.outputFormat = i;
            return this;
        }

        public final Builder setVideoSpec(VideoSpec videoSpec) {
            videoSpec.getClass();
            this.videoSpec = videoSpec;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OutputFormat {
    }

    public /* synthetic */ MediaSpec(VideoSpec videoSpec, AudioSpec audioSpec, int i, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? VideoSpec.Companion.getDEFAULT() : videoSpec, (i2 & 2) != 0 ? AudioSpec.Companion.getDEFAULT() : audioSpec, (i2 & 4) != 0 ? -1 : i);
    }

    public static final Builder builder() {
        return Companion.builder();
    }

    public static final String outputFormatToAudioMime(int i) {
        return Companion.outputFormatToAudioMime(i);
    }

    public static final int outputFormatToAudioProfile(int i) {
        return Companion.outputFormatToAudioProfile(i);
    }

    public static final int outputFormatToMuxerFormat(int i) {
        return Companion.outputFormatToMuxerFormat(i);
    }

    public static final String outputFormatToVideoMime(int i) {
        return Companion.outputFormatToVideoMime(i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaSpec)) {
            return false;
        }
        MediaSpec mediaSpec = (MediaSpec) obj;
        return aa4.e(this.videoSpec, mediaSpec.videoSpec) && aa4.e(this.audioSpec, mediaSpec.audioSpec) && this.outputFormat == mediaSpec.outputFormat;
    }

    public final AudioSpec getAudioSpec() {
        return this.audioSpec;
    }

    public final int getOutputFormat() {
        return this.outputFormat;
    }

    public final VideoSpec getVideoSpec() {
        return this.videoSpec;
    }

    public int hashCode() {
        return Objects.hash(this.videoSpec, this.audioSpec, Integer.valueOf(this.outputFormat));
    }

    public final Builder toBuilder() {
        return new Builder().setVideoSpec(this.videoSpec).setAudioSpec(this.audioSpec).setOutputFormat(this.outputFormat);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("MediaSpec{videoSpec=");
        sb.append(this.videoSpec);
        sb.append(", audioSpec=");
        sb.append(this.audioSpec);
        sb.append(", outputFormat=");
        return rg.h(sb, this.outputFormat, '}');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Builder builder() {
            return new Builder();
        }

        public final String outputFormatToAudioMime(int i) {
            return i == 1 ? "audio/vorbis" : "audio/mp4a-latm";
        }

        public final int outputFormatToAudioProfile(int i) {
            return aa4.e(outputFormatToAudioMime(i), "audio/mp4a-latm") ? 2 : -1;
        }

        public final int outputFormatToMuxerFormat(int i) {
            return i == 1 ? 1 : 0;
        }

        public final String outputFormatToVideoMime(int i) {
            return i == 1 ? "video/x-vnd.on2.vp8" : "video/avc";
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MediaSpec(VideoSpec videoSpec) {
        this(videoSpec, null, 0, 6, null);
        videoSpec.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MediaSpec(VideoSpec videoSpec, AudioSpec audioSpec) {
        this(videoSpec, audioSpec, 0, 4, null);
        videoSpec.getClass();
        audioSpec.getClass();
    }

    public MediaSpec(VideoSpec videoSpec, AudioSpec audioSpec, int i) {
        videoSpec.getClass();
        audioSpec.getClass();
        this.videoSpec = videoSpec;
        this.audioSpec = audioSpec;
        this.outputFormat = i;
    }

    public MediaSpec() {
        this(null, null, 0, 7, null);
    }
}
