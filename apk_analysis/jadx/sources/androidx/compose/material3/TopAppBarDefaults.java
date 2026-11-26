package androidx.compose.material3;

import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsSides;
import androidx.compose.material3.internal.SystemBarsDefaultInsets_androidKt;
import androidx.compose.material3.tokens.AppBarLargeFlexibleTokens;
import androidx.compose.material3.tokens.AppBarLargeTokens;
import androidx.compose.material3.tokens.AppBarMediumFlexibleTokens;
import androidx.compose.material3.tokens.AppBarMediumTokens;
import androidx.compose.material3.tokens.AppBarSmallTokens;
import androidx.compose.material3.tokens.AppBarTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import defpackage.ar2;
import defpackage.ll3;
import defpackage.qt4;
import defpackage.rt4;
import defpackage.ul2;
import defpackage.zq2;

/* JADX INFO: loaded from: classes2.dex */
public final class TopAppBarDefaults {
    public static final int $stable = 0;
    public static final TopAppBarDefaults INSTANCE = new TopAppBarDefaults();
    private static final float LargeAppBarCollapsedHeight;
    private static final float LargeAppBarExpandedHeight;
    private static final float LargeFlexibleAppBarWithSubtitleExpandedHeight;
    private static final float LargeFlexibleAppBarWithoutSubtitleExpandedHeight;
    private static final float MediumAppBarCollapsedHeight;
    private static final float MediumAppBarExpandedHeight;
    private static final float MediumFlexibleAppBarWithSubtitleExpandedHeight;
    private static final float MediumFlexibleAppBarWithoutSubtitleExpandedHeight;
    private static final float TopAppBarExpandedHeight;

    static {
        AppBarSmallTokens appBarSmallTokens = AppBarSmallTokens.INSTANCE;
        TopAppBarExpandedHeight = appBarSmallTokens.m4491getContainerHeightD9Ej5fM();
        MediumAppBarCollapsedHeight = appBarSmallTokens.m4491getContainerHeightD9Ej5fM();
        MediumAppBarExpandedHeight = AppBarMediumTokens.INSTANCE.m4490getContainerHeightD9Ej5fM();
        AppBarMediumFlexibleTokens appBarMediumFlexibleTokens = AppBarMediumFlexibleTokens.INSTANCE;
        MediumFlexibleAppBarWithoutSubtitleExpandedHeight = appBarMediumFlexibleTokens.m4488getContainerHeightD9Ej5fM();
        MediumFlexibleAppBarWithSubtitleExpandedHeight = appBarMediumFlexibleTokens.m4489getLargeContainerHeightD9Ej5fM();
        LargeAppBarCollapsedHeight = appBarSmallTokens.m4491getContainerHeightD9Ej5fM();
        LargeAppBarExpandedHeight = AppBarLargeTokens.INSTANCE.m4487getContainerHeightD9Ej5fM();
        AppBarLargeFlexibleTokens appBarLargeFlexibleTokens = AppBarLargeFlexibleTokens.INSTANCE;
        LargeFlexibleAppBarWithoutSubtitleExpandedHeight = appBarLargeFlexibleTokens.m4485getContainerHeightD9Ej5fM();
        LargeFlexibleAppBarWithSubtitleExpandedHeight = appBarLargeFlexibleTokens.m4486getLargeContainerHeightD9Ej5fM();
    }

    private TopAppBarDefaults() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean enterAlwaysScrollBehavior$lambda$5$lambda$4() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean enterAlwaysScrollBehavior$lambda$7$lambda$6() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean exitUntilCollapsedScrollBehavior$lambda$10$lambda$9() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean pinnedScrollBehavior$lambda$2$lambda$1() {
        return true;
    }

