package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class WideNavigationRail_androidKt$ModalWideNavigationRailDialog$dialog$1$1$1 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ State<bm3<Composer, Integer, j59>> $currentContent$delegate;

    /* JADX WARN: Multi-variable type inference failed */
    public WideNavigationRail_androidKt$ModalWideNavigationRailDialog$dialog$1$1$1(State<? extends bm3<? super Composer, ? super Integer, j59>> state) {
        this.$currentContent$delegate = state;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$1$lambda$0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.dialog(semanticsPropertyReceiver);
        return j59.a;
    }

    public final void invoke(Composer composer, int i) {
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-406777160, i, -1, "androidx.compose.material3.ModalWideNavigationRailDialog.<anonymous>.<anonymous>.<anonymous> (WideNavigationRail.android.kt:148)");
        }
        Modifier.Companion companion = Modifier.Companion;
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new s5();
            composer.updateRememberedValue(objRememberedValue);
        }
        Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(companion, false, (nl3) objRememberedValue, 1, null);
        State<bm3<Composer, Integer, j59>> state = this.$currentContent$delegate;
        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierSemantics$default);
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
        if (cc.f(WideNavigationRail_androidKt.ModalWideNavigationRailDialog$lambda$0(state), composer, 0)) {
            ComposerKt.traceEventEnd();
        }
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
        invoke(composer, num.intValue());
        return j59.a;
    }
}
