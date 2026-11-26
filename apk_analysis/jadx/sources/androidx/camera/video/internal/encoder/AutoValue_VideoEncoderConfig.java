package androidx.camera.video.internal.encoder;

import android.util.Size;
import androidx.camera.core.impl.Timebase;
import defpackage.ah;
import defpackage.l2;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_VideoEncoderConfig extends VideoEncoderConfig {
    private final int IFrameInterval;
    private final int bitrate;
    private final int captureFrameRate;
    private final int colorFormat;
    private final VideoEncoderDataSpace dataSpace;
    private final int encodeFrameRate;
    private final Timebase inputTimebase;
    private final String mimeType;
    private final int profile;
    private final Size resolution;

    private AutoValue_VideoEncoderConfig(String str, int i, Timebase timebase, Size size, int i2, VideoEncoderDataSpace videoEncoderDataSpace, int i3, int i4, int i5, int i6) {
        this.mimeType = str;
        this.profile = i;
        this.inputTimebase = timebase;
        this.resolution = size;
        this.colorFormat = i2;
        this.dataSpace = videoEncoderDataSpace;
        this.captureFrameRate = i3;
        this.encodeFrameRate = i4;
        this.IFrameInterval = i5;
        this.bitrate = i6;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof VideoEncoderConfig) {
            VideoEncoderConfig videoEncoderConfig = (VideoEncoderConfig) obj;
            if (this.mimeType.equals(videoEncoderConfig.getMimeType()) && this.profile == videoEncoderConfig.getProfile() && this.inputTimebase.equals(videoEncoderConfig.getInputTimebase()) && this.resolution.equals(videoEncoderConfig.getResolution()) && this.colorFormat == videoEncoderConfig.getColorFormat() && this.dataSpace.equals(videoEncoderConfig.getDataSpace()) && this.captureFrameRate == videoEncoderConfig.getCaptureFrameRate() && this.encodeFrameRate == videoEncoderConfig.getEncodeFrameRate() && this.IFrameInterval == videoEncoderConfig.getIFrameInterval() && this.bitrate == videoEncoderConfig.getBitrate()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public int getBitrate() {
        return this.bitrate;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public int getCaptureFrameRate() {
        return this.captureFrameRate;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public int getColorFormat() {
        return this.colorFormat;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public VideoEncoderDataSpace getDataSpace() {
        return this.dataSpace;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public int getEncodeFrameRate() {
        return this.encodeFrameRate;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public int getIFrameInterval() {
        return this.IFrameInterval;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig, androidx.camera.video.internal.encoder.EncoderConfig
    public Timebase getInputTimebase() {
        return this.inputTimebase;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig, androidx.camera.video.internal.encoder.EncoderConfig
    public String getMimeType() {
        return this.mimeType;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig, androidx.camera.video.internal.encoder.EncoderConfig
    public int getProfile() {
        return this.profile;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public Size getResolution() {
        return this.resolution;
    }

    public int hashCode() {
        return this.bitrate ^ ((((((((((((((((((this.mimeType.hashCode() ^ 1000003) * 1000003) ^ this.profile) * 1000003) ^ this.inputTimebase.hashCode()) * 1000003) ^ this.resolution.hashCode()) * 1000003) ^ this.colorFormat) * 1000003) ^ this.dataSpace.hashCode()) * 1000003) ^ this.captureFrameRate) * 1000003) ^ this.encodeFrameRate) * 1000003) ^ this.IFrameInterval) * 1000003);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public VideoEncoderConfig.Builder toBuilder() {
        return new Builder(this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("VideoEncoderConfig{mimeType=");
        sb.append(this.mimeType);
        sb.append(", profile=");
        sb.append(this.profile);
        sb.append(", inputTimebase=");
        sb.append(this.inputTimebase);
        sb.append(", resolution=");
        sb.append(this.resolution);
        sb.append(", colorFormat=");
        sb.append(this.colorFormat);
        sb.append(", dataSpace=");
        sb.append(this.dataSpace);
        sb.append(", captureFrameRate=");
        sb.append(this.captureFrameRate);
        sb.append(", encodeFrameRate=");
        sb.append(this.encodeFrameRate);
        sb.append(", IFrameInterval=");
        sb.append(this.IFrameInterval);
        sb.append(", bitrate=");
        return l2.e(sb, "}", this.bitrate);
    }

    public static final class Builder extends VideoEncoderConfig.Builder {
        private Integer IFrameInterval;
        private Integer bitrate;
        private Integer captureFrameRate;
        private Integer colorFormat;
        private VideoEncoderDataSpace dataSpace;
        private Integer encodeFrameRate;
        private Timebase inputTimebase;
        private String mimeType;
        private Integer profile;
        private Size resolution;

        private Builder(VideoEncoderConfig videoEncoderConfig) {
            this.mimeType = videoEncoderConfig.getMimeType();
            this.profile = Integer.valueOf(videoEncoderConfig.getProfile());
            this.inputTimebase = videoEncoderConfig.getInputTimebase();
            this.resolution = videoEncoderConfig.getResolution();
            this.colorFormat = Integer.valueOf(videoEncoderConfig.getColorFormat());
            this.dataSpace = videoEncoderConfig.getDataSpace();
            this.captureFrameRate = Integer.valueOf(videoEncoderConfig.getCaptureFrameRate());
            this.encodeFrameRate = Integer.valueOf(videoEncoderConfig.getEncodeFrameRate());
            this.IFrameInterval = Integer.valueOf(videoEncoderConfig.getIFrameInterval());
            this.bitrate = Integer.valueOf(videoEncoderConfig.getBitrate());
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig build() {
            String strConcat = this.mimeType == null ? " mimeType" : "";
            if (this.profile == null) {
                strConcat = strConcat.concat(" profile");
            }
            if (this.inputTimebase == null) {
                strConcat = strConcat.concat(" inputTimebase");
            }
            if (this.resolution == null) {
                strConcat = strConcat.concat(" resolution");
            }
            if (this.colorFormat == null) {
                strConcat = strConcat.concat(" colorFormat");
            }
            if (this.dataSpace == null) {
                strConcat = strConcat.concat(" dataSpace");
            }
            if (this.captureFrameRate == null) {
                strConcat = strConcat.concat(" captureFrameRate");
            }
            if (this.encodeFrameRate == null) {
                strConcat = strConcat.concat(" encodeFrameRate");
            }
            if (this.IFrameInterval == null) {
                strConcat = strConcat.concat(" IFrameInterval");
            }
            if (this.bitrate == null) {
                strConcat = strConcat.concat(" bitrate");
            }
            if (strConcat.isEmpty()) {
                return new AutoValue_VideoEncoderConfig(this.mimeType, this.profile.intValue(), this.inputTimebase, this.resolution, this.colorFormat.intValue(), this.dataSpace, this.captureFrameRate.intValue(), this.encodeFrameRate.intValue(), this.IFrameInterval.intValue(), this.bitrate.intValue());
            }
            ah.f("Missing required properties:".concat(strConcat));
            return null;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setBitrate(int i) {
            this.bitrate = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setCaptureFrameRate(int i) {
            this.captureFrameRate = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setColorFormat(int i) {
            this.colorFormat = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setDataSpace(VideoEncoderDataSpace videoEncoderDataSpace) {
            if (videoEncoderDataSpace != null) {
                this.dataSpace = videoEncoderDataSpace;
                return this;
            }
            o2.d("Null dataSpace");
            return null;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setEncodeFrameRate(int i) {
            this.encodeFrameRate = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setIFrameInterval(int i) {
            this.IFrameInterval = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setInputTimebase(Timebase timebase) {
            if (timebase != null) {
                this.inputTimebase = timebase;
                return this;
            }
            o2.d("Null inputTimebase");
            return null;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setMimeType(String str) {
            if (str != null) {
                this.mimeType = str;
                return this;
            }
            o2.d("Null mimeType");
            return null;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setProfile(int i) {
            this.profile = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setResolution(Size size) {
            if (size != null) {
                this.resolution = size;
                return this;
            }
            o2.d("Null resolution");
            return null;
        }

        public Builder() {
        }
    }
}
