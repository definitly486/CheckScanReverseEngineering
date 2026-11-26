package androidx.camera.video;

import android.util.Range;
import androidx.camera.core.Preview;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseConfig;
import defpackage.aa4;
import defpackage.fg;
import defpackage.jh2;
import defpackage.sg;
import defpackage.yr;

/* JADX INFO: loaded from: classes.dex */
public final class HighSpeedVideoSessionConfig extends SessionConfig {
    private static final Companion Companion = new Companion(null);
    private static final int SLOW_MOTION_ENCODE_FRAME_RATE = 30;
    private final boolean isSlowMotionEnabled;
    private final Preview preview;
    private final int sessionType;
    private final VideoCapture<?> videoCapture;

    public static final class Builder {
        private Range<Integer> frameRateRange;
        private boolean isSlowMotionEnabled;
        private Preview preview;
        private final VideoCapture<?> videoCapture;

        public Builder(VideoCapture<?> videoCapture) {
            videoCapture.getClass();
            this.videoCapture = videoCapture;
            Range<Integer> range = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
            range.getClass();
            this.frameRateRange = range;
        }

        public final HighSpeedVideoSessionConfig build() {
            return new HighSpeedVideoSessionConfig(this.videoCapture, this.preview, this.frameRateRange, this.isSlowMotionEnabled);
        }

        public final Builder setFrameRateRange(Range<Integer> range) {
            range.getClass();
            this.frameRateRange = range;
            return this;
        }

        public final Builder setPreview(Preview preview) {
            this.preview = preview;
            return this;
        }

        public final Builder setSlowMotionEnabled(boolean z) {
            this.isSlowMotionEnabled = z;
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HighSpeedVideoSessionConfig(VideoCapture<?> videoCapture, Preview preview, Range<Integer> range, boolean z) {
        super(yr.G(new UseCase[]{videoCapture, preview}), null, null, range, null, null, 54, null);
        videoCapture.getClass();
        range.getClass();
        this.videoCapture = videoCapture;
        this.preview = preview;
        this.isSlowMotionEnabled = z;
        this.sessionType = 1;
        validateSettingsOrThrow(videoCapture, preview);
        if (z) {
            VideoOutput output = videoCapture.getOutput();
            output.getClass();
            ((Recorder) output).setVideoEncodingFrameRate(30);
        }
    }

    private final void validateSettingsOrThrow(VideoCapture<?> videoCapture, Preview preview) {
        if (videoCapture.getMirrorMode() != 0) {
            fg.c("VideoCapture.Builder.setMirrorMode() is not allowed for high-speed video.");
            return;
        }
        Range<Integer> targetFrameRate = videoCapture.getTargetFrameRate();
        Range<Integer> range = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        if (!aa4.e(targetFrameRate, range)) {
            fg.c("VideoCapture.Builder.setTargetFrameRate() is not allowed for high-speed video.");
            return;
        }
        if (preview != null) {
            if (!aa4.e(preview.getTargetFrameRate(), range)) {
                fg.c("Preview.Builder.setTargetFrameRate() is not allowed for high-speed video.");
                return;
            }
            UseCaseConfig<?> currentConfig = preview.getCurrentConfig();
            currentConfig.getClass();
            ImageOutputConfig imageOutputConfig = (ImageOutputConfig) currentConfig;
            if (imageOutputConfig.getResolutionSelector(null) != null) {
                fg.c("Preview.Builder.setResolutionSelector() is not allowed for high-speed video.");
            } else if (imageOutputConfig.getTargetResolution(null) != null) {
                fg.c("Preview.Builder.setTargetResolution() is not allowed for high-speed video.");
            } else if (imageOutputConfig.hasTargetAspectRatio()) {
                fg.c("Preview.Builder.setTargetAspectRatio() is not allowed for high-speed video.");
            }
        }
    }

    public final Preview getPreview() {
        return this.preview;
    }

    @Override // androidx.camera.core.SessionConfig
    public int getSessionType() {
        return this.sessionType;
    }

    public final VideoCapture<?> getVideoCapture() {
        return this.videoCapture;
    }

    public final boolean isSlowMotionEnabled() {
        return this.isSlowMotionEnabled;
    }

    @Override // androidx.camera.core.SessionConfig
    public String toString() {
        StringBuilder sb = new StringBuilder("HighSpeedVideoSessionConfig@");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" {videoCapture=");
        sb.append(this.videoCapture);
        sb.append(", preview=");
        sb.append(this.preview);
        sb.append(", frameRateRange=");
        sb.append(getFrameRateRange());
        sb.append(", isSlowMotionEnabled=");
        return sg.d(sb, this.isSlowMotionEnabled, '}');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HighSpeedVideoSessionConfig(VideoCapture<?> videoCapture, Preview preview) {
        this(videoCapture, preview, null, false, 12, null);
        videoCapture.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HighSpeedVideoSessionConfig(VideoCapture<?> videoCapture, Preview preview, Range<Integer> range) {
        this(videoCapture, preview, range, false, 8, null);
        videoCapture.getClass();
        range.getClass();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ HighSpeedVideoSessionConfig(VideoCapture videoCapture, Preview preview, Range range, boolean z, int i, jh2 jh2Var) {
        preview = (i & 2) != 0 ? null : preview;
        if ((i & 4) != 0) {
            range = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
            range.getClass();
        }
        this(videoCapture, preview, range, (i & 8) != 0 ? false : z);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HighSpeedVideoSessionConfig(VideoCapture<?> videoCapture) {
        this(videoCapture, null, null, false, 14, null);
        videoCapture.getClass();
    }
}
