package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.material3.AppBarColumnKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MultiContentMeasurePolicyKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.ef;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class AppBarColumnKt {
    /* JADX WARN: Code duplicated, block: B:100:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    /* JADX WARN: Code duplicated, block: B:28:0x004d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0051  */
    /* JADX WARN: Code duplicated, block: B:32:0x0059  */
    /* JADX WARN: Code duplicated, block: B:33:0x005b  */
    /* JADX WARN: Code duplicated, block: B:37:0x0062  */
    /* JADX WARN: Code duplicated, block: B:38:0x0065  */
    /* JADX WARN: Code duplicated, block: B:40:0x0069  */
    /* JADX WARN: Code duplicated, block: B:42:0x006f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0072  */
    /* JADX WARN: Code duplicated, block: B:47:0x007d  */
    /* JADX WARN: Code duplicated, block: B:48:0x007f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0088 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x008a  */
    /* JADX WARN: Code duplicated, block: B:53:0x008d  */
    /* JADX WARN: Code duplicated, block: B:55:0x0090  */
    /* JADX WARN: Code duplicated, block: B:58:0x009a  */
    /* JADX WARN: Code duplicated, block: B:61:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:64:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:67:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:68:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:71:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:73:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:76:0x0130  */
    /* JADX WARN: Code duplicated, block: B:78:0x0136  */
    /* JADX WARN: Code duplicated, block: B:81:0x0159  */
    /* JADX WARN: Code duplicated, block: B:84:0x0165  */
    /* JADX WARN: Code duplicated, block: B:85:0x0169  */
    /* JADX WARN: Code duplicated, block: B:88:0x017a  */
    /* JADX WARN: Code duplicated, block: B:90:0x0188  */
    /* JADX WARN: Code duplicated, block: B:93:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:95:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:98:0x01b3  */
    public static final void AppBarColumn(final dm3<? super AppBarMenuState, ? super Composer, ? super Integer, j59> dm3Var, Modifier modifier, int i, final nl3<? super AppBarColumnScope, j59> nl3Var, Composer composer, final int i2, final int i3) {
        int i4;
        Modifier modifier2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z;
        Modifier modifier3;
        final int i10;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        State stateRememberUpdatedState;
        Object objRememberedValue;
        Composer.Companion companion;
        Object objRememberedValue2;
        AppBarOverflowState appBarOverflowStateRememberAppBarOverflowState;
        boolean z2;
        boolean z3;
        Object objRememberedValue3;
        OverflowMeasurePolicy overflowMeasurePolicy;
        boolean zChanged;
        Object objRememberedValue4;
        int currentCompositeKeyHash;
        ll3<ComposeUiNode> constructor;
        Composer composerM5355constructorimpl;
        bm3 bm3VarB;
        Composer composerStartRestartGroup = composer.startRestartGroup(1484836710);
        if ((i3 & 1) != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (composerStartRestartGroup.changedInstance(dm3Var) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i11 = i3 & 2;
        if (i11 == 0) {
            if ((i2 & 48) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            i5 = i3 & 4;
            if (i5 != 0) {
                if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    i6 = i;
                    if (composerStartRestartGroup.changed(i6)) {
                        i7 = 256;
                    } else {
                        i7 = 128;
                    }
                    i4 |= i7;
                }
                if ((i3 & 8) != 0) {
                    i4 |= 3072;
                } else if ((i2 & 3072) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i8 = 2048;
                    } else {
                        i8 = 1024;
                    }
                    i4 |= i8;
                }
                i9 = 1;
                if ((i4 & 1171) != 1170) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    if (i11 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i5 != 0) {
                        i6 = Integer.MAX_VALUE;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1484836710, i4, -1, "androidx.compose.material3.AppBarColumn (AppBarColumn.kt:54)");
                    }
                    stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(nl3Var, composerStartRestartGroup, (i4 >> 9) & 14);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotStateKt.derivedStateOf(new ef(stateRememberUpdatedState, i9));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    final State state = (State) objRememberedValue;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = new AppBarMenuState();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    AppBarMenuState appBarMenuState = (AppBarMenuState) objRememberedValue2;
                    appBarOverflowStateRememberAppBarOverflowState = AppBarDslKt.rememberAppBarOverflowState(composerStartRestartGroup, 0);
                    boolean zChanged2 = composerStartRestartGroup.changed(appBarOverflowStateRememberAppBarOverflowState);
                    if ((i4 & 896) == 256) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    z3 = z2 | zChanged2;
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z3 || objRememberedValue3 == companion.getEmpty()) {
                        objRememberedValue3 = new OverflowMeasurePolicy(appBarOverflowStateRememberAppBarOverflowState, i6, true);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    overflowMeasurePolicy = (OverflowMeasurePolicy) objRememberedValue3;
                    bm3<Composer, Integer, j59> bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts(u96.i(ComposableLambdaKt.rememberComposableLambda(979489399, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AppBarColumnKt.AppBarColumn.1
                        public final void invoke(Composer composer2, int i12) {
                            if (!composer2.shouldExecute((i12 & 3) != 2, i12 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(979489399, i12, -1, "androidx.compose.material3.AppBarColumn.<anonymous> (AppBarColumn.kt:69)");
                            }
                            List<AppBarItem> items = AppBarColumnKt.AppBarColumn$lambda$2(state).getItems();
                            int size = items.size();
                            for (int i13 = 0; i13 < size; i13++) {
                                items.get(i13).AppbarContent(composer2, 0);
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(1681423992, true, new AnonymousClass2(dm3Var, appBarMenuState, appBarOverflowStateRememberAppBarOverflowState, state), composerStartRestartGroup, 54)));
                    zChanged = composerStartRestartGroup.changed(overflowMeasurePolicy);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged || objRememberedValue4 == companion.getEmpty()) {
                        objRememberedValue4 = MultiContentMeasurePolicyKt.createMeasurePolicy(overflowMeasurePolicy);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue4;
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
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
                    bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                    bm3VarCombineAsVirtualLayouts.invoke(composerStartRestartGroup, 0);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                }
                i10 = i6;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final Modifier modifier4 = modifier3;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pn
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AppBarColumnKt.AppBarColumn$lambda$5(dm3Var, modifier4, i10, nl3Var, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i6 = i;
            if ((i3 & 8) != 0) {
                i4 |= 3072;
            } else if ((i2 & 3072) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i8 = 2048;
                } else {
                    i8 = 1024;
                }
                i4 |= i8;
            }
            i9 = 1;
            if ((i4 & 1171) != 1170) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                if (i11 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i5 != 0) {
                    i6 = Integer.MAX_VALUE;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1484836710, i4, -1, "androidx.compose.material3.AppBarColumn (AppBarColumn.kt:54)");
                }
                stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(nl3Var, composerStartRestartGroup, (i4 >> 9) & 14);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotStateKt.derivedStateOf(new ef(stateRememberUpdatedState, i9));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                final State<AppBarColumnScopeImpl> state2 = (State) objRememberedValue;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = new AppBarMenuState();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                AppBarMenuState appBarMenuState2 = (AppBarMenuState) objRememberedValue2;
                appBarOverflowStateRememberAppBarOverflowState = AppBarDslKt.rememberAppBarOverflowState(composerStartRestartGroup, 0);
                boolean zChanged3 = composerStartRestartGroup.changed(appBarOverflowStateRememberAppBarOverflowState);
                if ((i4 & 896) == 256) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                z3 = z2 | zChanged3;
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z3) {
                    objRememberedValue3 = new OverflowMeasurePolicy(appBarOverflowStateRememberAppBarOverflowState, i6, true);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new OverflowMeasurePolicy(appBarOverflowStateRememberAppBarOverflowState, i6, true);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                overflowMeasurePolicy = (OverflowMeasurePolicy) objRememberedValue3;
                bm3<Composer, Integer, j59> bm3VarCombineAsVirtualLayouts2 = LayoutKt.combineAsVirtualLayouts(u96.i(ComposableLambdaKt.rememberComposableLambda(979489399, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AppBarColumnKt.AppBarColumn.1
                    public final void invoke(Composer composer2, int i12) {
                        if (!composer2.shouldExecute((i12 & 3) != 2, i12 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(979489399, i12, -1, "androidx.compose.material3.AppBarColumn.<anonymous> (AppBarColumn.kt:69)");
                        }
                        List<AppBarItem> items = AppBarColumnKt.AppBarColumn$lambda$2(state2).getItems();
                        int size = items.size();
                        for (int i13 = 0; i13 < size; i13++) {
                            items.get(i13).AppbarContent(composer2, 0);
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(1681423992, true, new AnonymousClass2(dm3Var, appBarMenuState2, appBarOverflowStateRememberAppBarOverflowState, state2), composerStartRestartGroup, 54)));
                zChanged = composerStartRestartGroup.changed(overflowMeasurePolicy);
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue4 = MultiContentMeasurePolicyKt.createMeasurePolicy(overflowMeasurePolicy);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    objRememberedValue4 = MultiContentMeasurePolicyKt.createMeasurePolicy(overflowMeasurePolicy);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                MeasurePolicy measurePolicy2 = (MeasurePolicy) objRememberedValue4;
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                constructor = companion3.getConstructor();
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
                bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicy2, composerM5355constructorimpl, currentCompositionLocalMap2);
                if (composerM5355constructorimpl.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion3.getSetModifier());
                bm3VarCombineAsVirtualLayouts2.invoke(composerStartRestartGroup, 0);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
            }
            i10 = i6;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier5 = modifier3;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pn
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AppBarColumnKt.AppBarColumn$lambda$5(dm3Var, modifier5, i10, nl3Var, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        modifier2 = modifier;
        i5 = i3 & 4;
        if (i5 != 0) {
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                i6 = i;
                if (composerStartRestartGroup.changed(i6)) {
                    i7 = 256;
                } else {
                    i7 = 128;
                }
                i4 |= i7;
            }
            if ((i3 & 8) != 0) {
                i4 |= 3072;
            } else if ((i2 & 3072) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i8 = 2048;
                } else {
                    i8 = 1024;
                }
                i4 |= i8;
            }
            i9 = 1;
            if ((i4 & 1171) != 1170) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                if (i11 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i5 != 0) {
                    i6 = Integer.MAX_VALUE;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1484836710, i4, -1, "androidx.compose.material3.AppBarColumn (AppBarColumn.kt:54)");
                }
                stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(nl3Var, composerStartRestartGroup, (i4 >> 9) & 14);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotStateKt.derivedStateOf(new ef(stateRememberUpdatedState, i9));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                final State<AppBarColumnScopeImpl> state3 = (State) objRememberedValue;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = new AppBarMenuState();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                AppBarMenuState appBarMenuState3 = (AppBarMenuState) objRememberedValue2;
                appBarOverflowStateRememberAppBarOverflowState = AppBarDslKt.rememberAppBarOverflowState(composerStartRestartGroup, 0);
                boolean zChanged4 = composerStartRestartGroup.changed(appBarOverflowStateRememberAppBarOverflowState);
                if ((i4 & 896) == 256) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                z3 = z2 | zChanged4;
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z3) {
                    objRememberedValue3 = new OverflowMeasurePolicy(appBarOverflowStateRememberAppBarOverflowState, i6, true);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new OverflowMeasurePolicy(appBarOverflowStateRememberAppBarOverflowState, i6, true);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                overflowMeasurePolicy = (OverflowMeasurePolicy) objRememberedValue3;
                bm3<Composer, Integer, j59> bm3VarCombineAsVirtualLayouts3 = LayoutKt.combineAsVirtualLayouts(u96.i(ComposableLambdaKt.rememberComposableLambda(979489399, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AppBarColumnKt.AppBarColumn.1
                    public final void invoke(Composer composer2, int i12) {
                        if (!composer2.shouldExecute((i12 & 3) != 2, i12 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(979489399, i12, -1, "androidx.compose.material3.AppBarColumn.<anonymous> (AppBarColumn.kt:69)");
                        }
                        List<AppBarItem> items = AppBarColumnKt.AppBarColumn$lambda$2(state3).getItems();
                        int size = items.size();
                        for (int i13 = 0; i13 < size; i13++) {
                            items.get(i13).AppbarContent(composer2, 0);
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(1681423992, true, new AnonymousClass2(dm3Var, appBarMenuState3, appBarOverflowStateRememberAppBarOverflowState, state3), composerStartRestartGroup, 54)));
                zChanged = composerStartRestartGroup.changed(overflowMeasurePolicy);
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue4 = MultiContentMeasurePolicyKt.createMeasurePolicy(overflowMeasurePolicy);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    objRememberedValue4 = MultiContentMeasurePolicyKt.createMeasurePolicy(overflowMeasurePolicy);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                MeasurePolicy measurePolicy3 = (MeasurePolicy) objRememberedValue4;
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                constructor = companion4.getConstructor();
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
                bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicy3, composerM5355constructorimpl, currentCompositionLocalMap3);
                if (composerM5355constructorimpl.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier3, companion4.getSetModifier());
                bm3VarCombineAsVirtualLayouts3.invoke(composerStartRestartGroup, 0);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
            }
            i10 = i6;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier6 = modifier3;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pn
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AppBarColumnKt.AppBarColumn$lambda$5(dm3Var, modifier6, i10, nl3Var, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        i6 = i;
        if ((i3 & 8) != 0) {
            i4 |= 3072;
        } else if ((i2 & 3072) == 0) {
            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                i8 = 2048;
            } else {
                i8 = 1024;
            }
            i4 |= i8;
        }
        i9 = 1;
        if ((i4 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            if (i11 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i5 != 0) {
                i6 = Integer.MAX_VALUE;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1484836710, i4, -1, "androidx.compose.material3.AppBarColumn (AppBarColumn.kt:54)");
            }
            stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(nl3Var, composerStartRestartGroup, (i4 >> 9) & 14);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = SnapshotStateKt.derivedStateOf(new ef(stateRememberUpdatedState, i9));
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            final State<AppBarColumnScopeImpl> state4 = (State) objRememberedValue;
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = new AppBarMenuState();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            AppBarMenuState appBarMenuState4 = (AppBarMenuState) objRememberedValue2;
            appBarOverflowStateRememberAppBarOverflowState = AppBarDslKt.rememberAppBarOverflowState(composerStartRestartGroup, 0);
            boolean zChanged5 = composerStartRestartGroup.changed(appBarOverflowStateRememberAppBarOverflowState);
            if ((i4 & 896) == 256) {
                z2 = true;
            } else {
                z2 = false;
            }
            z3 = z2 | zChanged5;
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (z3) {
                objRememberedValue3 = new OverflowMeasurePolicy(appBarOverflowStateRememberAppBarOverflowState, i6, true);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                objRememberedValue3 = new OverflowMeasurePolicy(appBarOverflowStateRememberAppBarOverflowState, i6, true);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            overflowMeasurePolicy = (OverflowMeasurePolicy) objRememberedValue3;
            bm3<Composer, Integer, j59> bm3VarCombineAsVirtualLayouts4 = LayoutKt.combineAsVirtualLayouts(u96.i(ComposableLambdaKt.rememberComposableLambda(979489399, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AppBarColumnKt.AppBarColumn.1
                public final void invoke(Composer composer2, int i12) {
                    if (!composer2.shouldExecute((i12 & 3) != 2, i12 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(979489399, i12, -1, "androidx.compose.material3.AppBarColumn.<anonymous> (AppBarColumn.kt:69)");
                    }
                    List<AppBarItem> items = AppBarColumnKt.AppBarColumn$lambda$2(state4).getItems();
                    int size = items.size();
                    for (int i13 = 0; i13 < size; i13++) {
                        items.get(i13).AppbarContent(composer2, 0);
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(1681423992, true, new AnonymousClass2(dm3Var, appBarMenuState4, appBarOverflowStateRememberAppBarOverflowState, state4), composerStartRestartGroup, 54)));
            zChanged = composerStartRestartGroup.changed(overflowMeasurePolicy);
            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                objRememberedValue4 = MultiContentMeasurePolicyKt.createMeasurePolicy(overflowMeasurePolicy);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            } else {
                objRememberedValue4 = MultiContentMeasurePolicyKt.createMeasurePolicy(overflowMeasurePolicy);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            MeasurePolicy measurePolicy4 = (MeasurePolicy) objRememberedValue4;
            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
            ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
            constructor = companion5.getConstructor();
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
            bm3VarB = cc.b(companion5, composerM5355constructorimpl, measurePolicy4, composerM5355constructorimpl, currentCompositionLocalMap4);
            if (composerM5355constructorimpl.getInserting()) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            } else {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier4, companion5.getSetModifier());
            bm3VarCombineAsVirtualLayouts4.invoke(composerStartRestartGroup, 0);
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
        }
        i10 = i6;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier7 = modifier3;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pn
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return AppBarColumnKt.AppBarColumn$lambda$5(dm3Var, modifier7, i10, nl3Var, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AppBarColumnScopeImpl AppBarColumn$lambda$1$lambda$0(State state) {
        AppBarColumnScopeImpl appBarColumnScopeImpl = new AppBarColumnScopeImpl(new AppBarScopeImpl());
        ((nl3) state.getValue()).invoke(appBarColumnScopeImpl);
        return appBarColumnScopeImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AppBarColumnScopeImpl AppBarColumn$lambda$2(State<AppBarColumnScopeImpl> state) {
        return state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 AppBarColumn$lambda$5(dm3 dm3Var, Modifier modifier, int i, nl3 nl3Var, int i2, int i3, Composer composer, int i4) {
        AppBarColumn(dm3Var, modifier, i, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: renamed from: androidx.compose.material3.AppBarColumnKt$AppBarColumn$2, reason: invalid class name */
    public static final class AnonymousClass2 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ AppBarMenuState $menuState;
        final /* synthetic */ dm3<AppBarMenuState, Composer, Integer, j59> $overflowIndicator;
        final /* synthetic */ AppBarOverflowState $overflowState;
        final /* synthetic */ State<AppBarColumnScopeImpl> $scope$delegate;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(dm3<? super AppBarMenuState, ? super Composer, ? super Integer, j59> dm3Var, AppBarMenuState appBarMenuState, AppBarOverflowState appBarOverflowState, State<AppBarColumnScopeImpl> state) {
            this.$overflowIndicator = dm3Var;
            this.$menuState = appBarMenuState;
            this.$overflowState = appBarOverflowState;
            this.$scope$delegate = state;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$2$lambda$1$lambda$0(AppBarMenuState appBarMenuState) {
            appBarMenuState.dismiss();
            return j59.a;
        }

        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1681423992, i, -1, "androidx.compose.material3.AppBarColumn.<anonymous> (AppBarColumn.kt:71)");
            }
            dm3<AppBarMenuState, Composer, Integer, j59> dm3Var = this.$overflowIndicator;
            final AppBarMenuState appBarMenuState = this.$menuState;
            final AppBarOverflowState appBarOverflowState = this.$overflowState;
            final State<AppBarColumnScopeImpl> state = this.$scope$delegate;
            Modifier.Companion companion = Modifier.Companion;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
            CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, companion);
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
            dm3Var.invoke(appBarMenuState, composer, 6);
            boolean zIsExpanded = appBarMenuState.isExpanded();
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new ll3() { // from class: androidx.compose.material3.b
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return AppBarColumnKt.AnonymousClass2.invoke$lambda$2$lambda$1$lambda$0(appBarMenuState);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            AndroidMenu_androidKt.m3081DropdownMenuIlH_yew(zIsExpanded, (ll3) objRememberedValue, null, 0L, null, null, null, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(703704227, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.AppBarColumnKt$AppBarColumn$2$1$2
                public final void invoke(ColumnScope columnScope, Composer composer2, int i2) {
                    if (!composer2.shouldExecute((i2 & 17) != 16, i2 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(703704227, i2, -1, "androidx.compose.material3.AppBarColumn.<anonymous>.<anonymous>.<anonymous> (AppBarColumn.kt:77)");
                    }
                    List<AppBarItem> listSubList = AppBarColumnKt.AppBarColumn$lambda$2(state).getItems().subList(appBarOverflowState.getVisibleItemCount(), appBarOverflowState.getTotalItemCount());
                    AppBarMenuState appBarMenuState2 = appBarMenuState;
                    int size = listSubList.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        listSubList.get(i3).MenuContent(appBarMenuState2, composer2, 6);
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                    invoke(columnScope, composer2, num.intValue());
                    return j59.a;
                }
            }, composer, 54), composer, 48, 48, 2044);
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
}
