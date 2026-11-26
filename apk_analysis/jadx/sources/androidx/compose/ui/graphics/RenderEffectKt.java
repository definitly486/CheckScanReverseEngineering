package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class RenderEffectKt {
    /* JADX INFO: renamed from: BlurEffect-3YTHUZs, reason: not valid java name */
    public static final BlurEffect m6556BlurEffect3YTHUZs(float f, float f2, int i) {
        return new BlurEffect(null, f, f2, i, null);
    }

    /* JADX INFO: renamed from: BlurEffect-3YTHUZs$default, reason: not valid java name */
    public static /* synthetic */ BlurEffect m6557BlurEffect3YTHUZs$default(float f, float f2, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = TileMode.Companion.m6627getClamp3opZhB0();
        }
        return m6556BlurEffect3YTHUZs(f, f2, i);
    }

    public static final OffsetEffect OffsetEffect(float f, float f2) {
        return new OffsetEffect(null, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32)), null);
    }
}
