package androidx.compose.material3;

import androidx.compose.material3.tokens.RadioButtonTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;

/* JADX INFO: loaded from: classes2.dex */
public final class RadioButtonDefaults {
    public static final int $stable = 0;
    public static final RadioButtonDefaults INSTANCE = new RadioButtonDefaults();

    private RadioButtonDefaults() {
    }

    public final RadioButtonColors colors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1191566130, i, -1, "androidx.compose.material3.RadioButtonDefaults.colors (RadioButton.kt:135)");
        }
        RadioButtonColors defaultRadioButtonColors$material3 = getDefaultRadioButtonColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultRadioButtonColors$material3;
    }

    /* JADX INFO: renamed from: colors-ro_MJ88, reason: not valid java name */
    public final RadioButtonColors m3765colorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            j = Color.Companion.m6268getUnspecified0d7_KjU();
        }
        if ((i2 & 2) != 0) {
            j2 = Color.Companion.m6268getUnspecified0d7_KjU();
        }
        if ((i2 & 4) != 0) {
            j3 = Color.Companion.m6268getUnspecified0d7_KjU();
        }
        if ((i2 & 8) != 0) {
            j4 = Color.Companion.m6268getUnspecified0d7_KjU();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-351083046, i, -1, "androidx.compose.material3.RadioButtonDefaults.colors (RadioButton.kt:155)");
        }
        long j5 = j2;
        long j6 = j;
        RadioButtonColors radioButtonColorsM3760copyjRlVdoo = getDefaultRadioButtonColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6)).m3760copyjRlVdoo(j6, j5, j3, j4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return radioButtonColorsM3760copyjRlVdoo;
    }

    public final RadioButtonColors getDefaultRadioButtonColors$material3(ColorScheme colorScheme) {
        RadioButtonColors defaultRadioButtonColorsCached$material3 = colorScheme.getDefaultRadioButtonColorsCached$material3();
        if (defaultRadioButtonColorsCached$material3 != null) {
            return defaultRadioButtonColorsCached$material3;
        }
        RadioButtonTokens radioButtonTokens = RadioButtonTokens.INSTANCE;
        RadioButtonColors radioButtonColors = new RadioButtonColors(ColorSchemeKt.fromToken(colorScheme, radioButtonTokens.getSelectedIconColor()), ColorSchemeKt.fromToken(colorScheme, radioButtonTokens.getUnselectedIconColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, radioButtonTokens.getDisabledSelectedIconColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, radioButtonTokens.getDisabledUnselectedIconColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), null);
        colorScheme.setDefaultRadioButtonColorsCached$material3(radioButtonColors);
        return radioButtonColors;
    }
}
