package androidx.compose.animation;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.i8;
import defpackage.js2;
import defpackage.kx6;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidFlingSpline {
    public static final int $stable;
    public static final AndroidFlingSpline INSTANCE = new AndroidFlingSpline();
    private static final int NbSamples = 100;
    private static final float[] SplinePositions;
    private static final float[] SplineTimes;

    public static final class FlingResult {
        public static final int $stable = 0;
        private final float distanceCoefficient;
        private final float velocityCoefficient;

        public FlingResult(float f, float f2) {
            this.distanceCoefficient = f;
            this.velocityCoefficient = f2;
        }

        public static /* synthetic */ FlingResult copy$default(FlingResult flingResult, float f, float f2, int i, Object obj) {
            if ((i & 1) != 0) {
                f = flingResult.distanceCoefficient;
            }
            if ((i & 2) != 0) {
                f2 = flingResult.velocityCoefficient;
            }
            return flingResult.copy(f, f2);
        }

        public final float component1() {
            return this.distanceCoefficient;
        }

        public final float component2() {
            return this.velocityCoefficient;
        }

        public final FlingResult copy(float f, float f2) {
            return new FlingResult(f, f2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FlingResult)) {
                return false;
            }
            FlingResult flingResult = (FlingResult) obj;
            return Float.compare(this.distanceCoefficient, flingResult.distanceCoefficient) == 0 && Float.compare(this.velocityCoefficient, flingResult.velocityCoefficient) == 0;
        }

        public final float getDistanceCoefficient() {
            return this.distanceCoefficient;
        }

        public final float getVelocityCoefficient() {
            return this.velocityCoefficient;
        }

        public int hashCode() {
            return Float.hashCode(this.velocityCoefficient) + (Float.hashCode(this.distanceCoefficient) * 31);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("FlingResult(distanceCoefficient=");
            sb.append(this.distanceCoefficient);
            sb.append(", velocityCoefficient=");
            return js2.b(sb, this.velocityCoefficient, ')');
        }
    }

    static {
        float[] fArr = new float[TypedValues.TYPE_TARGET];
        SplinePositions = fArr;
        float[] fArr2 = new float[TypedValues.TYPE_TARGET];
        SplineTimes = fArr2;
        SplineBasedDecayKt.computeSplineInfo(fArr, fArr2, 100);
        $stable = 8;
    }

    private AndroidFlingSpline() {
    }

    public final double deceleration(float f, float f2) {
        return Math.log(((double) (Math.abs(f) * 0.35f)) / ((double) f2));
    }

    public final FlingResult flingPosition(float f) {
        float f2 = 0.0f;
        float fB = 1.0f;
        float fD = kx6.d(f, 0.0f, 1.0f);
        int i = (int) (100.0f * fD);
        if (i < 100) {
            float f3 = i / 100.0f;
            int i2 = i + 1;
            float[] fArr = SplinePositions;
            float f4 = fArr[i];
            float f5 = (fArr[i2] - f4) / ((i2 / 100.0f) - f3);
            fB = i8.b(fD, f3, f5, f4);
            f2 = f5;
        }
        return new FlingResult(fB, f2);
    }
}
