package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes.dex */
public final class TextLayoutResultProxyKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: coerceIn-3MmeM6k, reason: not valid java name */
    public static final long m2633coerceIn3MmeM6k(long j, Rect rect) {
        float right;
        float bottom;
        int i = (int) (j >> 32);
        if (Float.intBitsToFloat(i) < rect.getLeft()) {
            right = rect.getLeft();
        } else {
            right = Float.intBitsToFloat(i) > rect.getRight() ? rect.getRight() : Float.intBitsToFloat(i);
        }
        int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        if (Float.intBitsToFloat(i2) < rect.getTop()) {
            bottom = rect.getTop();
        } else {
            bottom = Float.intBitsToFloat(i2) > rect.getBottom() ? rect.getBottom() : Float.intBitsToFloat(i2);
        }
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(right)) << 32) | (((long) Float.floatToRawIntBits(bottom)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }
}
