package androidx.compose.animation.core;

import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes.dex */
public final class SpringSimulationKt {
    public static final long Motion(float f, float f2) {
        return Motion.m1218constructorimpl((((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32));
    }
}
