package defpackage;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsSizeKt;
import androidx.compose.foundation.layout.WindowInsetsWidthCalculator;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xu2 implements Interpolator, WindowInsetsWidthCalculator {
    @Override // androidx.compose.foundation.layout.WindowInsetsWidthCalculator
    public int calculate(WindowInsets windowInsets, LayoutDirection layoutDirection, Density density) {
        return WindowInsetsSizeKt.endCalc$lambda$0(windowInsets, layoutDirection, density);
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public float getInterpolation(float f) {
        return Transition.lambda$getInterpolator$2(f);
    }
}
