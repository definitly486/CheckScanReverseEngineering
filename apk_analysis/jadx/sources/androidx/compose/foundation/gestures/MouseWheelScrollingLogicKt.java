package androidx.compose.foundation.gestures;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes.dex */
public final class MouseWheelScrollingLogicKt {
    private static final int MaxAnimationDuration = 100;
    private static final long ScrollProgressTimeout = 50;
    private static final float AnimationThreshold = Dp.m9042constructorimpl(6.0f);
    private static final float AnimationSpeed = Dp.m9042constructorimpl(1.0f);

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isLowScrollingDelta(float f) {
        return Float.isNaN(f) || Math.abs(f) < 0.5f;
    }
}
