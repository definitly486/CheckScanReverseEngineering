package androidx.compose.material3;

import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsSides;
import androidx.compose.material3.internal.SystemBarsDefaultInsets_androidKt;
import androidx.compose.material3.tokens.BottomAppBarTokens;
import androidx.compose.material3.tokens.DockedToolbarTokens;
import androidx.compose.material3.tokens.FabSecondaryContainerTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.Dp;
import defpackage.ll3;
import defpackage.us0;

/* JADX INFO: loaded from: classes2.dex */
public final class BottomAppBarDefaults {
    public static final int $stable = 0;
    private static final float FlexibleBottomAppBarHeight;
    private static final PaddingValues FlexibleContentPadding;
    private static final Arrangement.Horizontal FlexibleFixedHorizontalArrangement;
    private static final Arrangement.Horizontal FlexibleHorizontalArrangement;
    public static final BottomAppBarDefaults INSTANCE = new BottomAppBarDefaults();
    private static final float ContainerElevation = Dp.m9042constructorimpl(0.0f);
    private static final PaddingValues ContentPadding = PaddingKt.m2030PaddingValuesa9UjIt4$default(AppBarKt.BottomAppBarHorizontalPadding, AppBarKt.getBottomAppBarVerticalPadding(), AppBarKt.BottomAppBarHorizontalPadding, 0.0f, 8, null);

    static {
        DockedToolbarTokens dockedToolbarTokens = DockedToolbarTokens.INSTANCE;
        FlexibleContentPadding = PaddingKt.m2030PaddingValuesa9UjIt4$default(dockedToolbarTokens.m4706getContainerLeadingSpaceD9Ej5fM(), 0.0f, dockedToolbarTokens.m4709getContainerTrailingSpaceD9Ej5fM(), 0.0f, 10, null);
        FlexibleBottomAppBarHeight = dockedToolbarTokens.m4705getContainerHeightD9Ej5fM();
        Arrangement arrangement = Arrangement.INSTANCE;
        FlexibleHorizontalArrangement = arrangement.getSpaceBetween();
        FlexibleFixedHorizontalArrangement = arrangement.m1741spacedByD5KLDUw(dockedToolbarTokens.m4707getContainerMaxSpacingD9Ej5fM(), Alignment.Companion.getCenterHorizontally());
    }

    private BottomAppBarDefaults() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean exitAlwaysScrollBehavior$lambda$1$lambda$0() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final BottomAppBarScrollBehavior exitAlwaysScrollBehavior(BottomAppBarState bottomAppBarState, ll3<Boolean> ll3Var, AnimationSpec<Float> animationSpec, DecayAnimationSpec<Float> decayAnimationSpec, Composer composer, int i, int i2) {
        Composer composer2;
        if ((i2 & 1) != 0) {
            composer2 = composer;
            bottomAppBarState = AppBarKt.rememberBottomAppBarState(0.0f, 0.0f, 0.0f, composer2, 0, 7);
        } else {
            composer2 = composer;
        }
        int i3 = 0;
        if ((i2 & 2) != 0) {
            Object objRememberedValue = composer2.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new us0(i3);
                composer2.updateRememberedValue(objRememberedValue);
            }
            ll3Var = (ll3) objRememberedValue;
        }
        if ((i2 & 4) != 0) {
            animationSpec = MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composer2, 6);
        }
        if ((i2 & 8) != 0) {
            decayAnimationSpec = SplineBasedFloatDecayAnimationSpec_androidKt.rememberSplineBasedDecay(composer2, 0);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(457144034, i, -1, "androidx.compose.material3.BottomAppBarDefaults.exitAlwaysScrollBehavior (AppBar.kt:2208)");
        }
        boolean z = ((((((((i & 14) ^ 6) <= 4 || !composer2.changed(bottomAppBarState)) && (i & 6) != 4) ? 0 : 1) | (((((i & 112) ^ 48) > 32 && composer2.changed(ll3Var)) || (i & 48) == 32) ? 1 : 0)) | (composer2.changed(animationSpec) ? 1 : 0)) == true ? 1 : 0) | (composer2.changed(decayAnimationSpec) ? 1 : 0);
        Object objRememberedValue2 = composer2.rememberedValue();
        if (z != 0 || objRememberedValue2 == Composer.Companion.getEmpty()) {
            objRememberedValue2 = new ExitAlwaysScrollBehavior(bottomAppBarState, animationSpec, decayAnimationSpec, ll3Var);
            composer2.updateRememberedValue(objRememberedValue2);
        }
        ExitAlwaysScrollBehavior exitAlwaysScrollBehavior = (ExitAlwaysScrollBehavior) objRememberedValue2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return exitAlwaysScrollBehavior;
    }

    public final long getBottomAppBarFabColor(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1464561486, i, -1, "androidx.compose.material3.BottomAppBarDefaults.<get-bottomAppBarFabColor> (AppBar.kt:2155)");
        }
        long value = ColorSchemeKt.getValue(FabSecondaryContainerTokens.INSTANCE.getContainerColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    public final long getContainerColor(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-368340078, i, -1, "androidx.compose.material3.BottomAppBarDefaults.<get-containerColor> (AppBar.kt:2128)");
        }
        long value = ColorSchemeKt.getValue(BottomAppBarTokens.INSTANCE.getContainerColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    /* JADX INFO: renamed from: getContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m3117getContainerElevationD9Ej5fM() {
        return ContainerElevation;
    }

    public final PaddingValues getContentPadding() {
        return ContentPadding;
    }

    /* JADX INFO: renamed from: getFlexibleBottomAppBarHeight-D9Ej5fM$material3, reason: not valid java name */
    public final float m3118getFlexibleBottomAppBarHeightD9Ej5fM$material3() {
        return FlexibleBottomAppBarHeight;
    }

    public final PaddingValues getFlexibleContentPadding$material3() {
        return FlexibleContentPadding;
    }

    public final Arrangement.Horizontal getFlexibleFixedHorizontalArrangement$material3() {
        return FlexibleFixedHorizontalArrangement;
    }

    public final Arrangement.Horizontal getFlexibleHorizontalArrangement$material3() {
        return FlexibleHorizontalArrangement;
    }

    public final WindowInsets getWindowInsets(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(688896409, i, -1, "androidx.compose.material3.BottomAppBarDefaults.<get-windowInsets> (AppBar.kt:2147)");
        }
        WindowInsets systemBarsForVisualComponents = SystemBarsDefaultInsets_androidKt.getSystemBarsForVisualComponents(WindowInsets.Companion, composer, 6);
        WindowInsetsSides.Companion companion = WindowInsetsSides.Companion;
        WindowInsets windowInsetsM2126onlybOOhFvg = WindowInsetsKt.m2126onlybOOhFvg(systemBarsForVisualComponents, WindowInsetsSides.m2138plusgK_yJZ4(companion.m2148getHorizontalJoeWqyM(), companion.m2146getBottomJoeWqyM()));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return windowInsetsM2126onlybOOhFvg;
    }
}
