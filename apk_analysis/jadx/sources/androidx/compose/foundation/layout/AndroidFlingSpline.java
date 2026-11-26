package androidx.compose.foundation.layout;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.muxer.MuxerUtil;
import defpackage.i8;
import defpackage.rg;
import defpackage.y83;

/* JADX INFO: loaded from: classes.dex */
final class AndroidFlingSpline {
    private static final int NbSamples = 100;
    public static final AndroidFlingSpline INSTANCE = new AndroidFlingSpline();
    private static final float[] SplinePositions = new float[TypedValues.TYPE_TARGET];
    private static final float[] SplineTimes = new float[TypedValues.TYPE_TARGET];

    public static final class FlingResult {
        private final long packedValue;

        private /* synthetic */ FlingResult(long j) {
            this.packedValue = j;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ FlingResult m1731boximpl(long j) {
            return new FlingResult(j);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static long m1732constructorimpl(long j) {
            return j;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m1733equalsimpl(long j, Object obj) {
            return (obj instanceof FlingResult) && j == ((FlingResult) obj).m1739unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m1734equalsimpl0(long j, long j2) {
            return j == j2;
        }

        /* JADX INFO: renamed from: getDistanceCoefficient-impl, reason: not valid java name */
        public static final float m1735getDistanceCoefficientimpl(long j) {
            return Float.intBitsToFloat((int) (j >> 32));
        }

        /* JADX INFO: renamed from: getVelocityCoefficient-impl, reason: not valid java name */
        public static final float m1736getVelocityCoefficientimpl(long j) {
            return Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m1737hashCodeimpl(long j) {
            return Long.hashCode(j);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m1738toStringimpl(long j) {
            return rg.g("FlingResult(packedValue=", j, ')');
        }

        public boolean equals(Object obj) {
            return m1733equalsimpl(this.packedValue, obj);
        }

        public int hashCode() {
            return m1737hashCodeimpl(this.packedValue);
        }

        public String toString() {
            return m1738toStringimpl(this.packedValue);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ long m1739unboximpl() {
            return this.packedValue;
        }
    }

    static {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9 = 0.0f;
        int i = 0;
        float f10 = 0.0f;
        while (true) {
            float f11 = 1.0f;
            if (i >= 100) {
                SplineTimes[100] = 1.0f;
                SplinePositions[100] = 1.0f;
                return;
            }
            float f12 = i / 100.0f;
            float f13 = 1.0f;
            while (true) {
                f = ((f13 - f9) / 2.0f) + f9;
                f2 = f11 - f;
                f3 = f * 3.0f * f2;
                f4 = f * f * f;
                float fB = y83.b(f, 0.35000002f, f2 * 0.175f, f3) + f4;
                f11 = f11;
                float f14 = f13;
                if (Math.abs(fB - f12) < 1.0E-5d) {
                    break;
                }
                if (fB > f12) {
                    f13 = f;
                } else {
                    f9 = f;
                    f13 = f14;
                }
            }
            float f15 = 0.5f;
            SplinePositions[i] = (((f2 * 0.5f) + f) * f3) + f4;
            float f16 = f11;
            while (true) {
                f5 = ((f16 - f10) / 2.0f) + f10;
                f6 = f11 - f5;
                f7 = f5 * 3.0f * f6;
                f8 = f5 * f5 * f5;
                float fB2 = y83.b(f6, f15, f5, f7) + f8;
                if (Math.abs(fB2 - f12) >= 1.0E-5d) {
                    if (fB2 > f12) {
                        f16 = f5;
                    } else {
                        f10 = f5;
                    }
                    f15 = 0.5f;
                }
            }
            SplineTimes[i] = (((f5 * 0.35000002f) + (f6 * 0.175f)) * f7) + f8;
            i++;
        }
    }

    private AndroidFlingSpline() {
    }

    public final double deceleration(float f, float f2) {
        return Math.log(((double) (Math.abs(f) * 0.35f)) / ((double) f2));
    }

    /* JADX INFO: renamed from: flingPosition-LfoxSSI, reason: not valid java name */
    public final long m1730flingPositionLfoxSSI(float f) {
        float fB;
        float f2;
        int i = (int) (100.0f * f);
        if (i < 100) {
            float f3 = i / 100.0f;
            int i2 = i + 1;
            float[] fArr = SplinePositions;
            float f4 = fArr[i];
            f2 = (fArr[i2] - f4) / ((i2 / 100.0f) - f3);
            fB = i8.b(f, f3, f2, f4);
        } else {
            fB = 1.0f;
            f2 = 0.0f;
        }
        return FlingResult.m1732constructorimpl((((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fB) << 32));
    }
}
