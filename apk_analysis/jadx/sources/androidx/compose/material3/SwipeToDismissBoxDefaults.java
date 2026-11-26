package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import defpackage.nl3;
import defpackage.om4;

/* JADX INFO: loaded from: classes.dex */
public final class SwipeToDismissBoxDefaults {
    public static final int $stable = 0;
    public static final SwipeToDismissBoxDefaults INSTANCE = new SwipeToDismissBoxDefaults();

    private SwipeToDismissBoxDefaults() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float _get_positionalThreshold_$lambda$2$lambda$1$lambda$0(Density density, float f) {
        return density.mo1434toPx0680j_4(Dp.m9042constructorimpl(56.0f));
    }

    public final nl3<Float, Float> getPositionalThreshold(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1545861529, i, -1, "androidx.compose.material3.SwipeToDismissBoxDefaults.<get-positionalThreshold> (SwipeToDismissBox.kt:362)");
        }
        composer.startReplaceGroup(-485754360);
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        boolean zChanged = composer.changed(density);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new om4(density, 2);
            composer.updateRememberedValue(objRememberedValue);
        }
        nl3<Float, Float> nl3Var = (nl3) objRememberedValue;
        composer.endReplaceGroup();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return nl3Var;
    }
}
