package androidx.camera.video;

import defpackage.aa4;
import defpackage.jh2;
import defpackage.xp;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class VideoSpec {
    public static final int BITRATE_UNSPECIFIED = 0;
    public static final Companion Companion;
    private static final VideoSpec DEFAULT;
    public static final int ENCODE_FRAME_RATE_UNSPECIFIED = 0;
    public static final String MIME_TYPE_UNSPECIFIED = "video/*";
    private static final QualitySelector QUALITY_SELECTOR_UNSPECIFIED;
    private final int aspectRatio;
    private final int bitrate;
    private final int encodeFrameRate;
    private final String mimeType;
    private final QualitySelector qualitySelector;

    public static final class Builder {
        private int bitrate;
        private int encodeFrameRate;
        private QualitySelector qualitySelector = VideoSpec.Companion.getQUALITY_SELECTOR_UNSPECIFIED();
        private int aspectRatio = -1;
        private String mimeType = VideoSpec.MIME_TYPE_UNSPECIFIED;

        public final VideoSpec build() {
            return new VideoSpec(this.qualitySelector, this.encodeFrameRate, this.bitrate, this.aspectRatio, this.mimeType);
        }

        public final Builder setAspectRatio(int i) {
            this.aspectRatio = i;
            return this;
        }

        public final Builder setBitrate(int i) {
            this.bitrate = i;
            return this;
        }

        public final Builder setEncodeFrameRate(int i) {
            this.encodeFrameRate = i;
            return this;
        }

        public final Builder setMimeType(String str) {
            str.getClass();
            this.mimeType = str;
            return this;
        }

        public final Builder setQualitySelector(QualitySelector qualitySelector) {
            qualitySelector.getClass();
            this.qualitySelector = qualitySelector;
            return this;
        }
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        QualitySelector qualitySelector = QualitySelector.NONE;
        qualitySelector.getClass();
        QUALITY_SELECTOR_UNSPECIFIED = qualitySelector;
        DEFAULT = companion.builder().build();
    }

    public /* synthetic */ VideoSpec(QualitySelector qualitySelector, int i, int i2, int i3, String str, int i4, jh2 jh2Var) {
        this((i4 & 1) != 0 ? QUALITY_SELECTOR_UNSPECIFIED : qualitySelector, (i4 & 2) != 0 ? 0 : i, (i4 & 4) != 0 ? 0 : i2, (i4 & 8) != 0 ? -1 : i3, (i4 & 16) != 0 ? MIME_TYPE_UNSPECIFIED : str);
    }

    public static final Builder builder() {
        return Companion.builder();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoSpec)) {
            return false;
        }
        VideoSpec videoSpec = (VideoSpec) obj;
        return aa4.e(this.qualitySelector, videoSpec.qualitySelector) && this.encodeFrameRate == videoSpec.encodeFrameRate && this.bitrate == videoSpec.bitrate && this.aspectRatio == videoSpec.aspectRatio && aa4.e(this.mimeType, videoSpec.mimeType);
    }

    public final int getAspectRatio() {
        return this.aspectRatio;
    }

    public final int getBitrate() {
        return this.bitrate;
    }

    public final int getEncodeFrameRate() {
        return this.encodeFrameRate;
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    public final QualitySelector getQualitySelector() {
        return this.qualitySelector;
    }

    public int hashCode() {
        return Objects.hash(this.qualitySelector, Integer.valueOf(this.encodeFrameRate), Integer.valueOf(this.bitrate), Integer.valueOf(this.aspectRatio), this.mimeType);
    }

    public final Builder toBuilder() {
        return new Builder().setQualitySelector(this.qualitySelector).setEncodeFrameRate(this.encodeFrameRate).setBitrate(this.bitrate).setAspectRatio(this.aspectRatio).setMimeType(this.mimeType);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("VideoSpec{qualitySelector=");
        sb.append(this.qualitySelector);
        sb.append(", encodeFrameRate=");
        sb.append(this.encodeFrameRate);
        sb.append(", bitrate=");
        sb.append(this.bitrate);
        sb.append(", aspectRatio=");
        sb.append(this.aspectRatio);
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

        public final VideoSpec getDEFAULT() {
            return VideoSpec.DEFAULT;
        }

        public final QualitySelector getQUALITY_SELECTOR_UNSPECIFIED() {
            return VideoSpec.QUALITY_SELECTOR_UNSPECIFIED;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VideoSpec(QualitySelector qualitySelector) {
        this(qualitySelector, 0, 0, 0, null, 30, null);
        qualitySelector.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VideoSpec(QualitySelector qualitySelector, int i) {
        this(qualitySelector, i, 0, 0, null, 28, null);
        qualitySelector.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VideoSpec(QualitySelector qualitySelector, int i, int i2) {
        this(qualitySelector, i, i2, 0, null, 24, null);
        qualitySelector.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VideoSpec(QualitySelector qualitySelector, int i, int i2, int i3) {
        this(qualitySelector, i, i2, i3, null, 16, null);
        qualitySelector.getClass();
    }

    public VideoSpec(QualitySelector qualitySelector, int i, int i2, int i3, String str) {
        qualitySelector.getClass();
        str.getClass();
        this.qualitySelector = qualitySelector;
        this.encodeFrameRate = i;
        this.bitrate = i2;
        this.aspectRatio = i3;
        this.mimeType = str;
    }

    public VideoSpec() {
        this(null, 0, 0, 0, null, 31, null);
    }
}
