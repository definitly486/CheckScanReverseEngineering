package androidx.compose.ui.util;

import androidx.collection.SieveCacheKt;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class InlineClassHelperKt {
    public static final long packFloats(float f, float f2) {
        return (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32);
    }

    public static final long packInts(int i, int i2) {
        return (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32);
    }

    public static final float unpackAbsFloat1(long j) {
        return Float.intBitsToFloat((int) ((j >> 32) & SieveCacheKt.NodeLinkMask));
    }

    public static final float unpackAbsFloat2(long j) {
        return Float.intBitsToFloat((int) (j & SieveCacheKt.NodeLinkMask));
    }

    public static final float unpackFloat1(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    public static final float unpackFloat2(long j) {
        return Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public static final int unpackInt1(long j) {
        return (int) (j >> 32);
    }

    public static final int unpackInt2(long j) {
        return (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }
}
