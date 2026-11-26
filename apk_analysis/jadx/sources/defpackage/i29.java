package defpackage;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsHeightCalculator;
import androidx.compose.ui.unit.Density;
import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i29 implements Interpolator, WindowInsetsHeightCalculator {
    public static /* synthetic */ void a(Throwable th) {
        throw new IllegalStateException(th);
    }

    @Override // androidx.compose.foundation.layout.WindowInsetsHeightCalculator
    public int calculate(WindowInsets windowInsets, Density density) {
        return windowInsets.getBottom(density);
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public float getInterpolation(float f) {
        return Transition.lambda$getInterpolator$3(f);
    }
}
