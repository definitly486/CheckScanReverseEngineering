package androidx.compose.ui.graphics;

import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
final class RenderEffectVerificationHelper {
    public static final RenderEffectVerificationHelper INSTANCE = new RenderEffectVerificationHelper();

    private RenderEffectVerificationHelper() {
    }

    /* JADX INFO: renamed from: createBlurEffect-8A-3gB4, reason: not valid java name */
    public final android.graphics.RenderEffect m6558createBlurEffect8A3gB4(RenderEffect renderEffect, float f, float f2, int i) {
        if (f == 0.0f && f2 == 0.0f) {
            return android.graphics.RenderEffect.createOffsetEffect(0.0f, 0.0f);
        }
        return renderEffect == null ? android.graphics.RenderEffect.createBlurEffect(f, f2, AndroidTileMode_androidKt.m6135toAndroidTileMode0vamqd0(i)) : android.graphics.RenderEffect.createBlurEffect(f, f2, renderEffect.asAndroidRenderEffect(), AndroidTileMode_androidKt.m6135toAndroidTileMode0vamqd0(i));
    }

    /* JADX INFO: renamed from: createOffsetEffect-Uv8p0NA, reason: not valid java name */
    public final android.graphics.RenderEffect m6559createOffsetEffectUv8p0NA(RenderEffect renderEffect, long j) {
        return renderEffect == null ? android.graphics.RenderEffect.createOffsetEffect(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) : android.graphics.RenderEffect.createOffsetEffect(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), renderEffect.asAndroidRenderEffect());
    }
}
