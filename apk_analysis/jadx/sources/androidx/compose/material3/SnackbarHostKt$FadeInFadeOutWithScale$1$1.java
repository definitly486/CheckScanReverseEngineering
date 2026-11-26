package androidx.compose.material3;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.CompositingStrategy;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScopeKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.nn1;

/* JADX INFO: loaded from: classes2.dex */
public final class SnackbarHostKt$FadeInFadeOutWithScale$1$1 implements dm3<bm3<? super Composer, ? super Integer, ? extends j59>, Composer, Integer, j59> {
    final /* synthetic */ String $a11yPaneTitle;
    final /* synthetic */ SnackbarData $current;
    final /* synthetic */ SnackbarData $key;
    final /* synthetic */ FadeInFadeOutState<SnackbarData> $state;

    public SnackbarHostKt$FadeInFadeOutWithScale$1$1(SnackbarData snackbarData, SnackbarData snackbarData2, FadeInFadeOutState<SnackbarData> fadeInFadeOutState, String str) {
        this.$key = snackbarData;
        this.$current = snackbarData2;
        this.$state = fadeInFadeOutState;
        this.$a11yPaneTitle = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$2$lambda$1(final SnackbarData snackbarData, FadeInFadeOutState fadeInFadeOutState) {
        if (!aa4.e(snackbarData, fadeInFadeOutState.getCurrent())) {
            nn1.y(new nl3() { // from class: androidx.compose.material3.z3
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(SnackbarHostKt$FadeInFadeOutWithScale$1$1.invoke$lambda$2$lambda$1$lambda$0(snackbarData, (FadeInFadeOutAnimationItem) obj));
                }
            }, fadeInFadeOutState.getItems());
            RecomposeScope scope = fadeInFadeOutState.getScope();
            if (scope != null) {
                scope.invalidate();
            }
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean invoke$lambda$2$lambda$1$lambda$0(SnackbarData snackbarData, FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem) {
        return aa4.e(fadeInFadeOutAnimationItem.getKey(), snackbarData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$5$lambda$4(boolean z, String str, final SnackbarData snackbarData, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (z) {
            SemanticsPropertiesKt.m8279setLiveRegionhR3wRGc(semanticsPropertyReceiver, LiveRegionMode.Companion.m8253getPolite0phEisY());
        }
        SemanticsPropertiesKt.dismiss$default(semanticsPropertyReceiver, null, new ll3() { // from class: androidx.compose.material3.y3
            @Override // defpackage.ll3
            public final Object invoke() {
                return Boolean.valueOf(SnackbarHostKt$FadeInFadeOutWithScale$1$1.invoke$lambda$5$lambda$4$lambda$3(snackbarData));
            }
        }, 1, null);
        SemanticsPropertiesKt.setPaneTitle(semanticsPropertyReceiver, str);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean invoke$lambda$5$lambda$4$lambda$3(SnackbarData snackbarData) {
        snackbarData.dismiss();
        return true;
    }

    public final void invoke(bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
        int i2;
        if ((i & 6) == 0) {
            i2 = i | (composer.changedInstance(bm3Var) ? 4 : 2);
        } else {
            i2 = i;
        }
        if (!composer.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1952400805, i2, -1, "androidx.compose.material3.FadeInFadeOutWithScale.<anonymous>.<anonymous> (SnackbarHost.kt:338)");
        }
        final boolean zE = aa4.e(this.$key, this.$current);
        FiniteAnimationSpec finiteAnimationSpecValue = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composer, 6);
        boolean zChanged = composer.changed(this.$key) | composer.changedInstance(this.$state);
        final SnackbarData snackbarData = this.$key;
        final FadeInFadeOutState<SnackbarData> fadeInFadeOutState = this.$state;
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new ll3() { // from class: androidx.compose.material3.a4
                @Override // defpackage.ll3
                public final Object invoke() {
                    return SnackbarHostKt$FadeInFadeOutWithScale$1$1.invoke$lambda$2$lambda$1(snackbarData, fadeInFadeOutState);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        State stateAnimatedOpacity = SnackbarHostKt.animatedOpacity(finiteAnimationSpecValue, zE, (ll3) objRememberedValue, composer, 0, 0);
        State stateAnimatedScale = SnackbarHostKt.animatedScale(MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composer, 6), zE, composer, 0);
        Modifier modifierM6394graphicsLayerAp8cVGQ = GraphicsLayerModifierKt.m6394graphicsLayerAp8cVGQ(Modifier.Companion, (131064 & 1) != 0 ? 1.0f : ((Number) stateAnimatedScale.getValue()).floatValue(), (131064 & 2) != 0 ? 1.0f : ((Number) stateAnimatedScale.getValue()).floatValue(), (131064 & 4) == 0 ? ((Number) stateAnimatedOpacity.getValue()).floatValue() : 1.0f, (131064 & 8) != 0 ? 0.0f : 0.0f, (131064 & 16) != 0 ? 0.0f : 0.0f, (131064 & 32) != 0 ? 0.0f : 0.0f, (131064 & 64) != 0 ? 0.0f : 0.0f, (131064 & 128) != 0 ? 0.0f : 0.0f, (131064 & 256) == 0 ? 0.0f : 0.0f, (131064 & 512) != 0 ? 8.0f : 0.0f, (131064 & 1024) != 0 ? TransformOrigin.Companion.m6645getCenterSzJe1aQ() : 0L, (131064 & 2048) != 0 ? RectangleShapeKt.getRectangleShape() : null, (131064 & 4096) != 0 ? false : false, (131064 & 8192) != 0 ? null : null, (131064 & 16384) != 0 ? GraphicsLayerScopeKt.getDefaultShadowColor() : 0L, (32768 & 131064) != 0 ? GraphicsLayerScopeKt.getDefaultShadowColor() : 0L, (131064 & 65536) != 0 ? CompositingStrategy.Companion.m6321getAutoNrFUSI() : 0);
        boolean zChanged2 = composer.changed(zE) | composer.changed(this.$key) | composer.changed(this.$a11yPaneTitle);
        final String str = this.$a11yPaneTitle;
        final SnackbarData snackbarData2 = this.$key;
        Object objRememberedValue2 = composer.rememberedValue();
        if (zChanged2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
            objRememberedValue2 = new nl3() { // from class: androidx.compose.material3.b4
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return SnackbarHostKt$FadeInFadeOutWithScale$1$1.invoke$lambda$5$lambda$4(zE, str, snackbarData2, (SemanticsPropertyReceiver) obj);
                }
            };
            composer.updateRememberedValue(objRememberedValue2);
        }
        Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(modifierM6394graphicsLayerAp8cVGQ, false, (nl3) objRememberedValue2, 1, null);
        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierSemantics$default);
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        ll3<ComposeUiNode> constructor = companion.getConstructor();
        if (composer.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor);
        } else {
            composer.useNode();
        }
        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer);
        bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
        }
        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
        if (cc.f(bm3Var, composer, i2 & 14)) {
            ComposerKt.traceEventEnd();
        }
    }

    @Override // defpackage.dm3
    public /* bridge */ /* synthetic */ j59 invoke(bm3<? super Composer, ? super Integer, ? extends j59> bm3Var, Composer composer, Integer num) {
        invoke((bm3<? super Composer, ? super Integer, j59>) bm3Var, composer, num.intValue());
        return j59.a;
    }
}
