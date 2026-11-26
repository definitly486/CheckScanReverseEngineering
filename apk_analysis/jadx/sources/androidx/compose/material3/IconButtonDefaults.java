package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.material3.tokens.FilledIconButtonTokens;
import androidx.compose.material3.tokens.FilledTonalIconButtonTokens;
import androidx.compose.material3.tokens.OutlinedIconButtonTokens;
import androidx.compose.material3.tokens.SmallIconButtonTokens;
import androidx.compose.material3.tokens.StandardIconButtonTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class IconButtonDefaults {
    public static final int $stable = 0;
    public static final IconButtonDefaults INSTANCE = new IconButtonDefaults();

    private IconButtonDefaults() {
    }

    /* JADX INFO: renamed from: smallContainerSize-N-wlBFI$material3$default, reason: not valid java name */
    public static /* synthetic */ long m3503smallContainerSizeNwlBFI$material3$default(IconButtonDefaults iconButtonDefaults, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = IconButtonWidthOption.Companion.m3529getUniformrc6NtMs();
        }
        return iconButtonDefaults.m3520smallContainerSizeNwlBFI$material3(i);
    }

    /* JADX INFO: renamed from: defaultIconButtonColors-4WTKRHQ$material3, reason: not valid java name */
    public final IconButtonColors m3504defaultIconButtonColors4WTKRHQ$material3(ColorScheme colorScheme, long j) {
        IconButtonColors defaultIconButtonColorsCached$material3 = colorScheme.getDefaultIconButtonColorsCached$material3();
        if (defaultIconButtonColorsCached$material3 != null) {
            return defaultIconButtonColorsCached$material3;
        }
        Color.Companion companion = Color.Companion;
        IconButtonColors iconButtonColors = new IconButtonColors(companion.m6267getTransparent0d7_KjU(), j, companion.m6267getTransparent0d7_KjU(), Color.m6231copywmQWz5c$default(j, StandardIconButtonTokens.INSTANCE.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null), null);
        colorScheme.setDefaultIconButtonColorsCached$material3(iconButtonColors);
        return iconButtonColors;
    }

    public final IconButtonColors defaultIconButtonVibrantColors$material3(ColorScheme colorScheme) {
        IconButtonColors defaultIconButtonVibrantColorsCached$material3 = colorScheme.getDefaultIconButtonVibrantColorsCached$material3();
        if (defaultIconButtonVibrantColorsCached$material3 != null) {
            return defaultIconButtonVibrantColorsCached$material3;
        }
        Color.Companion companion = Color.Companion;
        long jM6267getTransparent0d7_KjU = companion.m6267getTransparent0d7_KjU();
        StandardIconButtonTokens standardIconButtonTokens = StandardIconButtonTokens.INSTANCE;
        IconButtonColors iconButtonColors = new IconButtonColors(jM6267getTransparent0d7_KjU, ColorSchemeKt.fromToken(colorScheme, standardIconButtonTokens.getColor()), companion.m6267getTransparent0d7_KjU(), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, standardIconButtonTokens.getDisabledColor()), standardIconButtonTokens.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null), null);
        colorScheme.setDefaultIconButtonVibrantColorsCached$material3(iconButtonColors);
        return iconButtonColors;
    }

    /* JADX INFO: renamed from: defaultIconToggleButtonColors-4WTKRHQ$material3, reason: not valid java name */
    public final IconToggleButtonColors m3505defaultIconToggleButtonColors4WTKRHQ$material3(ColorScheme colorScheme, long j) {
        IconToggleButtonColors defaultIconToggleButtonColorsCached$material3 = colorScheme.getDefaultIconToggleButtonColorsCached$material3();
        if (defaultIconToggleButtonColorsCached$material3 != null) {
            return defaultIconToggleButtonColorsCached$material3;
        }
        Color.Companion companion = Color.Companion;
        long jM6267getTransparent0d7_KjU = companion.m6267getTransparent0d7_KjU();
        long jM6267getTransparent0d7_KjU2 = companion.m6267getTransparent0d7_KjU();
        StandardIconButtonTokens standardIconButtonTokens = StandardIconButtonTokens.INSTANCE;
        IconToggleButtonColors iconToggleButtonColors = new IconToggleButtonColors(jM6267getTransparent0d7_KjU, j, jM6267getTransparent0d7_KjU2, Color.m6231copywmQWz5c$default(j, standardIconButtonTokens.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null), companion.m6267getTransparent0d7_KjU(), ColorSchemeKt.fromToken(colorScheme, standardIconButtonTokens.getSelectedColor()), null);
        colorScheme.setDefaultIconToggleButtonColorsCached$material3(iconToggleButtonColors);
        return iconToggleButtonColors;
    }

    public final IconToggleButtonColors defaultIconToggleButtonVibrantColors$material3(ColorScheme colorScheme) {
        IconToggleButtonColors defaultIconToggleButtonVibrantColorsCached$material3 = colorScheme.getDefaultIconToggleButtonVibrantColorsCached$material3();
        if (defaultIconToggleButtonVibrantColorsCached$material3 != null) {
            return defaultIconToggleButtonVibrantColorsCached$material3;
        }
        Color.Companion companion = Color.Companion;
        long jM6267getTransparent0d7_KjU = companion.m6267getTransparent0d7_KjU();
        StandardIconButtonTokens standardIconButtonTokens = StandardIconButtonTokens.INSTANCE;
        IconToggleButtonColors iconToggleButtonColors = new IconToggleButtonColors(jM6267getTransparent0d7_KjU, ColorSchemeKt.fromToken(colorScheme, standardIconButtonTokens.getUnselectedColor()), companion.m6267getTransparent0d7_KjU(), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, standardIconButtonTokens.getDisabledColor()), standardIconButtonTokens.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null), companion.m6267getTransparent0d7_KjU(), ColorSchemeKt.fromToken(colorScheme, standardIconButtonTokens.getSelectedColor()), null);
        colorScheme.setDefaultIconToggleButtonVibrantColorsCached$material3(iconToggleButtonColors);
        return iconToggleButtonColors;
    }

    /* JADX INFO: renamed from: defaultOutlinedIconButtonColors-4WTKRHQ$material3, reason: not valid java name */
    public final IconButtonColors m3506defaultOutlinedIconButtonColors4WTKRHQ$material3(ColorScheme colorScheme, long j) {
        IconButtonColors defaultOutlinedIconButtonColorsCached$material3 = colorScheme.getDefaultOutlinedIconButtonColorsCached$material3();
        if (defaultOutlinedIconButtonColorsCached$material3 != null) {
            return defaultOutlinedIconButtonColorsCached$material3;
        }
        Color.Companion companion = Color.Companion;
        IconButtonColors iconButtonColors = new IconButtonColors(companion.m6267getTransparent0d7_KjU(), j, companion.m6267getTransparent0d7_KjU(), Color.m6231copywmQWz5c$default(j, OutlinedIconButtonTokens.INSTANCE.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null), null);
        colorScheme.setDefaultOutlinedIconButtonColorsCached$material3(iconButtonColors);
        return iconButtonColors;
    }

    public final IconButtonColors defaultOutlinedIconButtonVibrantColors$material3(ColorScheme colorScheme) {
        IconButtonColors defaultOutlinedIconButtonVibrantColorsCached$material3 = colorScheme.getDefaultOutlinedIconButtonVibrantColorsCached$material3();
        if (defaultOutlinedIconButtonVibrantColorsCached$material3 != null) {
            return defaultOutlinedIconButtonVibrantColorsCached$material3;
        }
        Color.Companion companion = Color.Companion;
        long jM6267getTransparent0d7_KjU = companion.m6267getTransparent0d7_KjU();
        OutlinedIconButtonTokens outlinedIconButtonTokens = OutlinedIconButtonTokens.INSTANCE;
        IconButtonColors iconButtonColors = new IconButtonColors(jM6267getTransparent0d7_KjU, ColorSchemeKt.fromToken(colorScheme, outlinedIconButtonTokens.getColor()), companion.m6267getTransparent0d7_KjU(), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, outlinedIconButtonTokens.getDisabledColor()), outlinedIconButtonTokens.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null), null);
        colorScheme.setDefaultOutlinedIconButtonVibrantColorsCached$material3(iconButtonColors);
        return iconButtonColors;
    }

    /* JADX INFO: renamed from: defaultOutlinedIconToggleButtonColors-4WTKRHQ$material3, reason: not valid java name */
    public final IconToggleButtonColors m3507defaultOutlinedIconToggleButtonColors4WTKRHQ$material3(ColorScheme colorScheme, long j) {
        IconToggleButtonColors defaultIconToggleButtonColorsCached$material3 = colorScheme.getDefaultIconToggleButtonColorsCached$material3();
        if (defaultIconToggleButtonColorsCached$material3 != null) {
            return defaultIconToggleButtonColorsCached$material3;
        }
        Color.Companion companion = Color.Companion;
        long jM6267getTransparent0d7_KjU = companion.m6267getTransparent0d7_KjU();
        long jM6267getTransparent0d7_KjU2 = companion.m6267getTransparent0d7_KjU();
        OutlinedIconButtonTokens outlinedIconButtonTokens = OutlinedIconButtonTokens.INSTANCE;
        IconToggleButtonColors iconToggleButtonColors = new IconToggleButtonColors(jM6267getTransparent0d7_KjU, j, jM6267getTransparent0d7_KjU2, Color.m6231copywmQWz5c$default(j, outlinedIconButtonTokens.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, outlinedIconButtonTokens.getSelectedContainerColor()), ColorSchemeKt.m3274contentColorFor4WTKRHQ(colorScheme, ColorSchemeKt.fromToken(colorScheme, outlinedIconButtonTokens.getSelectedContainerColor())), null);
        colorScheme.setDefaultOutlinedIconToggleButtonColorsCached$material3(iconToggleButtonColors);
        return iconToggleButtonColors;
    }

    public final IconToggleButtonColors defaultOutlinedIconToggleButtonVibrantColors$material3(ColorScheme colorScheme) {
        IconToggleButtonColors defaultOutlinedIconToggleButtonVibrantColorsCached$material3 = colorScheme.getDefaultOutlinedIconToggleButtonVibrantColorsCached$material3();
        if (defaultOutlinedIconToggleButtonVibrantColorsCached$material3 != null) {
            return defaultOutlinedIconToggleButtonVibrantColorsCached$material3;
        }
        Color.Companion companion = Color.Companion;
        long jM6267getTransparent0d7_KjU = companion.m6267getTransparent0d7_KjU();
        OutlinedIconButtonTokens outlinedIconButtonTokens = OutlinedIconButtonTokens.INSTANCE;
        IconToggleButtonColors iconToggleButtonColors = new IconToggleButtonColors(jM6267getTransparent0d7_KjU, ColorSchemeKt.fromToken(colorScheme, outlinedIconButtonTokens.getUnselectedColor()), companion.m6267getTransparent0d7_KjU(), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, outlinedIconButtonTokens.getDisabledColor()), outlinedIconButtonTokens.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, outlinedIconButtonTokens.getSelectedContainerColor()), ColorSchemeKt.fromToken(colorScheme, outlinedIconButtonTokens.getSelectedColor()), null);
        colorScheme.setDefaultOutlinedIconToggleButtonColorsCached$material3(iconToggleButtonColors);
        return iconToggleButtonColors;
    }

    public final IconButtonColors filledIconButtonColors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-958304265, i, -1, "androidx.compose.material3.IconButtonDefaults.filledIconButtonColors (IconButtonDefaults.kt:300)");
        }
        IconButtonColors defaultFilledIconButtonColors$material3 = getDefaultFilledIconButtonColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultFilledIconButtonColors$material3;
    }

    /* JADX INFO: renamed from: filledIconButtonColors-ro_MJ88, reason: not valid java name */
    public final IconButtonColors m3508filledIconButtonColorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            j = Color.Companion.m6268getUnspecified0d7_KjU();
        }
        if ((i2 & 2) != 0) {
            j2 = ColorSchemeKt.m3275contentColorForek8zF_U(j, composer, i & 14);
        }
        if ((i2 & 4) != 0) {
            j3 = Color.Companion.m6268getUnspecified0d7_KjU();
        }
        if ((i2 & 8) != 0) {
            j4 = Color.Companion.m6268getUnspecified0d7_KjU();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-245481051, i, -1, "androidx.compose.material3.IconButtonDefaults.filledIconButtonColors (IconButtonDefaults.kt:317)");
        }
        long j5 = j2;
        long j6 = j;
        IconButtonColors iconButtonColorsM3498copyjRlVdoo = getDefaultFilledIconButtonColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6)).m3498copyjRlVdoo(j6, j5, j3, j4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iconButtonColorsM3498copyjRlVdoo;
    }

    public final IconToggleButtonColors filledIconToggleButtonColors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1455160689, i, -1, "androidx.compose.material3.IconButtonDefaults.filledIconToggleButtonColors (IconButtonDefaults.kt:346)");
        }
        IconToggleButtonColors defaultFilledIconToggleButtonColors$material3 = getDefaultFilledIconToggleButtonColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultFilledIconToggleButtonColors$material3;
    }

    /* JADX INFO: renamed from: filledIconToggleButtonColors-5tl4gsc, reason: not valid java name */
    public final IconToggleButtonColors m3509filledIconToggleButtonColors5tl4gsc(long j, long j2, long j3, long j4, long j5, long j6, Composer composer, int i, int i2) {
        long jM6268getUnspecified0d7_KjU = (i2 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM6268getUnspecified0d7_KjU2 = (i2 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j2;
        long jM6268getUnspecified0d7_KjU3 = (i2 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        long jM6268getUnspecified0d7_KjU4 = (i2 & 8) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j4;
        long jM6268getUnspecified0d7_KjU5 = (i2 & 16) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j5;
        long jM3275contentColorForek8zF_U = (i2 & 32) != 0 ? ColorSchemeKt.m3275contentColorForek8zF_U(jM6268getUnspecified0d7_KjU5, composer, (i >> 12) & 14) : j6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1473292947, i, -1, "androidx.compose.material3.IconButtonDefaults.filledIconToggleButtonColors (IconButtonDefaults.kt:370)");
        }
        IconToggleButtonColors iconToggleButtonColorsM3536copytNS2XkQ = getDefaultFilledIconToggleButtonColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6)).m3536copytNS2XkQ(jM6268getUnspecified0d7_KjU, jM6268getUnspecified0d7_KjU2, jM6268getUnspecified0d7_KjU3, jM6268getUnspecified0d7_KjU4, jM6268getUnspecified0d7_KjU5, jM3275contentColorForek8zF_U);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iconToggleButtonColorsM3536copytNS2XkQ;
    }

    public final IconButtonColors filledTonalIconButtonColors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1145002745, i, -1, "androidx.compose.material3.IconButtonDefaults.filledTonalIconButtonColors (IconButtonDefaults.kt:407)");
        }
        IconButtonColors defaultFilledTonalIconButtonColors$material3 = getDefaultFilledTonalIconButtonColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultFilledTonalIconButtonColors$material3;
    }

    /* JADX INFO: renamed from: filledTonalIconButtonColors-ro_MJ88, reason: not valid java name */
    public final IconButtonColors m3510filledTonalIconButtonColorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            j = Color.Companion.m6268getUnspecified0d7_KjU();
        }
        if ((i2 & 2) != 0) {
            j2 = ColorSchemeKt.m3275contentColorForek8zF_U(j, composer, i & 14);
        }
        if ((i2 & 4) != 0) {
            j3 = Color.Companion.m6268getUnspecified0d7_KjU();
        }
        if ((i2 & 8) != 0) {
            j4 = Color.Companion.m6268getUnspecified0d7_KjU();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(562762851, i, -1, "androidx.compose.material3.IconButtonDefaults.filledTonalIconButtonColors (IconButtonDefaults.kt:425)");
        }
        long j5 = j2;
        long j6 = j;
        IconButtonColors iconButtonColorsM3498copyjRlVdoo = getDefaultFilledTonalIconButtonColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6)).m3498copyjRlVdoo(j6, j5, j3, j4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iconButtonColorsM3498copyjRlVdoo;
    }

    public final IconToggleButtonColors filledTonalIconToggleButtonColors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(656374417, i, -1, "androidx.compose.material3.IconButtonDefaults.filledTonalIconToggleButtonColors (IconButtonDefaults.kt:454)");
        }
        IconToggleButtonColors defaultFilledTonalIconToggleButtonColors$material3 = getDefaultFilledTonalIconToggleButtonColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultFilledTonalIconToggleButtonColors$material3;
    }

    /* JADX INFO: renamed from: filledTonalIconToggleButtonColors-5tl4gsc, reason: not valid java name */
    public final IconToggleButtonColors m3511filledTonalIconToggleButtonColors5tl4gsc(long j, long j2, long j3, long j4, long j5, long j6, Composer composer, int i, int i2) {
        long jM6268getUnspecified0d7_KjU = (i2 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM3275contentColorForek8zF_U = (i2 & 2) != 0 ? ColorSchemeKt.m3275contentColorForek8zF_U(jM6268getUnspecified0d7_KjU, composer, i & 14) : j2;
        long jM6268getUnspecified0d7_KjU2 = (i2 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        long jM6268getUnspecified0d7_KjU3 = (i2 & 8) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j4;
        long jM6268getUnspecified0d7_KjU4 = (i2 & 16) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j5;
        long jM3275contentColorForek8zF_U2 = (i2 & 32) != 0 ? ColorSchemeKt.m3275contentColorForek8zF_U(jM6268getUnspecified0d7_KjU4, composer, (i >> 12) & 14) : j6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2130748241, i, -1, "androidx.compose.material3.IconButtonDefaults.filledTonalIconToggleButtonColors (IconButtonDefaults.kt:476)");
        }
        IconToggleButtonColors iconToggleButtonColorsM3536copytNS2XkQ = getDefaultFilledTonalIconToggleButtonColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6)).m3536copytNS2XkQ(jM6268getUnspecified0d7_KjU, jM3275contentColorForek8zF_U, jM6268getUnspecified0d7_KjU2, jM6268getUnspecified0d7_KjU3, jM6268getUnspecified0d7_KjU4, jM3275contentColorForek8zF_U2);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iconToggleButtonColorsM3536copytNS2XkQ;
    }

    public final IconButtonColors getDefaultFilledIconButtonColors$material3(ColorScheme colorScheme) {
        IconButtonColors defaultFilledIconButtonColorsCached$material3 = colorScheme.getDefaultFilledIconButtonColorsCached$material3();
        if (defaultFilledIconButtonColorsCached$material3 != null) {
            return defaultFilledIconButtonColorsCached$material3;
        }
        FilledIconButtonTokens filledIconButtonTokens = FilledIconButtonTokens.INSTANCE;
        IconButtonColors iconButtonColors = new IconButtonColors(ColorSchemeKt.fromToken(colorScheme, filledIconButtonTokens.getContainerColor()), ColorSchemeKt.fromToken(colorScheme, filledIconButtonTokens.getColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, filledIconButtonTokens.getDisabledContainerColor()), filledIconButtonTokens.getDisabledContainerOpacity(), 0.0f, 0.0f, 0.0f, 14, null), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, filledIconButtonTokens.getDisabledColor()), filledIconButtonTokens.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null), null);
        colorScheme.setDefaultFilledIconButtonColorsCached$material3(iconButtonColors);
        return iconButtonColors;
    }

    public final IconToggleButtonColors getDefaultFilledIconToggleButtonColors$material3(ColorScheme colorScheme) {
        IconToggleButtonColors defaultFilledIconToggleButtonColorsCached$material3 = colorScheme.getDefaultFilledIconToggleButtonColorsCached$material3();
        if (defaultFilledIconToggleButtonColorsCached$material3 != null) {
            return defaultFilledIconToggleButtonColorsCached$material3;
        }
        FilledIconButtonTokens filledIconButtonTokens = FilledIconButtonTokens.INSTANCE;
        IconToggleButtonColors iconToggleButtonColors = new IconToggleButtonColors(ColorSchemeKt.fromToken(colorScheme, filledIconButtonTokens.getUnselectedContainerColor()), ColorSchemeKt.fromToken(colorScheme, filledIconButtonTokens.getUnselectedColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, filledIconButtonTokens.getDisabledContainerColor()), filledIconButtonTokens.getDisabledContainerOpacity(), 0.0f, 0.0f, 0.0f, 14, null), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, filledIconButtonTokens.getDisabledColor()), filledIconButtonTokens.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, filledIconButtonTokens.getSelectedContainerColor()), ColorSchemeKt.fromToken(colorScheme, filledIconButtonTokens.getSelectedColor()), null);
        colorScheme.setDefaultFilledIconToggleButtonColorsCached$material3(iconToggleButtonColors);
        return iconToggleButtonColors;
    }

    public final IconButtonColors getDefaultFilledTonalIconButtonColors$material3(ColorScheme colorScheme) {
        IconButtonColors defaultFilledTonalIconButtonColorsCached$material3 = colorScheme.getDefaultFilledTonalIconButtonColorsCached$material3();
        if (defaultFilledTonalIconButtonColorsCached$material3 != null) {
            return defaultFilledTonalIconButtonColorsCached$material3;
        }
        FilledTonalIconButtonTokens filledTonalIconButtonTokens = FilledTonalIconButtonTokens.INSTANCE;
        IconButtonColors iconButtonColors = new IconButtonColors(ColorSchemeKt.fromToken(colorScheme, filledTonalIconButtonTokens.getContainerColor()), ColorSchemeKt.fromToken(colorScheme, filledTonalIconButtonTokens.getColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, filledTonalIconButtonTokens.getDisabledContainerColor()), filledTonalIconButtonTokens.getDisabledContainerOpacity(), 0.0f, 0.0f, 0.0f, 14, null), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, filledTonalIconButtonTokens.getDisabledColor()), filledTonalIconButtonTokens.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null), null);
        colorScheme.setDefaultFilledTonalIconButtonColorsCached$material3(iconButtonColors);
        return iconButtonColors;
    }

    public final IconToggleButtonColors getDefaultFilledTonalIconToggleButtonColors$material3(ColorScheme colorScheme) {
        IconToggleButtonColors defaultFilledTonalIconToggleButtonColorsCached$material3 = colorScheme.getDefaultFilledTonalIconToggleButtonColorsCached$material3();
        if (defaultFilledTonalIconToggleButtonColorsCached$material3 != null) {
            return defaultFilledTonalIconToggleButtonColorsCached$material3;
        }
        FilledTonalIconButtonTokens filledTonalIconButtonTokens = FilledTonalIconButtonTokens.INSTANCE;
        IconToggleButtonColors iconToggleButtonColors = new IconToggleButtonColors(ColorSchemeKt.fromToken(colorScheme, filledTonalIconButtonTokens.getUnselectedContainerColor()), ColorSchemeKt.fromToken(colorScheme, filledTonalIconButtonTokens.getUnselectedColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, filledTonalIconButtonTokens.getDisabledContainerColor()), filledTonalIconButtonTokens.getDisabledContainerOpacity(), 0.0f, 0.0f, 0.0f, 14, null), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, filledTonalIconButtonTokens.getDisabledColor()), filledTonalIconButtonTokens.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, filledTonalIconButtonTokens.getSelectedContainerColor()), ColorSchemeKt.fromToken(colorScheme, filledTonalIconButtonTokens.getSelectedColor()), null);
        colorScheme.setDefaultFilledTonalIconToggleButtonColorsCached$material3(iconToggleButtonColors);
        return iconToggleButtonColors;
    }

    public final Shape getFilledShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1542796069, i, -1, "androidx.compose.material3.IconButtonDefaults.<get-filledShape> (IconButtonDefaults.kt:853)");
        }
        Shape value = ShapesKt.getValue(SmallIconButtonTokens.INSTANCE.getContainerShapeRound(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    public final Shape getOutlinedShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1706356635, i, -1, "androidx.compose.material3.IconButtonDefaults.<get-outlinedShape> (IconButtonDefaults.kt:857)");
        }
        Shape value = ShapesKt.getValue(SmallIconButtonTokens.INSTANCE.getContainerShapeRound(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    public final Shape getStandardShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-377108005, i, -1, "androidx.compose.material3.IconButtonDefaults.<get-standardShape> (IconButtonDefaults.kt:849)");
        }
        Shape value = ShapesKt.getValue(SmallIconButtonTokens.INSTANCE.getContainerShapeRound(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    public final IconButtonColors iconButtonColors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1037266503, i, -1, "androidx.compose.material3.IconButtonDefaults.iconButtonColors (IconButtonDefaults.kt:42)");
        }
        long jM6242unboximpl = ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
        IconButtonColors iconButtonColorsM3504defaultIconButtonColors4WTKRHQ$material3 = m3504defaultIconButtonColors4WTKRHQ$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6), jM6242unboximpl);
        if (!Color.m6233equalsimpl0(iconButtonColorsM3504defaultIconButtonColors4WTKRHQ$material3.m3500getContentColor0d7_KjU(), jM6242unboximpl)) {
            iconButtonColorsM3504defaultIconButtonColors4WTKRHQ$material3 = IconButtonColors.m3495copyjRlVdoo$default(iconButtonColorsM3504defaultIconButtonColors4WTKRHQ$material3, 0L, jM6242unboximpl, 0L, Color.m6231copywmQWz5c$default(jM6242unboximpl, StandardIconButtonTokens.INSTANCE.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null), 5, null);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iconButtonColorsM3504defaultIconButtonColors4WTKRHQ$material3;
    }

    /* JADX INFO: renamed from: iconButtonColors-ro_MJ88, reason: not valid java name */
    public final IconButtonColors m3512iconButtonColorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            j = Color.Companion.m6268getUnspecified0d7_KjU();
        }
        long jM6242unboximpl = (i2 & 2) != 0 ? ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl() : j2;
        long jM6268getUnspecified0d7_KjU = (i2 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        long jM6231copywmQWz5c$default = (i2 & 8) != 0 ? Color.m6231copywmQWz5c$default(jM6242unboximpl, StandardIconButtonTokens.INSTANCE.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null) : j4;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1639168605, i, -1, "androidx.compose.material3.IconButtonDefaults.iconButtonColors (IconButtonDefaults.kt:78)");
        }
        IconButtonColors iconButtonColorsM3498copyjRlVdoo = m3504defaultIconButtonColors4WTKRHQ$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6), ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl()).m3498copyjRlVdoo(j, jM6242unboximpl, jM6268getUnspecified0d7_KjU, jM6231copywmQWz5c$default);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iconButtonColorsM3498copyjRlVdoo;
    }

    public final IconButtonColors iconButtonVibrantColors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(111454247, i, -1, "androidx.compose.material3.IconButtonDefaults.iconButtonVibrantColors (IconButtonDefaults.kt:110)");
        }
        IconButtonColors iconButtonColorsDefaultIconButtonVibrantColors$material3 = defaultIconButtonVibrantColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iconButtonColorsDefaultIconButtonVibrantColors$material3;
    }

    /* JADX INFO: renamed from: iconButtonVibrantColors-ro_MJ88, reason: not valid java name */
    public final IconButtonColors m3513iconButtonVibrantColorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            j = Color.Companion.m6268getUnspecified0d7_KjU();
        }
        long jM6268getUnspecified0d7_KjU = (i2 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j2;
        long jM6268getUnspecified0d7_KjU2 = (i2 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        long jM6231copywmQWz5c$default = (i2 & 8) != 0 ? Color.m6231copywmQWz5c$default(jM6268getUnspecified0d7_KjU, StandardIconButtonTokens.INSTANCE.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null) : j4;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1036440437, i, -1, "androidx.compose.material3.IconButtonDefaults.iconButtonVibrantColors (IconButtonDefaults.kt:132)");
        }
        IconButtonColors iconButtonColorsM3498copyjRlVdoo = defaultIconButtonVibrantColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6)).m3498copyjRlVdoo(j, jM6268getUnspecified0d7_KjU, jM6268getUnspecified0d7_KjU2, jM6231copywmQWz5c$default);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iconButtonColorsM3498copyjRlVdoo;
    }

    public final IconToggleButtonColors iconToggleButtonColors(Composer composer, int i) {
        composer.startReplaceGroup(-1355771567);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1355771567, i, -1, "androidx.compose.material3.IconButtonDefaults.iconToggleButtonColors (IconButtonDefaults.kt:164)");
        }
        long jM6242unboximpl = ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
        IconToggleButtonColors iconToggleButtonColorsM3505defaultIconToggleButtonColors4WTKRHQ$material3 = m3505defaultIconToggleButtonColors4WTKRHQ$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6), jM6242unboximpl);
        if (Color.m6233equalsimpl0(iconToggleButtonColorsM3505defaultIconToggleButtonColors4WTKRHQ$material3.m3540getContentColor0d7_KjU(), jM6242unboximpl)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return iconToggleButtonColorsM3505defaultIconToggleButtonColors4WTKRHQ$material3;
        }
        IconToggleButtonColors iconToggleButtonColorsM3535copytNS2XkQ$default = IconToggleButtonColors.m3535copytNS2XkQ$default(iconToggleButtonColorsM3505defaultIconToggleButtonColors4WTKRHQ$material3, 0L, jM6242unboximpl, 0L, Color.m6231copywmQWz5c$default(jM6242unboximpl, StandardIconButtonTokens.INSTANCE.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null), 0L, 0L, 53, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return iconToggleButtonColorsM3535copytNS2XkQ$default;
    }

    /* JADX INFO: renamed from: iconToggleButtonColors-5tl4gsc, reason: not valid java name */
    public final IconToggleButtonColors m3514iconToggleButtonColors5tl4gsc(long j, long j2, long j3, long j4, long j5, long j6, Composer composer, int i, int i2) {
        long j7;
        long jM6231copywmQWz5c$default;
        long jM6268getUnspecified0d7_KjU = (i2 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM6242unboximpl = (i2 & 2) != 0 ? ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl() : j2;
        long jM6268getUnspecified0d7_KjU2 = (i2 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        if ((i2 & 8) != 0) {
            long j8 = jM6242unboximpl;
            jM6231copywmQWz5c$default = Color.m6231copywmQWz5c$default(j8, StandardIconButtonTokens.INSTANCE.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null);
            j7 = j8;
        } else {
            j7 = jM6242unboximpl;
            jM6231copywmQWz5c$default = j4;
        }
        long jM6268getUnspecified0d7_KjU3 = (i2 & 16) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j5;
        long jM6268getUnspecified0d7_KjU4 = (i2 & 32) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1402082449, i, -1, "androidx.compose.material3.IconButtonDefaults.iconToggleButtonColors (IconButtonDefaults.kt:203)");
        }
        IconToggleButtonColors iconToggleButtonColorsM3536copytNS2XkQ = m3505defaultIconToggleButtonColors4WTKRHQ$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6), ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl()).m3536copytNS2XkQ(jM6268getUnspecified0d7_KjU, j7, jM6268getUnspecified0d7_KjU2, jM6231copywmQWz5c$default, jM6268getUnspecified0d7_KjU3, jM6268getUnspecified0d7_KjU4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iconToggleButtonColorsM3536copytNS2XkQ;
    }

    public final IconToggleButtonColors iconToggleButtonVibrantColors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1755001127, i, -1, "androidx.compose.material3.IconButtonDefaults.iconToggleButtonVibrantColors (IconButtonDefaults.kt:241)");
        }
        IconToggleButtonColors iconToggleButtonColorsDefaultIconToggleButtonVibrantColors$material3 = defaultIconToggleButtonVibrantColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iconToggleButtonColorsDefaultIconToggleButtonVibrantColors$material3;
    }

    /* JADX INFO: renamed from: iconToggleButtonVibrantColors-5tl4gsc, reason: not valid java name */
    public final IconToggleButtonColors m3515iconToggleButtonVibrantColors5tl4gsc(long j, long j2, long j3, long j4, long j5, long j6, Composer composer, int i, int i2) {
        long j7;
        long jM6231copywmQWz5c$default;
        long jM6268getUnspecified0d7_KjU = (i2 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM6268getUnspecified0d7_KjU2 = (i2 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j2;
        long jM6268getUnspecified0d7_KjU3 = (i2 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        if ((i2 & 8) != 0) {
            long j8 = jM6268getUnspecified0d7_KjU2;
            jM6231copywmQWz5c$default = Color.m6231copywmQWz5c$default(j8, StandardIconButtonTokens.INSTANCE.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null);
            j7 = j8;
        } else {
            j7 = jM6268getUnspecified0d7_KjU2;
            jM6231copywmQWz5c$default = j4;
        }
        long jM6268getUnspecified0d7_KjU4 = (i2 & 16) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j5;
        long jM6268getUnspecified0d7_KjU5 = (i2 & 32) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1027328773, i, -1, "androidx.compose.material3.IconButtonDefaults.iconToggleButtonVibrantColors (IconButtonDefaults.kt:267)");
        }
        IconToggleButtonColors iconToggleButtonColorsM3536copytNS2XkQ = defaultIconToggleButtonVibrantColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6)).m3536copytNS2XkQ(jM6268getUnspecified0d7_KjU, j7, jM6268getUnspecified0d7_KjU3, jM6231copywmQWz5c$default, jM6268getUnspecified0d7_KjU4, jM6268getUnspecified0d7_KjU5);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iconToggleButtonColorsM3536copytNS2XkQ;
    }

    public final BorderStroke outlinedIconButtonBorder(boolean z, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1270640488, i, -1, "androidx.compose.material3.IconButtonDefaults.outlinedIconButtonBorder (IconButtonDefaults.kt:818)");
        }
        long jM6242unboximpl = ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
        if (!z) {
            jM6242unboximpl = Color.m6231copywmQWz5c$default(jM6242unboximpl, OutlinedIconButtonTokens.INSTANCE.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null);
        }
        boolean zChanged = composer.changed(jM6242unboximpl);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = BorderStrokeKt.m1315BorderStrokecXLIe8U(SmallIconButtonTokens.INSTANCE.m5112getOutlinedOutlineWidthD9Ej5fM(), jM6242unboximpl);
            composer.updateRememberedValue(objRememberedValue);
        }
        BorderStroke borderStroke = (BorderStroke) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return borderStroke;
    }

    public final IconButtonColors outlinedIconButtonColors(Composer composer, int i) {
        composer.startReplaceGroup(1591384183);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1591384183, i, -1, "androidx.compose.material3.IconButtonDefaults.outlinedIconButtonColors (IconButtonDefaults.kt:513)");
        }
        long jM6242unboximpl = ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
        IconButtonColors iconButtonColorsM3506defaultOutlinedIconButtonColors4WTKRHQ$material3 = m3506defaultOutlinedIconButtonColors4WTKRHQ$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6), jM6242unboximpl);
        if (Color.m6233equalsimpl0(iconButtonColorsM3506defaultOutlinedIconButtonColors4WTKRHQ$material3.m3500getContentColor0d7_KjU(), jM6242unboximpl)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return iconButtonColorsM3506defaultOutlinedIconButtonColors4WTKRHQ$material3;
        }
        IconButtonColors iconButtonColorsM3495copyjRlVdoo$default = IconButtonColors.m3495copyjRlVdoo$default(iconButtonColorsM3506defaultOutlinedIconButtonColors4WTKRHQ$material3, 0L, jM6242unboximpl, 0L, Color.m6231copywmQWz5c$default(jM6242unboximpl, OutlinedIconButtonTokens.INSTANCE.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null), 5, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return iconButtonColorsM3495copyjRlVdoo$default;
    }

    /* JADX INFO: renamed from: outlinedIconButtonColors-ro_MJ88, reason: not valid java name */
    public final IconButtonColors m3516outlinedIconButtonColorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            j = Color.Companion.m6268getUnspecified0d7_KjU();
        }
        long jM6242unboximpl = (i2 & 2) != 0 ? ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl() : j2;
        long jM6268getUnspecified0d7_KjU = (i2 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        long jM6231copywmQWz5c$default = (i2 & 8) != 0 ? Color.m6231copywmQWz5c$default(jM6242unboximpl, OutlinedIconButtonTokens.INSTANCE.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null) : j4;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1335916251, i, -1, "androidx.compose.material3.IconButtonDefaults.outlinedIconButtonColors (IconButtonDefaults.kt:547)");
        }
        IconButtonColors iconButtonColorsM3498copyjRlVdoo = m3506defaultOutlinedIconButtonColors4WTKRHQ$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6), ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl()).m3498copyjRlVdoo(j, jM6242unboximpl, jM6268getUnspecified0d7_KjU, jM6231copywmQWz5c$default);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iconButtonColorsM3498copyjRlVdoo;
    }

    public final BorderStroke outlinedIconButtonVibrantBorder(boolean z, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2139728858, i, -1, "androidx.compose.material3.IconButtonDefaults.outlinedIconButtonVibrantBorder (IconButtonDefaults.kt:836)");
        }
        OutlinedIconButtonTokens outlinedIconButtonTokens = OutlinedIconButtonTokens.INSTANCE;
        long value = ColorSchemeKt.getValue(outlinedIconButtonTokens.getOutlineColor(), composer, 6);
        if (!z) {
            value = Color.m6231copywmQWz5c$default(value, outlinedIconButtonTokens.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null);
        }
        boolean zChanged = composer.changed(value);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = BorderStrokeKt.m1315BorderStrokecXLIe8U(SmallIconButtonTokens.INSTANCE.m5112getOutlinedOutlineWidthD9Ej5fM(), value);
            composer.updateRememberedValue(objRememberedValue);
        }
        BorderStroke borderStroke = (BorderStroke) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return borderStroke;
    }

    public final IconButtonColors outlinedIconButtonVibrantColors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-899469399, i, -1, "androidx.compose.material3.IconButtonDefaults.outlinedIconButtonVibrantColors (IconButtonDefaults.kt:581)");
        }
        IconButtonColors iconButtonColorsDefaultOutlinedIconButtonVibrantColors$material3 = defaultOutlinedIconButtonVibrantColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iconButtonColorsDefaultOutlinedIconButtonVibrantColors$material3;
    }

    /* JADX INFO: renamed from: outlinedIconButtonVibrantColors-ro_MJ88, reason: not valid java name */
    public final IconButtonColors m3517outlinedIconButtonVibrantColorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            j = Color.Companion.m6268getUnspecified0d7_KjU();
        }
        long jM6268getUnspecified0d7_KjU = (i2 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j2;
        long jM6268getUnspecified0d7_KjU2 = (i2 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        long jM6231copywmQWz5c$default = (i2 & 8) != 0 ? Color.m6231copywmQWz5c$default(jM6268getUnspecified0d7_KjU, OutlinedIconButtonTokens.INSTANCE.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null) : j4;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-278201933, i, -1, "androidx.compose.material3.IconButtonDefaults.outlinedIconButtonVibrantColors (IconButtonDefaults.kt:603)");
        }
        IconButtonColors iconButtonColorsM3498copyjRlVdoo = defaultOutlinedIconButtonVibrantColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6)).m3498copyjRlVdoo(j, jM6268getUnspecified0d7_KjU, jM6268getUnspecified0d7_KjU2, jM6231copywmQWz5c$default);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iconButtonColorsM3498copyjRlVdoo;
    }

    public final BorderStroke outlinedIconToggleButtonBorder(boolean z, boolean z2, Composer composer, int i) {
        composer.startReplaceGroup(1933433512);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1933433512, i, -1, "androidx.compose.material3.IconButtonDefaults.outlinedIconToggleButtonBorder (IconButtonDefaults.kt:786)");
        }
        if (z2) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return null;
        }
        BorderStroke borderStrokeOutlinedIconButtonBorder = outlinedIconButtonBorder(z, composer, (i & 14) | ((i >> 3) & 112));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return borderStrokeOutlinedIconButtonBorder;
    }

    public final IconToggleButtonColors outlinedIconToggleButtonColors(Composer composer, int i) {
        composer.startReplaceGroup(-834376945);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-834376945, i, -1, "androidx.compose.material3.IconButtonDefaults.outlinedIconToggleButtonColors (IconButtonDefaults.kt:636)");
        }
        long jM6242unboximpl = ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
        IconToggleButtonColors iconToggleButtonColorsM3507defaultOutlinedIconToggleButtonColors4WTKRHQ$material3 = m3507defaultOutlinedIconToggleButtonColors4WTKRHQ$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6), jM6242unboximpl);
        if (Color.m6233equalsimpl0(iconToggleButtonColorsM3507defaultOutlinedIconToggleButtonColors4WTKRHQ$material3.m3540getContentColor0d7_KjU(), jM6242unboximpl)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return iconToggleButtonColorsM3507defaultOutlinedIconToggleButtonColors4WTKRHQ$material3;
        }
        IconToggleButtonColors iconToggleButtonColorsM3535copytNS2XkQ$default = IconToggleButtonColors.m3535copytNS2XkQ$default(iconToggleButtonColorsM3507defaultOutlinedIconToggleButtonColors4WTKRHQ$material3, 0L, jM6242unboximpl, 0L, Color.m6231copywmQWz5c$default(jM6242unboximpl, OutlinedIconButtonTokens.INSTANCE.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null), 0L, 0L, 53, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return iconToggleButtonColorsM3535copytNS2XkQ$default;
    }

    /* JADX INFO: renamed from: outlinedIconToggleButtonColors-5tl4gsc, reason: not valid java name */
    public final IconToggleButtonColors m3518outlinedIconToggleButtonColors5tl4gsc(long j, long j2, long j3, long j4, long j5, long j6, Composer composer, int i, int i2) {
        long j7;
        long jM6231copywmQWz5c$default;
        long jM6268getUnspecified0d7_KjU = (i2 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM6242unboximpl = (i2 & 2) != 0 ? ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl() : j2;
        long jM6268getUnspecified0d7_KjU2 = (i2 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        if ((i2 & 8) != 0) {
            long j8 = jM6242unboximpl;
            jM6231copywmQWz5c$default = Color.m6231copywmQWz5c$default(j8, OutlinedIconButtonTokens.INSTANCE.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null);
            j7 = j8;
        } else {
            j7 = jM6242unboximpl;
            jM6231copywmQWz5c$default = j4;
        }
        long jM6268getUnspecified0d7_KjU3 = (i2 & 16) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j5;
        long jM3275contentColorForek8zF_U = (i2 & 32) != 0 ? ColorSchemeKt.m3275contentColorForek8zF_U(jM6268getUnspecified0d7_KjU3, composer, (i >> 12) & 14) : j6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-514625005, i, -1, "androidx.compose.material3.IconButtonDefaults.outlinedIconToggleButtonColors (IconButtonDefaults.kt:675)");
        }
        IconToggleButtonColors iconToggleButtonColorsM3536copytNS2XkQ = m3507defaultOutlinedIconToggleButtonColors4WTKRHQ$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6), ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl()).m3536copytNS2XkQ(jM6268getUnspecified0d7_KjU, j7, jM6268getUnspecified0d7_KjU2, jM6231copywmQWz5c$default, jM6268getUnspecified0d7_KjU3, jM3275contentColorForek8zF_U);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iconToggleButtonColorsM3536copytNS2XkQ;
    }

    public final BorderStroke outlinedIconToggleButtonVibrantBorder(boolean z, boolean z2, Composer composer, int i) {
        composer.startReplaceGroup(394022990);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(394022990, i, -1, "androidx.compose.material3.IconButtonDefaults.outlinedIconToggleButtonVibrantBorder (IconButtonDefaults.kt:801)");
        }
        if (z2) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return null;
        }
        BorderStroke borderStrokeOutlinedIconButtonVibrantBorder = outlinedIconButtonVibrantBorder(z, composer, (i & 14) | ((i >> 3) & 112));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return borderStrokeOutlinedIconButtonVibrantBorder;
    }

    public final IconToggleButtonColors outlinedIconToggleButtonVibrantColors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1236236887, i, -1, "androidx.compose.material3.IconButtonDefaults.outlinedIconToggleButtonVibrantColors (IconButtonDefaults.kt:719)");
        }
        IconToggleButtonColors iconToggleButtonColorsDefaultOutlinedIconToggleButtonVibrantColors$material3 = defaultOutlinedIconToggleButtonVibrantColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iconToggleButtonColorsDefaultOutlinedIconToggleButtonVibrantColors$material3;
    }

    /* JADX INFO: renamed from: outlinedIconToggleButtonVibrantColors-5tl4gsc, reason: not valid java name */
    public final IconToggleButtonColors m3519outlinedIconToggleButtonVibrantColors5tl4gsc(long j, long j2, long j3, long j4, long j5, long j6, Composer composer, int i, int i2) {
        long j7;
        long jM6231copywmQWz5c$default;
        long jM6268getUnspecified0d7_KjU = (i2 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM6268getUnspecified0d7_KjU2 = (i2 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j2;
        long jM6268getUnspecified0d7_KjU3 = (i2 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        if ((i2 & 8) != 0) {
            long j8 = jM6268getUnspecified0d7_KjU2;
            jM6231copywmQWz5c$default = Color.m6231copywmQWz5c$default(j8, OutlinedIconButtonTokens.INSTANCE.getDisabledOpacity(), 0.0f, 0.0f, 0.0f, 14, null);
            j7 = j8;
        } else {
            j7 = jM6268getUnspecified0d7_KjU2;
            jM6231copywmQWz5c$default = j4;
        }
        long jM6268getUnspecified0d7_KjU4 = (i2 & 16) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j5;
        long jM3275contentColorForek8zF_U = (i2 & 32) != 0 ? ColorSchemeKt.m3275contentColorForek8zF_U(jM6268getUnspecified0d7_KjU4, composer, (i >> 12) & 14) : j6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-142016199, i, -1, "androidx.compose.material3.IconButtonDefaults.outlinedIconToggleButtonVibrantColors (IconButtonDefaults.kt:745)");
        }
        IconToggleButtonColors iconToggleButtonColorsM3536copytNS2XkQ = defaultOutlinedIconToggleButtonVibrantColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6)).m3536copytNS2XkQ(jM6268getUnspecified0d7_KjU, j7, jM6268getUnspecified0d7_KjU3, jM6231copywmQWz5c$default, jM6268getUnspecified0d7_KjU4, jM3275contentColorForek8zF_U);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iconToggleButtonColorsM3536copytNS2XkQ;
    }

    /* JADX INFO: renamed from: smallContainerSize-N-wlBFI$material3, reason: not valid java name */
    public final long m3520smallContainerSizeNwlBFI$material3(int i) {
        float fM9042constructorimpl;
        IconButtonWidthOption.Companion companion = IconButtonWidthOption.Companion;
        if (IconButtonWidthOption.m3524equalsimpl0(i, companion.m3528getNarrowrc6NtMs())) {
            SmallIconButtonTokens smallIconButtonTokens = SmallIconButtonTokens.INSTANCE;
            fM9042constructorimpl = Dp.m9042constructorimpl(smallIconButtonTokens.m5111getNarrowTrailingSpaceD9Ej5fM() + smallIconButtonTokens.m5110getNarrowLeadingSpaceD9Ej5fM());
        } else if (IconButtonWidthOption.m3524equalsimpl0(i, companion.m3529getUniformrc6NtMs())) {
            SmallIconButtonTokens smallIconButtonTokens2 = SmallIconButtonTokens.INSTANCE;
            fM9042constructorimpl = Dp.m9042constructorimpl(smallIconButtonTokens2.m5107getDefaultLeadingSpaceD9Ej5fM() + smallIconButtonTokens2.m5107getDefaultLeadingSpaceD9Ej5fM());
        } else if (IconButtonWidthOption.m3524equalsimpl0(i, companion.m3530getWiderc6NtMs())) {
            SmallIconButtonTokens smallIconButtonTokens3 = SmallIconButtonTokens.INSTANCE;
            fM9042constructorimpl = Dp.m9042constructorimpl(smallIconButtonTokens3.m5114getWideTrailingSpaceD9Ej5fM() + smallIconButtonTokens3.m5113getWideLeadingSpaceD9Ej5fM());
        } else {
            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
        }
        SmallIconButtonTokens smallIconButtonTokens4 = SmallIconButtonTokens.INSTANCE;
        return DpKt.m9064DpSizeYgX7TsA(Dp.m9042constructorimpl(smallIconButtonTokens4.m5109getIconSizeD9Ej5fM() + fM9042constructorimpl), smallIconButtonTokens4.m5106getContainerHeightD9Ej5fM());
    }

    public static final class IconButtonWidthOption {
        public static final Companion Companion = new Companion(null);
        private static final int Narrow = m3522constructorimpl(0);
        private static final int Uniform = m3522constructorimpl(1);
        private static final int Wide = m3522constructorimpl(2);
        private final int value;

        private /* synthetic */ IconButtonWidthOption(int i) {
            this.value = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ IconButtonWidthOption m3521boximpl(int i) {
            return new IconButtonWidthOption(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        private static int m3522constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m3523equalsimpl(int i, Object obj) {
            return (obj instanceof IconButtonWidthOption) && i == ((IconButtonWidthOption) obj).m3527unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m3524equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m3525hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m3526toStringimpl(int i) {
            if (m3524equalsimpl0(i, Narrow)) {
                return "Narrow";
            }
            if (m3524equalsimpl0(i, Uniform)) {
                return "Uniform";
            }
            return m3524equalsimpl0(i, Wide) ? "Wide" : "Unknown";
        }

        public boolean equals(Object obj) {
            return m3523equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m3525hashCodeimpl(this.value);
        }

        public String toString() {
            return m3526toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m3527unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getNarrow-rc6NtMs, reason: not valid java name */
            public final int m3528getNarrowrc6NtMs() {
                return IconButtonWidthOption.Narrow;
            }

            /* JADX INFO: renamed from: getUniform-rc6NtMs, reason: not valid java name */
            public final int m3529getUniformrc6NtMs() {
                return IconButtonWidthOption.Uniform;
            }

            /* JADX INFO: renamed from: getWide-rc6NtMs, reason: not valid java name */
            public final int m3530getWiderc6NtMs() {
                return IconButtonWidthOption.Wide;
            }

            private Companion() {
            }
        }
    }
}
