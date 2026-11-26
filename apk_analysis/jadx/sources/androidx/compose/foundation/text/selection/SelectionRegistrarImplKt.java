package androidx.compose.foundation.text.selection;

import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes.dex */
public final class SelectionRegistrarImplKt {
    /* JADX INFO: renamed from: inARow-zwwh4xc, reason: not valid java name */
    public static final boolean m3023inARowzwwh4xc(long j, long j2, long j3, long j4) {
        int i = (int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        float fIntBitsToFloat = Float.intBitsToFloat(i);
        int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        float fIntBitsToFloat2 = fIntBitsToFloat - Float.intBitsToFloat(i2);
        int i3 = (int) (j2 >> 32);
        int i4 = (int) (j >> 32);
        float fIntBitsToFloat3 = Float.intBitsToFloat(i3) - Float.intBitsToFloat(i4);
        int i5 = (int) (j4 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        float fIntBitsToFloat4 = Float.intBitsToFloat(i5);
        int i6 = (int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j3);
        float fIntBitsToFloat5 = fIntBitsToFloat4 - Float.intBitsToFloat(i6);
        int i7 = (int) (j4 >> 32);
        int i8 = (int) (j3 >> 32);
        float fIntBitsToFloat6 = Float.intBitsToFloat(i7) - Float.intBitsToFloat(i8);
        float fMax = Math.max(0.0f, Math.min(Float.intBitsToFloat(i), Float.intBitsToFloat(i5)) - Math.max(Float.intBitsToFloat(i2), Float.intBitsToFloat(i6)));
        float fMax2 = Math.max(0.0f, Math.min(Float.intBitsToFloat(i3), Float.intBitsToFloat(i7)) - Math.max(Float.intBitsToFloat(i4), Float.intBitsToFloat(i8)));
        return ((fMax > (fIntBitsToFloat2 * 0.5f) ? 1 : (fMax == (fIntBitsToFloat2 * 0.5f) ? 0 : -1)) >= 0 || (fMax > (fIntBitsToFloat5 * 0.5f) ? 1 : (fMax == (fIntBitsToFloat5 * 0.5f) ? 0 : -1)) >= 0) && ((fMax2 > (fIntBitsToFloat3 * 0.5f) ? 1 : (fMax2 == (fIntBitsToFloat3 * 0.5f) ? 0 : -1)) < 0 && (fMax2 > (fIntBitsToFloat6 * 0.5f) ? 1 : (fMax2 == (fIntBitsToFloat6 * 0.5f) ? 0 : -1)) < 0);
    }
}
