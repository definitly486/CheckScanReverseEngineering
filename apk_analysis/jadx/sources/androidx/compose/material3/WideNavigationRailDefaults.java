package androidx.compose.material3;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsSides;
import androidx.compose.material3.internal.SystemBarsDefaultInsets_androidKt;
import androidx.compose.material3.tokens.NavigationRailCollapsedTokens;
import androidx.compose.material3.tokens.NavigationRailExpandedTokens;
import androidx.compose.material3.tokens.ScrimTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;

/* JADX INFO: loaded from: classes2.dex */
public final class WideNavigationRailDefaults {
    public static final int $stable = 0;
    public static final WideNavigationRailDefaults INSTANCE = new WideNavigationRailDefaults();
    private static final ModalWideNavigationRailProperties ModalExpandedProperties = WideNavigationRail_androidKt.createDefaultModalWideNavigationRailProperties();

    private WideNavigationRailDefaults() {
    }

    private final long getContainerColor(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2034736487, i, -1, "androidx.compose.material3.WideNavigationRailDefaults.<get-containerColor> (WideNavigationRail.kt:855)");
        }
        long value = ColorSchemeKt.getValue(NavigationRailCollapsedTokens.INSTANCE.getContainerColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    private final WideNavigationRailColors getDefaultWideWideNavigationRailColors(ColorScheme colorScheme, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1969597361, i, -1, "androidx.compose.material3.WideNavigationRailDefaults.<get-defaultWideWideNavigationRailColors> (WideNavigationRail.kt:862)");
        }
        WideNavigationRailColors defaultWideWideNavigationRailColorsCached$material3 = colorScheme.getDefaultWideWideNavigationRailColorsCached$material3();
        if (defaultWideWideNavigationRailColorsCached$material3 == null) {
            composer.startReplaceGroup(1297532678);
            int i2 = (i >> 3) & 14;
            defaultWideWideNavigationRailColorsCached$material3 = new WideNavigationRailColors(getContainerColor(composer, i2), ColorSchemeKt.m3274contentColorFor4WTKRHQ(colorScheme, getContainerColor(composer, i2)), getModalContainerColor(composer, i2), Color.m6231copywmQWz5c$default(ColorSchemeKt.getValue(ScrimTokens.INSTANCE.getContainerColor(), composer, 6), 0.32f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.m3274contentColorFor4WTKRHQ(colorScheme, getModalContainerColor(composer, i2)), null);
            colorScheme.setDefaultWideWideNavigationRailColorsCached$material3(defaultWideWideNavigationRailColorsCached$material3);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(1297515721);
            composer.endReplaceGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultWideWideNavigationRailColorsCached$material3;
    }

    private final long getModalContainerColor(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1008951947, i, -1, "androidx.compose.material3.WideNavigationRailDefaults.<get-modalContainerColor> (WideNavigationRail.kt:858)");
        }
        long value = ColorSchemeKt.getValue(NavigationRailExpandedTokens.INSTANCE.getModalContainerColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    public final WideNavigationRailColors colors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(255272712, i, -1, "androidx.compose.material3.WideNavigationRailDefaults.colors (WideNavigationRail.kt:820)");
        }
        WideNavigationRailColors defaultWideWideNavigationRailColors = getDefaultWideWideNavigationRailColors(MaterialTheme.INSTANCE.getColorScheme(composer, 6), composer, (i << 3) & 112);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultWideWideNavigationRailColors;
    }

    /* JADX INFO: renamed from: colors-zjMxDiM, reason: not valid java name */
    public final WideNavigationRailColors m4321colorszjMxDiM(long j, long j2, long j3, long j4, long j5, Composer composer, int i, int i2) {
        long containerColor = (i2 & 1) != 0 ? INSTANCE.getContainerColor(composer, 6) : j;
        long jM3275contentColorForek8zF_U = (i2 & 2) != 0 ? ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composer, i & 14) : j2;
        long value = (i2 & 4) != 0 ? ColorSchemeKt.getValue(NavigationRailExpandedTokens.INSTANCE.getModalContainerColor(), composer, 6) : j3;
        long jM6231copywmQWz5c$default = (i2 & 8) != 0 ? Color.m6231copywmQWz5c$default(ColorSchemeKt.getValue(ScrimTokens.INSTANCE.getContainerColor(), composer, 6), 0.32f, 0.0f, 0.0f, 0.0f, 14, null) : j4;
        long jM3275contentColorForek8zF_U2 = (i2 & 16) != 0 ? ColorSchemeKt.m3275contentColorForek8zF_U(value, composer, (i >> 6) & 14) : j5;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(239918099, i, -1, "androidx.compose.material3.WideNavigationRailDefaults.colors (WideNavigationRail.kt:846)");
        }
        WideNavigationRailColors wideNavigationRailColorsM4315copyt635Npw = getDefaultWideWideNavigationRailColors(MaterialTheme.INSTANCE.getColorScheme(composer, 6), composer, (i >> 12) & 112).m4315copyt635Npw(containerColor, jM3275contentColorForek8zF_U, value, jM6231copywmQWz5c$default, jM3275contentColorForek8zF_U2);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return wideNavigationRailColorsM4315copyt635Npw;
    }

    public final Arrangement.Vertical getArrangement() {
        return Arrangement.INSTANCE.getTop();
    }

    public final Shape getModalCollapsedShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(926228775, i, -1, "androidx.compose.material3.WideNavigationRailDefaults.<get-modalCollapsedShape> (WideNavigationRail.kt:806)");
        }
        Shape shape = getShape(composer, i & 14);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return shape;
    }

    public final ModalWideNavigationRailProperties getModalExpandedProperties() {
        return ModalExpandedProperties;
    }

    public final Shape getModalExpandedShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1865689797, i, -1, "androidx.compose.material3.WideNavigationRailDefaults.<get-modalExpandedShape> (WideNavigationRail.kt:810)");
        }
        Shape value = ShapesKt.getValue(NavigationRailExpandedTokens.INSTANCE.getModalContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    public final Shape getShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1756160851, i, -1, "androidx.compose.material3.WideNavigationRailDefaults.<get-shape> (WideNavigationRail.kt:790)");
        }
        Shape value = ShapesKt.getValue(NavigationRailCollapsedTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    public final WindowInsets getWindowInsets(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1769402286, i, -1, "androidx.compose.material3.WideNavigationRailDefaults.<get-windowInsets> (WideNavigationRail.kt:800)");
        }
        WindowInsets systemBarsForVisualComponents = SystemBarsDefaultInsets_androidKt.getSystemBarsForVisualComponents(WindowInsets.Companion, composer, 6);
        WindowInsetsSides.Companion companion = WindowInsetsSides.Companion;
        WindowInsets windowInsetsM2126onlybOOhFvg = WindowInsetsKt.m2126onlybOOhFvg(systemBarsForVisualComponents, WindowInsetsSides.m2138plusgK_yJZ4(companion.m2153getVerticalJoeWqyM(), companion.m2151getStartJoeWqyM()));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return windowInsetsM2126onlybOOhFvg;
    }
}
