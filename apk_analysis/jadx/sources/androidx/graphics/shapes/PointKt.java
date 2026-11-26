package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.media3.muxer.MuxerUtil;
import defpackage.fg;

/* JADX INFO: loaded from: classes3.dex */
public final class PointKt {
    /* JADX INFO: renamed from: clockwise-ybeJwSQ, reason: not valid java name */
    public static final boolean m9315clockwiseybeJwSQ(long j, long j2) {
        return (m9325getYDnnuFBc(j2) * m9324getXDnnuFBc(j)) - (m9324getXDnnuFBc(j2) * m9325getYDnnuFBc(j)) > 0.0f;
    }

    /* JADX INFO: renamed from: copy-5P9i7ZU, reason: not valid java name */
    public static final long m9316copy5P9i7ZU(long j, float f, float f2) {
        return FloatFloatPair.m1016constructorimpl(f, f2);
    }

    /* JADX INFO: renamed from: copy-5P9i7ZU$default, reason: not valid java name */
    public static /* synthetic */ long m9317copy5P9i7ZU$default(long j, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Float.intBitsToFloat((int) (j >> 32));
        }
        if ((i & 2) != 0) {
            f2 = Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j));
        }
        return m9316copy5P9i7ZU(j, f, f2);
    }

    /* JADX INFO: renamed from: div-so9K2fw, reason: not valid java name */
    public static final long m9318divso9K2fw(long j, float f) {
        return FloatFloatPair.m1016constructorimpl(m9324getXDnnuFBc(j) / f, m9325getYDnnuFBc(j) / f);
    }

    /* JADX INFO: renamed from: dotProduct-5P9i7ZU, reason: not valid java name */
    public static final float m9319dotProduct5P9i7ZU(long j, float f, float f2) {
        return (m9325getYDnnuFBc(j) * f2) + (m9324getXDnnuFBc(j) * f);
    }

    /* JADX INFO: renamed from: dotProduct-ybeJwSQ, reason: not valid java name */
    public static final float m9320dotProductybeJwSQ(long j, long j2) {
        return (m9325getYDnnuFBc(j2) * m9325getYDnnuFBc(j)) + (m9324getXDnnuFBc(j2) * m9324getXDnnuFBc(j));
    }

    /* JADX INFO: renamed from: getDirection-DnnuFBc, reason: not valid java name */
    public static final long m9321getDirectionDnnuFBc(long j) {
        float fM9322getDistanceDnnuFBc = m9322getDistanceDnnuFBc(j);
        if (fM9322getDistanceDnnuFBc > 0.0f) {
            return m9318divso9K2fw(j, fM9322getDistanceDnnuFBc);
        }
        fg.c("Can't get the direction of a 0-length vector");
        return 0L;
    }

    /* JADX INFO: renamed from: getDistance-DnnuFBc, reason: not valid java name */
    public static final float m9322getDistanceDnnuFBc(long j) {
        return (float) Math.sqrt((m9325getYDnnuFBc(j) * m9325getYDnnuFBc(j)) + (m9324getXDnnuFBc(j) * m9324getXDnnuFBc(j)));
    }

    /* JADX INFO: renamed from: getDistanceSquared-DnnuFBc, reason: not valid java name */
    public static final float m9323getDistanceSquaredDnnuFBc(long j) {
        return (m9325getYDnnuFBc(j) * m9325getYDnnuFBc(j)) + (m9324getXDnnuFBc(j) * m9324getXDnnuFBc(j));
    }

    /* JADX INFO: renamed from: getX-DnnuFBc, reason: not valid java name */
    public static final float m9324getXDnnuFBc(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* JADX INFO: renamed from: getY-DnnuFBc, reason: not valid java name */
    public static final float m9325getYDnnuFBc(long j) {
        return Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: interpolate-dLqxh1s, reason: not valid java name */
    public static final long m9326interpolatedLqxh1s(long j, long j2, float f) {
        return FloatFloatPair.m1016constructorimpl(Utils.interpolate(m9324getXDnnuFBc(j), m9324getXDnnuFBc(j2), f), Utils.interpolate(m9325getYDnnuFBc(j), m9325getYDnnuFBc(j2), f));
    }

    /* JADX INFO: renamed from: minus-ybeJwSQ, reason: not valid java name */
    public static final long m9327minusybeJwSQ(long j, long j2) {
        return FloatFloatPair.m1016constructorimpl(m9324getXDnnuFBc(j) - m9324getXDnnuFBc(j2), m9325getYDnnuFBc(j) - m9325getYDnnuFBc(j2));
    }

    /* JADX INFO: renamed from: plus-ybeJwSQ, reason: not valid java name */
    public static final long m9328plusybeJwSQ(long j, long j2) {
        return FloatFloatPair.m1016constructorimpl(m9324getXDnnuFBc(j2) + m9324getXDnnuFBc(j), m9325getYDnnuFBc(j2) + m9325getYDnnuFBc(j));
    }

    /* JADX INFO: renamed from: rem-so9K2fw, reason: not valid java name */
    public static final long m9329remso9K2fw(long j, float f) {
        return FloatFloatPair.m1016constructorimpl(m9324getXDnnuFBc(j) % f, m9325getYDnnuFBc(j) % f);
    }

    /* JADX INFO: renamed from: times-so9K2fw, reason: not valid java name */
    public static final long m9330timesso9K2fw(long j, float f) {
        return FloatFloatPair.m1016constructorimpl(m9324getXDnnuFBc(j) * f, m9325getYDnnuFBc(j) * f);
    }

    /* JADX INFO: renamed from: transformed-so9K2fw, reason: not valid java name */
    public static final long m9331transformedso9K2fw(long j, PointTransformer pointTransformer) {
        pointTransformer.getClass();
        long jMo9333transformXgqJiTY = pointTransformer.mo9333transformXgqJiTY(m9324getXDnnuFBc(j), m9325getYDnnuFBc(j));
        return FloatFloatPair.m1016constructorimpl(Float.intBitsToFloat((int) (jMo9333transformXgqJiTY >> 32)), Float.intBitsToFloat((int) (jMo9333transformXgqJiTY & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    /* JADX INFO: renamed from: unaryMinus-DnnuFBc, reason: not valid java name */
    public static final long m9332unaryMinusDnnuFBc(long j) {
        return FloatFloatPair.m1016constructorimpl(-m9324getXDnnuFBc(j), -m9325getYDnnuFBc(j));
    }
}
