package androidx.compose.material3;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
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
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.aa4;
import defpackage.av0;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
public final class BottomSheetScaffoldKt$StandardBottomSheet$3$1$1 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ String $dismissActionLabel;
    final /* synthetic */ bm3<Composer, Integer, j59> $dragHandle;
    final /* synthetic */ String $expandActionLabel;
    final /* synthetic */ String $partialExpandActionLabel;
    final /* synthetic */ y22 $scope;
    final /* synthetic */ boolean $sheetSwipeEnabled;
    final /* synthetic */ SheetState $state;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SheetValue.values().length];
            try {
                iArr[SheetValue.Expanded.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SheetValue.PartiallyExpanded.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BottomSheetScaffoldKt$StandardBottomSheet$3$1$1(SheetState sheetState, y22 y22Var, boolean z, String str, String str2, String str3, bm3<? super Composer, ? super Integer, j59> bm3Var) {
        this.$state = sheetState;
        this.$scope = y22Var;
        this.$sheetSwipeEnabled = z;
        this.$expandActionLabel = str;
        this.$partialExpandActionLabel = str2;
        this.$dismissActionLabel = str3;
        this.$dragHandle = bm3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$1$lambda$0(SheetState sheetState, y22 y22Var) {
        int i = WhenMappings.$EnumSwitchMapping$0[sheetState.getCurrentValue().ordinal()];
        if (i == 1) {
            av0.c(y22Var, null, null, new BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1$1(sheetState, null), 3);
        } else if (i != 2) {
            av0.c(y22Var, null, null, new BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1$3(sheetState, null), 3);
        } else {
            av0.c(y22Var, null, null, new BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1$2(sheetState, null), 3);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$7$lambda$6(final SheetState sheetState, boolean z, String str, String str2, String str3, final y22 y22Var, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (sheetState.getAnchoredDraggableState$material3().getAnchors().getSize() > 1 && z) {
            SheetValue currentValue = sheetState.getCurrentValue();
            SheetValue sheetValue = SheetValue.PartiallyExpanded;
            if (currentValue == sheetValue) {
                if (sheetState.getAnchoredDraggableState$material3().getConfirmValueChange$material3().invoke(SheetValue.Expanded).booleanValue()) {
                    SemanticsPropertiesKt.expand(semanticsPropertyReceiver, str, new ll3() { // from class: androidx.compose.material3.i
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return Boolean.valueOf(BottomSheetScaffoldKt$StandardBottomSheet$3$1$1.invoke$lambda$7$lambda$6$lambda$5$lambda$2(y22Var, sheetState));
                        }
                    });
                }
            } else if (sheetState.getAnchoredDraggableState$material3().getConfirmValueChange$material3().invoke(sheetValue).booleanValue()) {
                SemanticsPropertiesKt.collapse(semanticsPropertyReceiver, str2, new ll3() { // from class: androidx.compose.material3.j
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return Boolean.valueOf(BottomSheetScaffoldKt$StandardBottomSheet$3$1$1.invoke$lambda$7$lambda$6$lambda$5$lambda$3(y22Var, sheetState));
                    }
                });
            }
            if (!sheetState.getSkipHiddenState$material3()) {
                SemanticsPropertiesKt.dismiss(semanticsPropertyReceiver, str3, new ll3() { // from class: androidx.compose.material3.k
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return Boolean.valueOf(BottomSheetScaffoldKt$StandardBottomSheet$3$1$1.invoke$lambda$7$lambda$6$lambda$5$lambda$4(y22Var, sheetState));
                    }
                });
            }
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean invoke$lambda$7$lambda$6$lambda$5$lambda$2(y22 y22Var, SheetState sheetState) {
        av0.c(y22Var, null, null, new BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$2$1$1$1$1(sheetState, null), 3);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean invoke$lambda$7$lambda$6$lambda$5$lambda$3(y22 y22Var, SheetState sheetState) {
        av0.c(y22Var, null, null, new BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$2$1$1$2$1(sheetState, null), 3);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean invoke$lambda$7$lambda$6$lambda$5$lambda$4(y22 y22Var, SheetState sheetState) {
        av0.c(y22Var, null, null, new BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$2$1$1$3$1(sheetState, null), 3);
        return true;
    }

    public final void invoke(Composer composer, int i) {
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-511691176, i, -1, "androidx.compose.material3.StandardBottomSheet.<anonymous>.<anonymous>.<anonymous> (BottomSheetScaffold.kt:336)");
        }
        Modifier.Companion companion = Modifier.Companion;
        boolean zChanged = composer.changed(this.$state) | composer.changedInstance(this.$scope);
        final SheetState sheetState = this.$state;
        final y22 y22Var = this.$scope;
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new ll3() { // from class: androidx.compose.material3.l
                @Override // defpackage.ll3
                public final Object invoke() {
                    return BottomSheetScaffoldKt$StandardBottomSheet$3$1$1.invoke$lambda$1$lambda$0(sheetState, y22Var);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        Modifier modifierM1322clickableXHw0xAI$default = ClickableKt.m1322clickableXHw0xAI$default(companion, false, null, null, (ll3) objRememberedValue, 7, null);
        boolean zChanged2 = composer.changed(this.$state) | composer.changed(this.$sheetSwipeEnabled) | composer.changed(this.$expandActionLabel) | composer.changedInstance(this.$scope) | composer.changed(this.$partialExpandActionLabel) | composer.changed(this.$dismissActionLabel);
        final SheetState sheetState2 = this.$state;
        final boolean z = this.$sheetSwipeEnabled;
        final String str = this.$expandActionLabel;
        final String str2 = this.$partialExpandActionLabel;
        final String str3 = this.$dismissActionLabel;
        final y22 y22Var2 = this.$scope;
        Object objRememberedValue2 = composer.rememberedValue();
        if (zChanged2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
            nl3 nl3Var = new nl3() { // from class: androidx.compose.material3.m
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return BottomSheetScaffoldKt$StandardBottomSheet$3$1$1.invoke$lambda$7$lambda$6(sheetState2, z, str, str2, str3, y22Var2, (SemanticsPropertyReceiver) obj);
                }
            };
            composer.updateRememberedValue(nl3Var);
            objRememberedValue2 = nl3Var;
        }
        Modifier modifierSemantics = SemanticsModifierKt.semantics(modifierM1322clickableXHw0xAI$default, true, (nl3) objRememberedValue2);
        bm3<Composer, Integer, j59> bm3Var = this.$dragHandle;
        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierSemantics);
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
        if (cc.f(bm3Var, composer, 0)) {
            ComposerKt.traceEventEnd();
        }
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
        invoke(composer, num.intValue());
        return j59.a;
    }
}
