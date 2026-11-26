package androidx.compose.ui.geometry;

import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class MutableRectKt {
    /* JADX INFO: renamed from: MutableRect-0a9Yr6o, reason: not valid java name */
    public static final MutableRect m5973MutableRect0a9Yr6o(long j, long j2) {
        return new MutableRect(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    /* JADX INFO: renamed from: MutableRect-3MmeM6k, reason: not valid java name */
    public static final MutableRect m5974MutableRect3MmeM6k(long j, float f) {
        int i = (int) (j >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i) - f;
        int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        return new MutableRect(fIntBitsToFloat, Float.intBitsToFloat(i2) - f, Float.intBitsToFloat(i) + f, Float.intBitsToFloat(i2) + f);
    }

    /* JADX INFO: renamed from: MutableRect-tz77jQw, reason: not valid java name */
    public static final MutableRect m5975MutableRecttz77jQw(long j, long j2) {
        int i = (int) (j >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i);
        int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        return new MutableRect(fIntBitsToFloat, Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j2 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + Float.intBitsToFloat(i2));
    }

    public static final Rect toRect(MutableRect mutableRect) {
        return new Rect(mutableRect.getLeft(), mutableRect.getTop(), mutableRect.getRight(), mutableRect.getBottom());
    }
}