    @ul2
    public final TopAppBarColors centerAlignedTopAppBarColors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(513940029, i, -1, "androidx.compose.material3.TopAppBarDefaults.centerAlignedTopAppBarColors (AppBar.kt:1540)");
        }
        TopAppBarColors defaultTopAppBarColors$material3 = getDefaultTopAppBarColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultTopAppBarColors$material3;
    }

    @ul2
    /* JADX INFO: renamed from: centerAlignedTopAppBarColors-zjMxDiM, reason: not valid java name */
    public final TopAppBarColors m4288centerAlignedTopAppBarColorszjMxDiM(long j, long j2, long j3, long j4, long j5, Composer composer, int i, int i2) {
        long jM6268getUnspecified0d7_KjU = (i2 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM6268getUnspecified0d7_KjU2 = (i2 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j2;
        long jM6268getUnspecified0d7_KjU3 = (i2 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        long jM6268getUnspecified0d7_KjU4 = (i2 & 8) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j4;
        long jM6268getUnspecified0d7_KjU5 = (i2 & 16) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j5;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1896017784, i, -1, "androidx.compose.material3.TopAppBarDefaults.centerAlignedTopAppBarColors (AppBar.kt:1570)");
        }
        TopAppBarColors topAppBarColorsM4279copytNS2XkQ$default = TopAppBarColors.m4279copytNS2XkQ$default(getDefaultTopAppBarColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6)), jM6268getUnspecified0d7_KjU, jM6268getUnspecified0d7_KjU2, jM6268getUnspecified0d7_KjU3, jM6268getUnspecified0d7_KjU4, jM6268getUnspecified0d7_KjU5, 0L, 32, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return topAppBarColorsM4279copytNS2XkQ$default;
    }

    public final TopAppBarScrollBehavior enterAlwaysScrollBehavior(TopAppBarState topAppBarState, ll3<Boolean> ll3Var, AnimationSpec<Float> animationSpec, DecayAnimationSpec<Float> decayAnimationSpec, boolean z, Composer composer, int i, int i2) {
        Composer composer2;
        if ((i2 & 1) != 0) {
            composer2 = composer;
            topAppBarState = AppBarKt.rememberTopAppBarState(0.0f, 0.0f, 0.0f, composer2, 0, 7);
        } else {
            composer2 = composer;
        }
        if ((i2 & 2) != 0) {
            Object objRememberedValue = composer2.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new zq2(3);
                composer2.updateRememberedValue(objRememberedValue);
            }
            ll3Var = (ll3) objRememberedValue;
        }
        ll3<Boolean> ll3Var2 = ll3Var;
        if ((i2 & 4) != 0) {
            animationSpec = MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composer2, 6);
        }
        if ((i2 & 8) != 0) {
            decayAnimationSpec = SplineBasedFloatDecayAnimationSpec_androidKt.rememberSplineBasedDecay(composer2, 0);
        }
        if ((i2 & 16) != 0) {
            z = false;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(53729710, i, -1, "androidx.compose.material3.TopAppBarDefaults.enterAlwaysScrollBehavior (AppBar.kt:1762)");
        }
        boolean zChanged = ((((i & 14) ^ 6) > 4 && composer2.changed(topAppBarState)) || (i & 6) == 4) | ((((i & 112) ^ 48) > 32 && composer2.changed(ll3Var2)) || (i & 48) == 32) | composer2.changed(animationSpec) | composer2.changed(decayAnimationSpec) | ((((57344 & i) ^ 24576) > 16384 && composer2.changed(z)) || (i & 24576) == 16384);
        Object objRememberedValue2 = composer2.rememberedValue();
        if (zChanged || objRememberedValue2 == Composer.Companion.getEmpty()) {
            objRememberedValue2 = new EnterAlwaysScrollBehavior(topAppBarState, animationSpec, decayAnimationSpec, ll3Var2, z);
            composer2.updateRememberedValue(objRememberedValue2);
        }
        EnterAlwaysScrollBehavior enterAlwaysScrollBehavior = (EnterAlwaysScrollBehavior) objRememberedValue2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return enterAlwaysScrollBehavior;
    }

    public final TopAppBarScrollBehavior exitUntilCollapsedScrollBehavior(TopAppBarState topAppBarState, ll3<Boolean> ll3Var, AnimationSpec<Float> animationSpec, DecayAnimationSpec<Float> decayAnimationSpec, Composer composer, int i, int i2) {
        Composer composer2;
        if ((i2 & 1) != 0) {
            composer2 = composer;
            topAppBarState = AppBarKt.rememberTopAppBarState(0.0f, 0.0f, 0.0f, composer2, 0, 7);
        } else {
            composer2 = composer;
        }
        if ((i2 & 2) != 0) {
            Object objRememberedValue = composer2.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new qt4(2);
                composer2.updateRememberedValue(objRememberedValue);
            }
            ll3Var = (ll3) objRememberedValue;
        }
        if ((i2 & 4) != 0) {
            animationSpec = MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composer2, 6);
        }
        if ((i2 & 8) != 0) {
            decayAnimationSpec = SplineBasedFloatDecayAnimationSpec_androidKt.rememberSplineBasedDecay(composer2, 0);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1757023234, i, -1, "androidx.compose.material3.TopAppBarDefaults.exitUntilCollapsedScrollBehavior (AppBar.kt:1801)");
        }
        boolean zChanged = ((((i & 14) ^ 6) > 4 && composer2.changed(topAppBarState)) || (i & 6) == 4) | ((((i & 112) ^ 48) > 32 && composer2.changed(ll3Var)) || (i & 48) == 32) | composer2.changed(animationSpec) | composer2.changed(decayAnimationSpec);
        Object objRememberedValue2 = composer2.rememberedValue();
        if (zChanged || objRememberedValue2 == Composer.Companion.getEmpty()) {
            objRememberedValue2 = new ExitUntilCollapsedScrollBehavior(topAppBarState, animationSpec, decayAnimationSpec, ll3Var);
            composer2.updateRememberedValue(objRememberedValue2);
        }
        ExitUntilCollapsedScrollBehavior exitUntilCollapsedScrollBehavior = (ExitUntilCollapsedScrollBehavior) objRememberedValue2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return exitUntilCollapsedScrollBehavior;
    }

    public final TopAppBarColors getDefaultTopAppBarColors$material3(ColorScheme colorScheme) {
        TopAppBarColors defaultTopAppBarColorsCached$material3 = colorScheme.getDefaultTopAppBarColorsCached$material3();
        if (defaultTopAppBarColorsCached$material3 != null) {
            return defaultTopAppBarColorsCached$material3;
        }
        AppBarTokens appBarTokens = AppBarTokens.INSTANCE;
        TopAppBarColors topAppBarColors = new TopAppBarColors(ColorSchemeKt.fromToken(colorScheme, appBarTokens.getContainerColor()), ColorSchemeKt.fromToken(colorScheme, appBarTokens.getOnScrollContainerColor()), ColorSchemeKt.fromToken(colorScheme, appBarTokens.getLeadingIconColor()), ColorSchemeKt.fromToken(colorScheme, appBarTokens.getTitleColor()), ColorSchemeKt.fromToken(colorScheme, appBarTokens.getTrailingIconColor()), ColorSchemeKt.fromToken(colorScheme, appBarTokens.getSubtitleColor()), null);
        colorScheme.setDefaultTopAppBarColorsCached$material3(topAppBarColors);
        return topAppBarColors;
    }

    /* JADX INFO: renamed from: getLargeAppBarCollapsedHeight-D9Ej5fM, reason: not valid java name */
    public final float m4289getLargeAppBarCollapsedHeightD9Ej5fM() {
        return LargeAppBarCollapsedHeight;
    }

    /* JADX INFO: renamed from: getLargeAppBarExpandedHeight-D9Ej5fM, reason: not valid java name */
    public final float m4290getLargeAppBarExpandedHeightD9Ej5fM() {
        return LargeAppBarExpandedHeight;
    }

    /* JADX INFO: renamed from: getLargeFlexibleAppBarWithSubtitleExpandedHeight-D9Ej5fM, reason: not valid java name */
    public final float m4291getLargeFlexibleAppBarWithSubtitleExpandedHeightD9Ej5fM() {
        return LargeFlexibleAppBarWithSubtitleExpandedHeight;
    }

    /* JADX INFO: renamed from: getLargeFlexibleAppBarWithoutSubtitleExpandedHeight-D9Ej5fM, reason: not valid java name */
    public final float m4292getLargeFlexibleAppBarWithoutSubtitleExpandedHeightD9Ej5fM() {
        return LargeFlexibleAppBarWithoutSubtitleExpandedHeight;
    }

    /* JADX INFO: renamed from: getMediumAppBarCollapsedHeight-D9Ej5fM, reason: not valid java name */
    public final float m4293getMediumAppBarCollapsedHeightD9Ej5fM() {
        return MediumAppBarCollapsedHeight;
    }

    /* JADX INFO: renamed from: getMediumAppBarExpandedHeight-D9Ej5fM, reason: not valid java name */
    public final float m4294getMediumAppBarExpandedHeightD9Ej5fM() {
        return MediumAppBarExpandedHeight;
    }

    /* JADX INFO: renamed from: getMediumFlexibleAppBarWithSubtitleExpandedHeight-D9Ej5fM, reason: not valid java name */
    public final float m4295getMediumFlexibleAppBarWithSubtitleExpandedHeightD9Ej5fM() {
        return MediumFlexibleAppBarWithSubtitleExpandedHeight;
    }

    /* JADX INFO: renamed from: getMediumFlexibleAppBarWithoutSubtitleExpandedHeight-D9Ej5fM, reason: not valid java name */
    public final float m4296getMediumFlexibleAppBarWithoutSubtitleExpandedHeightD9Ej5fM() {
        return MediumFlexibleAppBarWithoutSubtitleExpandedHeight;
    }

    /* JADX INFO: renamed from: getTopAppBarExpandedHeight-D9Ej5fM, reason: not valid java name */
    public final float m4297getTopAppBarExpandedHeightD9Ej5fM() {
        return TopAppBarExpandedHeight;
    }

    public final WindowInsets getWindowInsets(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2143182847, i, -1, "androidx.compose.material3.TopAppBarDefaults.<get-windowInsets> (AppBar.kt:1526)");
        }
        WindowInsets systemBarsForVisualComponents = SystemBarsDefaultInsets_androidKt.getSystemBarsForVisualComponents(WindowInsets.Companion, composer, 6);
        WindowInsetsSides.Companion companion = WindowInsetsSides.Companion;
        WindowInsets windowInsetsM2126onlybOOhFvg = WindowInsetsKt.m2126onlybOOhFvg(systemBarsForVisualComponents, WindowInsetsSides.m2138plusgK_yJZ4(companion.m2148getHorizontalJoeWqyM(), companion.m2152getTopJoeWqyM()));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return windowInsetsM2126onlybOOhFvg;
    }

    @ul2
    public final TopAppBarColors largeTopAppBarColors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1744932393, i, -1, "androidx.compose.material3.TopAppBarDefaults.largeTopAppBarColors (AppBar.kt:1639)");
        }
        TopAppBarColors defaultTopAppBarColors$material3 = getDefaultTopAppBarColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultTopAppBarColors$material3;
    }

    @ul2
    /* JADX INFO: renamed from: largeTopAppBarColors-zjMxDiM, reason: not valid java name */
    public final TopAppBarColors m4298largeTopAppBarColorszjMxDiM(long j, long j2, long j3, long j4, long j5, Composer composer, int i, int i2) {
        long jM6268getUnspecified0d7_KjU = (i2 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM6268getUnspecified0d7_KjU2 = (i2 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j2;
        long jM6268getUnspecified0d7_KjU3 = (i2 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        long jM6268getUnspecified0d7_KjU4 = (i2 & 8) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j4;
        long jM6268getUnspecified0d7_KjU5 = (i2 & 16) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j5;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1471507700, i, -1, "androidx.compose.material3.TopAppBarDefaults.largeTopAppBarColors (AppBar.kt:1670)");
        }
        TopAppBarColors topAppBarColorsM4279copytNS2XkQ$default = TopAppBarColors.m4279copytNS2XkQ$default(getDefaultTopAppBarColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6)), jM6268getUnspecified0d7_KjU, jM6268getUnspecified0d7_KjU2, jM6268getUnspecified0d7_KjU3, jM6268getUnspecified0d7_KjU4, jM6268getUnspecified0d7_KjU5, 0L, 32, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return topAppBarColorsM4279copytNS2XkQ$default;
    }

    @ul2
    public final TopAppBarColors mediumTopAppBarColors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1268886463, i, -1, "androidx.compose.material3.TopAppBarDefaults.mediumTopAppBarColors (AppBar.kt:1589)");
        }
        TopAppBarColors defaultTopAppBarColors$material3 = getDefaultTopAppBarColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultTopAppBarColors$material3;
    }

    @ul2
    /* JADX INFO: renamed from: mediumTopAppBarColors-zjMxDiM, reason: not valid java name */
    public final TopAppBarColors m4299mediumTopAppBarColorszjMxDiM(long j, long j2, long j3, long j4, long j5, Composer composer, int i, int i2) {
        long jM6268getUnspecified0d7_KjU = (i2 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM6268getUnspecified0d7_KjU2 = (i2 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j2;
        long jM6268getUnspecified0d7_KjU3 = (i2 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        long jM6268getUnspecified0d7_KjU4 = (i2 & 8) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j4;
        long jM6268getUnspecified0d7_KjU5 = (i2 & 16) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j5;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-582474442, i, -1, "androidx.compose.material3.TopAppBarDefaults.mediumTopAppBarColors (AppBar.kt:1620)");
        }
        TopAppBarColors topAppBarColorsM4279copytNS2XkQ$default = TopAppBarColors.m4279copytNS2XkQ$default(getDefaultTopAppBarColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6)), jM6268getUnspecified0d7_KjU, jM6268getUnspecified0d7_KjU2, jM6268getUnspecified0d7_KjU3, jM6268getUnspecified0d7_KjU4, jM6268getUnspecified0d7_KjU5, 0L, 32, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return topAppBarColorsM4279copytNS2XkQ$default;
    }

    public final TopAppBarScrollBehavior pinnedScrollBehavior(TopAppBarState topAppBarState, ll3<Boolean> ll3Var, Composer composer, int i, int i2) {
        Composer composer2;
        if ((i2 & 1) != 0) {
            composer2 = composer;
            topAppBarState = AppBarKt.rememberTopAppBarState(0.0f, 0.0f, 0.0f, composer2, 0, 7);
        } else {
            composer2 = composer;
        }
        int i3 = 4;
        if ((i2 & 2) != 0) {
            Object objRememberedValue = composer2.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new ar2(i3);
                composer2.updateRememberedValue(objRememberedValue);
            }
            ll3Var = (ll3) objRememberedValue;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(286497075, i, -1, "androidx.compose.material3.TopAppBarDefaults.pinnedScrollBehavior (AppBar.kt:1695)");
        }
        boolean z = ((((i & 14) ^ 6) > 4 && composer2.changed(topAppBarState)) || (i & 6) == 4) | ((((i & 112) ^ 48) > 32 && composer2.changed(ll3Var)) || (i & 48) == 32);
        Object objRememberedValue2 = composer2.rememberedValue();
        if (z || objRememberedValue2 == Composer.Companion.getEmpty()) {
            objRememberedValue2 = new PinnedScrollBehavior(topAppBarState, ll3Var);
            composer2.updateRememberedValue(objRememberedValue2);
        }
        PinnedScrollBehavior pinnedScrollBehavior = (PinnedScrollBehavior) objRememberedValue2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return pinnedScrollBehavior;
    }

    public final TopAppBarColors topAppBarColors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1388520854, i, -1, "androidx.compose.material3.TopAppBarDefaults.topAppBarColors (AppBar.kt:1444)");
        }
        TopAppBarColors defaultTopAppBarColors$material3 = getDefaultTopAppBarColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultTopAppBarColors$material3;
    }

    /* JADX INFO: renamed from: topAppBarColors-5tl4gsc, reason: not valid java name */
    public final TopAppBarColors m4300topAppBarColors5tl4gsc(long j, long j2, long j3, long j4, long j5, long j6, Composer composer, int i, int i2) {
        long jM6268getUnspecified0d7_KjU = (i2 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM6268getUnspecified0d7_KjU2 = (i2 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j2;
        long jM6268getUnspecified0d7_KjU3 = (i2 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        long jM6268getUnspecified0d7_KjU4 = (i2 & 8) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j4;
        long jM6268getUnspecified0d7_KjU5 = (i2 & 16) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j5;
        long jM6268getUnspecified0d7_KjU6 = (i2 & 32) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1325733438, i, -1, "androidx.compose.material3.TopAppBarDefaults.topAppBarColors (AppBar.kt:1467)");
        }
        TopAppBarColors topAppBarColorsM4281copytNS2XkQ = getDefaultTopAppBarColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6)).m4281copytNS2XkQ(jM6268getUnspecified0d7_KjU, jM6268getUnspecified0d7_KjU2, jM6268getUnspecified0d7_KjU3, jM6268getUnspecified0d7_KjU4, jM6268getUnspecified0d7_KjU5, jM6268getUnspecified0d7_KjU6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return topAppBarColorsM4281copytNS2XkQ;
    }

    @ul2
    /* JADX INFO: renamed from: topAppBarColors-zjMxDiM, reason: not valid java name */
    public final /* synthetic */ TopAppBarColors m4301topAppBarColorszjMxDiM(long j, long j2, long j3, long j4, long j5, Composer composer, int i, int i2) {
        long jM6268getUnspecified0d7_KjU = (i2 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM6268getUnspecified0d7_KjU2 = (i2 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j2;
        long jM6268getUnspecified0d7_KjU3 = (i2 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        long jM6268getUnspecified0d7_KjU4 = (i2 & 8) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j4;
        long jM6268getUnspecified0d7_KjU5 = (i2 & 16) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j5;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2142919275, i, -1, "androidx.compose.material3.TopAppBarDefaults.topAppBarColors (AppBar.kt:1499)");
        }
        TopAppBarColors topAppBarColorsM4300topAppBarColors5tl4gsc = m4300topAppBarColors5tl4gsc(jM6268getUnspecified0d7_KjU, jM6268getUnspecified0d7_KjU2, jM6268getUnspecified0d7_KjU3, jM6268getUnspecified0d7_KjU4, jM6268getUnspecified0d7_KjU5, jM6268getUnspecified0d7_KjU4, composer, (65534 & i) | ((i << 6) & 458752) | ((i << 3) & 3670016), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return topAppBarColorsM4300topAppBarColors5tl4gsc;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ul2
    public final /* synthetic */ TopAppBarScrollBehavior enterAlwaysScrollBehavior(TopAppBarState topAppBarState, ll3 ll3Var, AnimationSpec animationSpec, DecayAnimationSpec decayAnimationSpec, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            topAppBarState = AppBarKt.rememberTopAppBarState(0.0f, 0.0f, 0.0f, composer, 0, 7);
        }
        TopAppBarState topAppBarState2 = topAppBarState;
        if ((i2 & 2) != 0) {
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new rt4(2);
                composer.updateRememberedValue(objRememberedValue);
            }
            ll3Var = (ll3) objRememberedValue;
        }
        ll3 ll3Var2 = ll3Var;
        if ((i2 & 4) != 0) {
            animationSpec = MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composer, 6);
        }
        AnimationSpec animationSpec2 = animationSpec;
        if ((i2 & 8) != 0) {
            decayAnimationSpec = SplineBasedFloatDecayAnimationSpec_androidKt.rememberSplineBasedDecay(composer, 0);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(959086674, i, -1, "androidx.compose.material3.TopAppBarDefaults.enterAlwaysScrollBehavior (AppBar.kt:1723)");
        }
        TopAppBarScrollBehavior topAppBarScrollBehaviorEnterAlwaysScrollBehavior = enterAlwaysScrollBehavior(topAppBarState2, ll3Var2, animationSpec2, decayAnimationSpec, false, composer, (i & 14) | 24576 | (i & 112) | (i & 896) | (i & 7168) | ((i << 3) & 458752), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return topAppBarScrollBehaviorEnterAlwaysScrollBehavior;
    }
}
