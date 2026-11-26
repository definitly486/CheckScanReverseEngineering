package androidx.compose.material3;

import androidx.compose.material3.tokens.CheckboxTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class CheckboxDefaults {
    public static final int $stable = 0;
    public static final CheckboxDefaults INSTANCE = new CheckboxDefaults();
    private static final float StrokeWidth = Dp.m9042constructorimpl(2.0f);

    private CheckboxDefaults() {
    }

    public final CheckboxColors colors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-9530498, i, -1, "androidx.compose.material3.CheckboxDefaults.colors (Checkbox.kt:315)");
        }
        CheckboxColors defaultCheckboxColors$material3 = getDefaultCheckboxColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultCheckboxColors$material3;
    }

    /* JADX INFO: renamed from: colors-5tl4gsc, reason: not valid java name */
    public final CheckboxColors m3176colors5tl4gsc(long j, long j2, long j3, long j4, long j5, long j6, Composer composer, int i, int i2) {
        long jM6268getUnspecified0d7_KjU = (i2 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM6268getUnspecified0d7_KjU2 = (i2 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j2;
        long jM6268getUnspecified0d7_KjU3 = (i2 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        long jM6268getUnspecified0d7_KjU4 = (i2 & 8) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j4;
        long jM6268getUnspecified0d7_KjU5 = (i2 & 16) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j5;
        long jM6268getUnspecified0d7_KjU6 = (i2 & 32) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-89536160, i, -1, "androidx.compose.material3.CheckboxDefaults.colors (Checkbox.kt:341)");
        }
        CheckboxColors defaultCheckboxColors$material3 = getDefaultCheckboxColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        Color.Companion companion = Color.Companion;
        CheckboxColors checkboxColorsM3163copy2qZNXz8 = defaultCheckboxColors$material3.m3163copy2qZNXz8(jM6268getUnspecified0d7_KjU3, companion.m6267getTransparent0d7_KjU(), jM6268getUnspecified0d7_KjU, companion.m6267getTransparent0d7_KjU(), jM6268getUnspecified0d7_KjU4, companion.m6267getTransparent0d7_KjU(), jM6268getUnspecified0d7_KjU6, jM6268getUnspecified0d7_KjU, jM6268getUnspecified0d7_KjU2, jM6268getUnspecified0d7_KjU4, jM6268getUnspecified0d7_KjU5, jM6268getUnspecified0d7_KjU6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return checkboxColorsM3163copy2qZNXz8;
    }

    public final CheckboxColors getDefaultCheckboxColors$material3(ColorScheme colorScheme) {
        CheckboxColors defaultCheckboxColorsCached$material3 = colorScheme.getDefaultCheckboxColorsCached$material3();
        if (defaultCheckboxColorsCached$material3 != null) {
            return defaultCheckboxColorsCached$material3;
        }
        CheckboxTokens checkboxTokens = CheckboxTokens.INSTANCE;
        long jFromToken = ColorSchemeKt.fromToken(colorScheme, checkboxTokens.getSelectedIconColor());
        Color.Companion companion = Color.Companion;
        CheckboxColors checkboxColors = new CheckboxColors(jFromToken, companion.m6267getTransparent0d7_KjU(), ColorSchemeKt.fromToken(colorScheme, checkboxTokens.getSelectedContainerColor()), companion.m6267getTransparent0d7_KjU(), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, checkboxTokens.getSelectedDisabledContainerColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), companion.m6267getTransparent0d7_KjU(), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, checkboxTokens.getSelectedDisabledContainerColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, checkboxTokens.getSelectedContainerColor()), ColorSchemeKt.fromToken(colorScheme, checkboxTokens.getUnselectedOutlineColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, checkboxTokens.getSelectedDisabledContainerColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, checkboxTokens.getUnselectedDisabledOutlineColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, checkboxTokens.getSelectedDisabledContainerColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), null);
        colorScheme.setDefaultCheckboxColorsCached$material3(checkboxColors);
        return checkboxColors;
    }

    /* JADX INFO: renamed from: getStrokeWidth-D9Ej5fM, reason: not valid java name */
    public final float m3177getStrokeWidthD9Ej5fM() {
        return StrokeWidth;
    }
}
