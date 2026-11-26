package androidx.compose.ui.geometry;

import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes.dex */
public final class RectKt {
    /* JADX INFO: renamed from: Rect-0a9Yr6o, reason: not valid java name */
    public static final Rect m6025Rect0a9Yr6o(long j, long j2) {
        return new Rect(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    /* JADX INFO: renamed from: Rect-3MmeM6k, reason: not valid java name */
    public static final Rect m6026Rect3MmeM6k(long j, float f) {
        int i = (int) (j >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i) - f;
        int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        return new Rect(fIntBitsToFloat, Float.intBitsToFloat(i2) - f, Float.intBitsToFloat(i) + f, Float.intBitsToFloat(i2) + f);
    }

    /* JADX INFO: renamed from: Rect-tz77jQw, reason: not valid java name */
    public static final Rect m6027Recttz77jQw(long j, long j2) {
        int i = (int) (j >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i);
        int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        return new Rect(fIntBitsToFloat, Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j2 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + Float.intBitsToFloat(i2));
    }

    public static final Rect lerp(Rect rect, Rect rect2, float f) {
        return new Rect(MathHelpersKt.lerp(rect.getLeft(), rect2.getLeft(), f), MathHelpersKt.lerp(rect.getTop(), rect2.getTop(), f), MathHelpersKt.lerp(rect.getRight(), rect2.getRight(), f), MathHelpersKt.lerp(rect.getBottom(), rect2.getBottom(), f));
    }
}
