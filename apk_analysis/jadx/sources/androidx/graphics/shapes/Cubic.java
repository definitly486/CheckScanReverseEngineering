package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import defpackage.aq5;
import defpackage.b36;
import defpackage.fg;
import defpackage.jh2;
import defpackage.n1;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class Cubic {
    public static final Companion Companion = new Companion(null);
    private final float[] points;

    private Cubic(long j, long j2, long j3, long j4) {
        this(new float[]{PointKt.m9324getXDnnuFBc(j), PointKt.m9325getYDnnuFBc(j), PointKt.m9324getXDnnuFBc(j2), PointKt.m9325getYDnnuFBc(j2), PointKt.m9324getXDnnuFBc(j3), PointKt.m9325getYDnnuFBc(j3), PointKt.m9324getXDnnuFBc(j4), PointKt.m9325getYDnnuFBc(j4)});
    }

    public static /* synthetic */ void calculateBounds$graphics_shapes_release$default(Cubic cubic, float[] fArr, boolean z, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: calculateBounds");
            return;
        }
        if ((i & 1) != 0) {
            fArr = new float[4];
        }
        if ((i & 2) != 0) {
            z = false;
        }
        cubic.calculateBounds$graphics_shapes_release(fArr, z);
    }

    public static final Cubic circularArc(float f, float f2, float f3, float f4, float f5, float f6) {
        return Companion.circularArc(f, f2, f3, f4, f5, f6);
    }

    public static final Cubic straightLine(float f, float f2, float f3, float f4) {
        return Companion.straightLine(f, f2, f3, f4);
    }

    private final boolean zeroIsh(float f) {
        return Math.abs(f) < 1.0E-4f;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x019e  */
    /* JADX WARN: Code duplicated, block: B:53:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:59:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:62:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:64:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:66:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:72:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:75:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:78:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:80:0x0203  */
    /* JADX WARN: Code duplicated, block: B:82:0x020f  */
    /* JADX WARN: Code duplicated, block: B:85:0x0214  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r23v5 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r23v7 */
    public final void calculateBounds$graphics_shapes_release(float[] fArr, boolean z) {
        char c;
        char c2;
        char c3;
        boolean z2;
        float anchor1Y;
        float control1Y;
        float control0Y;
        float f;
        boolean z3;
        float fSqrt;
        float fSqrt2;
        float fM9325getYDnnuFBc;
        float fM9325getYDnnuFBc2;
        ?? r23;
        float f2;
        float fM9325getYDnnuFBc3;
        fArr.getClass();
        if (zeroLength$graphics_shapes_release()) {
            fArr[0] = getAnchor0X();
            fArr[1] = getAnchor0Y();
            fArr[2] = getAnchor0X();
            fArr[3] = getAnchor0Y();
            return;
        }
        float fMin = Math.min(getAnchor0X(), getAnchor1X());
        float fMin2 = Math.min(getAnchor0Y(), getAnchor1Y());
        float fMax = Math.max(getAnchor0X(), getAnchor1X());
        float fMax2 = Math.max(getAnchor0Y(), getAnchor1Y());
        if (z) {
            fArr[0] = Math.min(fMin, Math.min(getControl0X(), getControl1X()));
            fArr[1] = Math.min(fMin2, Math.min(getControl0Y(), getControl1Y()));
            fArr[2] = Math.max(fMax, Math.max(getControl0X(), getControl1X()));
            fArr[3] = Math.max(fMax2, Math.max(getControl0Y(), getControl1Y()));
            return;
        }
        float anchor1X = getAnchor1X() + (((getControl0X() * 3.0f) + (-getAnchor0X())) - (getControl1X() * 3.0f));
        float control1X = (getControl1X() * 2.0f) + ((getAnchor0X() * 2.0f) - (getControl0X() * 4.0f));
        float control0X = getControl0X() + (-getAnchor0X());
        if (!zeroIsh(anchor1X)) {
            float f3 = (control1X * control1X) - ((4.0f * anchor1X) * control0X);
            if (f3 >= 0.0f) {
                float f4 = -control1X;
                c = 3;
                c2 = 2;
                double d = f3;
                c3 = 1;
                z2 = false;
                float f5 = anchor1X * 2.0f;
                float fSqrt3 = (((float) Math.sqrt(d)) + f4) / f5;
                if (0.0f <= fSqrt3 && fSqrt3 <= 1.0f) {
                    float fM9324getXDnnuFBc = PointKt.m9324getXDnnuFBc(m9312pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt3));
                    if (fM9324getXDnnuFBc < fMin) {
                        fMin = fM9324getXDnnuFBc;
                    }
                    if (fM9324getXDnnuFBc > fMax) {
                        fMax = fM9324getXDnnuFBc;
                    }
                }
                float fSqrt4 = (f4 - ((float) Math.sqrt(d))) / f5;
                if (0.0f <= fSqrt4 && fSqrt4 <= 1.0f) {
                    float fM9324getXDnnuFBc2 = PointKt.m9324getXDnnuFBc(m9312pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt4));
                    if (fM9324getXDnnuFBc2 < fMin) {
                        fMin = fM9324getXDnnuFBc2;
                    }
                    if (fM9324getXDnnuFBc2 > fMax) {
                        fMax = fM9324getXDnnuFBc2;
                    }
                }
            }
            anchor1Y = getAnchor1Y() + (((getControl0Y() * 3.0f) + (-getAnchor0Y())) - (getControl1Y() * 3.0f));
            control1Y = (getControl1Y() * 2.0f) + ((getAnchor0Y() * 2.0f) - (getControl0Y() * 4.0f));
            control0Y = getControl0Y() + (-getAnchor0Y());
            if (zeroIsh(anchor1Y)) {
                f = (control1Y * control1Y) - ((4.0f * anchor1Y) * control0Y);
                if (f >= 0.0f) {
                    float f6 = -control1Y;
                    double d2 = f;
                    z3 = z2;
                    float f7 = 2.0f * anchor1Y;
                    fSqrt = (((float) Math.sqrt(d2)) + f6) / f7;
                    if (0.0f <= fSqrt && fSqrt <= 1.0f) {
                        fM9325getYDnnuFBc2 = PointKt.m9325getYDnnuFBc(m9312pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt));
                        if (fM9325getYDnnuFBc2 < fMin2) {
                            fMin2 = fM9325getYDnnuFBc2;
                        }
                        if (fM9325getYDnnuFBc2 > fMax2) {
                            fMax2 = fM9325getYDnnuFBc2;
                        }
                    }
                    fSqrt2 = (f6 - ((float) Math.sqrt(d2))) / f7;
                    r23 = z3;
                    if (0.0f <= fSqrt2) {
                        r23 = z3;
                        if (fSqrt2 <= 1.0f) {
                            fM9325getYDnnuFBc = PointKt.m9325getYDnnuFBc(m9312pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt2));
                            if (fM9325getYDnnuFBc < fMin2) {
                                fMin2 = fM9325getYDnnuFBc;
                            }
                            r23 = z3;
                            if (fM9325getYDnnuFBc > fMax2) {
                                fMax2 = fM9325getYDnnuFBc;
                                r23 = z3;
                            }
                        }
                    }
                }
                fArr[r23] = fMin;
                fArr[c3] = fMin2;
                fArr[c2] = fMax;
                fArr[c] = fMax2;
            }
            if (control1Y != 0.0f) {
                f2 = (2.0f * control0Y) / ((-2.0f) * control1Y);
                if (0.0f <= f2 && f2 <= 1.0f) {
                    fM9325getYDnnuFBc3 = PointKt.m9325getYDnnuFBc(m9312pointOnCurveOOQOV4g$graphics_shapes_release(f2));
                    if (fM9325getYDnnuFBc3 < fMin2) {
                        fMin2 = fM9325getYDnnuFBc3;
                    }
                    if (fM9325getYDnnuFBc3 > fMax2) {
                        fMax2 = fM9325getYDnnuFBc3;
                    }
                }
            }
            r23 = z2;
            fArr[r23] = fMin;
            fArr[c3] = fMin2;
            fArr[c2] = fMax;
            fArr[c] = fMax2;
        }
        if (control1X != 0.0f) {
            float f8 = (control0X * 2.0f) / (control1X * (-2.0f));
            if (0.0f <= f8 && f8 <= 1.0f) {
                float fM9324getXDnnuFBc3 = PointKt.m9324getXDnnuFBc(m9312pointOnCurveOOQOV4g$graphics_shapes_release(f8));
                if (fM9324getXDnnuFBc3 < fMin) {
                    fMin = fM9324getXDnnuFBc3;
                }
                if (fM9324getXDnnuFBc3 > fMax) {
                    fMax = fM9324getXDnnuFBc3;
                }
            }
        }
        c = 3;
        c2 = 2;
        c3 = 1;
        z2 = false;
        anchor1Y = getAnchor1Y() + (((getControl0Y() * 3.0f) + (-getAnchor0Y())) - (getControl1Y() * 3.0f));
        control1Y = (getControl1Y() * 2.0f) + ((getAnchor0Y() * 2.0f) - (getControl0Y() * 4.0f));
        control0Y = getControl0Y() + (-getAnchor0Y());
        if (zeroIsh(anchor1Y)) {
            f = (control1Y * control1Y) - ((4.0f * anchor1Y) * control0Y);
            if (f >= 0.0f) {
                float f9 = -control1Y;
                double d3 = f;
                z3 = z2;
                float f10 = 2.0f * anchor1Y;
                fSqrt = (((float) Math.sqrt(d3)) + f9) / f10;
                if (0.0f <= fSqrt) {
                    fM9325getYDnnuFBc2 = PointKt.m9325getYDnnuFBc(m9312pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt));
                    if (fM9325getYDnnuFBc2 < fMin2) {
                        fMin2 = fM9325getYDnnuFBc2;
                    }
                    if (fM9325getYDnnuFBc2 > fMax2) {
                        fMax2 = fM9325getYDnnuFBc2;
                    }
                }
                fSqrt2 = (f9 - ((float) Math.sqrt(d3))) / f10;
                r23 = z3;
                if (0.0f <= fSqrt2) {
                    r23 = z3;
                    if (fSqrt2 <= 1.0f) {
                        fM9325getYDnnuFBc = PointKt.m9325getYDnnuFBc(m9312pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt2));
                        if (fM9325getYDnnuFBc < fMin2) {
                            fMin2 = fM9325getYDnnuFBc;
                        }
                        r23 = z3;
                        if (fM9325getYDnnuFBc > fMax2) {
                            fMax2 = fM9325getYDnnuFBc;
                            r23 = z3;
                        }
                    }
                }
            }
            fArr[r23] = fMin;
            fArr[c3] = fMin2;
            fArr[c2] = fMax;
            fArr[c] = fMax2;
        }
        if (control1Y != 0.0f) {
            f2 = (2.0f * control0Y) / ((-2.0f) * control1Y);
            if (0.0f <= f2) {
                fM9325getYDnnuFBc3 = PointKt.m9325getYDnnuFBc(m9312pointOnCurveOOQOV4g$graphics_shapes_release(f2));
                if (fM9325getYDnnuFBc3 < fMin2) {
                    fMin2 = fM9325getYDnnuFBc3;
                }
                if (fM9325getYDnnuFBc3 > fMax2) {
                    fMax2 = fM9325getYDnnuFBc3;
                }
            }
        }
        r23 = z2;
        fArr[r23] = fMin;
        fArr[c3] = fMin2;
        fArr[c2] = fMax;
        fArr[c] = fMax2;
    }

    public final Cubic div(float f) {
        return times(1.0f / f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Cubic) {
            return Arrays.equals(this.points, ((Cubic) obj).points);
        }
        return false;
    }

    public final float getAnchor0X() {
        return this.points[0];
    }

    public final float getAnchor0Y() {
        return this.points[1];
    }

    public final float getAnchor1X() {
        return this.points[6];
    }

    public final float getAnchor1Y() {
        return this.points[7];
    }

    public final float getControl0X() {
        return this.points[2];
    }

    public final float getControl0Y() {
        return this.points[3];
    }

    public final float getControl1X() {
        return this.points[4];
    }

    public final float getControl1Y() {
        return this.points[5];
    }

    public final float[] getPoints$graphics_shapes_release() {
        return this.points;
    }

    public int hashCode() {
        return Arrays.hashCode(this.points);
    }

    public final Cubic plus(Cubic cubic) {
        cubic.getClass();
        float[] fArr = new float[8];
        for (int i = 0; i < 8; i++) {
            fArr[i] = this.points[i] + cubic.points[i];
        }
        return new Cubic(fArr);
    }

    /* JADX INFO: renamed from: pointOnCurve-OOQOV4g$graphics_shapes_release, reason: not valid java name */
    public final long m9312pointOnCurveOOQOV4g$graphics_shapes_release(float f) {
        float f2 = 1.0f - f;
        float f3 = f2 * f2 * f2;
        float f4 = 3.0f * f;
        float f5 = f4 * f2 * f2;
        float f6 = f4 * f * f2;
        float control1X = (getControl1X() * f6) + (getControl0X() * f5) + (getAnchor0X() * f3);
        float f7 = f * f * f;
        return FloatFloatPair.m1016constructorimpl((getAnchor1X() * f7) + control1X, (getAnchor1Y() * f7) + (getControl1Y() * f6) + (getControl0Y() * f5) + (getAnchor0Y() * f3));
    }

    public final Cubic reverse() {
        return CubicKt.Cubic(getAnchor1X(), getAnchor1Y(), getControl1X(), getControl1Y(), getControl0X(), getControl0Y(), getAnchor0X(), getAnchor0Y());
    }

    public final b36<Cubic, Cubic> split(float f) {
        float f2 = 1.0f - f;
        long jM9312pointOnCurveOOQOV4g$graphics_shapes_release = m9312pointOnCurveOOQOV4g$graphics_shapes_release(f);
        float f3 = f2 * f2;
        float f4 = 2.0f * f2 * f;
        float f5 = f * f;
        return new b36<>(CubicKt.Cubic(getAnchor0X(), getAnchor0Y(), (getAnchor0X() * f2) + (getControl0X() * f), (getAnchor0Y() * f2) + (getControl0Y() * f), (getControl1X() * f5) + (getControl0X() * f4) + (getAnchor0X() * f3), (getControl1Y() * f5) + (getControl0Y() * f4) + (getAnchor0Y() * f3), PointKt.m9324getXDnnuFBc(jM9312pointOnCurveOOQOV4g$graphics_shapes_release), PointKt.m9325getYDnnuFBc(jM9312pointOnCurveOOQOV4g$graphics_shapes_release)), CubicKt.Cubic(PointKt.m9324getXDnnuFBc(jM9312pointOnCurveOOQOV4g$graphics_shapes_release), PointKt.m9325getYDnnuFBc(jM9312pointOnCurveOOQOV4g$graphics_shapes_release), (getAnchor1X() * f5) + (getControl1X() * f4) + (getControl0X() * f3), (getAnchor1Y() * f5) + (getControl1Y() * f4) + (getControl0Y() * f3), (getAnchor1X() * f) + (getControl1X() * f2), (getAnchor1Y() * f) + (getControl1Y() * f2), getAnchor1X(), getAnchor1Y()));
    }

    public final Cubic times(float f) {
        float[] fArr = new float[8];
        for (int i = 0; i < 8; i++) {
            fArr[i] = this.points[i] * f;
        }
        return new Cubic(fArr);
    }

    public String toString() {
        return "anchor0: (" + getAnchor0X() + ", " + getAnchor0Y() + ") control0: (" + getControl0X() + ", " + getControl0Y() + "), control1: (" + getControl1X() + ", " + getControl1Y() + "), anchor1: (" + getAnchor1X() + ", " + getAnchor1Y() + ')';
    }

    public final Cubic transformed(PointTransformer pointTransformer) {
        pointTransformer.getClass();
        MutableCubic mutableCubic = new MutableCubic();
        aq5.o(0, this.points, mutableCubic.getPoints$graphics_shapes_release(), 14);
        mutableCubic.transform(pointTransformer);
        return mutableCubic;
    }

    public final boolean zeroLength$graphics_shapes_release() {
        return Math.abs(getAnchor0X() - getAnchor1X()) < 1.0E-4f && Math.abs(getAnchor0Y() - getAnchor1Y()) < 1.0E-4f;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Cubic circularArc(float f, float f2, float f3, float f4, float f5, float f6) {
            float f7 = f3 - f;
            float f8 = f4 - f2;
            long jDirectionVector = Utils.directionVector(f7, f8);
            float f9 = f5 - f;
            float f10 = f6 - f2;
            long jDirectionVector2 = Utils.directionVector(f9, f10);
            long jM9345rotate90DnnuFBc = Utils.m9345rotate90DnnuFBc(jDirectionVector);
            long jM9345rotate90DnnuFBc2 = Utils.m9345rotate90DnnuFBc(jDirectionVector2);
            boolean z = PointKt.m9319dotProduct5P9i7ZU(jM9345rotate90DnnuFBc, f9, f10) >= 0.0f;
            float fM9320dotProductybeJwSQ = PointKt.m9320dotProductybeJwSQ(jDirectionVector, jDirectionVector2);
            if (fM9320dotProductybeJwSQ > 0.999f) {
                return straightLine(f3, f4, f5, f6);
            }
            float f11 = 1.0f - fM9320dotProductybeJwSQ;
            float fSqrt = (((((float) Math.sqrt(2.0f * f11)) - ((float) Math.sqrt(1.0f - (fM9320dotProductybeJwSQ * fM9320dotProductybeJwSQ)))) * ((Utils.distance(f7, f8) * 4.0f) / 3.0f)) / f11) * (z ? 1.0f : -1.0f);
            return CubicKt.Cubic(f3, f4, (PointKt.m9324getXDnnuFBc(jM9345rotate90DnnuFBc) * fSqrt) + f3, (PointKt.m9325getYDnnuFBc(jM9345rotate90DnnuFBc) * fSqrt) + f4, f5 - (PointKt.m9324getXDnnuFBc(jM9345rotate90DnnuFBc2) * fSqrt), f6 - (PointKt.m9325getYDnnuFBc(jM9345rotate90DnnuFBc2) * fSqrt), f5, f6);
        }

        public final Cubic straightLine(float f, float f2, float f3, float f4) {
            return CubicKt.Cubic(f, f2, Utils.interpolate(f, f3, 0.33333334f), Utils.interpolate(f2, f4, 0.33333334f), Utils.interpolate(f, f3, 0.6666667f), Utils.interpolate(f2, f4, 0.6666667f), f3, f4);
        }

        private Companion() {
        }
    }

    public final Cubic div(int i) {
        return div(i);
    }

    public final Cubic times(int i) {
        return times(i);
    }

    public /* synthetic */ Cubic(long j, long j2, long j3, long j4, jh2 jh2Var) {
        this(j, j2, j3, j4);
    }

    public Cubic(float[] fArr) {
        fArr.getClass();
        this.points = fArr;
        if (fArr.length == 8) {
            return;
        }
        fg.c("Points array size should be 8");
        throw null;
    }

    public /* synthetic */ Cubic(float[] fArr, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new float[8] : fArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Cubic() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
