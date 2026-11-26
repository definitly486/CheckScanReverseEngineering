package androidx.compose.foundation.contextmenu;

import androidx.compose.foundation.contextmenu.ContextMenuAreaKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bm3;
import defpackage.hm;
import defpackage.j59;
import defpackage.jg;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.qy1;
import defpackage.ry1;

/* JADX INFO: loaded from: classes.dex */
public final class ContextMenuAreaKt {
    public static final void ContextMenu(final ContextMenuState contextMenuState, final ll3<j59> ll3Var, Modifier modifier, final nl3<? super ContextMenuScope, j59> nl3Var, Composer composer, final int i, final int i2) {
        int i3;
        Composer composer2;
        final Modifier modifier2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        bm3<? super Composer, ? super Integer, j59> bm3Var;
        Composer composerStartRestartGroup = composer.startRestartGroup(-195055274);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(contextMenuState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(ll3Var) ? 32 : 16;
        }
        int i4 = i2 & 4;
        if (i4 != 0) {
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(nl3Var) ? 2048 : 1024;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 1171) != 1170, i3 & 1)) {
            if (i4 != 0) {
                modifier = Modifier.Companion;
            }
            modifier2 = modifier;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-195055274, i3, -1, "androidx.compose.foundation.contextmenu.ContextMenu (ContextMenuArea.kt:73)");
            }
            ContextMenuState.Status status = contextMenuState.getStatus();
            if (status instanceof ContextMenuState.Status.Open) {
                ContextMenuState.Status.Open open = (ContextMenuState.Status.Open) status;
                boolean zChanged = composerStartRestartGroup.changed(open);
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                    ContextMenuPopupPositionProvider contextMenuPopupPositionProvider = new ContextMenuPopupPositionProvider(IntOffsetKt.m9187roundk4lQ0M(open.m1418getOffsetF1C5BW0()), (bm3) null, 2, (jh2) null);
                    composerStartRestartGroup.updateRememberedValue(contextMenuPopupPositionProvider);
                    objRememberedValue = contextMenuPopupPositionProvider;
                }
                composer2 = composerStartRestartGroup;
                ContextMenuUiKt.ContextMenuPopup((ContextMenuPopupPositionProvider) objRememberedValue, ll3Var, modifier2, nl3Var, composer2, i3 & 8176, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup == null) {
                    return;
                } else {
                    bm3Var = new bm3() { // from class: ty1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ContextMenuAreaKt.ContextMenu$lambda$0(contextMenuState, ll3Var, modifier2, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    };
                }
            }
            scopeUpdateScopeEndRestartGroup.updateScope(bm3Var);
        }
        composer2 = composerStartRestartGroup;
        composer2.skipToGroupEnd();
        modifier2 = modifier;
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            bm3Var = new bm3() { // from class: uy1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ContextMenuAreaKt.ContextMenu$lambda$2(contextMenuState, ll3Var, modifier2, nl3Var, i, i2, (Composer) obj, iIntValue);
                }
            };
            scopeUpdateScopeEndRestartGroup.updateScope(bm3Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ContextMenu$lambda$0(ContextMenuState contextMenuState, ll3 ll3Var, Modifier modifier, nl3 nl3Var, int i, int i2, Composer composer, int i3) {
        ContextMenu(contextMenuState, ll3Var, modifier, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ContextMenu$lambda$2(ContextMenuState contextMenuState, ll3 ll3Var, Modifier modifier, nl3 nl3Var, int i, int i2, Composer composer, int i3) {
        ContextMenu(contextMenuState, ll3Var, modifier, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0162  */
    /* JADX WARN: Code duplicated, block: B:105:0x016e  */
    /* JADX WARN: Code duplicated, block: B:106:0x0172  */
    /* JADX WARN: Code duplicated, block: B:109:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:111:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:114:0x01be  */
    /* JADX WARN: Code duplicated, block: B:116:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0071  */
    /* JADX WARN: Code duplicated, block: B:45:0x0079  */
    /* JADX WARN: Code duplicated, block: B:46:0x007c  */
    /* JADX WARN: Code duplicated, block: B:50:0x0085  */
    /* JADX WARN: Code duplicated, block: B:52:0x0089  */
    /* JADX WARN: Code duplicated, block: B:54:0x008c  */
    /* JADX WARN: Code duplicated, block: B:56:0x0094  */
    /* JADX WARN: Code duplicated, block: B:57:0x0097  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:75:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:77:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:79:0x00da  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:87:0x0104  */
    /* JADX WARN: Code duplicated, block: B:88:0x0106  */
    /* JADX WARN: Code duplicated, block: B:91:0x010c  */
    /* JADX WARN: Code duplicated, block: B:92:0x010e  */
    /* JADX WARN: Code duplicated, block: B:95:0x0116  */
    /* JADX WARN: Code duplicated, block: B:97:0x011e  */
    /* JADX WARN: Code duplicated, block: B:99:0x0131  */
    public static final void ContextMenuArea(final ContextMenuState contextMenuState, final ll3<j59> ll3Var, final nl3<? super ContextMenuScope, j59> nl3Var, Modifier modifier, boolean z, ll3<j59> ll3Var2, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i, final int i2) {
        int i3;
        ll3<j59> ll3Var3;
        Modifier modifier2;
        int i4;
        boolean z2;
        int i5;
        int i6;
        ll3<j59> ll3Var4;
        int i7;
        boolean z3;
        final boolean z4;
        final ll3<j59> ll3Var5;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifierContextMenuGestures;
        ll3<ComposeUiNode> constructor;
        boolean z5;
        boolean z6;
        boolean z7;
        Object objRememberedValue;
        Object objRememberedValue2;
        int i8;
        Composer composerStartRestartGroup = composer.startRestartGroup(1195420540);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(contextMenuState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            ll3Var3 = ll3Var;
            i3 |= composerStartRestartGroup.changedInstance(ll3Var3) ? 32 : 16;
        } else {
            ll3Var3 = ll3Var;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(nl3Var) ? 256 : 128;
        }
        int i9 = i2 & 8;
        if (i9 == 0) {
            if ((i & 3072) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 2048 : 1024;
            }
            i4 = i2 & 16;
            if (i4 != 0) {
                if ((i & 24576) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i5 = 16384;
                    } else {
                        i5 = 8192;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    if ((196608 & i) == 0) {
                        ll3Var4 = ll3Var2;
                        if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                            i7 = 131072;
                        } else {
                            i7 = 65536;
                        }
                        i3 |= i7;
                    }
                    if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var)) {
                            i8 = 1048576;
                        } else {
                            i8 = 524288;
                        }
                        i3 |= i8;
                    }
                    if ((i3 & 599187) != 599186) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        if (i9 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if (i6 != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = new qy1(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            ll3Var4 = (ll3) objRememberedValue2;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1195420540, i3, -1, "androidx.compose.foundation.contextmenu.ContextMenuArea (ContextMenuArea.kt:46)");
                        }
                        if (z2) {
                            composerStartRestartGroup.startReplaceGroup(-1095188022);
                            if ((458752 & i3) == 131072) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            if ((i3 & 14) == 4) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            z7 = z5 | z6;
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (z7 || objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new ry1(0, ll3Var4, contextMenuState);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            modifierContextMenuGestures = ContextMenuGesturesKt.contextMenuGestures(modifier2, (nl3<? super Offset, j59>) objRememberedValue);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1095031162);
                            composerStartRestartGroup.endReplaceGroup();
                            modifierContextMenuGestures = modifier2;
                        }
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), true);
                        int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierContextMenuGestures);
                        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                        constructor = companion.getConstructor();
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
                        jg.d(companion, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        bm3Var.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 18) & 14));
                        ContextMenu(contextMenuState, ll3Var3, null, nl3Var, composerStartRestartGroup, (i3 & 126) | ((i3 << 3) & 7168), 4);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                    }
                    z4 = z2;
                    ll3Var5 = ll3Var4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        final Modifier modifier3 = modifier2;
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sy1
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ContextMenuAreaKt.ContextMenuArea$lambda$3(contextMenuState, ll3Var, nl3Var, modifier3, z4, ll3Var5, bm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                ll3Var4 = ll3Var2;
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i3 |= i8;
                }
                if ((i3 & 599187) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    if (i9 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if (i6 != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = new qy1(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        ll3Var4 = (ll3) objRememberedValue2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1195420540, i3, -1, "androidx.compose.foundation.contextmenu.ContextMenuArea (ContextMenuArea.kt:46)");
                    }
                    if (z2) {
                        composerStartRestartGroup.startReplaceGroup(-1095188022);
                        if ((458752 & i3) == 131072) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if ((i3 & 14) == 4) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        z7 = z5 | z6;
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z7) {
                            objRememberedValue = new ry1(0, ll3Var4, contextMenuState);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new ry1(0, ll3Var4, contextMenuState);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        modifierContextMenuGestures = ContextMenuGesturesKt.contextMenuGestures(modifier2, (nl3<? super Offset, j59>) objRememberedValue);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1095031162);
                        composerStartRestartGroup.endReplaceGroup();
                        modifierContextMenuGestures = modifier2;
                    }
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), true);
                    int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierContextMenuGestures);
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
                    Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion2, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl2, currentCompositionLocalMap2);
                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, (bm3<? super T, ? super Modifier, j59>) hm.b(companion2, composerM5355constructorimpl2, Integer.valueOf(iHashCode2), composerM5355constructorimpl2));
                    BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                    bm3Var.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 18) & 14));
                    ContextMenu(contextMenuState, ll3Var3, null, nl3Var, composerStartRestartGroup, (i3 & 126) | ((i3 << 3) & 7168), 4);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                }
                z4 = z2;
                ll3Var5 = ll3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final Modifier modifier4 = modifier2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sy1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ContextMenuAreaKt.ContextMenuArea$lambda$3(contextMenuState, ll3Var, nl3Var, modifier4, z4, ll3Var5, bm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            z2 = z;
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    ll3Var4 = ll3Var2;
                    if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i3 |= i8;
                }
                if ((i3 & 599187) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    if (i9 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if (i6 != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = new qy1(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        ll3Var4 = (ll3) objRememberedValue2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1195420540, i3, -1, "androidx.compose.foundation.contextmenu.ContextMenuArea (ContextMenuArea.kt:46)");
                    }
                    if (z2) {
                        composerStartRestartGroup.startReplaceGroup(-1095188022);
                        if ((458752 & i3) == 131072) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if ((i3 & 14) == 4) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        z7 = z5 | z6;
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z7) {
                            objRememberedValue = new ry1(0, ll3Var4, contextMenuState);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new ry1(0, ll3Var4, contextMenuState);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        modifierContextMenuGestures = ContextMenuGesturesKt.contextMenuGestures(modifier2, (nl3<? super Offset, j59>) objRememberedValue);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1095031162);
                        composerStartRestartGroup.endReplaceGroup();
                        modifierContextMenuGestures = modifier2;
                    }
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), true);
                    int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierContextMenuGestures);
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
                    Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion3, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy3, composerM5355constructorimpl3, currentCompositionLocalMap3);
                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, (bm3<? super T, ? super Modifier, j59>) hm.b(companion3, composerM5355constructorimpl3, Integer.valueOf(iHashCode3), composerM5355constructorimpl3));
                    BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                    bm3Var.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 18) & 14));
                    ContextMenu(contextMenuState, ll3Var3, null, nl3Var, composerStartRestartGroup, (i3 & 126) | ((i3 << 3) & 7168), 4);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                }
                z4 = z2;
                ll3Var5 = ll3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final Modifier modifier5 = modifier2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sy1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ContextMenuAreaKt.ContextMenuArea$lambda$3(contextMenuState, ll3Var, nl3Var, modifier5, z4, ll3Var5, bm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            ll3Var4 = ll3Var2;
            if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i3 |= i8;
            }
            if ((i3 & 599187) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i9 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z2 = true;
                }
                if (i6 != 0) {
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                        objRememberedValue2 = new qy1(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    ll3Var4 = (ll3) objRememberedValue2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1195420540, i3, -1, "androidx.compose.foundation.contextmenu.ContextMenuArea (ContextMenuArea.kt:46)");
                }
                if (z2) {
                    composerStartRestartGroup.startReplaceGroup(-1095188022);
                    if ((458752 & i3) == 131072) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if ((i3 & 14) == 4) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    z7 = z5 | z6;
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z7) {
                        objRememberedValue = new ry1(0, ll3Var4, contextMenuState);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ry1(0, ll3Var4, contextMenuState);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    modifierContextMenuGestures = ContextMenuGesturesKt.contextMenuGestures(modifier2, (nl3<? super Offset, j59>) objRememberedValue);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1095031162);
                    composerStartRestartGroup.endReplaceGroup();
                    modifierContextMenuGestures = modifier2;
                }
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), true);
                int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierContextMenuGestures);
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
                Composer composerM5355constructorimpl4 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion4, composerM5355constructorimpl4, measurePolicyMaybeCachedBoxMeasurePolicy4, composerM5355constructorimpl4, currentCompositionLocalMap4);
                Updater.m5363setimpl(composerM5355constructorimpl4, modifierMaterializeModifier4, (bm3<? super T, ? super Modifier, j59>) hm.b(companion4, composerM5355constructorimpl4, Integer.valueOf(iHashCode4), composerM5355constructorimpl4));
                BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                bm3Var.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 18) & 14));
                ContextMenu(contextMenuState, ll3Var3, null, nl3Var, composerStartRestartGroup, (i3 & 126) | ((i3 << 3) & 7168), 4);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
            }
            z4 = z2;
            ll3Var5 = ll3Var4;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier6 = modifier2;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sy1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ContextMenuAreaKt.ContextMenuArea$lambda$3(contextMenuState, ll3Var, nl3Var, modifier6, z4, ll3Var5, bm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        modifier2 = modifier;
        i4 = i2 & 16;
        if (i4 != 0) {
            if ((i & 24576) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i5 = 16384;
                } else {
                    i5 = 8192;
                }
                i3 |= i5;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    ll3Var4 = ll3Var2;
                    if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i3 |= i8;
                }
                if ((i3 & 599187) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    if (i9 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if (i6 != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = new qy1(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        ll3Var4 = (ll3) objRememberedValue2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1195420540, i3, -1, "androidx.compose.foundation.contextmenu.ContextMenuArea (ContextMenuArea.kt:46)");
                    }
                    if (z2) {
                        composerStartRestartGroup.startReplaceGroup(-1095188022);
                        if ((458752 & i3) == 131072) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if ((i3 & 14) == 4) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        z7 = z5 | z6;
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z7) {
                            objRememberedValue = new ry1(0, ll3Var4, contextMenuState);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new ry1(0, ll3Var4, contextMenuState);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        modifierContextMenuGestures = ContextMenuGesturesKt.contextMenuGestures(modifier2, (nl3<? super Offset, j59>) objRememberedValue);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1095031162);
                        composerStartRestartGroup.endReplaceGroup();
                        modifierContextMenuGestures = modifier2;
                    }
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy5 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), true);
                    int iHashCode5 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierContextMenuGestures);
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
                    Composer composerM5355constructorimpl5 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion5, composerM5355constructorimpl5, measurePolicyMaybeCachedBoxMeasurePolicy5, composerM5355constructorimpl5, currentCompositionLocalMap5);
                    Updater.m5363setimpl(composerM5355constructorimpl5, modifierMaterializeModifier5, (bm3<? super T, ? super Modifier, j59>) hm.b(companion5, composerM5355constructorimpl5, Integer.valueOf(iHashCode5), composerM5355constructorimpl5));
                    BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
                    bm3Var.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 18) & 14));
                    ContextMenu(contextMenuState, ll3Var3, null, nl3Var, composerStartRestartGroup, (i3 & 126) | ((i3 << 3) & 7168), 4);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                }
                z4 = z2;
                ll3Var5 = ll3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final Modifier modifier7 = modifier2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sy1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ContextMenuAreaKt.ContextMenuArea$lambda$3(contextMenuState, ll3Var, nl3Var, modifier7, z4, ll3Var5, bm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            ll3Var4 = ll3Var2;
            if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i3 |= i8;
            }
            if ((i3 & 599187) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i9 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z2 = true;
                }
                if (i6 != 0) {
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                        objRememberedValue2 = new qy1(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    ll3Var4 = (ll3) objRememberedValue2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1195420540, i3, -1, "androidx.compose.foundation.contextmenu.ContextMenuArea (ContextMenuArea.kt:46)");
                }
                if (z2) {
                    composerStartRestartGroup.startReplaceGroup(-1095188022);
                    if ((458752 & i3) == 131072) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if ((i3 & 14) == 4) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    z7 = z5 | z6;
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z7) {
                        objRememberedValue = new ry1(0, ll3Var4, contextMenuState);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ry1(0, ll3Var4, contextMenuState);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    modifierContextMenuGestures = ContextMenuGesturesKt.contextMenuGestures(modifier2, (nl3<? super Offset, j59>) objRememberedValue);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1095031162);
                    composerStartRestartGroup.endReplaceGroup();
                    modifierContextMenuGestures = modifier2;
                }
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy6 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), true);
                int iHashCode6 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap6 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierContextMenuGestures);
                ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                constructor = companion6.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl6 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion6, composerM5355constructorimpl6, measurePolicyMaybeCachedBoxMeasurePolicy6, composerM5355constructorimpl6, currentCompositionLocalMap6);
                Updater.m5363setimpl(composerM5355constructorimpl6, modifierMaterializeModifier6, (bm3<? super T, ? super Modifier, j59>) hm.b(companion6, composerM5355constructorimpl6, Integer.valueOf(iHashCode6), composerM5355constructorimpl6));
                BoxScopeInstance boxScopeInstance6 = BoxScopeInstance.INSTANCE;
                bm3Var.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 18) & 14));
                ContextMenu(contextMenuState, ll3Var3, null, nl3Var, composerStartRestartGroup, (i3 & 126) | ((i3 << 3) & 7168), 4);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
            }
            z4 = z2;
            ll3Var5 = ll3Var4;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier8 = modifier2;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sy1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ContextMenuAreaKt.ContextMenuArea$lambda$3(contextMenuState, ll3Var, nl3Var, modifier8, z4, ll3Var5, bm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        z2 = z;
        i6 = i2 & 32;
        if (i6 != 0) {
            if ((196608 & i) == 0) {
                ll3Var4 = ll3Var2;
                if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i3 |= i8;
            }
            if ((i3 & 599187) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i9 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z2 = true;
                }
                if (i6 != 0) {
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                        objRememberedValue2 = new qy1(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    ll3Var4 = (ll3) objRememberedValue2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1195420540, i3, -1, "androidx.compose.foundation.contextmenu.ContextMenuArea (ContextMenuArea.kt:46)");
                }
                if (z2) {
                    composerStartRestartGroup.startReplaceGroup(-1095188022);
                    if ((458752 & i3) == 131072) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if ((i3 & 14) == 4) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    z7 = z5 | z6;
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z7) {
                        objRememberedValue = new ry1(0, ll3Var4, contextMenuState);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ry1(0, ll3Var4, contextMenuState);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    modifierContextMenuGestures = ContextMenuGesturesKt.contextMenuGestures(modifier2, (nl3<? super Offset, j59>) objRememberedValue);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1095031162);
                    composerStartRestartGroup.endReplaceGroup();
                    modifierContextMenuGestures = modifier2;
                }
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy7 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), true);
                int iHashCode7 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap7 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier7 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierContextMenuGestures);
                ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
                constructor = companion7.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl7 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion7, composerM5355constructorimpl7, measurePolicyMaybeCachedBoxMeasurePolicy7, composerM5355constructorimpl7, currentCompositionLocalMap7);
                Updater.m5363setimpl(composerM5355constructorimpl7, modifierMaterializeModifier7, (bm3<? super T, ? super Modifier, j59>) hm.b(companion7, composerM5355constructorimpl7, Integer.valueOf(iHashCode7), composerM5355constructorimpl7));
                BoxScopeInstance boxScopeInstance7 = BoxScopeInstance.INSTANCE;
                bm3Var.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 18) & 14));
                ContextMenu(contextMenuState, ll3Var3, null, nl3Var, composerStartRestartGroup, (i3 & 126) | ((i3 << 3) & 7168), 4);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
            }
            z4 = z2;
            ll3Var5 = ll3Var4;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier9 = modifier2;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sy1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ContextMenuAreaKt.ContextMenuArea$lambda$3(contextMenuState, ll3Var, nl3Var, modifier9, z4, ll3Var5, bm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        ll3Var4 = ll3Var2;
        if ((i & 1572864) == 0) {
            if (composerStartRestartGroup.changedInstance(bm3Var)) {
                i8 = 1048576;
            } else {
                i8 = 524288;
            }
            i3 |= i8;
        }
        if ((i3 & 599187) != 599186) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            if (i9 != 0) {
                modifier2 = Modifier.Companion;
            }
            if (i4 != 0) {
                z2 = true;
            }
            if (i6 != 0) {
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                    objRememberedValue2 = new qy1(0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                ll3Var4 = (ll3) objRememberedValue2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1195420540, i3, -1, "androidx.compose.foundation.contextmenu.ContextMenuArea (ContextMenuArea.kt:46)");
            }
            if (z2) {
                composerStartRestartGroup.startReplaceGroup(-1095188022);
                if ((458752 & i3) == 131072) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if ((i3 & 14) == 4) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = z5 | z6;
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z7) {
                    objRememberedValue = new ry1(0, ll3Var4, contextMenuState);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ry1(0, ll3Var4, contextMenuState);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                modifierContextMenuGestures = ContextMenuGesturesKt.contextMenuGestures(modifier2, (nl3<? super Offset, j59>) objRememberedValue);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-1095031162);
                composerStartRestartGroup.endReplaceGroup();
                modifierContextMenuGestures = modifier2;
            }
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy8 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), true);
            int iHashCode8 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap8 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier8 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierContextMenuGestures);
            ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
            constructor = companion8.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl8 = Updater.m5355constructorimpl(composerStartRestartGroup);
            jg.d(companion8, composerM5355constructorimpl8, measurePolicyMaybeCachedBoxMeasurePolicy8, composerM5355constructorimpl8, currentCompositionLocalMap8);
            Updater.m5363setimpl(composerM5355constructorimpl8, modifierMaterializeModifier8, (bm3<? super T, ? super Modifier, j59>) hm.b(companion8, composerM5355constructorimpl8, Integer.valueOf(iHashCode8), composerM5355constructorimpl8));
            BoxScopeInstance boxScopeInstance8 = BoxScopeInstance.INSTANCE;
            bm3Var.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 18) & 14));
            ContextMenu(contextMenuState, ll3Var3, null, nl3Var, composerStartRestartGroup, (i3 & 126) | ((i3 << 3) & 7168), 4);
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        z4 = z2;
        ll3Var5 = ll3Var4;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier10 = modifier2;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sy1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ContextMenuAreaKt.ContextMenuArea$lambda$3(contextMenuState, ll3Var, nl3Var, modifier10, z4, ll3Var5, bm3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ContextMenuArea$lambda$1$0(ll3 ll3Var, ContextMenuState contextMenuState, Offset offset) {
        ll3Var.invoke();
        contextMenuState.setStatus(new ContextMenuState.Status.Open(offset.m5997unboximpl(), null));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ContextMenuArea$lambda$3(ContextMenuState contextMenuState, ll3 ll3Var, nl3 nl3Var, Modifier modifier, boolean z, ll3 ll3Var2, bm3 bm3Var, int i, int i2, Composer composer, int i3) {
        ContextMenuArea(contextMenuState, ll3Var, nl3Var, modifier, z, ll3Var2, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }
}
