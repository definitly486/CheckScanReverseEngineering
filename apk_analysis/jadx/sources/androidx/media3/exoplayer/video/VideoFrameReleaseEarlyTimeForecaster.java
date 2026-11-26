package androidx.media3.exoplayer.video;

import android.util.Range;
import androidx.media3.common.C;
import defpackage.o8;

/* JADX INFO: loaded from: classes3.dex */
class VideoFrameReleaseEarlyTimeForecaster {
    private static final float SMOOTHING_FACTOR = 0.2f;
    private double derivativeOfEarlyTime;
    private Range<Double> derivativeOfEarlyTimeRange;
    private long lastFrameEarlyUs;
    private long lastFramePresentationTimeUs;

    public VideoFrameReleaseEarlyTimeForecaster(float f) {
        o8.e(f > 0.0f);
        Range<Double> range = new Range<>(Double.valueOf(0.0d), Double.valueOf(1.0d / ((double) f)));
        this.derivativeOfEarlyTimeRange = range;
        this.derivativeOfEarlyTime = ((Double) range.getUpper()).doubleValue();
        this.lastFramePresentationTimeUs = C.TIME_UNSET;
        this.lastFrameEarlyUs = C.TIME_UNSET;
    }

    private double calculateDerivativeFromLastFrame(long j, long j2) {
        long j3 = this.lastFramePresentationTimeUs;
        if (j3 != C.TIME_UNSET) {
            long j4 = this.lastFrameEarlyUs;
            if (j4 != C.TIME_UNSET && j != j3) {
                return (j2 - j4) / (j - j3);
            }
        }
        return ((Double) this.derivativeOfEarlyTimeRange.getUpper()).doubleValue();
    }

    private void updateDerivativeWithExponentialMovingAverage(double d) {
        this.derivativeOfEarlyTime = (d * 0.20000000298023224d) + (this.derivativeOfEarlyTime * 0.800000011920929d);
    }

    public void onVideoFrameProcessed(long j, long j2) {
        o8.e(j != C.TIME_UNSET);
        o8.e(j2 != C.TIME_UNSET);
        updateDerivativeWithExponentialMovingAverage(((Double) this.derivativeOfEarlyTimeRange.clamp(Double.valueOf(calculateDerivativeFromLastFrame(j, j2)))).doubleValue());
        this.lastFramePresentationTimeUs = j;
        this.lastFrameEarlyUs = j2;
    }

    public long predictEarlyUs(long j) {
        long j2 = this.lastFramePresentationTimeUs;
        if (j2 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        return (long) (((j - j2) * this.derivativeOfEarlyTime) + this.lastFrameEarlyUs);
    }

    public void reset() {
        this.derivativeOfEarlyTime = ((Double) this.derivativeOfEarlyTimeRange.getUpper()).doubleValue();
        this.lastFramePresentationTimeUs = C.TIME_UNSET;
        this.lastFrameEarlyUs = C.TIME_UNSET;
    }

    public void setPlaybackSpeed(float f) {
        o8.e(f > 0.0f);
        this.derivativeOfEarlyTimeRange = new Range<>(Double.valueOf(0.0d), Double.valueOf(1.0d / ((double) f)));
        reset();
    }
}
