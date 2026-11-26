package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class RoundedCorner {
    private long center;
    private final float cornerRadius;
    private final float cosAngle;
    private final long d1;
    private final long d2;
    private final float expectedRoundCut;
    private final long p0;
    private final long p1;
    private final long p2;
    private final CornerRounding rounding;
    private final float sinAngle;
    private final float smoothing;

    private RoundedCorner(long j, long j2, long j3, CornerRounding cornerRounding) {
        this.p0 = j;
        this.p1 = j2;
        this.p2 = j3;
        this.rounding = cornerRounding;
        long jM9321getDirectionDnnuFBc = PointKt.m9321getDirectionDnnuFBc(PointKt.m9327minusybeJwSQ(j, j2));
        this.d1 = jM9321getDirectionDnnuFBc;
        long jM9321getDirectionDnnuFBc2 = PointKt.m9321getDirectionDnnuFBc(PointKt.m9327minusybeJwSQ(j3, j2));
        this.d2 = jM9321getDirectionDnnuFBc2;
        float radius = cornerRounding != null ? cornerRounding.getRadius() : 0.0f;
        this.cornerRadius = radius;
        this.smoothing = cornerRounding != null ? cornerRounding.getSmoothing() : 0.0f;
        float fM9320dotProductybeJwSQ = PointKt.m9320dotProductybeJwSQ(jM9321getDirectionDnnuFBc, jM9321getDirectionDnnuFBc2);
        this.cosAngle = fM9320dotProductybeJwSQ;
        float fSqrt = (float) Math.sqrt(1.0f - Utils.square(fM9320dotProductybeJwSQ));
        this.sinAngle = fSqrt;
        this.expectedRoundCut = ((double) fSqrt) > 0.001d ? ((fM9320dotProductybeJwSQ + 1.0f) * radius) / fSqrt : 0.0f;
        this.center = FloatFloatPair.m1016constructorimpl(0.0f, 0.0f);
    }

    private final float calculateActualSmoothingValue(float f) {
        if (f > getExpectedCut()) {
            return this.smoothing;
        }
        float f2 = this.expectedRoundCut;
        if (f <= f2) {
            return 0.0f;
        }
        return ((f - f2) * this.smoothing) / (getExpectedCut() - this.expectedRoundCut);
    }

    /* JADX INFO: renamed from: computeFlankingCurve-oAJzIJU, reason: not valid java name */
    private final Cubic m9334computeFlankingCurveoAJzIJU(float f, float f2, long j, long j2, long j3, long j4, long j5, float f3) {
        long jM9321getDirectionDnnuFBc = PointKt.m9321getDirectionDnnuFBc(PointKt.m9327minusybeJwSQ(j2, j));
        long jM9328plusybeJwSQ = PointKt.m9328plusybeJwSQ(j, PointKt.m9330timesso9K2fw(PointKt.m9330timesso9K2fw(jM9321getDirectionDnnuFBc, f), 1.0f + f2));
        long jM1024unboximpl = j3;
        long jM9326interpolatedLqxh1s = PointKt.m9326interpolatedLqxh1s(jM1024unboximpl, PointKt.m9318divso9K2fw(PointKt.m9328plusybeJwSQ(j3, j4), 2.0f), f2);
        long jM9328plusybeJwSQ2 = PointKt.m9328plusybeJwSQ(j5, PointKt.m9330timesso9K2fw(Utils.directionVector(PointKt.m9324getXDnnuFBc(jM9326interpolatedLqxh1s) - PointKt.m9324getXDnnuFBc(j5), PointKt.m9325getYDnnuFBc(jM9326interpolatedLqxh1s) - PointKt.m9325getYDnnuFBc(j5)), f3));
        FloatFloatPair floatFloatPairM9335lineIntersectionCBFvKDc = m9335lineIntersectionCBFvKDc(j2, jM9321getDirectionDnnuFBc, jM9328plusybeJwSQ2, Utils.m9345rotate90DnnuFBc(PointKt.m9327minusybeJwSQ(jM9328plusybeJwSQ2, j5)));
        if (floatFloatPairM9335lineIntersectionCBFvKDc != null) {
            jM1024unboximpl = floatFloatPairM9335lineIntersectionCBFvKDc.m1024unboximpl();
        }
        return new Cubic(jM9328plusybeJwSQ, PointKt.m9318divso9K2fw(PointKt.m9328plusybeJwSQ(jM9328plusybeJwSQ, PointKt.m9330timesso9K2fw(jM1024unboximpl, 2.0f)), 3.0f), jM1024unboximpl, jM9328plusybeJwSQ2, null);
    }

    public static /* synthetic */ List getCubics$default(RoundedCorner roundedCorner, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f2 = f;
        }
        return roundedCorner.getCubics(f, f2);
    }

    /* JADX INFO: renamed from: lineIntersection-CBFvKDc, reason: not valid java name */
    private final FloatFloatPair m9335lineIntersectionCBFvKDc(long j, long j2, long j3, long j4) {
        long jM9345rotate90DnnuFBc = Utils.m9345rotate90DnnuFBc(j4);
        float fM9320dotProductybeJwSQ = PointKt.m9320dotProductybeJwSQ(j2, jM9345rotate90DnnuFBc);
        if (Math.abs(fM9320dotProductybeJwSQ) < 1.0E-4f) {
            return null;
        }
        float fM9320dotProductybeJwSQ2 = PointKt.m9320dotProductybeJwSQ(PointKt.m9327minusybeJwSQ(j3, j), jM9345rotate90DnnuFBc);
        if (Math.abs(fM9320dotProductybeJwSQ) < Math.abs(fM9320dotProductybeJwSQ2) * 1.0E-4f) {
            return null;
        }
        return FloatFloatPair.m1013boximpl(PointKt.m9328plusybeJwSQ(j, PointKt.m9330timesso9K2fw(j2, fM9320dotProductybeJwSQ2 / fM9320dotProductybeJwSQ)));
    }

    /* JADX INFO: renamed from: getCenter-1ufDz9w, reason: not valid java name */
    public final long m9336getCenter1ufDz9w() {
        return this.center;
    }

    public final float getCornerRadius() {
        return this.cornerRadius;
    }

    public final float getCosAngle() {
        return this.cosAngle;
    }

    public final List<Cubic> getCubics(float f, float f2) {
        float fMin = Math.min(f, f2);
        float f3 = this.expectedRoundCut;
        if (f3 < 1.0E-4f || fMin < 1.0E-4f || this.cornerRadius < 1.0E-4f) {
            long j = this.p1;
            this.center = j;
            return u96.h(Cubic.Companion.straightLine(PointKt.m9324getXDnnuFBc(j), PointKt.m9325getYDnnuFBc(this.p1), PointKt.m9324getXDnnuFBc(this.p1), PointKt.m9325getYDnnuFBc(this.p1)));
        }
        float fMin2 = Math.min(fMin, f3);
        float fCalculateActualSmoothingValue = calculateActualSmoothingValue(f);
        float fCalculateActualSmoothingValue2 = calculateActualSmoothingValue(f2);
        float f4 = (this.cornerRadius * fMin2) / this.expectedRoundCut;
        this.center = PointKt.m9328plusybeJwSQ(this.p1, PointKt.m9330timesso9K2fw(PointKt.m9321getDirectionDnnuFBc(PointKt.m9318divso9K2fw(PointKt.m9328plusybeJwSQ(this.d1, this.d2), 2.0f)), (float) Math.sqrt(Utils.square(fMin2) + Utils.square(f4))));
        long jM9328plusybeJwSQ = PointKt.m9328plusybeJwSQ(this.p1, PointKt.m9330timesso9K2fw(this.d1, fMin2));
        long jM9328plusybeJwSQ2 = PointKt.m9328plusybeJwSQ(this.p1, PointKt.m9330timesso9K2fw(this.d2, fMin2));
        Cubic cubicM9334computeFlankingCurveoAJzIJU = m9334computeFlankingCurveoAJzIJU(fMin2, fCalculateActualSmoothingValue, this.p1, this.p0, jM9328plusybeJwSQ, jM9328plusybeJwSQ2, this.center, f4);
        Cubic cubicReverse = m9334computeFlankingCurveoAJzIJU(fMin2, fCalculateActualSmoothingValue2, this.p1, this.p2, jM9328plusybeJwSQ2, jM9328plusybeJwSQ, this.center, f4).reverse();
        return u96.i(cubicM9334computeFlankingCurveoAJzIJU, Cubic.Companion.circularArc(PointKt.m9324getXDnnuFBc(this.center), PointKt.m9325getYDnnuFBc(this.center), cubicM9334computeFlankingCurveoAJzIJU.getAnchor1X(), cubicM9334computeFlankingCurveoAJzIJU.getAnchor1Y(), cubicReverse.getAnchor0X(), cubicReverse.getAnchor0Y()), cubicReverse);
    }

    /* JADX INFO: renamed from: getD1-1ufDz9w, reason: not valid java name */
    public final long m9337getD11ufDz9w() {
        return this.d1;
    }

    /* JADX INFO: renamed from: getD2-1ufDz9w, reason: not valid java name */
    public final long m9338getD21ufDz9w() {
        return this.d2;
    }

    public final float getExpectedCut() {
        return (1.0f + this.smoothing) * this.expectedRoundCut;
    }

    public final float getExpectedRoundCut() {
        return this.expectedRoundCut;
    }

    /* JADX INFO: renamed from: getP0-1ufDz9w, reason: not valid java name */
    public final long m9339getP01ufDz9w() {
        return this.p0;
    }

    /* JADX INFO: renamed from: getP1-1ufDz9w, reason: not valid java name */
    public final long m9340getP11ufDz9w() {
        return this.p1;
    }

    /* JADX INFO: renamed from: getP2-1ufDz9w, reason: not valid java name */
    public final long m9341getP21ufDz9w() {
        return this.p2;
    }

    public final CornerRounding getRounding() {
        return this.rounding;
    }

    public final float getSinAngle() {
        return this.sinAngle;
    }

    public final float getSmoothing() {
        return this.smoothing;
    }

    /* JADX INFO: renamed from: setCenter-DnnuFBc, reason: not valid java name */
    public final void m9342setCenterDnnuFBc(long j) {
        this.center = j;
    }

    public /* synthetic */ RoundedCorner(long j, long j2, long j3, CornerRounding cornerRounding, jh2 jh2Var) {
        this(j, j2, j3, cornerRounding);
    }

    public /* synthetic */ RoundedCorner(long j, long j2, long j3, CornerRounding cornerRounding, int i, jh2 jh2Var) {
        this(j, j2, j3, (i & 8) != 0 ? null : cornerRounding, null);
    }

    public final List<Cubic> getCubics(float f) {
        return getCubics$default(this, f, 0.0f, 2, null);
    }
}
