package androidx.compose.foundation;

import androidx.compose.ui.unit.Dp;
import androidx.window.core.layout.WindowSizeClass;

/* JADX INFO: loaded from: classes.dex */
public final class MarqueeDefaults {
    public static final int $stable = 0;
    public static final MarqueeDefaults INSTANCE = new MarqueeDefaults();
    private static final int Iterations = 3;
    private static final int RepeatDelayMillis = WindowSizeClass.WIDTH_DP_LARGE_LOWER_BOUND;
    private static final MarqueeSpacing Spacing = MarqueeSpacing.Companion.fractionOfContainer(0.33333334f);
    private static final float Velocity = Dp.m9042constructorimpl(30.0f);

    private MarqueeDefaults() {
    }

    public static /* synthetic */ void getIterations$annotations() {
    }

    public static /* synthetic */ void getRepeatDelayMillis$annotations() {
    }

    public final int getIterations() {
        return Iterations;
    }

    public final int getRepeatDelayMillis() {
        return RepeatDelayMillis;
    }

    public final MarqueeSpacing getSpacing() {
        return Spacing;
    }

    /* JADX INFO: renamed from: getVelocity-D9Ej5fM, reason: not valid java name */
    public final float m1368getVelocityD9Ej5fM() {
        return Velocity;
    }
}
