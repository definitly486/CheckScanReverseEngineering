package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOriginKt;
import defpackage.bm3;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class WideNavigationRailKt$ModalWideNavigationRailContent$5 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ Arrangement.Vertical $arrangement;
    final /* synthetic */ WideNavigationRailColors $colors;
    final /* synthetic */ bm3<Composer, Integer, j59> $content;
    final /* synthetic */ boolean $expanded;
    final /* synthetic */ bm3<Composer, Integer, j59> $header;
    final /* synthetic */ boolean $isRtl;
    final /* synthetic */ Animatable<Float, AnimationVector1D> $predictiveBackProgress;
    final /* synthetic */ RailPredictiveBackState $predictiveBackState;
    final /* synthetic */ Shape $shape;
    final /* synthetic */ WindowInsets $windowInsets;

    /* JADX WARN: Multi-variable type inference failed */
    public WideNavigationRailKt$ModalWideNavigationRailContent$5(Animatable<Float, AnimationVector1D> animatable, RailPredictiveBackState railPredictiveBackState, boolean z, boolean z2, WideNavigationRailColors wideNavigationRailColors, Shape shape, bm3<? super Composer, ? super Integer, j59> bm3Var, WindowInsets windowInsets, Arrangement.Vertical vertical, bm3<? super Composer, ? super Integer, j59> bm3Var2) {
        this.$predictiveBackProgress = animatable;
        this.$predictiveBackState = railPredictiveBackState;
        this.$isRtl = z;
        this.$expanded = z2;
        this.$colors = wideNavigationRailColors;
        this.$shape = shape;
        this.$header = bm3Var;
        this.$windowInsets = windowInsets;
        this.$arrangement = vertical;
        this.$content = bm3Var2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$1$lambda$0(Animatable animatable, RailPredictiveBackState railPredictiveBackState, boolean z, GraphicsLayerScope graphicsLayerScope) {
        float fFloatValue = ((Number) animatable.getValue()).floatValue();
        if (fFloatValue <= 0.0f) {
            return j59.a;
        }
        float fCalculatePredictiveBackScaleX = WideNavigationRailKt.calculatePredictiveBackScaleX(graphicsLayerScope, fFloatValue, railPredictiveBackState.getSwipeEdgeMatchesRail());
        graphicsLayerScope.setScaleX(fCalculatePredictiveBackScaleX == 0.0f ? 1.0f : WideNavigationRailKt.calculatePredictiveBackScaleY(graphicsLayerScope, fFloatValue) / fCalculatePredictiveBackScaleX);
        graphicsLayerScope.mo6433setTransformOrigin__ExYCQ(TransformOriginKt.TransformOrigin(z ? 0.0f : 1.0f, 0.5f));
        return j59.a;
    }

    public final void invoke(Composer composer, int i) {
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1043835354, i, -1, "androidx.compose.material3.ModalWideNavigationRailContent.<anonymous> (WideNavigationRail.kt:1044)");
        }
        Modifier.Companion companion = Modifier.Companion;
        boolean zChangedInstance = composer.changedInstance(this.$predictiveBackProgress) | composer.changed(this.$predictiveBackState) | composer.changed(this.$isRtl);
        final Animatable<Float, AnimationVector1D> animatable = this.$predictiveBackProgress;
        final RailPredictiveBackState railPredictiveBackState = this.$predictiveBackState;
        final boolean z = this.$isRtl;
        Object objRememberedValue = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new nl3() { // from class: androidx.compose.material3.n5
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return WideNavigationRailKt$ModalWideNavigationRailContent$5.invoke$lambda$1$lambda$0(animatable, railPredictiveBackState, z, (GraphicsLayerScope) obj);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        WideNavigationRailKt.WideNavigationRailLayout(GraphicsLayerModifierKt.graphicsLayer(companion, (nl3) objRememberedValue), true, this.$expanded, this.$colors, this.$shape, this.$header, this.$windowInsets, this.$arrangement, this.$content, composer, 48);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
        invoke(composer, num.intValue());
        return j59.a;
    }
}
