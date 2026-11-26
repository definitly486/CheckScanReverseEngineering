package androidx.compose.material3;

import androidx.compose.material3.tokens.ElevationTokens;
import androidx.compose.material3.tokens.ExtendedFabPrimaryTokens;
import androidx.compose.material3.tokens.FabBaselineTokens;
import androidx.compose.material3.tokens.FabLargeTokens;
import androidx.compose.material3.tokens.FabPrimaryContainerTokens;
import androidx.compose.material3.tokens.FabSmallTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class FloatingActionButtonDefaults {
    public static final int $stable = 0;
    public static final FloatingActionButtonDefaults INSTANCE = new FloatingActionButtonDefaults();
    private static final float LargeIconSize = Dp.m9042constructorimpl(36.0f);

    private FloatingActionButtonDefaults() {
    }

    /* JADX INFO: renamed from: bottomAppBarFabElevation-a9UjIt4$default, reason: not valid java name */
    public static /* synthetic */ FloatingActionButtonElevation m3476bottomAppBarFabElevationa9UjIt4$default(FloatingActionButtonDefaults floatingActionButtonDefaults, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 2) != 0) {
            f2 = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 4) != 0) {
            f3 = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 8) != 0) {
            f4 = Dp.m9042constructorimpl(0.0f);
        }
        return floatingActionButtonDefaults.m3477bottomAppBarFabElevationa9UjIt4(f, f2, f3, f4);
    }

    /* JADX INFO: renamed from: bottomAppBarFabElevation-a9UjIt4, reason: not valid java name */
    public final FloatingActionButtonElevation m3477bottomAppBarFabElevationa9UjIt4(float f, float f2, float f3, float f4) {
        return new FloatingActionButtonElevation(f, f2, f3, f4, null);
    }

    /* JADX INFO: renamed from: elevation-xZ9-QkE, reason: not valid java name */
    public final FloatingActionButtonElevation m3478elevationxZ9QkE(float f, float f2, float f3, float f4, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            f = FabPrimaryContainerTokens.INSTANCE.m4784getContainerElevationD9Ej5fM();
        }
        if ((i2 & 2) != 0) {
            f2 = FabPrimaryContainerTokens.INSTANCE.m4787getPressedContainerElevationD9Ej5fM();
        }
        if ((i2 & 4) != 0) {
            f3 = FabPrimaryContainerTokens.INSTANCE.m4785getFocusedContainerElevationD9Ej5fM();
        }
        float f5 = f3;
        if ((i2 & 8) != 0) {
            f4 = FabPrimaryContainerTokens.INSTANCE.m4786getHoveredContainerElevationD9Ej5fM();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-241106249, i, -1, "androidx.compose.material3.FloatingActionButtonDefaults.elevation (FloatingActionButton.kt:549)");
        }
        float f6 = f;
        FloatingActionButtonElevation floatingActionButtonElevation = new FloatingActionButtonElevation(f6, f2, f5, f4, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return floatingActionButtonElevation;
    }

    public final long getContainerColor(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1855656391, i, -1, "androidx.compose.material3.FloatingActionButtonDefaults.<get-containerColor> (FloatingActionButton.kt:529)");
        }
        long value = ColorSchemeKt.getValue(FabPrimaryContainerTokens.INSTANCE.getContainerColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    public final Shape getExtendedFabShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-536021915, i, -1, "androidx.compose.material3.FloatingActionButtonDefaults.<get-extendedFabShape> (FloatingActionButton.kt:525)");
        }
        Shape value = ShapesKt.getValue(ExtendedFabPrimaryTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    /* JADX INFO: renamed from: getLargeIconSize-D9Ej5fM, reason: not valid java name */
    public final float m3479getLargeIconSizeD9Ej5fM() {
        return LargeIconSize;
    }

    public final Shape getLargeShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1835912187, i, -1, "androidx.compose.material3.FloatingActionButtonDefaults.<get-largeShape> (FloatingActionButton.kt:521)");
        }
        Shape value = ShapesKt.getValue(FabLargeTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    public final Shape getShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-53247565, i, -1, "androidx.compose.material3.FloatingActionButtonDefaults.<get-shape> (FloatingActionButton.kt:513)");
        }
        Shape value = ShapesKt.getValue(FabBaselineTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    public final Shape getSmallShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(394933381, i, -1, "androidx.compose.material3.FloatingActionButtonDefaults.<get-smallShape> (FloatingActionButton.kt:517)");
        }
        Shape value = ShapesKt.getValue(FabSmallTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    /* JADX INFO: renamed from: loweredElevation-xZ9-QkE, reason: not valid java name */
    public final FloatingActionButtonElevation m3480loweredElevationxZ9QkE(float f, float f2, float f3, float f4, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            f = ElevationTokens.INSTANCE.m4733getLevel1D9Ej5fM();
        }
        if ((i2 & 2) != 0) {
            f2 = ElevationTokens.INSTANCE.m4733getLevel1D9Ej5fM();
        }
        if ((i2 & 4) != 0) {
            f3 = ElevationTokens.INSTANCE.m4733getLevel1D9Ej5fM();
        }
        float f5 = f3;
        if ((i2 & 8) != 0) {
            f4 = ElevationTokens.INSTANCE.m4734getLevel2D9Ej5fM();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-285065125, i, -1, "androidx.compose.material3.FloatingActionButtonDefaults.loweredElevation (FloatingActionButton.kt:573)");
        }
        float f6 = f;
        FloatingActionButtonElevation floatingActionButtonElevation = new FloatingActionButtonElevation(f6, f2, f5, f4, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return floatingActionButtonElevation;
    }
}
