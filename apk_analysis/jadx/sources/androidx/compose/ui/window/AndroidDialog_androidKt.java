package androidx.compose.ui.window;

import android.view.View;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.bm3;
import defpackage.cc;
import defpackage.gh4;
import defpackage.hm;
import defpackage.j59;
import defpackage.jg;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidDialog_androidKt {
    /* JADX WARN: Code duplicated, block: B:23:0x003e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0044  */
    /* JADX WARN: Code duplicated, block: B:26:0x0047  */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:31:0x0055  */
    /* JADX WARN: Code duplicated, block: B:34:0x005e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x0060  */
    /* JADX WARN: Code duplicated, block: B:36:0x0071  */
    /* JADX WARN: Code duplicated, block: B:39:0x0078  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:52:0x011c  */
    /* JADX WARN: Code duplicated, block: B:55:0x0132  */
    /* JADX WARN: Code duplicated, block: B:56:0x0134  */
    /* JADX WARN: Code duplicated, block: B:60:0x013d  */
    /* JADX WARN: Code duplicated, block: B:65:0x0154  */
    /* JADX WARN: Code duplicated, block: B:68:0x0167  */
    /* JADX WARN: Code duplicated, block: B:69:0x016b  */
    /* JADX WARN: Code duplicated, block: B:72:0x0175  */
    /* JADX WARN: Code duplicated, block: B:74:? A[RETURN, SYNTHETIC] */
    public static final void Dialog(ll3<j59> ll3Var, DialogProperties dialogProperties, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i, int i2) {
        int i3;
        DialogProperties dialogProperties2;
        int i4;
        boolean z;
        DialogProperties dialogProperties3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        View view;
        Density density;
        LayoutDirection layoutDirection;
        CompositionContext compositionContextRememberCompositionContext;
        State stateRememberUpdatedState;
        Object objRememberedValue;
        Composer.Companion companion;
        UUID uuid;
        boolean zChanged;
        Object objRememberedValue2;
        DialogWrapper dialogWrapper;
        boolean zChangedInstance;
        Object objRememberedValue3;
        boolean z2;
        boolean zChanged2;
        Object objRememberedValue4;
        int i5;
        Composer composerStartRestartGroup = composer.startRestartGroup(826668973);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(ll3Var) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i6 = i2 & 2;
        if (i6 == 0) {
            if ((i & 48) == 0) {
                dialogProperties2 = dialogProperties;
                i3 |= composerStartRestartGroup.changed(dialogProperties2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            i4 = i3;
            if ((i4 & 147) != 146) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                if (i6 != 0) {
                    dialogProperties3 = new DialogProperties(false, false, false, 7, (jh2) null);
                } else {
                    dialogProperties3 = dialogProperties2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(826668973, i4, -1, "androidx.compose.ui.window.Dialog (AndroidDialog.android.kt:249)");
                }
                view = (View) composerStartRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalView());
                density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                compositionContextRememberCompositionContext = ComposablesKt.rememberCompositionContext(composerStartRestartGroup, 0);
                stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(bm3Var, composerStartRestartGroup, (i4 >> 6) & 14);
                Object[] objArr = new Object[0];
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = AndroidDialog_androidKt$Dialog$dialogId$1$1.INSTANCE;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                uuid = (UUID) RememberSaveableKt.rememberSaveable(objArr, (ll3) objRememberedValue, composerStartRestartGroup, 48);
                zChanged = composerStartRestartGroup.changed(view) | composerStartRestartGroup.changed(density) | composerStartRestartGroup.changed(dialogProperties3.getWindowType()) | composerStartRestartGroup.changed(dialogProperties3.getWindowToken());
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChanged || objRememberedValue2 == companion.getEmpty()) {
                    DialogWrapper dialogWrapper2 = new DialogWrapper(ll3Var, dialogProperties3, view, layoutDirection, density, uuid);
                    dialogWrapper2.setContent(compositionContextRememberCompositionContext, ComposableLambdaKt.composableLambdaInstance(-1338939603, true, new AndroidDialog_androidKt$Dialog$dialog$1$1$1(stateRememberUpdatedState)));
                    composerStartRestartGroup.updateRememberedValue(dialogWrapper2);
                    objRememberedValue2 = dialogWrapper2;
                }
                dialogWrapper = (DialogWrapper) objRememberedValue2;
                zChangedInstance = composerStartRestartGroup.changedInstance(dialogWrapper);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance || objRememberedValue3 == companion.getEmpty()) {
                    objRememberedValue3 = new AndroidDialog_androidKt$Dialog$1$1(dialogWrapper);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                EffectsKt.DisposableEffect(dialogWrapper, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, 0);
                boolean zChangedInstance2 = composerStartRestartGroup.changedInstance(dialogWrapper);
                if ((i4 & 14) == 4) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zChanged2 = zChangedInstance2 | z2 | ((i4 & 112) == 32) | composerStartRestartGroup.changed(layoutDirection.ordinal());
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (zChanged2 || objRememberedValue4 == companion.getEmpty()) {
                    objRememberedValue4 = new AndroidDialog_androidKt$Dialog$2$1(dialogWrapper, ll3Var, dialogProperties3, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                EffectsKt.SideEffect((ll3) objRememberedValue4, composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                dialogProperties3 = dialogProperties2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(ll3Var, dialogProperties3, bm3Var, i, i2));
            }
        }
        i3 |= 48;
        dialogProperties2 = dialogProperties;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if (composerStartRestartGroup.changedInstance(bm3Var)) {
                i5 = 256;
            } else {
                i5 = 128;
            }
            i3 |= i5;
        }
        i4 = i3;
        if ((i4 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            if (i6 != 0) {
                dialogProperties3 = new DialogProperties(false, false, false, 7, (jh2) null);
            } else {
                dialogProperties3 = dialogProperties2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(826668973, i4, -1, "androidx.compose.ui.window.Dialog (AndroidDialog.android.kt:249)");
            }
            view = (View) composerStartRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalView());
            density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            compositionContextRememberCompositionContext = ComposablesKt.rememberCompositionContext(composerStartRestartGroup, 0);
            stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(bm3Var, composerStartRestartGroup, (i4 >> 6) & 14);
            Object[] objArr2 = new Object[0];
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = AndroidDialog_androidKt$Dialog$dialogId$1$1.INSTANCE;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            uuid = (UUID) RememberSaveableKt.rememberSaveable(objArr2, (ll3) objRememberedValue, composerStartRestartGroup, 48);
            zChanged = composerStartRestartGroup.changed(view) | composerStartRestartGroup.changed(density) | composerStartRestartGroup.changed(dialogProperties3.getWindowType()) | composerStartRestartGroup.changed(dialogProperties3.getWindowToken());
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                DialogWrapper dialogWrapper3 = new DialogWrapper(ll3Var, dialogProperties3, view, layoutDirection, density, uuid);
                dialogWrapper3.setContent(compositionContextRememberCompositionContext, ComposableLambdaKt.composableLambdaInstance(-1338939603, true, new AndroidDialog_androidKt$Dialog$dialog$1$1$1(stateRememberUpdatedState)));
                composerStartRestartGroup.updateRememberedValue(dialogWrapper3);
                objRememberedValue2 = dialogWrapper3;
            } else {
                DialogWrapper dialogWrapper4 = new DialogWrapper(ll3Var, dialogProperties3, view, layoutDirection, density, uuid);
                dialogWrapper4.setContent(compositionContextRememberCompositionContext, ComposableLambdaKt.composableLambdaInstance(-1338939603, true, new AndroidDialog_androidKt$Dialog$dialog$1$1$1(stateRememberUpdatedState)));
                composerStartRestartGroup.updateRememberedValue(dialogWrapper4);
                objRememberedValue2 = dialogWrapper4;
            }
            dialogWrapper = (DialogWrapper) objRememberedValue2;
            zChangedInstance = composerStartRestartGroup.changedInstance(dialogWrapper);
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance) {
                objRememberedValue3 = new AndroidDialog_androidKt$Dialog$1$1(dialogWrapper);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                objRememberedValue3 = new AndroidDialog_androidKt$Dialog$1$1(dialogWrapper);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            EffectsKt.DisposableEffect(dialogWrapper, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, 0);
            boolean zChangedInstance3 = composerStartRestartGroup.changedInstance(dialogWrapper);
            if ((i4 & 14) == 4) {
                z2 = true;
            } else {
                z2 = false;
            }
            zChanged2 = zChangedInstance3 | z2 | ((i4 & 112) == 32) | composerStartRestartGroup.changed(layoutDirection.ordinal());
            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChanged2) {
                objRememberedValue4 = new AndroidDialog_androidKt$Dialog$2$1(dialogWrapper, ll3Var, dialogProperties3, layoutDirection);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            } else {
                objRememberedValue4 = new AndroidDialog_androidKt$Dialog$2$1(dialogWrapper, ll3Var, dialogProperties3, layoutDirection);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            EffectsKt.SideEffect((ll3) objRememberedValue4, composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            dialogProperties3 = dialogProperties2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(ll3Var, dialogProperties3, bm3Var, i, i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final bm3<Composer, Integer, j59> Dialog$lambda$0(State<? extends bm3<? super Composer, ? super Integer, j59>> state) {
        return (bm3) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void DialogLayout(Modifier modifier, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i, int i2) {
        int i3;
        Composer composerStartRestartGroup = composer.startRestartGroup(1090521195);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 19) != 18, i3 & 1)) {
            if (i4 != 0) {
                modifier = Modifier.Companion;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1090521195, i3, -1, "androidx.compose.ui.window.DialogLayout (AndroidDialog.android.kt:752)");
            }
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$DialogLayout$1$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
                        ArrayList arrayList = new ArrayList(list.size());
                        int size = list.size();
                        int iM8997getMinWidthimpl = 0;
                        int iM8996getMinHeightimpl = 0;
                        for (int i5 = 0; i5 < size; i5++) {
                            Placeable placeableMo7702measureBRTryo0 = list.get(i5).mo7702measureBRTryo0(j);
                            iM8997getMinWidthimpl = Math.max(iM8997getMinWidthimpl, placeableMo7702measureBRTryo0.getWidth());
                            iM8996getMinHeightimpl = Math.max(iM8996getMinHeightimpl, placeableMo7702measureBRTryo0.getHeight());
                            arrayList.add(placeableMo7702measureBRTryo0);
                        }
                        if (list.isEmpty()) {
                            iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
                            iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
                        }
                        return MeasureScope.layout$default(measureScope, iM8997getMinWidthimpl, iM8996getMinHeightimpl, null, new AnonymousClass1(arrayList), 4, null);
                    }

                    /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidDialog_androidKt$DialogLayout$1$1$1, reason: invalid class name */
                    public static final class AnonymousClass1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
                        final /* synthetic */ List<Placeable> $placeables;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        public AnonymousClass1(List<? extends Placeable> list) {
                            super(1);
                            this.$placeables = list;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(Placeable.PlacementScope placementScope) {
                            List<Placeable> list = this.$placeables;
                            int size = list.size();
                            for (int i = 0; i < size; i++) {
                                Placeable.PlacementScope.placeRelative$default(placementScope, list.get(i), 0, 0, 0.0f, 4, null);
                            }
                        }

                        @Override // defpackage.nl3
                        public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
                            invoke2(placementScope);
                            return j59.a;
                        }
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue;
            int i5 = ((i3 >> 3) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 << 3) & 112);
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier);
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion.getConstructor();
            int i6 = ((i5 << 6) & 896) | 6;
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            jg.d(companion, composerM5355constructorimpl, measurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
            if (cc.f(bm3Var, composerStartRestartGroup, (i6 >> 6) & 14)) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass2(modifier, bm3Var, i, i2));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidDialog_androidKt$DialogLayout$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ int $$default;
        final /* synthetic */ bm3<Composer, Integer, j59> $content;
        final /* synthetic */ Modifier $modifier;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Modifier modifier, bm3<? super Composer, ? super Integer, j59> bm3Var, int i, int i2) {
            super(2);
            this.$modifier = modifier;
            this.$content = bm3Var;
            this.$$changed = i;
            this.$$default = i2;
        }

        public final void invoke(Composer composer, int i) {
            AndroidDialog_androidKt.DialogLayout(this.$modifier, this.$content, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1), this.$$default);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$3, reason: invalid class name */
    public static final class AnonymousClass3 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ int $$default;
        final /* synthetic */ bm3<Composer, Integer, j59> $content;
        final /* synthetic */ ll3<j59> $onDismissRequest;
        final /* synthetic */ DialogProperties $properties;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass3(ll3<j59> ll3Var, DialogProperties dialogProperties, bm3<? super Composer, ? super Integer, j59> bm3Var, int i, int i2) {
            super(2);
            this.$onDismissRequest = ll3Var;
            this.$properties = dialogProperties;
            this.$content = bm3Var;
            this.$$changed = i;
            this.$$default = i2;
        }

        public final void invoke(Composer composer, int i) {
            AndroidDialog_androidKt.Dialog(this.$onDismissRequest, this.$properties, this.$content, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1), this.$$default);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }
}
