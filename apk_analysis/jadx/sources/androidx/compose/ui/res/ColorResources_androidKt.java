package androidx.compose.ui.res;

import android.content.Context;
import android.content.res.Resources;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.content.res.ResourcesCompat;

/* JADX INFO: loaded from: classes5.dex */
public final class ColorResources_androidKt {
    public static final long colorResource(int i, Composer composer, int i2) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1777644873, i2, -1, "androidx.compose.ui.res.colorResource (ColorResources.android.kt:34)");
        }
        long jColor = ColorKt.Color(ResourcesCompat.getColor((Resources) composer.consume(AndroidCompositionLocals_androidKt.getLocalResources()), i, ((Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext())).getTheme()));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return jColor;
    }
}
