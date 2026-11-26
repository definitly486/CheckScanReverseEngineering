package androidx.compose.foundation.text;

import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.contextmenu.ContextMenuAreaKt;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.contextmenu.ContextMenuState;
import androidx.compose.foundation.contextmenu.ContextMenuStateKt;
import androidx.compose.foundation.text.CommonContextMenuAreaKt;
import androidx.compose.foundation.text.contextmenu.internal.PlatformDefaultTextContextMenuProviders_androidKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGesturesModifierKt;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionStateKt;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.foundation.text.selection.SelectionManagerKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.a32;
import defpackage.ah;
import defpackage.ap1;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bp1;
import defpackage.c32;
import defpackage.e02;
import defpackage.f02;
import defpackage.gx2;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.r57;
import defpackage.vo1;
import defpackage.w21;
import defpackage.y22;
import defpackage.yo1;
import defpackage.zo1;

/* JADX INFO: loaded from: classes.dex */
public final class CommonContextMenuAreaKt {

    /* JADX INFO: renamed from: androidx.compose.foundation.text.CommonContextMenuAreaKt$getContextMenuItemsAvailability$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.text.CommonContextMenuAreaKt", f = "CommonContextMenuArea.kt", l = {200}, m = "getContextMenuItemsAvailability", v = 1)
    public static final class C05561 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C05561(e02<? super C05561> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CommonContextMenuAreaKt.getContextMenuItemsAvailability((TextFieldSelectionState) null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.CommonContextMenuAreaKt$getContextMenuItemsAvailability$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.text.CommonContextMenuAreaKt", f = "CommonContextMenuArea.kt", l = {212}, m = "getContextMenuItemsAvailability", v = 1)
    public static final class C05572 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C05572(e02<? super C05572> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CommonContextMenuAreaKt.getContextMenuItemsAvailability((TextFieldSelectionManager) null, this);
        }
    }

    public static final void CommonContextMenuArea(final TextFieldSelectionState textFieldSelectionState, boolean z, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i) {
        int i2;
        final boolean z2;
        final bm3<? super Composer, ? super Integer, j59> bm3Var2;
        Modifier modifierShowTextContextMenuOnSecondaryClick;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1442752422);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(textFieldSelectionState) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 256 : 128;
        }
        int i3 = 0;
        if (composerStartRestartGroup.shouldExecute((i2 & 147) != 146, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1442752422, i2, -1, "androidx.compose.foundation.text.CommonContextMenuArea (CommonContextMenuArea.kt:75)");
            }
            if (ComposeFoundationFlags.isNewContextMenuEnabled) {
                composerStartRestartGroup.startReplaceGroup(-1299459355);
                if (z) {
                    composerStartRestartGroup.startReplaceGroup(-1299415211);
                    Modifier.Companion companion = Modifier.Companion;
                    boolean zChangedInstance = composerStartRestartGroup.changedInstance(textFieldSelectionState);
                    Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new CommonContextMenuAreaKt$CommonContextMenuArea$modifier$1$1(textFieldSelectionState, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    modifierShowTextContextMenuOnSecondaryClick = TextContextMenuGesturesModifierKt.showTextContextMenuOnSecondaryClick(companion, (bm3) objRememberedValue);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1298836224);
                    composerStartRestartGroup.endReplaceGroup();
                    modifierShowTextContextMenuOnSecondaryClick = Modifier.Companion;
                }
                PlatformDefaultTextContextMenuProviders_androidKt.ProvideDefaultPlatformTextContextMenuProviders(modifierShowTextContextMenuOnSecondaryClick, bm3Var, composerStartRestartGroup, (i2 >> 3) & 112, 0);
                composerStartRestartGroup.endReplaceGroup();
                z2 = z;
                bm3Var2 = bm3Var;
            } else {
                composerStartRestartGroup.startReplaceGroup(-1298667367);
                Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                Composer.Companion companion2 = Composer.Companion;
                if (objRememberedValue2 == companion2.getEmpty()) {
                    objRememberedValue2 = new ContextMenuState(null, 1, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                ContextMenuState contextMenuState = (ContextMenuState) objRememberedValue2;
                Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue3 == companion2.getEmpty()) {
                    objRememberedValue3 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                y22 y22Var = (y22) objRememberedValue3;
                Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 == companion2.getEmpty()) {
                    objRememberedValue4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(MenuItemsAvailability.m2570boximpl(MenuItemsAvailability.Companion.m2583getNoneJKCFgKw()), null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                MutableState mutableState = (MutableState) objRememberedValue4;
                boolean zChangedInstance2 = composerStartRestartGroup.changedInstance(y22Var);
                Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance2 || objRememberedValue5 == companion2.getEmpty()) {
                    objRememberedValue5 = new zo1(y22Var, i3);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                nl3<ContextMenuScope, j59> nl3VarContextMenuBuilder = TextFieldSelectionStateKt.contextMenuBuilder(textFieldSelectionState, contextMenuState, mutableState, (bm3) objRememberedValue5);
                Object objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue6 == companion2.getEmpty()) {
                    objRememberedValue6 = new ap1(contextMenuState, i3);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                ll3 ll3Var = (ll3) objRememberedValue6;
                boolean zChangedInstance3 = composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(textFieldSelectionState);
                Object objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance3 || objRememberedValue7 == companion2.getEmpty()) {
                    objRememberedValue7 = new bp1(y22Var, mutableState, textFieldSelectionState, i3);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                }
                z2 = z;
                bm3Var2 = bm3Var;
                ContextMenuAreaKt.ContextMenuArea(contextMenuState, ll3Var, nl3VarContextMenuBuilder, null, z2, (ll3) objRememberedValue7, bm3Var2, composerStartRestartGroup, ((i2 << 9) & 57344) | 54 | ((i2 << 12) & 3670016), 8);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            z2 = z;
            bm3Var2 = bm3Var;
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cp1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return CommonContextMenuAreaKt.CommonContextMenuArea$lambda$11(textFieldSelectionState, z2, bm3Var2, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CommonContextMenuArea$lambda$10$0(y22 y22Var, MutableState mutableState, TextFieldSelectionState textFieldSelectionState) {
        av0.c(y22Var, null, c32.UNDISPATCHED, new CommonContextMenuAreaKt$CommonContextMenuArea$5$1$1(mutableState, textFieldSelectionState, null), 1);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CommonContextMenuArea$lambda$11(TextFieldSelectionState textFieldSelectionState, boolean z, bm3 bm3Var, int i, Composer composer, int i2) {
        CommonContextMenuArea(textFieldSelectionState, z, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CommonContextMenuArea$lambda$13$0(ContextMenuState contextMenuState) {
        ContextMenuStateKt.close(contextMenuState);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CommonContextMenuArea$lambda$14(SelectionManager selectionManager, bm3 bm3Var, int i, Composer composer, int i2) {
        CommonContextMenuArea(selectionManager, (bm3<? super Composer, ? super Integer, j59>) bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CommonContextMenuArea$lambda$2$0(ContextMenuState contextMenuState) {
        ContextMenuStateKt.close(contextMenuState);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CommonContextMenuArea$lambda$3$0(y22 y22Var, MutableState mutableState, TextFieldSelectionManager textFieldSelectionManager) {
        av0.c(y22Var, null, c32.UNDISPATCHED, new CommonContextMenuAreaKt$CommonContextMenuArea$2$1$1(mutableState, textFieldSelectionManager, null), 1);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CommonContextMenuArea$lambda$4(TextFieldSelectionManager textFieldSelectionManager, bm3 bm3Var, int i, Composer composer, int i2) {
        CommonContextMenuArea(textFieldSelectionManager, (bm3<? super Composer, ? super Integer, j59>) bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CommonContextMenuArea$lambda$8$0(y22 y22Var, TextFieldSelectionState textFieldSelectionState, TextContextMenuItems textContextMenuItems) {
        av0.c(y22Var, null, c32.UNDISPATCHED, new CommonContextMenuAreaKt$CommonContextMenuArea$menuBuilder$1$1$1(textContextMenuItems, textFieldSelectionState, null), 1);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CommonContextMenuArea$lambda$9$0(ContextMenuState contextMenuState) {
        ContextMenuStateKt.close(contextMenuState);
        return j59.a;
    }

    public static final void TextItem(ContextMenuScope contextMenuScope, ContextMenuState contextMenuState, TextContextMenuItems textContextMenuItems, boolean z, ll3<j59> ll3Var) {
        if (z) {
            ContextMenuScope.item$default(contextMenuScope, new AnonymousClass1(textContextMenuItems), null, false, null, new AnonymousClass2(ll3Var, contextMenuState), 14, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object getContextMenuItemsAvailability(TextFieldSelectionState textFieldSelectionState, e02<? super MenuItemsAvailability> e02Var) {
        C05561 c05561;
        if (e02Var instanceof C05561) {
            c05561 = (C05561) e02Var;
            int i = c05561.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05561.label = i - Integer.MIN_VALUE;
            } else {
                c05561 = new C05561(e02Var);
            }
        } else {
            c05561 = new C05561(e02Var);
        }
        Object obj = c05561.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c05561.label;
        if (i2 == 0) {
            r57.b(obj);
            c05561.L$0 = textFieldSelectionState;
            c05561.label = 1;
            if (textFieldSelectionState.updateClipboardEntry(c05561) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            textFieldSelectionState = (TextFieldSelectionState) c05561.L$0;
            r57.b(obj);
        }
        return MenuItemsAvailability.m2570boximpl(MenuItemsAvailability.m2572constructorimpl(textFieldSelectionState.canShowCopyMenuItem(), textFieldSelectionState.canShowPasteMenuItem(), textFieldSelectionState.canShowCutMenuItem(), textFieldSelectionState.canShowSelectAllMenuItem(), textFieldSelectionState.canShowAutofillMenuItem()));
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.CommonContextMenuAreaKt$TextItem$2, reason: invalid class name */
    public static final class AnonymousClass2 implements ll3<j59> {
        final /* synthetic */ ll3<j59> $operation;
        final /* synthetic */ ContextMenuState $state;

