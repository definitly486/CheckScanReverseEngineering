package androidx.compose.ui.unit;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class IntOffsetKt {
    public static final long IntOffset(int i, int i2) {
        return IntOffset.m9164constructorimpl((((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32));
    }

    /* JADX INFO: renamed from: lerp-81ZRxRo, reason: not valid java name */
    public static final long m9182lerp81ZRxRo(long j, long j2, float f) {
        return IntOffset.m9164constructorimpl((((long) MathHelpersKt.lerp(IntOffset.m9170getXimpl(j), IntOffset.m9170getXimpl(j2), f)) << 32) | (((long) MathHelpersKt.lerp(IntOffset.m9171getYimpl(j), IntOffset.m9171getYimpl(j2), f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: minus-Nv-tHpc, reason: not valid java name */
    public static final long m9183minusNvtHpc(long j, long j2) {
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j >> 32)) - IntOffset.m9170getXimpl(j2))) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - IntOffset.m9171getYimpl(j2))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: minus-oCl6YwE, reason: not valid java name */
    public static final long m9184minusoCl6YwE(long j, long j2) {
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(IntOffset.m9170getXimpl(j) - Float.intBitsToFloat((int) (j2 >> 32)))) << 32) | (((long) Float.floatToRawIntBits(IntOffset.m9171getYimpl(j) - Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: plus-Nv-tHpc, reason: not valid java name */
    public static final long m9185plusNvtHpc(long j, long j2) {
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j >> 32)) + IntOffset.m9170getXimpl(j2))) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + IntOffset.m9171getYimpl(j2))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: plus-oCl6YwE, reason: not valid java name */
    public static final long m9186plusoCl6YwE(long j, long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32)) + IntOffset.m9170getXimpl(j);
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + IntOffset.m9171getYimpl(j))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32));
    }

    /* JADX INFO: renamed from: round-k-4lQ0M, reason: not valid java name */
    public static final long m9187roundk4lQ0M(long j) {
        int iRound = Math.round(Float.intBitsToFloat((int) (j >> 32)));
        return IntOffset.m9164constructorimpl((((long) Math.round(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) iRound) << 32));
    }

    /* JADX INFO: renamed from: toOffset--gyyYBs, reason: not valid java name */
    public static final long m9188toOffsetgyyYBs(long j) {
        float fM9170getXimpl = IntOffset.m9170getXimpl(j);
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(IntOffset.m9171getYimpl(j))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fM9170getXimpl) << 32));
    }
}
