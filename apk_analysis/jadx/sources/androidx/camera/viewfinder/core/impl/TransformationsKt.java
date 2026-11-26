package androidx.camera.viewfinder.core.impl;

import android.graphics.RectF;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes.dex */
public final class TransformationsKt {
    private static final RectF NORMALIZED_RECT = new RectF(-1.0f, -1.0f, 1.0f, 1.0f);

    public static final long OffsetF(float f, float f2) {
        return OffsetF.m996constructorimpl(packFloats(f, f2));
    }

    public static final long ScaleFactorF(float f, float f2) {
        return ScaleFactorF.m1005constructorimpl(packFloats(f, f2));
    }

    private static final float floatFromBits(int i) {
        return Float.intBitsToFloat(i);
    }

    private static final long packFloats(float f, float f2) {
        return (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float unpackFloat1(long j) {
        return floatFromBits((int) (j >> 32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float unpackFloat2(long j) {
        return floatFromBits((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }
}
