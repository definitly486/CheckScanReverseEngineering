package androidx.compose.ui.window;

import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import defpackage.bm3;
import defpackage.cc;
import defpackage.gh4;
import defpackage.hm;
import defpackage.j59;
import defpackage.jg;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidPopup_androidKt$Popup$popupLayout$1$1$1 extends gh4 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ State<bm3<Composer, Integer, j59>> $currentContent$delegate;
    final /* synthetic */ PopupLayout $this_apply;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AndroidPopup_androidKt$Popup$popupLayout$1$1$1(PopupLayout popupLayout, State<? extends bm3<? super Composer, ? super Integer, j59>> state) {
        super(2);
        this.$this_apply = popupLayout;
        this.$currentContent$delegate = state;
    }

    public final void invoke(Composer composer, int i) {
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-297523940, i, -1, "androidx.compose.ui.window.Popup.<anonymous>.<anonymous>.<anonymous> (AndroidPopup.android.kt:440)");
        }
        CompositionLocalKt.CompositionLocalProvider(AndroidPopup_androidKt.getLocalIsInPopupLayout().provides(Boolean.TRUE), ComposableLambdaKt.rememberComposableLambda(1022273628, true, new AnonymousClass1(this.$this_apply, this.$currentContent$delegate), composer, 54), composer, ProvidedValue.$stable | 48);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
        invoke(composer, num.intValue());
        return j59.a;
    }

    /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ State<bm3<Composer, Integer, j59>> $currentContent$delegate;
        final /* synthetic */ PopupLayout $this_apply;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(PopupLayout popupLayout, State<? extends bm3<? super Composer, ? super Integer, j59>> state) {
            super(2);
            this.$this_apply = popupLayout;
            this.$currentContent$delegate = state;
        }

        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1022273628, i, -1, "androidx.compose.ui.window.Popup.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AndroidPopup.android.kt:441)");
            }
            Modifier.Companion companion = Modifier.Companion;
            Object objRememberedValue = composer.rememberedValue();
            Composer.Companion companion2 = Composer.Companion;
            if (objRememberedValue == companion2.getEmpty()) {
                objRememberedValue = AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$1$1.INSTANCE;
                composer.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(companion, false, (nl3) objRememberedValue, 1, null);
            boolean zChangedInstance = composer.changedInstance(this.$this_apply);
            PopupLayout popupLayout = this.$this_apply;
            Object objRememberedValue2 = composer.rememberedValue();
            if (zChangedInstance || objRememberedValue2 == companion2.getEmpty()) {
                objRememberedValue2 = new AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$2$1(popupLayout);
                composer.updateRememberedValue(objRememberedValue2);
            }
            Modifier modifierAlpha = AlphaKt.alpha(OnRemeasuredModifierKt.onSizeChanged(modifierSemantics$default, (nl3) objRememberedValue2), this.$this_apply.getCanCalculatePosition() ? 1.0f : 0.0f);
            bm3 bm3VarPopup$lambda$0 = AndroidPopup_androidKt.Popup$lambda$0(this.$currentContent$delegate);
            Object objRememberedValue3 = composer.rememberedValue();
            if (objRememberedValue3 == companion2.getEmpty()) {
                objRememberedValue3 = AndroidPopup_androidKt$SimpleStack$1$1.INSTANCE;
                composer.updateRememberedValue(objRememberedValue3);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue3;
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
            CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierAlpha);
            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion3.getConstructor();
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
            jg.d(companion3, composerM5355constructorimpl, measurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion3, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
            if (cc.f(bm3VarPopup$lambda$0, composer, 0)) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }
}
