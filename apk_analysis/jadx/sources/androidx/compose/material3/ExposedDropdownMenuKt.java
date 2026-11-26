package androidx.compose.material3;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.material3.ExposedDropdownMenuKt;
import androidx.compose.material3.internal.BackHandler_androidKt;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.a32;
import defpackage.aa4;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.e02;
import defpackage.eh0;
import defpackage.f57;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.ul2;
import defpackage.w65;

/* JADX INFO: loaded from: classes2.dex */
public final class ExposedDropdownMenuKt {
    private static final float ExposedDropdownMenuItemHorizontalPadding = Dp.m9042constructorimpl(16.0f);

    /* JADX WARN: Code duplicated, block: B:100:0x022d  */
    /* JADX WARN: Code duplicated, block: B:103:0x0239  */
    /* JADX WARN: Code duplicated, block: B:104:0x023d  */
    /* JADX WARN: Code duplicated, block: B:107:0x024e  */
    /* JADX WARN: Code duplicated, block: B:110:0x025f  */
    /* JADX WARN: Code duplicated, block: B:114:0x027f  */
    /* JADX WARN: Code duplicated, block: B:116:0x0294  */
    /* JADX WARN: Code duplicated, block: B:118:0x029a  */
    /* JADX WARN: Code duplicated, block: B:121:0x02af  */
    /* JADX WARN: Code duplicated, block: B:123:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:124:0x02be  */
    /* JADX WARN: Code duplicated, block: B:127:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:129:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:132:0x02df  */
    /* JADX WARN: Code duplicated, block: B:133:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:136:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:138:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:141:0x0304  */
    /* JADX WARN: Code duplicated, block: B:143:0x0309  */
    /* JADX WARN: Code duplicated, block: B:146:0x0314  */
    /* JADX WARN: Code duplicated, block: B:148:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x005f  */
    /* JADX WARN: Code duplicated, block: B:37:0x0062  */
    /* JADX WARN: Code duplicated, block: B:39:0x0066  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:42:0x006f  */
    /* JADX WARN: Code duplicated, block: B:46:0x007b  */
    /* JADX WARN: Code duplicated, block: B:47:0x007e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0087 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x0089  */
    /* JADX WARN: Code duplicated, block: B:52:0x008c  */
    /* JADX WARN: Code duplicated, block: B:55:0x0093  */
    /* JADX WARN: Code duplicated, block: B:58:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:67:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:70:0x0139  */
    /* JADX WARN: Code duplicated, block: B:71:0x014d  */
    /* JADX WARN: Code duplicated, block: B:74:0x015b  */
    /* JADX WARN: Code duplicated, block: B:75:0x0169  */
    /* JADX WARN: Code duplicated, block: B:78:0x0172  */
    /* JADX WARN: Code duplicated, block: B:79:0x0175  */
    /* JADX WARN: Code duplicated, block: B:82:0x017e  */
    /* JADX WARN: Code duplicated, block: B:83:0x0181  */
    /* JADX WARN: Code duplicated, block: B:88:0x019c  */
    /* JADX WARN: Code duplicated, block: B:97:0x01f0  */
    public static final void ExposedDropdownMenuBox(boolean z, final nl3<? super Boolean, j59> nl3Var, Modifier modifier, dm3<? super ExposedDropdownMenuBoxScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        int i4;
        boolean z2;
        final dm3<? super ExposedDropdownMenuBoxScope, ? super Composer, ? super Integer, j59> dm3Var2;
        final Modifier modifier3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        WindowBoundsCalculator windowBoundsCalculatorPlatformWindowBoundsCalculator;
        final int iMo1428roundToPx0680j_4;
        Object objRememberedValue;
        Composer.Companion companion;
        final MutableState mutableState;
        Object objRememberedValue2;
        MutableIntState mutableIntState;
        Object objRememberedValue3;
        MutableIntState mutableIntState2;
        Object objRememberedValue4;
        final FocusRequester focusRequester;
        SoftwareKeyboardController softwareKeyboardController;
        String strM4461getString2EP1pXo;
        String strM4461getString2EP1pXo2;
        String strM4461getString2EP1pXo3;
        Object objRememberedValue5;
        MutableState mutableState2;
        Object objRememberedValue6;
        MutableState mutableState3;
        int i5;
        boolean z3;
        int i6;
        boolean z4;
        boolean zChanged;
        Object exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;
        MutableIntState mutableIntState3;
        final MutableIntState mutableIntState4;
        final WindowBoundsCalculator windowBoundsCalculator;
        boolean zChangedInstance;
        Object objRememberedValue7;
        int currentCompositeKeyHash;
        ComposeUiNode.Companion companion2;
        ll3<ComposeUiNode> constructor;
        Composer composerM5355constructorimpl;
        ComposeUiNode.Companion companion3;
        boolean z5;
        Object objRememberedValue8;
        boolean z6;
        Object objRememberedValue9;
        boolean zChangedInstance2;
        Object objRememberedValue10;
        final boolean z7 = z;
        Composer composerStartRestartGroup = composer.startRestartGroup(1597265892);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(z7) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(nl3Var) ? 32 : 16;
        }
        int i7 = i2 & 4;
        if (i7 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 256 : 128;
            }
            if ((i2 & 8) != 0) {
                i3 |= 3072;
            } else if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i4 = 2048;
                } else {
                    i4 = 1024;
                }
                i3 |= i4;
            }
            if ((i3 & 1171) != 1170) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                if (i7 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1597265892, i3, -1, "androidx.compose.material3.ExposedDropdownMenuBox (ExposedDropdownMenu.kt:141)");
                }
                windowBoundsCalculatorPlatformWindowBoundsCalculator = ExposedDropdownMenu_androidKt.platformWindowBoundsCalculator(composerStartRestartGroup, 0);
                Density density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                iMo1428roundToPx0680j_4 = density.mo1428roundToPx0680j_4(MenuKt.getMenuVerticalMargin());
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableState = (MutableState) objRememberedValue;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = SnapshotIntStateKt.mutableIntStateOf(0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                mutableIntState = (MutableIntState) objRememberedValue2;
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue3 == companion.getEmpty()) {
                    objRememberedValue3 = SnapshotIntStateKt.mutableIntStateOf(0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                mutableIntState2 = (MutableIntState) objRememberedValue3;
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 == companion.getEmpty()) {
                    objRememberedValue4 = new FocusRequester();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                focusRequester = (FocusRequester) objRememberedValue4;
                softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
                Strings.Companion companion4 = Strings.Companion;
                strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_dropdown_menu_expanded), composerStartRestartGroup, 0);
                strM4461getString2EP1pXo2 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_dropdown_menu_collapsed), composerStartRestartGroup, 0);
                strM4461getString2EP1pXo3 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_dropdown_menu_toggle), composerStartRestartGroup, 0);
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue5 == companion.getEmpty()) {
                    objRememberedValue5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(ExposedDropdownMenuAnchorType.m3427boximpl(ExposedDropdownMenuAnchorType.Companion.m3435getPrimaryNotEditableoYjWRB4()), null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                mutableState2 = (MutableState) objRememberedValue5;
                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue6 == companion.getEmpty()) {
                    objRememberedValue6 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                mutableState3 = (MutableState) objRememberedValue6;
                i5 = i3 & 14;
                if (i5 == 4) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                i6 = i3 & 112;
                if (i6 == 32) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                zChanged = composerStartRestartGroup.changed(density) | z3 | z4 | composerStartRestartGroup.changed(windowBoundsCalculatorPlatformWindowBoundsCalculator);
                Object objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                if (!zChanged || objRememberedValue11 == companion.getEmpty()) {
                    mutableIntState3 = mutableIntState;
                    mutableIntState4 = mutableIntState2;
                    windowBoundsCalculator = windowBoundsCalculatorPlatformWindowBoundsCalculator;
                    exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1 = new ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1(focusRequester, z, mutableState3, strM4461getString2EP1pXo, strM4461getString2EP1pXo2, strM4461getString2EP1pXo3, softwareKeyboardController, mutableState2, nl3Var, mutableIntState3, mutableIntState4);
                    focusRequester = focusRequester;
                    z7 = z;
                    composerStartRestartGroup.updateRememberedValue(exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1);
                } else {
                    z7 = z;
                    mutableIntState3 = mutableIntState;
                    windowBoundsCalculator = windowBoundsCalculatorPlatformWindowBoundsCalculator;
                    exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1 = objRememberedValue11;
                    mutableIntState4 = mutableIntState2;
                }
                ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1 exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$2 = (ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1) exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;
                zChangedInstance = composerStartRestartGroup.changedInstance(windowBoundsCalculator) | composerStartRestartGroup.changed(iMo1428roundToPx0680j_4);
                objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance || objRememberedValue7 == companion.getEmpty()) {
                    final MutableIntState mutableIntState5 = mutableIntState3;
                    final MutableIntState mutableIntState6 = mutableIntState4;
                    final WindowBoundsCalculator windowBoundsCalculator2 = windowBoundsCalculator;
                    objRememberedValue7 = new nl3() { // from class: g43
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$15$lambda$14(windowBoundsCalculator2, iMo1428roundToPx0680j_4, mutableState, mutableIntState5, mutableIntState6, (LayoutCoordinates) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                }
                Modifier modifierOnGloballyPositioned = OnGloballyPositionedModifierKt.onGloballyPositioned(modifier4, (nl3) objRememberedValue7);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnGloballyPositioned);
                companion2 = ComposeUiNode.Companion;
                constructor = companion2.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                if (composerM5355constructorimpl.getInserting()) {
                    companion3 = companion2;
                } else {
                    companion3 = companion2;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion3.getSetModifier());
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                    dm3Var2 = dm3Var;
                    dm3Var2.invoke(exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$2, composerStartRestartGroup, Integer.valueOf((i3 >> 6) & 112));
                    composerStartRestartGroup.endNode();
                    if (z7) {
                        composerStartRestartGroup.startReplaceGroup(209894723);
                        zChangedInstance2 = composerStartRestartGroup.changedInstance(windowBoundsCalculator) | composerStartRestartGroup.changed(iMo1428roundToPx0680j_4);
                        objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance2 || objRememberedValue10 == companion.getEmpty()) {
                            objRememberedValue10 = new ll3() { // from class: h43
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$18$lambda$17(windowBoundsCalculator, iMo1428roundToPx0680j_4, mutableState, mutableIntState4);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                        }
                        ExposedDropdownMenu_androidKt.OnPlatformWindowBoundsChange((ll3) objRememberedValue10, composerStartRestartGroup, 0);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(210228190);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (i5 == 4) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                    if (z5 || objRememberedValue8 == companion.getEmpty()) {
                        objRememberedValue8 = new ll3() { // from class: i43
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$20$lambda$19(z7, focusRequester);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                    }
                    EffectsKt.SideEffect((ll3) objRememberedValue8, composerStartRestartGroup, 0);
                    if (i6 == 32) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                    if (z6 || objRememberedValue9 == companion.getEmpty()) {
                        objRememberedValue9 = new eh0(nl3Var, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                    }
                    BackHandler_androidKt.BackHandler(z7, (ll3) objRememberedValue9, composerStartRestartGroup, i5, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                }
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion3.getSetModifier());
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                dm3Var2 = dm3Var;
                dm3Var2.invoke(exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$2, composerStartRestartGroup, Integer.valueOf((i3 >> 6) & 112));
                composerStartRestartGroup.endNode();
                if (z7) {
                    composerStartRestartGroup.startReplaceGroup(209894723);
                    zChangedInstance2 = composerStartRestartGroup.changedInstance(windowBoundsCalculator) | composerStartRestartGroup.changed(iMo1428roundToPx0680j_4);
                    objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance2) {
                        objRememberedValue10 = new ll3() { // from class: h43
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$18$lambda$17(windowBoundsCalculator, iMo1428roundToPx0680j_4, mutableState, mutableIntState4);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                    } else {
                        objRememberedValue10 = new ll3() { // from class: h43
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$18$lambda$17(windowBoundsCalculator, iMo1428roundToPx0680j_4, mutableState, mutableIntState4);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                    }
                    ExposedDropdownMenu_androidKt.OnPlatformWindowBoundsChange((ll3) objRememberedValue10, composerStartRestartGroup, 0);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(210228190);
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (i5 == 4) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue8 = new ll3() { // from class: i43
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$20$lambda$19(z7, focusRequester);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                } else {
                    objRememberedValue8 = new ll3() { // from class: i43
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$20$lambda$19(z7, focusRequester);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                }
                EffectsKt.SideEffect((ll3) objRememberedValue8, composerStartRestartGroup, 0);
                if (i6 == 32) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                if (z6) {
                    objRememberedValue9 = new eh0(nl3Var, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                } else {
                    objRememberedValue9 = new eh0(nl3Var, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                }
                BackHandler_androidKt.BackHandler(z7, (ll3) objRememberedValue9, composerStartRestartGroup, i5, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
            } else {
                dm3Var2 = dm3Var;
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: j43
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$23(z7, nl3Var, modifier3, dm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        if ((i2 & 8) != 0) {
            i3 |= 3072;
        } else if ((i & 3072) == 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                i4 = 2048;
            } else {
                i4 = 1024;
            }
            i3 |= i4;
        }
        if ((i3 & 1171) != 1170) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
            if (i7 != 0) {
                modifier4 = Modifier.Companion;
            } else {
                modifier4 = modifier2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1597265892, i3, -1, "androidx.compose.material3.ExposedDropdownMenuBox (ExposedDropdownMenu.kt:141)");
            }
            windowBoundsCalculatorPlatformWindowBoundsCalculator = ExposedDropdownMenu_androidKt.platformWindowBoundsCalculator(composerStartRestartGroup, 0);
            Density density2 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            iMo1428roundToPx0680j_4 = density2.mo1428roundToPx0680j_4(MenuKt.getMenuVerticalMargin());
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            mutableState = (MutableState) objRememberedValue;
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = SnapshotIntStateKt.mutableIntStateOf(0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            mutableIntState = (MutableIntState) objRememberedValue2;
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue3 == companion.getEmpty()) {
                objRememberedValue3 = SnapshotIntStateKt.mutableIntStateOf(0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            mutableIntState2 = (MutableIntState) objRememberedValue3;
            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue4 == companion.getEmpty()) {
                objRememberedValue4 = new FocusRequester();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            focusRequester = (FocusRequester) objRememberedValue4;
            softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
            Strings.Companion companion5 = Strings.Companion;
            strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_dropdown_menu_expanded), composerStartRestartGroup, 0);
            strM4461getString2EP1pXo2 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_dropdown_menu_collapsed), composerStartRestartGroup, 0);
            strM4461getString2EP1pXo3 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_dropdown_menu_toggle), composerStartRestartGroup, 0);
            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue5 == companion.getEmpty()) {
                objRememberedValue5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(ExposedDropdownMenuAnchorType.m3427boximpl(ExposedDropdownMenuAnchorType.Companion.m3435getPrimaryNotEditableoYjWRB4()), null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            mutableState2 = (MutableState) objRememberedValue5;
            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue6 == companion.getEmpty()) {
                objRememberedValue6 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            }
            mutableState3 = (MutableState) objRememberedValue6;
            i5 = i3 & 14;
            if (i5 == 4) {
                z3 = true;
            } else {
                z3 = false;
            }
            i6 = i3 & 112;
            if (i6 == 32) {
                z4 = true;
            } else {
                z4 = false;
            }
            zChanged = composerStartRestartGroup.changed(density2) | z3 | z4 | composerStartRestartGroup.changed(windowBoundsCalculatorPlatformWindowBoundsCalculator);
            Object objRememberedValue12 = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                mutableIntState3 = mutableIntState;
                mutableIntState4 = mutableIntState2;
                windowBoundsCalculator = windowBoundsCalculatorPlatformWindowBoundsCalculator;
                exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1 = new ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1(focusRequester, z, mutableState3, strM4461getString2EP1pXo, strM4461getString2EP1pXo2, strM4461getString2EP1pXo3, softwareKeyboardController, mutableState2, nl3Var, mutableIntState3, mutableIntState4);
                focusRequester = focusRequester;
                z7 = z;
                composerStartRestartGroup.updateRememberedValue(exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1);
            } else {
                mutableIntState3 = mutableIntState;
                mutableIntState4 = mutableIntState2;
                windowBoundsCalculator = windowBoundsCalculatorPlatformWindowBoundsCalculator;
                exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1 = new ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1(focusRequester, z, mutableState3, strM4461getString2EP1pXo, strM4461getString2EP1pXo2, strM4461getString2EP1pXo3, softwareKeyboardController, mutableState2, nl3Var, mutableIntState3, mutableIntState4);
                focusRequester = focusRequester;
                z7 = z;
                composerStartRestartGroup.updateRememberedValue(exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1);
            }
            ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1 exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$3 = (ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1) exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;
            zChangedInstance = composerStartRestartGroup.changedInstance(windowBoundsCalculator) | composerStartRestartGroup.changed(iMo1428roundToPx0680j_4);
            objRememberedValue7 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance) {
                final MutableIntState mutableIntState7 = mutableIntState3;
                final MutableIntState mutableIntState8 = mutableIntState4;
                final WindowBoundsCalculator windowBoundsCalculator3 = windowBoundsCalculator;
                objRememberedValue7 = new nl3() { // from class: g43
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$15$lambda$14(windowBoundsCalculator3, iMo1428roundToPx0680j_4, mutableState, mutableIntState7, mutableIntState8, (LayoutCoordinates) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
            } else {
                final MutableIntState mutableIntState9 = mutableIntState3;
                final MutableIntState mutableIntState10 = mutableIntState4;
                final WindowBoundsCalculator windowBoundsCalculator4 = windowBoundsCalculator;
                objRememberedValue7 = new nl3() { // from class: g43
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$15$lambda$14(windowBoundsCalculator4, iMo1428roundToPx0680j_4, mutableState, mutableIntState9, mutableIntState10, (LayoutCoordinates) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
            }
            Modifier modifierOnGloballyPositioned2 = OnGloballyPositionedModifierKt.onGloballyPositioned(modifier4, (nl3) objRememberedValue7);
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnGloballyPositioned2);
            companion2 = ComposeUiNode.Companion;
            constructor = companion2.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB2 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl, currentCompositionLocalMap2);
            if (composerM5355constructorimpl.getInserting()) {
                companion3 = companion2;
                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion3.getSetModifier());
                BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                dm3Var2 = dm3Var;
                dm3Var2.invoke(exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$3, composerStartRestartGroup, Integer.valueOf((i3 >> 6) & 112));
                composerStartRestartGroup.endNode();
                if (z7) {
                    composerStartRestartGroup.startReplaceGroup(209894723);
                    zChangedInstance2 = composerStartRestartGroup.changedInstance(windowBoundsCalculator) | composerStartRestartGroup.changed(iMo1428roundToPx0680j_4);
                    objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance2) {
                        objRememberedValue10 = new ll3() { // from class: h43
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$18$lambda$17(windowBoundsCalculator, iMo1428roundToPx0680j_4, mutableState, mutableIntState4);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                    } else {
                        objRememberedValue10 = new ll3() { // from class: h43
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$18$lambda$17(windowBoundsCalculator, iMo1428roundToPx0680j_4, mutableState, mutableIntState4);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                    }
                    ExposedDropdownMenu_androidKt.OnPlatformWindowBoundsChange((ll3) objRememberedValue10, composerStartRestartGroup, 0);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(210228190);
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (i5 == 4) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue8 = new ll3() { // from class: i43
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$20$lambda$19(z7, focusRequester);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                } else {
                    objRememberedValue8 = new ll3() { // from class: i43
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$20$lambda$19(z7, focusRequester);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                }
                EffectsKt.SideEffect((ll3) objRememberedValue8, composerStartRestartGroup, 0);
                if (i6 == 32) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                if (z6) {
                    objRememberedValue9 = new eh0(nl3Var, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                } else {
                    objRememberedValue9 = new eh0(nl3Var, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                }
                BackHandler_androidKt.BackHandler(z7, (ll3) objRememberedValue9, composerStartRestartGroup, i5, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
            } else {
                companion3 = companion2;
            }
            dc.b(bm3VarB2, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion3.getSetModifier());
            BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
            dm3Var2 = dm3Var;
            dm3Var2.invoke(exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$3, composerStartRestartGroup, Integer.valueOf((i3 >> 6) & 112));
            composerStartRestartGroup.endNode();
            if (z7) {
                composerStartRestartGroup.startReplaceGroup(209894723);
                zChangedInstance2 = composerStartRestartGroup.changedInstance(windowBoundsCalculator) | composerStartRestartGroup.changed(iMo1428roundToPx0680j_4);
                objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance2) {
                    objRememberedValue10 = new ll3() { // from class: h43
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$18$lambda$17(windowBoundsCalculator, iMo1428roundToPx0680j_4, mutableState, mutableIntState4);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                } else {
                    objRememberedValue10 = new ll3() { // from class: h43
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$18$lambda$17(windowBoundsCalculator, iMo1428roundToPx0680j_4, mutableState, mutableIntState4);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                }
                ExposedDropdownMenu_androidKt.OnPlatformWindowBoundsChange((ll3) objRememberedValue10, composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(210228190);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (i5 == 4) {
                z5 = true;
            } else {
                z5 = false;
            }
            objRememberedValue8 = composerStartRestartGroup.rememberedValue();
            if (z5) {
                objRememberedValue8 = new ll3() { // from class: i43
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$20$lambda$19(z7, focusRequester);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
            } else {
                objRememberedValue8 = new ll3() { // from class: i43
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$20$lambda$19(z7, focusRequester);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
            }
            EffectsKt.SideEffect((ll3) objRememberedValue8, composerStartRestartGroup, 0);
            if (i6 == 32) {
                z6 = true;
            } else {
                z6 = false;
            }
            objRememberedValue9 = composerStartRestartGroup.rememberedValue();
            if (z6) {
                objRememberedValue9 = new eh0(nl3Var, 4);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
            } else {
                objRememberedValue9 = new eh0(nl3Var, 4);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
            }
            BackHandler_androidKt.BackHandler(z7, (ll3) objRememberedValue9, composerStartRestartGroup, i5, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
        } else {
            dm3Var2 = dm3Var;
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: j43
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$23(z7, nl3Var, modifier3, dm3Var2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ExposedDropdownMenuBox$lambda$15$lambda$14(WindowBoundsCalculator windowBoundsCalculator, int i, MutableState mutableState, MutableIntState mutableIntState, MutableIntState mutableIntState2, LayoutCoordinates layoutCoordinates) {
        mutableState.setValue(layoutCoordinates);
        mutableIntState.setIntValue((int) (layoutCoordinates.mo7710getSizeYbymL2g() >> 32));
        mutableIntState2.setIntValue(calculateMaxHeight(windowBoundsCalculator.getVisibleWindowBounds(), getAnchorBounds(ExposedDropdownMenuBox$lambda$2(mutableState)), i));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ExposedDropdownMenuBox$lambda$18$lambda$17(WindowBoundsCalculator windowBoundsCalculator, int i, MutableState mutableState, MutableIntState mutableIntState) {
        mutableIntState.setIntValue(calculateMaxHeight(windowBoundsCalculator.getVisibleWindowBounds(), getAnchorBounds(ExposedDropdownMenuBox$lambda$2(mutableState)), i));
        return j59.a;
    }

    private static final LayoutCoordinates ExposedDropdownMenuBox$lambda$2(MutableState<LayoutCoordinates> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ExposedDropdownMenuBox$lambda$20$lambda$19(boolean z, FocusRequester focusRequester) {
        if (z) {
            FocusRequester.m5892requestFocus3ESFkO8$default(focusRequester, 0, 1, null);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ExposedDropdownMenuBox$lambda$22$lambda$21(nl3 nl3Var) {
        nl3Var.invoke(Boolean.FALSE);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ExposedDropdownMenuBox$lambda$23(boolean z, nl3 nl3Var, Modifier modifier, dm3 dm3Var, int i, int i2, Composer composer, int i3) {
        ExposedDropdownMenuBox(z, nl3Var, modifier, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    @ul2
    public static /* synthetic */ void MenuAnchorType$annotations() {
    }

    private static final int calculateMaxHeight(IntRect intRect, Rect rect, int i) {
        if (rect == null) {
            return 0;
        }
        int top = intRect.getTop() + i;
        int bottom = intRect.getBottom() - i;
        return Math.max((rect.getTop() > ((float) intRect.getBottom()) || rect.getBottom() < ((float) intRect.getTop())) ? bottom - top : w65.b(Math.max(rect.getTop() - top, bottom - rect.getBottom())), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: expandable-3-2CpT8, reason: not valid java name */
    public static final Modifier m3452expandable32CpT8(Modifier modifier, final boolean z, final ll3<j59> ll3Var, final String str, final MutableState<Boolean> mutableState, final String str2, final String str3, final String str4, final SoftwareKeyboardController softwareKeyboardController) {
        return SemanticsModifierKt.semantics$default(KeyInputModifierKt.onPreviewKeyEvent(SuspendingPointerInputFilterKt.pointerInput(modifier, ll3Var, new PointerInputEventHandler() { // from class: androidx.compose.material3.ExposedDropdownMenuKt$expandable$1

            /* JADX INFO: renamed from: androidx.compose.material3.ExposedDropdownMenuKt$expandable$1$1, reason: invalid class name */
            @bd2(c = "androidx.compose.material3.ExposedDropdownMenuKt$expandable$1$1", f = "ExposedDropdownMenu.kt", l = {1426, 1430}, m = "invokeSuspend")
            public static final class AnonymousClass1 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
                final /* synthetic */ String $anchorType;
                final /* synthetic */ ll3<j59> $onExpandedChange;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass1(String str, ll3<j59> ll3Var, e02<? super AnonymousClass1> e02Var) {
                    super(2, e02Var);
                    this.$anchorType = str;
                    this.$onExpandedChange = ll3Var;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$anchorType, this.$onExpandedChange, e02Var);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // defpackage.bm3
                public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
                    return ((AnonymousClass1) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
                }

                /* JADX WARN: Code restructure failed: missing block: B:18:0x0059, code lost:
                
                    if (r11 == r0) goto L19;
                 */
                @Override // defpackage.cd0
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r11) {
                    /*
                        r10 = this;
                        a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                        int r1 = r10.label
                        r2 = 2
                        r3 = 1
                        if (r1 == 0) goto L21
                        if (r1 == r3) goto L18
                        if (r1 != r2) goto L11
                        defpackage.r57.b(r11)
                        r7 = r10
                        goto L5c
                    L11:
                        java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r10)
                        r10 = 0
                        return r10
                    L18:
                        java.lang.Object r1 = r10.L$0
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                        defpackage.r57.b(r11)
                        r7 = r10
                        goto L3b
                    L21:
                        defpackage.r57.b(r11)
                        java.lang.Object r11 = r10.L$0
                        r4 = r11
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r4 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r4
                        androidx.compose.ui.input.pointer.PointerEventPass r6 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                        r10.L$0 = r4
                        r10.label = r3
                        r5 = 0
                        r8 = 1
                        r9 = 0
                        r7 = r10
                        java.lang.Object r11 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown$default(r4, r5, r6, r7, r8, r9)
                        if (r11 != r0) goto L3a
                        goto L5b
                    L3a:
                        r1 = r4
                    L3b:
                        androidx.compose.ui.input.pointer.PointerInputChange r11 = (androidx.compose.ui.input.pointer.PointerInputChange) r11
                        java.lang.String r10 = r7.$anchorType
                        androidx.compose.material3.ExposedDropdownMenuAnchorType$Companion r3 = androidx.compose.material3.ExposedDropdownMenuAnchorType.Companion
                        java.lang.String r3 = r3.m3436getSecondaryEditableoYjWRB4()
                        boolean r10 = androidx.compose.material3.ExposedDropdownMenuAnchorType.m3430equalsimpl0(r10, r3)
                        if (r10 == 0) goto L4e
                        r11.consume()
                    L4e:
                        androidx.compose.ui.input.pointer.PointerEventPass r10 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                        r11 = 0
                        r7.L$0 = r11
                        r7.label = r2
                        java.lang.Object r11 = androidx.compose.foundation.gestures.TapGestureDetectorKt.waitForUpOrCancellation(r1, r10, r7)
                        if (r11 != r0) goto L5c
                    L5b:
                        return r0
                    L5c:
                        androidx.compose.ui.input.pointer.PointerInputChange r11 = (androidx.compose.ui.input.pointer.PointerInputChange) r11
                        if (r11 == 0) goto L65
                        ll3<j59> r10 = r7.$onExpandedChange
                        r10.invoke()
                    L65:
                        j59 r10 = defpackage.j59.a
                        return r10
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ExposedDropdownMenuKt$expandable$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture(pointerInputScope, new AnonymousClass1(str, ll3Var, null), e02Var);
                return objAwaitEachGesture == a32.COROUTINE_SUSPENDED ? objAwaitEachGesture : j59.a;
            }
        }), new nl3<KeyEvent, Boolean>() { // from class: androidx.compose.material3.ExposedDropdownMenuKt$expandable$2
            @Override // defpackage.nl3
            public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
                return m3456invokeZmokQxo(keyEvent.m7390unboximpl());
            }

            /* JADX INFO: renamed from: invoke-ZmokQxo, reason: not valid java name */
            public final Boolean m3456invokeZmokQxo(android.view.KeyEvent keyEvent) {
                if (ExposedDropdownMenuKt.m3454isClickZmokQxo(keyEvent)) {
                    if (!ExposedDropdownMenuAnchorType.m3430equalsimpl0(str, ExposedDropdownMenuAnchorType.Companion.m3434getPrimaryEditableoYjWRB4())) {
                        ll3Var.invoke();
                    } else if (ExposedDropdownMenuKt.m3455isEnterMinusSpacebarZmokQxo(keyEvent)) {
                        ll3Var.invoke();
                        return Boolean.TRUE;
                    }
                }
                if (ExposedDropdownMenuAnchorType.m3430equalsimpl0(str, ExposedDropdownMenuAnchorType.Companion.m3434getPrimaryEditableoYjWRB4()) && z) {
                    long jM7401getKeyZmokQxo = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
                    Key.Companion companion = Key.Companion;
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7329getTabEK5gGoQ()) || Key.m7081equalsimpl0(KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent), companion.m7155getDirectionDownEK5gGoQ()) || Key.m7081equalsimpl0(KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent), companion.m7160getDirectionUpEK5gGoQ())) {
                        MutableState<Boolean> mutableState2 = mutableState;
                        Boolean bool = Boolean.TRUE;
                        mutableState2.setValue(bool);
                        return bool;
                    }
                }
                MutableState<Boolean> mutableState3 = mutableState;
                Boolean bool2 = Boolean.FALSE;
                mutableState3.setValue(bool2);
                return bool2;
            }
        }), false, new nl3() { // from class: k43
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return ExposedDropdownMenuKt.expandable_3_2CpT8$lambda$25(str, z, str2, str3, str4, ll3Var, softwareKeyboardController, (SemanticsPropertyReceiver) obj);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 expandable_3_2CpT8$lambda$25(final String str, boolean z, String str2, String str3, String str4, final ll3 ll3Var, final SoftwareKeyboardController softwareKeyboardController, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (ExposedDropdownMenuAnchorType.m3430equalsimpl0(str, ExposedDropdownMenuAnchorType.Companion.m3436getSecondaryEditableoYjWRB4())) {
            SemanticsPropertiesKt.m8280setRolekuIjeqM(semanticsPropertyReceiver, Role.Companion.m8261getButtono7Vup1c());
            if (!z) {
                str2 = str3;
            }
            SemanticsPropertiesKt.setStateDescription(semanticsPropertyReceiver, str2);
            SemanticsPropertiesKt.setContentDescription(semanticsPropertyReceiver, str4);
        } else {
            SemanticsPropertiesKt.m8280setRolekuIjeqM(semanticsPropertyReceiver, Role.Companion.m8264getDropdownListo7Vup1c());
        }
        SemanticsPropertiesKt.onClick$default(semanticsPropertyReceiver, null, new ll3() { // from class: f43
            @Override // defpackage.ll3
            public final Object invoke() {
                return Boolean.valueOf(ExposedDropdownMenuKt.expandable_3_2CpT8$lambda$25$lambda$24(ll3Var, str, softwareKeyboardController));
            }
        }, 1, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean expandable_3_2CpT8$lambda$25$lambda$24(ll3 ll3Var, String str, SoftwareKeyboardController softwareKeyboardController) {
        ll3Var.invoke();
        if (!ExposedDropdownMenuAnchorType.m3430equalsimpl0(str, ExposedDropdownMenuAnchorType.Companion.m3434getPrimaryEditableoYjWRB4()) || softwareKeyboardController == null) {
            return true;
        }
        softwareKeyboardController.show();
        return true;
    }

    private static final Rect getAnchorBounds(LayoutCoordinates layoutCoordinates) {
        return (layoutCoordinates == null || !layoutCoordinates.isAttached()) ? Rect.Companion.getZero() : RectKt.m6027Recttz77jQw(LayoutCoordinatesKt.positionInWindow(layoutCoordinates), IntSizeKt.m9225toSizeozmzZPI(layoutCoordinates.mo7710getSizeYbymL2g()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: hasGreaterOrEqualPriorityThan-vVDBVkM, reason: not valid java name */
    public static final boolean m3453hasGreaterOrEqualPriorityThanvVDBVkM(String str, String str2) {
        ExposedDropdownMenuAnchorType.Companion companion = ExposedDropdownMenuAnchorType.Companion;
        if (ExposedDropdownMenuAnchorType.m3430equalsimpl0(str, companion.m3435getPrimaryNotEditableoYjWRB4()) || ExposedDropdownMenuAnchorType.m3430equalsimpl0(str, companion.m3434getPrimaryEditableoYjWRB4())) {
            return true;
        }
        if (ExposedDropdownMenuAnchorType.m3430equalsimpl0(str, companion.m3436getSecondaryEditableoYjWRB4())) {
            return ExposedDropdownMenuAnchorType.m3430equalsimpl0(str2, companion.m3436getSecondaryEditableoYjWRB4());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: isClick-ZmokQxo, reason: not valid java name */
    public static final boolean m3454isClickZmokQxo(android.view.KeyEvent keyEvent) {
        if (KeyEventType.m7394equalsimpl0(KeyEvent_androidKt.m7402getTypeZmokQxo(keyEvent), KeyEventType.Companion.m7399getKeyUpCS__XNY())) {
            return m3455isEnterMinusSpacebarZmokQxo(keyEvent) || Key.m7081equalsimpl0(KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent), Key.Companion.m7316getSpacebarEK5gGoQ());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: isEnterMinusSpacebar-ZmokQxo, reason: not valid java name */
    public static final boolean m3455isEnterMinusSpacebarZmokQxo(android.view.KeyEvent keyEvent) {
        long jM7401getKeyZmokQxo = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
        Key.Companion companion = Key.Companion;
        return Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7154getDirectionCenterEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7168getEnterEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7265getNumPadEnterEK5gGoQ());
    }
}
