package androidx.compose.material3;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class NavigationRailKt$NavigationRailItem$styledIcon$1 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ boolean $alwaysShowLabel;
    final /* synthetic */ FiniteAnimationSpec<Color> $colorAnimationSpec;
    final /* synthetic */ NavigationRailItemColors $colors;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ bm3<Composer, Integer, j59> $icon;
    final /* synthetic */ bm3<Composer, Integer, j59> $label;
    final /* synthetic */ boolean $selected;

    /* JADX WARN: Multi-variable type inference failed */
    public NavigationRailKt$NavigationRailItem$styledIcon$1(NavigationRailItemColors navigationRailItemColors, boolean z, boolean z2, FiniteAnimationSpec<Color> finiteAnimationSpec, bm3<? super Composer, ? super Integer, j59> bm3Var, boolean z3, bm3<? super Composer, ? super Integer, j59> bm3Var2) {
        this.$colors = navigationRailItemColors;
        this.$selected = z;
        this.$enabled = z2;
        this.$colorAnimationSpec = finiteAnimationSpec;
        this.$label = bm3Var;
        this.$alwaysShowLabel = z3;
        this.$icon = bm3Var2;
    }

    private static final long invoke$lambda$0(State<Color> state) {
        return state.getValue().m6242unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$2$lambda$1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        return j59.a;
    }

    public final void invoke(Composer composer, int i) {
        Modifier modifierClearAndSetSemantics;
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(206057749, i, -1, "androidx.compose.material3.NavigationRailItem.<anonymous> (NavigationRail.kt:216)");
        }
        State<Color> stateM1161animateColorAsStateeuL9pac = SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(this.$colors.m3707iconColorWaAFU9c$material3(this.$selected, this.$enabled), this.$colorAnimationSpec, null, null, composer, 0, 12);
        if (this.$label == null || !(this.$alwaysShowLabel || this.$selected)) {
            composer.startReplaceGroup(453016797);
            composer.endReplaceGroup();
            modifierClearAndSetSemantics = Modifier.Companion;
        } else {
            composer.startReplaceGroup(453015884);
            Modifier.Companion companion = Modifier.Companion;
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new d3();
                composer.updateRememberedValue(objRememberedValue);
            }
            modifierClearAndSetSemantics = SemanticsModifierKt.clearAndSetSemantics(companion, (nl3) objRememberedValue);
            composer.endReplaceGroup();
        }
        bm3<Composer, Integer, j59> bm3Var = this.$icon;
        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierClearAndSetSemantics);
        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
        ll3<ComposeUiNode> constructor = companion2.getConstructor();
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
        bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
        }
        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
        CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(invoke$lambda$0(stateM1161animateColorAsStateeuL9pac))), bm3Var, composer, ProvidedValue.$stable);
        composer.endNode();
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