        public AnonymousClass2(ll3<j59> ll3Var, ContextMenuState contextMenuState) {
            this.$operation = ll3Var;
            this.$state = contextMenuState;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.$operation.invoke();
            ContextMenuStateKt.close(this.$state);
        }

        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ j59 invoke() {
            invoke2();
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.CommonContextMenuAreaKt$TextItem$1, reason: invalid class name */
    public static final class AnonymousClass1 implements bm3<Composer, Integer, String> {
        final /* synthetic */ TextContextMenuItems $label;

        public AnonymousClass1(TextContextMenuItems textContextMenuItems) {
            this.$label = textContextMenuItems;
        }

        public final String invoke(Composer composer, int i) {
            composer.startReplaceGroup(-35972707);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-35972707, i, -1, "androidx.compose.foundation.text.TextItem.<anonymous> (CommonContextMenuArea.kt:190)");
            }
            String strResolvedString = this.$label.resolvedString(composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return strResolvedString;
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ String invoke(Composer composer, Integer num) {
            return invoke(composer, num.intValue());
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object getContextMenuItemsAvailability(TextFieldSelectionManager textFieldSelectionManager, e02<? super MenuItemsAvailability> e02Var) {
        C05572 c05572;
        if (e02Var instanceof C05572) {
            c05572 = (C05572) e02Var;
            int i = c05572.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05572.label = i - Integer.MIN_VALUE;
            } else {
                c05572 = new C05572(e02Var);
            }
        } else {
            c05572 = new C05572(e02Var);
        }
        Object obj = c05572.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c05572.label;
        if (i2 == 0) {
            r57.b(obj);
            c05572.L$0 = textFieldSelectionManager;
            c05572.label = 1;
            if (textFieldSelectionManager.updateClipboardEntry$foundation(c05572) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            textFieldSelectionManager = (TextFieldSelectionManager) c05572.L$0;
            r57.b(obj);
        }
        return MenuItemsAvailability.m2570boximpl(MenuItemsAvailability.m2572constructorimpl(textFieldSelectionManager.canShowCopyMenuItem$foundation(), textFieldSelectionManager.canShowPasteMenuItem$foundation(), textFieldSelectionManager.canShowCutMenuItem$foundation(), textFieldSelectionManager.canShowSelectAllMenuItem$foundation(), textFieldSelectionManager.canShowAutofillMenuItem$foundation()));
    }

    public static final void CommonContextMenuArea(final TextFieldSelectionManager textFieldSelectionManager, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i) {
        int i2;
        final bm3<? super Composer, ? super Integer, j59> bm3Var2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1533506138);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(textFieldSelectionManager) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        int i3 = 0;
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1533506138, i2, -1, "androidx.compose.foundation.text.CommonContextMenuArea (CommonContextMenuArea.kt:46)");
            }
            if (ComposeFoundationFlags.isNewContextMenuEnabled) {
                composerStartRestartGroup.startReplaceGroup(-885604480);
                PlatformDefaultTextContextMenuProviders_androidKt.ProvideDefaultPlatformTextContextMenuProviders(textFieldSelectionManager.getContextMenuAreaModifier(), bm3Var, composerStartRestartGroup, i2 & 112, 0);
                composerStartRestartGroup.endReplaceGroup();
                bm3Var2 = bm3Var;
            } else {
                composerStartRestartGroup.startReplaceGroup(-885475365);
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                Composer.Companion companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = new ContextMenuState(null, 1, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                ContextMenuState contextMenuState = (ContextMenuState) objRememberedValue;
                Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                final y22 y22Var = (y22) objRememberedValue2;
                Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue3 == companion.getEmpty()) {
                    objRememberedValue3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(MenuItemsAvailability.m2570boximpl(MenuItemsAvailability.Companion.m2583getNoneJKCFgKw()), null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                final MutableState mutableState = (MutableState) objRememberedValue3;
                Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 == companion.getEmpty()) {
                    objRememberedValue4 = new vo1(contextMenuState, i3);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                ll3 ll3Var = (ll3) objRememberedValue4;
                nl3<ContextMenuScope, j59> nl3VarContextMenuBuilder = TextFieldSelectionManagerKt.contextMenuBuilder(textFieldSelectionManager, contextMenuState, mutableState);
                boolean enabled = textFieldSelectionManager.getEnabled();
                boolean zChangedInstance = composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance || objRememberedValue5 == companion.getEmpty()) {
                    objRememberedValue5 = new ll3() { // from class: wo1
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return CommonContextMenuAreaKt.CommonContextMenuArea$lambda$3$0(y22Var, mutableState, textFieldSelectionManager);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                bm3Var2 = bm3Var;
                ContextMenuAreaKt.ContextMenuArea(contextMenuState, ll3Var, nl3VarContextMenuBuilder, null, enabled, (ll3) objRememberedValue5, bm3Var2, composerStartRestartGroup, ((i2 << 15) & 3670016) | 54, 8);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            bm3Var2 = bm3Var;
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: xo1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return CommonContextMenuAreaKt.CommonContextMenuArea$lambda$4(textFieldSelectionManager, bm3Var2, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    public static final void CommonContextMenuArea(SelectionManager selectionManager, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
        int i2;
        bm3<? super Composer, ? super Integer, j59> bm3Var2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-614342087);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(selectionManager) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        int i3 = 0;
        int i4 = 1;
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-614342087, i2, -1, "androidx.compose.foundation.text.CommonContextMenuArea (CommonContextMenuArea.kt:131)");
            }
            if (ComposeFoundationFlags.isNewContextMenuEnabled) {
                composerStartRestartGroup.startReplaceGroup(-1009319487);
                PlatformDefaultTextContextMenuProviders_androidKt.ProvideDefaultPlatformTextContextMenuProviders(selectionManager.getContextMenuAreaModifier(), bm3Var, composerStartRestartGroup, i2 & 112, 0);
                composerStartRestartGroup.endReplaceGroup();
                bm3Var2 = bm3Var;
            } else {
                composerStartRestartGroup.startReplaceGroup(-1009204043);
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                Composer.Companion companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = new ContextMenuState(null, 1, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                ContextMenuState contextMenuState = (ContextMenuState) objRememberedValue;
                Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = new w21(contextMenuState, i4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                bm3Var2 = bm3Var;
                ContextMenuAreaKt.ContextMenuArea(contextMenuState, (ll3) objRememberedValue2, SelectionManagerKt.contextMenuBuilder(selectionManager, contextMenuState), null, false, null, bm3Var2, composerStartRestartGroup, ((i2 << 15) & 3670016) | 54, 56);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            bm3Var2 = bm3Var;
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new yo1(selectionManager, bm3Var2, i, i3));
        }
    }
}
