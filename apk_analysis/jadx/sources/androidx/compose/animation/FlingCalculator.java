package androidx.compose.animation;

import androidx.compose.ui.unit.Density;
import defpackage.jn;
import defpackage.lg;

/* JADX INFO: loaded from: classes.dex */
public final class FlingCalculator {
    public static final int $stable = 0;
    private final Density density;
    private final float friction;
    private final float magicPhysicalCoefficient;

    public static final class FlingInfo {
        public static final int $stable = 0;
        private final float distance;
        private final long duration;
        private final float initialVelocity;

        public FlingInfo(float f, float f2, long j) {
            this.initialVelocity = f;
            this.distance = f2;
            this.duration = j;
        }

        public static /* synthetic */ FlingInfo copy$default(FlingInfo flingInfo, float f, float f2, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                f = flingInfo.initialVelocity;
            }
            if ((i & 2) != 0) {
                f2 = flingInfo.distance;
            }
            if ((i & 4) != 0) {
                j = flingInfo.duration;
            }
            return flingInfo.copy(f, f2, j);
        }

        public final float component1() {
            return this.initialVelocity;
        }

        public final float component2() {
            return this.distance;
        }

        public final long component3() {
            return this.duration;
        }

        public final FlingInfo copy(float f, float f2, long j) {
            return new FlingInfo(f, f2, j);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FlingInfo)) {
                return false;
            }
            FlingInfo flingInfo = (FlingInfo) obj;
            return Float.compare(this.initialVelocity, flingInfo.initialVelocity) == 0 && Float.compare(this.distance, flingInfo.distance) == 0 && this.duration == flingInfo.duration;
        }

        public final float getDistance() {
            return this.distance;
        }

        public final long getDuration() {
            return this.duration;
        }

        public final float getInitialVelocity() {
            return this.initialVelocity;
        }

        public int hashCode() {
            return Long.hashCode(this.duration) + jn.b(this.distance, Float.hashCode(this.initialVelocity) * 31, 31);
        }

        public final float position(long j) {
            long j2 = this.duration;
            return AndroidFlingSpline.INSTANCE.flingPosition(j2 > 0 ? j / j2 : 1.0f).getDistanceCoefficient() * Math.signum(this.initialVelocity) * this.distance;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("FlingInfo(initialVelocity=");
            sb.append(this.initialVelocity);
            sb.append(", distance=");
            sb.append(this.distance);
            sb.append(", duration=");
            return lg.f(sb, this.duration, ')');
        }

        public final float velocity(long j) {
            long j2 = this.duration;
            return (((Math.signum(this.initialVelocity) * AndroidFlingSpline.INSTANCE.flingPosition(j2 > 0 ? j / j2 : 1.0f).getVelocityCoefficient()) * this.distance) / this.duration) * 1000.0f;
        }
    }

    public FlingCalculator(float f, Density density) {
        this.friction = f;
        this.density = density;
        this.magicPhysicalCoefficient = computeDeceleration(density);
    }

    private final float computeDeceleration(Density density) {
        return FlingCalculatorKt.computeDeceleration(0.84f, density.getDensity());
    }

    private final double getSplineDeceleration(float f) {
        return AndroidFlingSpline.INSTANCE.deceleration(f, this.friction * this.magicPhysicalCoefficient);
    }

    public final float flingDistance(float f) {
        double splineDeceleration = getSplineDeceleration(f);
        double d = ((double) FlingCalculatorKt.DecelerationRate) - 1.0d;
        return (float) (Math.exp((((double) FlingCalculatorKt.DecelerationRate) / d) * splineDeceleration) * ((double) (this.friction * this.magicPhysicalCoefficient)));
    }

    public final long flingDuration(float f) {
        return (long) (Math.exp(getSplineDeceleration(f) / (((double) FlingCalculatorKt.DecelerationRate) - 1.0d)) * 1000.0d);
    }

    public final FlingInfo flingInfo(float f) {
        double splineDeceleration = getSplineDeceleration(f);
        double d = ((double) FlingCalculatorKt.DecelerationRate) - 1.0d;
        return new FlingInfo(f, (float) (Math.exp((((double) FlingCalculatorKt.DecelerationRate) / d) * splineDeceleration) * ((double) (this.friction * this.magicPhysicalCoefficient))), (long) (Math.exp(splineDeceleration / d) * 1000.0d));
    }

    public final Density getDensity() {
        return this.density;
    }
}
