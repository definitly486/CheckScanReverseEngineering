package androidx.compose.ui.graphics;

import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class TransformOriginKt {
    public static final long TransformOrigin(float f, float f2) {
        return TransformOrigin.m6635constructorimpl((((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32));
    }
}
