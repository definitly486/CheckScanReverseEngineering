package androidx.compose.material3;

import androidx.compose.material3.tokens.NavigationRailColorTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;

/* JADX INFO: loaded from: classes2.dex */
public final class WideNavigationRailItemDefaults {
    public static final int $stable = 0;
    public static final WideNavigationRailItemDefaults INSTANCE = new WideNavigationRailItemDefaults();

    private WideNavigationRailItemDefaults() {
    }

    private final NavigationItemColors getDefaultWideNavigationRailItemColors(ColorScheme colorScheme) {
        NavigationItemColors defaultWideNavigationRailItemColorsCached$material3 = colorScheme.getDefaultWideNavigationRailItemColorsCached$material3();
        if (defaultWideNavigationRailItemColorsCached$material3 != null) {
            return defaultWideNavigationRailItemColorsCached$material3;
        }
        NavigationRailColorTokens navigationRailColorTokens = NavigationRailColorTokens.INSTANCE;
        NavigationItemColors navigationItemColors = new NavigationItemColors(ColorSchemeKt.fromToken(colorScheme, navigationRailColorTokens.getItemActiveIcon()), ColorSchemeKt.fromToken(colorScheme, navigationRailColorTokens.getItemActiveLabelText()), ColorSchemeKt.fromToken(colorScheme, navigationRailColorTokens.getItemActiveIndicator()), ColorSchemeKt.fromToken(colorScheme, navigationRailColorTokens.getItemInactiveIcon()), ColorSchemeKt.fromToken(colorScheme, navigationRailColorTokens.getItemInactiveLabelText()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, navigationRailColorTokens.getItemInactiveIcon()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, navigationRailColorTokens.getItemInactiveLabelText()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), null);
        colorScheme.setDefaultWideNavigationRailItemColorsCached$material3(navigationItemColors);
        return navigationItemColors;
    }

    public final NavigationItemColors colors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(911821421, i, -1, "androidx.compose.material3.WideNavigationRailItemDefaults.colors (WideNavigationRail.kt:889)");
        }
        NavigationItemColors defaultWideNavigationRailItemColors = getDefaultWideNavigationRailItemColors(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultWideNavigationRailItemColors;
    }

    /* JADX INFO: renamed from: colors-69fazGs, reason: not valid java name */
    public final NavigationItemColors m4322colors69fazGs(long j, long j2, long j3, long j4, long j5, long j6, long j7, Composer composer, int i, int i2) {
        long j8;
        long jM6231copywmQWz5c$default;
        long j9;
        long jM6231copywmQWz5c$default2;
        long value = (i2 & 1) != 0 ? ColorSchemeKt.getValue(NavigationRailColorTokens.INSTANCE.getItemActiveIcon(), composer, 6) : j;
        long value2 = (i2 & 2) != 0 ? ColorSchemeKt.getValue(NavigationRailColorTokens.INSTANCE.getItemActiveLabelText(), composer, 6) : j2;
        long value3 = (i2 & 4) != 0 ? ColorSchemeKt.getValue(NavigationRailColorTokens.INSTANCE.getItemActiveIndicator(), composer, 6) : j3;
        long value4 = (i2 & 8) != 0 ? ColorSchemeKt.getValue(NavigationRailColorTokens.INSTANCE.getItemInactiveIcon(), composer, 6) : j4;
        long value5 = (i2 & 16) != 0 ? ColorSchemeKt.getValue(NavigationRailColorTokens.INSTANCE.getItemInactiveLabelText(), composer, 6) : j5;
        if ((i2 & 32) != 0) {
            long j10 = value4;
            jM6231copywmQWz5c$default = Color.m6231copywmQWz5c$default(j10, 0.38f, 0.0f, 0.0f, 0.0f, 14, null);
            j8 = j10;
        } else {
            j8 = value4;
            jM6231copywmQWz5c$default = j6;
        }
        if ((i2 & 64) != 0) {
            long j11 = value5;
            jM6231copywmQWz5c$default2 = Color.m6231copywmQWz5c$default(j11, 0.38f, 0.0f, 0.0f, 0.0f, 14, null);
            j9 = j11;
        } else {
            j9 = value5;
            jM6231copywmQWz5c$default2 = j7;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1759081702, i, -1, "androidx.compose.material3.WideNavigationRailItemDefaults.colors (WideNavigationRail.kt:914)");
        }
        NavigationItemColors navigationItemColorsM3665copy4JmcsL4 = getDefaultWideNavigationRailItemColors(MaterialTheme.INSTANCE.getColorScheme(composer, 6)).m3665copy4JmcsL4(value, value2, value3, j8, j9, jM6231copywmQWz5c$default, jM6231copywmQWz5c$default2);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return navigationItemColorsM3665copy4JmcsL4;
    }

    /* JADX INFO: renamed from: iconPositionFor-s8pcRp0, reason: not valid java name */
    public final int m4323iconPositionFors8pcRp0(boolean z) {
        NavigationItemIconPosition.Companion companion = NavigationItemIconPosition.Companion;
        return z ? companion.m3682getStartxw1Ddg() : companion.m3683getTopxw1Ddg();
    }
}
