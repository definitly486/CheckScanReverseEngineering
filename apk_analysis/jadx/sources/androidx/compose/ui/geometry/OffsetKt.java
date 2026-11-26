package androidx.compose.ui.geometry;

import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class OffsetKt {
    public static final long Offset(float f, float f2) {
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32));
    }

    /* JADX INFO: renamed from: isFinite-k-4lQ0M, reason: not valid java name */
    public static final boolean m6004isFinitek4lQ0M(long j) {
        return ((((j & InlineClassHelperKt.DualFloatInfinityBase) ^ InlineClassHelperKt.DualFloatInfinityBase) - InlineClassHelperKt.Uint64Low32) & (-9223372034707292160L)) == 0;
    }

    /* JADX INFO: renamed from: isFinite-k-4lQ0M$annotations, reason: not valid java name */
    public static /* synthetic */ void m6005isFinitek4lQ0M$annotations(long j) {
    }

    /* JADX INFO: renamed from: isSpecified-k-4lQ0M, reason: not valid java name */
    public static final boolean m6006isSpecifiedk4lQ0M(long j) {
        return (j & 9223372034707292159L) != InlineClassHelperKt.UnspecifiedPackedFloats;
    }

    /* JADX INFO: renamed from: isSpecified-k-4lQ0M$annotations, reason: not valid java name */
    public static /* synthetic */ void m6007isSpecifiedk4lQ0M$annotations(long j) {
    }

    /* JADX INFO: renamed from: isUnspecified-k-4lQ0M, reason: not valid java name */
    public static final boolean m6008isUnspecifiedk4lQ0M(long j) {
        return (j & 9223372034707292159L) == InlineClassHelperKt.UnspecifiedPackedFloats;
    }

    /* JADX INFO: renamed from: isUnspecified-k-4lQ0M$annotations, reason: not valid java name */
    public static /* synthetic */ void m6009isUnspecifiedk4lQ0M$annotations(long j) {
    }

    /* JADX INFO: renamed from: lerp-Wko1d7g, reason: not valid java name */
    public static final long m6010lerpWko1d7g(long j, long j2, float f) {
        float fLerp = MathHelpersKt.lerp(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j2 >> 32)), f);
        float fLerp2 = MathHelpersKt.lerp(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), f);
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fLerp)) << 32) | (((long) Float.floatToRawIntBits(fLerp2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: takeOrElse-3MmeM6k, reason: not valid java name */
    public static final long m6011takeOrElse3MmeM6k(long j, ll3<Offset> ll3Var) {
        return (9223372034707292159L & j) != InlineClassHelperKt.UnspecifiedPackedFloats ? j : ll3Var.invoke().m5997unboximpl();
    }
}
