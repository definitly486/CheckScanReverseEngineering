package androidx.compose.material3;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class FloatingActionButtonKt$ExtendedFloatingActionButton$3$1$1 implements dm3<AnimatedVisibilityScope, Composer, Integer, j59> {
    final /* synthetic */ bm3<Composer, Integer, j59> $text;

    /* JADX WARN: Multi-variable type inference failed */
    public FloatingActionButtonKt$ExtendedFloatingActionButton$3$1$1(bm3<? super Composer, ? super Integer, j59> bm3Var) {
        this.$text = bm3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$1$lambda$0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        return j59.a;
    }

    public final void invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-660008666, i, -1, "androidx.compose.material3.ExtendedFloatingActionButton.<anonymous>.<anonymous>.<anonymous> (FloatingActionButton.kt:424)");
        }
        Modifier.Companion companion = Modifier.Companion;
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new u1();
            composer.updateRememberedValue(objRememberedValue);
        }
        Modifier modifierClearAndSetSemantics = SemanticsModifierKt.clearAndSetSemantics(companion, (nl3) objRememberedValue);
        bm3<Composer, Integer, j59> bm3Var = this.$text;
        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer, 0);
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
        bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
        }
        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
        SpacerKt.Spacer(SizeKt.m2104width3ABfNKs(companion, FloatingActionButtonKt.ExtendedFabEndIconPadding), composer, 6);
        bm3Var.invoke(composer, 0);
        composer.endNode();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Override // defpackage.dm3
    public /* bridge */ /* synthetic */ j59 invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, Integer num) {
        invoke(animatedVisibilityScope, composer, num.intValue());
        return j59.a;
    }
}
