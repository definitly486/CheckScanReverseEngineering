package androidx.compose.material3;

import androidx.compose.foundation.gestures.AnchoredDraggableDefaults;
import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.foundation.gestures.DraggableAnchorsConfig;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.material3.SwipeToDismissBoxKt;
import androidx.compose.material3.internal.DraggableAnchorsKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.aa4;
import defpackage.b36;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.eg1;
import defpackage.gg1;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.ul2;
import defpackage.wr2;

/* JADX INFO: loaded from: classes2.dex */
public final class SwipeToDismissBoxKt {
    private static final float DismissVelocityThreshold = Dp.m9042constructorimpl(125.0f);

    /* JADX WARN: Code duplicated, block: B:100:0x0111  */
    /* JADX WARN: Code duplicated, block: B:102:0x0115  */
    /* JADX WARN: Code duplicated, block: B:103:0x0117  */
    /* JADX WARN: Code duplicated, block: B:105:0x011a  */
    /* JADX WARN: Code duplicated, block: B:107:0x0126  */
    /* JADX WARN: Code duplicated, block: B:109:0x0131  */
    /* JADX WARN: Code duplicated, block: B:112:0x0138  */
    /* JADX WARN: Code duplicated, block: B:115:0x0149  */
    /* JADX WARN: Code duplicated, block: B:118:0x0154  */
    /* JADX WARN: Code duplicated, block: B:121:0x015d  */
    /* JADX WARN: Code duplicated, block: B:122:0x0183  */
    /* JADX WARN: Code duplicated, block: B:125:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:128:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:129:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:132:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:135:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:139:0x0235  */
    /* JADX WARN: Code duplicated, block: B:142:0x0241  */
    /* JADX WARN: Code duplicated, block: B:143:0x0245  */
    /* JADX WARN: Code duplicated, block: B:146:0x0256  */
    /* JADX WARN: Code duplicated, block: B:149:0x0267  */
    /* JADX WARN: Code duplicated, block: B:153:0x028f  */
    /* JADX WARN: Code duplicated, block: B:154:0x0291  */
    /* JADX WARN: Code duplicated, block: B:157:0x029a  */
    /* JADX WARN: Code duplicated, block: B:158:0x029c  */
    /* JADX WARN: Code duplicated, block: B:161:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:163:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:166:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:169:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:170:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:173:0x0307  */
    /* JADX WARN: Code duplicated, block: B:175:0x0315  */
    /* JADX WARN: Code duplicated, block: B:178:0x0341  */
    /* JADX WARN: Code duplicated, block: B:179:0x0343  */
    /* JADX WARN: Code duplicated, block: B:182:0x034b  */
    /* JADX WARN: Code duplicated, block: B:186:0x0357  */
    /* JADX WARN: Code duplicated, block: B:189:0x0371  */
    /* JADX WARN: Code duplicated, block: B:191:0x037c  */
    /* JADX WARN: Code duplicated, block: B:194:0x038a  */
    /* JADX WARN: Code duplicated, block: B:196:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0060  */
    /* JADX WARN: Code duplicated, block: B:38:0x0065  */
    /* JADX WARN: Code duplicated, block: B:40:0x0069  */
    /* JADX WARN: Code duplicated, block: B:42:0x0071  */
    /* JADX WARN: Code duplicated, block: B:43:0x0074  */
    /* JADX WARN: Code duplicated, block: B:47:0x007b  */
    /* JADX WARN: Code duplicated, block: B:49:0x0080  */
    /* JADX WARN: Code duplicated, block: B:51:0x0084  */
    /* JADX WARN: Code duplicated, block: B:53:0x008c  */
    /* JADX WARN: Code duplicated, block: B:54:0x008f  */
    /* JADX WARN: Code duplicated, block: B:58:0x0099  */
    /* JADX WARN: Code duplicated, block: B:59:0x009e  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:63:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:74:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:81:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:92:0x00ff A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:93:0x0101  */
    /* JADX WARN: Code duplicated, block: B:94:0x0106  */
    /* JADX WARN: Code duplicated, block: B:96:0x010a  */
    /* JADX WARN: Code duplicated, block: B:97:0x010c  */
    /* JADX WARN: Code duplicated, block: B:99:0x010f  */
    public static final void SwipeToDismissBox(final SwipeToDismissBoxState swipeToDismissBoxState, final dm3<? super RowScope, ? super Composer, ? super Integer, j59> dm3Var, Modifier modifier, boolean z, boolean z2, boolean z3, nl3<? super SwipeToDismissBoxValue, j59> nl3Var, final dm3<? super RowScope, ? super Composer, ? super Integer, j59> dm3Var2, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        int i4;
        boolean z4;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z5;
        int i9;
        int i10;
        final nl3<? super SwipeToDismissBoxValue, j59> nl3Var2;
        int i11;
        int i12;
        int i13;
        boolean z6;
        final Modifier modifier3;
        final boolean z7;
        final boolean z8;
        final boolean z9;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        final boolean z10;
        final boolean z11;
        boolean z12;
        nl3<? super SwipeToDismissBoxValue, j59> nl3Var3;
        boolean z13;
        boolean z14;
        TargetedFlingBehavior targetedFlingBehavior;
        Alignment.Companion companion;
        int currentCompositeKeyHash;
        ll3<ComposeUiNode> constructor;
        Composer composerM5355constructorimpl;
        Alignment.Companion companion2;
        int currentCompositeKeyHash2;
        ll3<ComposeUiNode> constructor2;
        Composer composerM5355constructorimpl2;
        nl3<? super SwipeToDismissBoxValue, j59> nl3Var4;
        boolean z15;
        boolean z16;
        boolean zChangedInstance;
        Object objRememberedValue;
        int currentCompositeKeyHash3;
        ll3<ComposeUiNode> constructor3;
        Composer composerM5355constructorimpl3;
        bm3 bm3VarB;
        boolean z17;
        boolean z18;
        Object objRememberedValue2;
        nl3<? super SwipeToDismissBoxValue, j59> nl3Var5;
        Object objRememberedValue3;
        Composer composerStartRestartGroup = composer.startRestartGroup(-741495334);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(swipeToDismissBoxState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(dm3Var) ? 32 : 16;
        }
        int i14 = i2 & 4;
        if (i14 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 256 : 128;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    z4 = z;
                    if (composerStartRestartGroup.changed(z4)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 16;
                if (i6 != 0) {
                    if ((i & 24576) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i7 = 16384;
                        } else {
                            i7 = 8192;
                        }
                        i3 |= i7;
                    }
                    i8 = i2 & 32;
                    if (i8 != 0) {
                        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        z5 = z3;
                    } else {
                        z5 = z3;
                        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                            if (composerStartRestartGroup.changed(z5)) {
                                i9 = 131072;
                            } else {
                                i9 = 65536;
                            }
                            i3 |= i9;
                        }
                    }
                    i10 = i2 & 64;
                    if (i10 != 0) {
                        i3 |= 1572864;
                        nl3Var2 = nl3Var;
                    } else {
                        nl3Var2 = nl3Var;
                        if ((i & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                                i11 = 1048576;
                            } else {
                                i11 = 524288;
                            }
                            i3 |= i11;
                        }
                    }
                    if ((i2 & 128) != 0) {
                        i3 |= 12582912;
                    } else if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                            i12 = 8388608;
                        } else {
                            i12 = 4194304;
                        }
                        i3 |= i12;
                    }
                    i13 = 1;
                    if ((4793491 & i3) != 4793490) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                        if (i14 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z10 = true;
                        } else {
                            z10 = z4;
                        }
                        if (i6 != 0) {
                            z11 = true;
                        } else {
                            z11 = z2;
                        }
                        if (i8 != 0) {
                            z12 = true;
                        } else {
                            z12 = z5;
                        }
                        if (i10 != 0) {
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                                objRememberedValue3 = new wr2(i13);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            nl3Var3 = (nl3) objRememberedValue3;
                        } else {
                            nl3Var3 = nl3Var2;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-741495334, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:313)");
                        }
                        AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material3 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                        Orientation orientation = Orientation.Horizontal;
                        if (z12 || swipeToDismissBoxState.getSettledValue() != SwipeToDismissBoxValue.Settled) {
                            z13 = false;
                        } else {
                            z13 = true;
                        }
                        if (swipeToDismissBoxState.getUseFlingBehavior$material3()) {
                            composerStartRestartGroup.startReplaceGroup(387581105);
                            z14 = true;
                            TargetedFlingBehavior targetedFlingBehaviorFlingBehavior = AnchoredDraggableDefaults.INSTANCE.flingBehavior(swipeToDismissBoxState.getAnchoredDraggableState$material3(), swipeToDismissBoxState.getPositionalThreshold$material3(), null, composerStartRestartGroup, AnchoredDraggableDefaults.$stable << 9, 4);
                            composerStartRestartGroup.endReplaceGroup();
                            targetedFlingBehavior = targetedFlingBehaviorFlingBehavior;
                        } else {
                            z14 = true;
                            composerStartRestartGroup.startReplaceGroup(-869685853);
                            composerStartRestartGroup.endReplaceGroup();
                            targetedFlingBehavior = null;
                        }
                        Modifier modifierAnchoredDraggable$default = AnchoredDraggableKt.anchoredDraggable$default(modifier4, anchoredDraggableState$material3, orientation, z13, null, null, targetedFlingBehavior, 24, null);
                        companion = Alignment.Companion;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion.getTopStart(), z14);
                        boolean z19 = z12;
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierAnchoredDraggable$default);
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
                        bm3 bm3VarB2 = cc.b(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                        if (composerM5355constructorimpl.getInserting()) {
                            companion2 = companion;
                        } else {
                            companion2 = companion;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion3.getSetModifier());
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                            Modifier.Companion companion4 = Modifier.Companion;
                            Modifier modifierMatchParentSize = boxScopeInstance.matchParentSize(companion4);
                            int i15 = (i3 << 6) & 7168;
                            Arrangement arrangement = Arrangement.INSTANCE;
                            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                            currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                            CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierMatchParentSize);
                            constructor2 = companion3.getConstructor();
                            if (composerStartRestartGroup.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startReusableNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(constructor2);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                            bm3 bm3VarB3 = cc.b(companion3, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                            if (composerM5355constructorimpl2.getInserting()) {
                                nl3Var4 = nl3Var3;
                            } else {
                                nl3Var4 = nl3Var3;
                                if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion3.getSetModifier());
                                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                dm3Var.invoke(rowScopeInstance, composerStartRestartGroup, Integer.valueOf(((i15 >> 6) & 112) | 6));
                                composerStartRestartGroup.endNode();
                                AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material4 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                                if ((i3 & 7168) == 2048) {
                                    z15 = true;
                                } else {
                                    z15 = false;
                                }
                                if ((57344 & i3) == 16384) {
                                    z16 = true;
                                } else {
                                    z16 = false;
                                }
                                zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new bm3() { // from class: sg8
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                Modifier modifierDraggableAnchorsV2 = DraggableAnchorsKt.draggableAnchorsV2(companion4, anchoredDraggableState$material4, orientation, (bm3) objRememberedValue);
                                int i16 = (i3 >> 12) & 7168;
                                MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(arrangement.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                                currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                                CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV2);
                                constructor3 = companion3.getConstructor();
                                if (composerStartRestartGroup.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composerStartRestartGroup.startReusableNode();
                                if (composerStartRestartGroup.getInserting()) {
                                    composerStartRestartGroup.createNode(constructor3);
                                } else {
                                    composerStartRestartGroup.useNode();
                                }
                                composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                                bm3VarB = cc.b(companion3, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                    dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion3.getSetModifier());
                                dm3Var2.invoke(rowScopeInstance, composerStartRestartGroup, Integer.valueOf(((i16 >> 6) & 112) | 6));
                                composerStartRestartGroup.endNode();
                                composerStartRestartGroup.endNode();
                                SwipeToDismissBoxValue settledValue = swipeToDismissBoxState.getSettledValue();
                                boolean zChangedInstance2 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                                if ((3670016 & i3) == 1048576) {
                                    z17 = true;
                                } else {
                                    z17 = false;
                                }
                                z18 = zChangedInstance2 | z17;
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (!z18 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    nl3Var5 = nl3Var4;
                                    objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    nl3Var5 = nl3Var4;
                                }
                                EffectsKt.LaunchedEffect(settledValue, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                z9 = z11;
                                nl3Var2 = nl3Var5;
                                modifier3 = modifier4;
                                z8 = z19;
                                z7 = z10;
                            }
                            dc.b(bm3VarB3, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion3.getSetModifier());
                            RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                            dm3Var.invoke(rowScopeInstance2, composerStartRestartGroup, Integer.valueOf(((i15 >> 6) & 112) | 6));
                            composerStartRestartGroup.endNode();
                            AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material5 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                            if ((i3 & 7168) == 2048) {
                                z15 = true;
                            } else {
                                z15 = false;
                            }
                            if ((57344 & i3) == 16384) {
                                z16 = true;
                            } else {
                                z16 = false;
                            }
                            zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (zChangedInstance) {
                                objRememberedValue = new bm3() { // from class: sg8
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new bm3() { // from class: sg8
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            Modifier modifierDraggableAnchorsV3 = DraggableAnchorsKt.draggableAnchorsV2(companion4, anchoredDraggableState$material5, orientation, (bm3) objRememberedValue);
                            int i17 = (i3 >> 12) & 7168;
                            MeasurePolicy measurePolicyRowMeasurePolicy3 = RowKt.rowMeasurePolicy(arrangement.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                            currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                            CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV3);
                            constructor3 = companion3.getConstructor();
                            if (composerStartRestartGroup.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startReusableNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(constructor3);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                            bm3VarB = cc.b(companion3, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy3, composerM5355constructorimpl3, currentCompositionLocalMap4);
                            if (composerM5355constructorimpl3.getInserting()) {
                                dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                            } else {
                                dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier4, companion3.getSetModifier());
                            dm3Var2.invoke(rowScopeInstance2, composerStartRestartGroup, Integer.valueOf(((i17 >> 6) & 112) | 6));
                            composerStartRestartGroup.endNode();
                            composerStartRestartGroup.endNode();
                            SwipeToDismissBoxValue settledValue2 = swipeToDismissBoxState.getSettledValue();
                            boolean zChangedInstance3 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                            if ((3670016 & i3) == 1048576) {
                                z17 = true;
                            } else {
                                z17 = false;
                            }
                            z18 = zChangedInstance3 | z17;
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z18) {
                                nl3Var5 = nl3Var4;
                                objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                nl3Var5 = nl3Var4;
                                objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            EffectsKt.LaunchedEffect(settledValue2, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            z9 = z11;
                            nl3Var2 = nl3Var5;
                            modifier3 = modifier4;
                            z8 = z19;
                            z7 = z10;
                        }
                        dc.b(bm3VarB2, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion3.getSetModifier());
                        BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                        Modifier.Companion companion5 = Modifier.Companion;
                        Modifier modifierMatchParentSize2 = boxScopeInstance2.matchParentSize(companion5);
                        int i18 = (i3 << 6) & 7168;
                        Arrangement arrangement2 = Arrangement.INSTANCE;
                        MeasurePolicy measurePolicyRowMeasurePolicy4 = RowKt.rowMeasurePolicy(arrangement2.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                        currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierMatchParentSize2);
                        constructor2 = companion3.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor2);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB4 = cc.b(companion3, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy4, composerM5355constructorimpl2, currentCompositionLocalMap5);
                        if (composerM5355constructorimpl2.getInserting()) {
                            nl3Var4 = nl3Var3;
                            if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier5, companion3.getSetModifier());
                            RowScopeInstance rowScopeInstance3 = RowScopeInstance.INSTANCE;
                            dm3Var.invoke(rowScopeInstance3, composerStartRestartGroup, Integer.valueOf(((i18 >> 6) & 112) | 6));
                            composerStartRestartGroup.endNode();
                            AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material6 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                            if ((i3 & 7168) == 2048) {
                                z15 = true;
                            } else {
                                z15 = false;
                            }
                            if ((57344 & i3) == 16384) {
                                z16 = true;
                            } else {
                                z16 = false;
                            }
                            zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (zChangedInstance) {
                                objRememberedValue = new bm3() { // from class: sg8
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new bm3() { // from class: sg8
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            Modifier modifierDraggableAnchorsV4 = DraggableAnchorsKt.draggableAnchorsV2(companion5, anchoredDraggableState$material6, orientation, (bm3) objRememberedValue);
                            int i19 = (i3 >> 12) & 7168;
                            MeasurePolicy measurePolicyRowMeasurePolicy5 = RowKt.rowMeasurePolicy(arrangement2.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                            currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                            CompositionLocalMap currentCompositionLocalMap6 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV4);
                            constructor3 = companion3.getConstructor();
                            if (composerStartRestartGroup.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startReusableNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(constructor3);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                            bm3VarB = cc.b(companion3, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy5, composerM5355constructorimpl3, currentCompositionLocalMap6);
                            if (composerM5355constructorimpl3.getInserting()) {
                                dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                            } else {
                                dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier6, companion3.getSetModifier());
                            dm3Var2.invoke(rowScopeInstance3, composerStartRestartGroup, Integer.valueOf(((i19 >> 6) & 112) | 6));
                            composerStartRestartGroup.endNode();
                            composerStartRestartGroup.endNode();
                            SwipeToDismissBoxValue settledValue3 = swipeToDismissBoxState.getSettledValue();
                            boolean zChangedInstance4 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                            if ((3670016 & i3) == 1048576) {
                                z17 = true;
                            } else {
                                z17 = false;
                            }
                            z18 = zChangedInstance4 | z17;
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z18) {
                                nl3Var5 = nl3Var4;
                                objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                nl3Var5 = nl3Var4;
                                objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            EffectsKt.LaunchedEffect(settledValue3, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            z9 = z11;
                            nl3Var2 = nl3Var5;
                            modifier3 = modifier4;
                            z8 = z19;
                            z7 = z10;
                        } else {
                            nl3Var4 = nl3Var3;
                        }
                        dc.b(bm3VarB4, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier5, companion3.getSetModifier());
                        RowScopeInstance rowScopeInstance4 = RowScopeInstance.INSTANCE;
                        dm3Var.invoke(rowScopeInstance4, composerStartRestartGroup, Integer.valueOf(((i18 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material7 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                        if ((i3 & 7168) == 2048) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        if ((57344 & i3) == 16384) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        Modifier modifierDraggableAnchorsV5 = DraggableAnchorsKt.draggableAnchorsV2(companion5, anchoredDraggableState$material7, orientation, (bm3) objRememberedValue);
                        int i110 = (i3 >> 12) & 7168;
                        MeasurePolicy measurePolicyRowMeasurePolicy6 = RowKt.rowMeasurePolicy(arrangement2.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                        currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap7 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier7 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV5);
                        constructor3 = companion3.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor3);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3VarB = cc.b(companion3, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy6, composerM5355constructorimpl3, currentCompositionLocalMap7);
                        if (composerM5355constructorimpl3.getInserting()) {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        } else {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier7, companion3.getSetModifier());
                        dm3Var2.invoke(rowScopeInstance4, composerStartRestartGroup, Integer.valueOf(((i110 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endNode();
                        SwipeToDismissBoxValue settledValue4 = swipeToDismissBoxState.getSettledValue();
                        boolean zChangedInstance5 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        if ((3670016 & i3) == 1048576) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        z18 = zChangedInstance5 | z17;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z18) {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        EffectsKt.LaunchedEffect(settledValue4, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z9 = z11;
                        nl3Var2 = nl3Var5;
                        modifier3 = modifier4;
                        z8 = z19;
                        z7 = z10;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        z7 = z4;
                        z8 = z5;
                        z9 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$13(swipeToDismissBoxState, dm3Var, modifier3, z7, z9, z8, nl3Var2, dm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                i8 = i2 & 32;
                if (i8 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    z5 = z3;
                } else {
                    z5 = z3;
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(z5)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                }
                i10 = i2 & 64;
                if (i10 != 0) {
                    i3 |= 1572864;
                    nl3Var2 = nl3Var;
                } else {
                    nl3Var2 = nl3Var;
                    if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i3 |= i11;
                    }
                }
                if ((i2 & 128) != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                        i12 = 8388608;
                    } else {
                        i12 = 4194304;
                    }
                    i3 |= i12;
                }
                i13 = 1;
                if ((4793491 & i3) != 4793490) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                    if (i14 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z10 = true;
                    } else {
                        z10 = z4;
                    }
                    if (i6 != 0) {
                        z11 = true;
                    } else {
                        z11 = z2;
                    }
                    if (i8 != 0) {
                        z12 = true;
                    } else {
                        z12 = z5;
                    }
                    if (i10 != 0) {
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                            objRememberedValue3 = new wr2(i13);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        nl3Var3 = (nl3) objRememberedValue3;
                    } else {
                        nl3Var3 = nl3Var2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-741495334, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:313)");
                    }
                    AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material8 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                    Orientation orientation2 = Orientation.Horizontal;
                    if (z12) {
                        z13 = false;
                    } else {
                        z13 = false;
                    }
                    if (swipeToDismissBoxState.getUseFlingBehavior$material3()) {
                        composerStartRestartGroup.startReplaceGroup(387581105);
                        z14 = true;
                        TargetedFlingBehavior targetedFlingBehaviorFlingBehavior2 = AnchoredDraggableDefaults.INSTANCE.flingBehavior(swipeToDismissBoxState.getAnchoredDraggableState$material3(), swipeToDismissBoxState.getPositionalThreshold$material3(), null, composerStartRestartGroup, AnchoredDraggableDefaults.$stable << 9, 4);
                        composerStartRestartGroup.endReplaceGroup();
                        targetedFlingBehavior = targetedFlingBehaviorFlingBehavior2;
                    } else {
                        z14 = true;
                        composerStartRestartGroup.startReplaceGroup(-869685853);
                        composerStartRestartGroup.endReplaceGroup();
                        targetedFlingBehavior = null;
                    }
                    Modifier modifierAnchoredDraggable$default2 = AnchoredDraggableKt.anchoredDraggable$default(modifier4, anchoredDraggableState$material8, orientation2, z13, null, null, targetedFlingBehavior, 24, null);
                    companion = Alignment.Companion;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion.getTopStart(), z14);
                    boolean z110 = z12;
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap8 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier8 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierAnchoredDraggable$default2);
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
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB5 = cc.b(companion6, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl, currentCompositionLocalMap8);
                    if (composerM5355constructorimpl.getInserting()) {
                        companion2 = companion;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier8, companion6.getSetModifier());
                        BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                        Modifier.Companion companion7 = Modifier.Companion;
                        Modifier modifierMatchParentSize3 = boxScopeInstance3.matchParentSize(companion7);
                        int i111 = (i3 << 6) & 7168;
                        Arrangement arrangement3 = Arrangement.INSTANCE;
                        MeasurePolicy measurePolicyRowMeasurePolicy7 = RowKt.rowMeasurePolicy(arrangement3.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                        currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap9 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier9 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierMatchParentSize3);
                        constructor2 = companion6.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor2);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB6 = cc.b(companion6, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy7, composerM5355constructorimpl2, currentCompositionLocalMap9);
                        if (composerM5355constructorimpl2.getInserting()) {
                            nl3Var4 = nl3Var3;
                            if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier9, companion6.getSetModifier());
                            RowScopeInstance rowScopeInstance5 = RowScopeInstance.INSTANCE;
                            dm3Var.invoke(rowScopeInstance5, composerStartRestartGroup, Integer.valueOf(((i111 >> 6) & 112) | 6));
                            composerStartRestartGroup.endNode();
                            AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material9 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                            if ((i3 & 7168) == 2048) {
                                z15 = true;
                            } else {
                                z15 = false;
                            }
                            if ((57344 & i3) == 16384) {
                                z16 = true;
                            } else {
                                z16 = false;
                            }
                            zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (zChangedInstance) {
                                objRememberedValue = new bm3() { // from class: sg8
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new bm3() { // from class: sg8
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            Modifier modifierDraggableAnchorsV6 = DraggableAnchorsKt.draggableAnchorsV2(companion7, anchoredDraggableState$material9, orientation2, (bm3) objRememberedValue);
                            int i112 = (i3 >> 12) & 7168;
                            MeasurePolicy measurePolicyRowMeasurePolicy8 = RowKt.rowMeasurePolicy(arrangement3.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                            currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                            CompositionLocalMap currentCompositionLocalMap10 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier10 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV6);
                            constructor3 = companion6.getConstructor();
                            if (composerStartRestartGroup.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startReusableNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(constructor3);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                            bm3VarB = cc.b(companion6, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy8, composerM5355constructorimpl3, currentCompositionLocalMap10);
                            if (composerM5355constructorimpl3.getInserting()) {
                                dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                            } else {
                                dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier10, companion6.getSetModifier());
                            dm3Var2.invoke(rowScopeInstance5, composerStartRestartGroup, Integer.valueOf(((i112 >> 6) & 112) | 6));
                            composerStartRestartGroup.endNode();
                            composerStartRestartGroup.endNode();
                            SwipeToDismissBoxValue settledValue5 = swipeToDismissBoxState.getSettledValue();
                            boolean zChangedInstance6 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                            if ((3670016 & i3) == 1048576) {
                                z17 = true;
                            } else {
                                z17 = false;
                            }
                            z18 = zChangedInstance6 | z17;
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z18) {
                                nl3Var5 = nl3Var4;
                                objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                nl3Var5 = nl3Var4;
                                objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            EffectsKt.LaunchedEffect(settledValue5, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            z9 = z11;
                            nl3Var2 = nl3Var5;
                            modifier3 = modifier4;
                            z8 = z110;
                            z7 = z10;
                        } else {
                            nl3Var4 = nl3Var3;
                        }
                        dc.b(bm3VarB6, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier9, companion6.getSetModifier());
                        RowScopeInstance rowScopeInstance6 = RowScopeInstance.INSTANCE;
                        dm3Var.invoke(rowScopeInstance6, composerStartRestartGroup, Integer.valueOf(((i111 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material10 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                        if ((i3 & 7168) == 2048) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        if ((57344 & i3) == 16384) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        Modifier modifierDraggableAnchorsV7 = DraggableAnchorsKt.draggableAnchorsV2(companion7, anchoredDraggableState$material10, orientation2, (bm3) objRememberedValue);
                        int i113 = (i3 >> 12) & 7168;
                        MeasurePolicy measurePolicyRowMeasurePolicy9 = RowKt.rowMeasurePolicy(arrangement3.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                        currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap11 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier11 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV7);
                        constructor3 = companion6.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor3);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3VarB = cc.b(companion6, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy9, composerM5355constructorimpl3, currentCompositionLocalMap11);
                        if (composerM5355constructorimpl3.getInserting()) {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        } else {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier11, companion6.getSetModifier());
                        dm3Var2.invoke(rowScopeInstance6, composerStartRestartGroup, Integer.valueOf(((i113 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endNode();
                        SwipeToDismissBoxValue settledValue6 = swipeToDismissBoxState.getSettledValue();
                        boolean zChangedInstance7 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        if ((3670016 & i3) == 1048576) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        z18 = zChangedInstance7 | z17;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z18) {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        EffectsKt.LaunchedEffect(settledValue6, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z9 = z11;
                        nl3Var2 = nl3Var5;
                        modifier3 = modifier4;
                        z8 = z110;
                        z7 = z10;
                    } else {
                        companion2 = companion;
                    }
                    dc.b(bm3VarB5, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier8, companion6.getSetModifier());
                    BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                    Modifier.Companion companion8 = Modifier.Companion;
                    Modifier modifierMatchParentSize4 = boxScopeInstance4.matchParentSize(companion8);
                    int i114 = (i3 << 6) & 7168;
                    Arrangement arrangement4 = Arrangement.INSTANCE;
                    MeasurePolicy measurePolicyRowMeasurePolicy10 = RowKt.rowMeasurePolicy(arrangement4.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                    currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap12 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier12 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierMatchParentSize4);
                    constructor2 = companion6.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB7 = cc.b(companion6, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy10, composerM5355constructorimpl2, currentCompositionLocalMap12);
                    if (composerM5355constructorimpl2.getInserting()) {
                        nl3Var4 = nl3Var3;
                        if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier12, companion6.getSetModifier());
                        RowScopeInstance rowScopeInstance7 = RowScopeInstance.INSTANCE;
                        dm3Var.invoke(rowScopeInstance7, composerStartRestartGroup, Integer.valueOf(((i114 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material11 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                        if ((i3 & 7168) == 2048) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        if ((57344 & i3) == 16384) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        Modifier modifierDraggableAnchorsV8 = DraggableAnchorsKt.draggableAnchorsV2(companion8, anchoredDraggableState$material11, orientation2, (bm3) objRememberedValue);
                        int i115 = (i3 >> 12) & 7168;
                        MeasurePolicy measurePolicyRowMeasurePolicy11 = RowKt.rowMeasurePolicy(arrangement4.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                        currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap13 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier13 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV8);
                        constructor3 = companion6.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor3);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3VarB = cc.b(companion6, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy11, composerM5355constructorimpl3, currentCompositionLocalMap13);
                        if (composerM5355constructorimpl3.getInserting()) {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        } else {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier13, companion6.getSetModifier());
                        dm3Var2.invoke(rowScopeInstance7, composerStartRestartGroup, Integer.valueOf(((i115 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endNode();
                        SwipeToDismissBoxValue settledValue7 = swipeToDismissBoxState.getSettledValue();
                        boolean zChangedInstance8 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        if ((3670016 & i3) == 1048576) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        z18 = zChangedInstance8 | z17;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z18) {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        EffectsKt.LaunchedEffect(settledValue7, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z9 = z11;
                        nl3Var2 = nl3Var5;
                        modifier3 = modifier4;
                        z8 = z110;
                        z7 = z10;
                    } else {
                        nl3Var4 = nl3Var3;
                    }
                    dc.b(bm3VarB7, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier12, companion6.getSetModifier());
                    RowScopeInstance rowScopeInstance8 = RowScopeInstance.INSTANCE;
                    dm3Var.invoke(rowScopeInstance8, composerStartRestartGroup, Integer.valueOf(((i114 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material12 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                    if ((i3 & 7168) == 2048) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    if ((57344 & i3) == 16384) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierDraggableAnchorsV9 = DraggableAnchorsKt.draggableAnchorsV2(companion8, anchoredDraggableState$material12, orientation2, (bm3) objRememberedValue);
                    int i116 = (i3 >> 12) & 7168;
                    MeasurePolicy measurePolicyRowMeasurePolicy12 = RowKt.rowMeasurePolicy(arrangement4.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                    currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap14 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier14 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV9);
                    constructor3 = companion6.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor3);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion6, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy12, composerM5355constructorimpl3, currentCompositionLocalMap14);
                    if (composerM5355constructorimpl3.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier14, companion6.getSetModifier());
                    dm3Var2.invoke(rowScopeInstance8, composerStartRestartGroup, Integer.valueOf(((i116 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endNode();
                    SwipeToDismissBoxValue settledValue8 = swipeToDismissBoxState.getSettledValue();
                    boolean zChangedInstance9 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    if ((3670016 & i3) == 1048576) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    z18 = zChangedInstance9 | z17;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z18) {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.LaunchedEffect(settledValue8, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z9 = z11;
                    nl3Var2 = nl3Var5;
                    modifier3 = modifier4;
                    z8 = z110;
                    z7 = z10;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z7 = z4;
                    z8 = z5;
                    z9 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$13(swipeToDismissBoxState, dm3Var, modifier3, z7, z9, z8, nl3Var2, dm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z4 = z;
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 32;
                if (i8 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    z5 = z3;
                } else {
                    z5 = z3;
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(z5)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                }
                i10 = i2 & 64;
                if (i10 != 0) {
                    i3 |= 1572864;
                    nl3Var2 = nl3Var;
                } else {
                    nl3Var2 = nl3Var;
                    if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i3 |= i11;
                    }
                }
                if ((i2 & 128) != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                        i12 = 8388608;
                    } else {
                        i12 = 4194304;
                    }
                    i3 |= i12;
                }
                i13 = 1;
                if ((4793491 & i3) != 4793490) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                    if (i14 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z10 = true;
                    } else {
                        z10 = z4;
                    }
                    if (i6 != 0) {
                        z11 = true;
                    } else {
                        z11 = z2;
                    }
                    if (i8 != 0) {
                        z12 = true;
                    } else {
                        z12 = z5;
                    }
                    if (i10 != 0) {
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                            objRememberedValue3 = new wr2(i13);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        nl3Var3 = (nl3) objRememberedValue3;
                    } else {
                        nl3Var3 = nl3Var2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-741495334, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:313)");
                    }
                    AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material13 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                    Orientation orientation3 = Orientation.Horizontal;
                    if (z12) {
                        z13 = false;
                    } else {
                        z13 = false;
                    }
                    if (swipeToDismissBoxState.getUseFlingBehavior$material3()) {
                        composerStartRestartGroup.startReplaceGroup(387581105);
                        z14 = true;
                        TargetedFlingBehavior targetedFlingBehaviorFlingBehavior3 = AnchoredDraggableDefaults.INSTANCE.flingBehavior(swipeToDismissBoxState.getAnchoredDraggableState$material3(), swipeToDismissBoxState.getPositionalThreshold$material3(), null, composerStartRestartGroup, AnchoredDraggableDefaults.$stable << 9, 4);
                        composerStartRestartGroup.endReplaceGroup();
                        targetedFlingBehavior = targetedFlingBehaviorFlingBehavior3;
                    } else {
                        z14 = true;
                        composerStartRestartGroup.startReplaceGroup(-869685853);
                        composerStartRestartGroup.endReplaceGroup();
                        targetedFlingBehavior = null;
                    }
                    Modifier modifierAnchoredDraggable$default3 = AnchoredDraggableKt.anchoredDraggable$default(modifier4, anchoredDraggableState$material13, orientation3, z13, null, null, targetedFlingBehavior, 24, null);
                    companion = Alignment.Companion;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(companion.getTopStart(), z14);
                    boolean z111 = z12;
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap15 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier15 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierAnchoredDraggable$default3);
                    ComposeUiNode.Companion companion9 = ComposeUiNode.Companion;
                    constructor = companion9.getConstructor();
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
                    bm3 bm3VarB8 = cc.b(companion9, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy3, composerM5355constructorimpl, currentCompositionLocalMap15);
                    if (composerM5355constructorimpl.getInserting()) {
                        companion2 = companion;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier15, companion9.getSetModifier());
                        BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
                        Modifier.Companion companion10 = Modifier.Companion;
                        Modifier modifierMatchParentSize5 = boxScopeInstance5.matchParentSize(companion10);
                        int i117 = (i3 << 6) & 7168;
                        Arrangement arrangement5 = Arrangement.INSTANCE;
                        MeasurePolicy measurePolicyRowMeasurePolicy13 = RowKt.rowMeasurePolicy(arrangement5.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                        currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap16 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier16 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierMatchParentSize5);
                        constructor2 = companion9.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor2);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB9 = cc.b(companion9, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy13, composerM5355constructorimpl2, currentCompositionLocalMap16);
                        if (composerM5355constructorimpl2.getInserting()) {
                            nl3Var4 = nl3Var3;
                            if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier16, companion9.getSetModifier());
                            RowScopeInstance rowScopeInstance9 = RowScopeInstance.INSTANCE;
                            dm3Var.invoke(rowScopeInstance9, composerStartRestartGroup, Integer.valueOf(((i117 >> 6) & 112) | 6));
                            composerStartRestartGroup.endNode();
                            AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material14 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                            if ((i3 & 7168) == 2048) {
                                z15 = true;
                            } else {
                                z15 = false;
                            }
                            if ((57344 & i3) == 16384) {
                                z16 = true;
                            } else {
                                z16 = false;
                            }
                            zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (zChangedInstance) {
                                objRememberedValue = new bm3() { // from class: sg8
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new bm3() { // from class: sg8
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            Modifier modifierDraggableAnchorsV10 = DraggableAnchorsKt.draggableAnchorsV2(companion10, anchoredDraggableState$material14, orientation3, (bm3) objRememberedValue);
                            int i118 = (i3 >> 12) & 7168;
                            MeasurePolicy measurePolicyRowMeasurePolicy14 = RowKt.rowMeasurePolicy(arrangement5.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                            currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                            CompositionLocalMap currentCompositionLocalMap17 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier17 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV10);
                            constructor3 = companion9.getConstructor();
                            if (composerStartRestartGroup.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startReusableNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(constructor3);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                            bm3VarB = cc.b(companion9, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy14, composerM5355constructorimpl3, currentCompositionLocalMap17);
                            if (composerM5355constructorimpl3.getInserting()) {
                                dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                            } else {
                                dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier17, companion9.getSetModifier());
                            dm3Var2.invoke(rowScopeInstance9, composerStartRestartGroup, Integer.valueOf(((i118 >> 6) & 112) | 6));
                            composerStartRestartGroup.endNode();
                            composerStartRestartGroup.endNode();
                            SwipeToDismissBoxValue settledValue9 = swipeToDismissBoxState.getSettledValue();
                            boolean zChangedInstance10 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                            if ((3670016 & i3) == 1048576) {
                                z17 = true;
                            } else {
                                z17 = false;
                            }
                            z18 = zChangedInstance10 | z17;
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z18) {
                                nl3Var5 = nl3Var4;
                                objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                nl3Var5 = nl3Var4;
                                objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            EffectsKt.LaunchedEffect(settledValue9, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            z9 = z11;
                            nl3Var2 = nl3Var5;
                            modifier3 = modifier4;
                            z8 = z111;
                            z7 = z10;
                        } else {
                            nl3Var4 = nl3Var3;
                        }
                        dc.b(bm3VarB9, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier16, companion9.getSetModifier());
                        RowScopeInstance rowScopeInstance10 = RowScopeInstance.INSTANCE;
                        dm3Var.invoke(rowScopeInstance10, composerStartRestartGroup, Integer.valueOf(((i117 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material15 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                        if ((i3 & 7168) == 2048) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        if ((57344 & i3) == 16384) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        Modifier modifierDraggableAnchorsV11 = DraggableAnchorsKt.draggableAnchorsV2(companion10, anchoredDraggableState$material15, orientation3, (bm3) objRememberedValue);
                        int i119 = (i3 >> 12) & 7168;
                        MeasurePolicy measurePolicyRowMeasurePolicy15 = RowKt.rowMeasurePolicy(arrangement5.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                        currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap18 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier18 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV11);
                        constructor3 = companion9.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor3);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3VarB = cc.b(companion9, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy15, composerM5355constructorimpl3, currentCompositionLocalMap18);
                        if (composerM5355constructorimpl3.getInserting()) {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        } else {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier18, companion9.getSetModifier());
                        dm3Var2.invoke(rowScopeInstance10, composerStartRestartGroup, Integer.valueOf(((i119 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endNode();
                        SwipeToDismissBoxValue settledValue10 = swipeToDismissBoxState.getSettledValue();
                        boolean zChangedInstance11 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        if ((3670016 & i3) == 1048576) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        z18 = zChangedInstance11 | z17;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z18) {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        EffectsKt.LaunchedEffect(settledValue10, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z9 = z11;
                        nl3Var2 = nl3Var5;
                        modifier3 = modifier4;
                        z8 = z111;
                        z7 = z10;
                    } else {
                        companion2 = companion;
                    }
                    dc.b(bm3VarB8, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier15, companion9.getSetModifier());
                    BoxScopeInstance boxScopeInstance6 = BoxScopeInstance.INSTANCE;
                    Modifier.Companion companion11 = Modifier.Companion;
                    Modifier modifierMatchParentSize6 = boxScopeInstance6.matchParentSize(companion11);
                    int i1110 = (i3 << 6) & 7168;
                    Arrangement arrangement6 = Arrangement.INSTANCE;
                    MeasurePolicy measurePolicyRowMeasurePolicy16 = RowKt.rowMeasurePolicy(arrangement6.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                    currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap19 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier19 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierMatchParentSize6);
                    constructor2 = companion9.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB10 = cc.b(companion9, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy16, composerM5355constructorimpl2, currentCompositionLocalMap19);
                    if (composerM5355constructorimpl2.getInserting()) {
                        nl3Var4 = nl3Var3;
                        if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier19, companion9.getSetModifier());
                        RowScopeInstance rowScopeInstance11 = RowScopeInstance.INSTANCE;
                        dm3Var.invoke(rowScopeInstance11, composerStartRestartGroup, Integer.valueOf(((i1110 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material16 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                        if ((i3 & 7168) == 2048) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        if ((57344 & i3) == 16384) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        Modifier modifierDraggableAnchorsV12 = DraggableAnchorsKt.draggableAnchorsV2(companion11, anchoredDraggableState$material16, orientation3, (bm3) objRememberedValue);
                        int i1111 = (i3 >> 12) & 7168;
                        MeasurePolicy measurePolicyRowMeasurePolicy17 = RowKt.rowMeasurePolicy(arrangement6.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                        currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap110 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier110 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV12);
                        constructor3 = companion9.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor3);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3VarB = cc.b(companion9, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy17, composerM5355constructorimpl3, currentCompositionLocalMap110);
                        if (composerM5355constructorimpl3.getInserting()) {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        } else {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier110, companion9.getSetModifier());
                        dm3Var2.invoke(rowScopeInstance11, composerStartRestartGroup, Integer.valueOf(((i1111 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endNode();
                        SwipeToDismissBoxValue settledValue11 = swipeToDismissBoxState.getSettledValue();
                        boolean zChangedInstance12 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        if ((3670016 & i3) == 1048576) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        z18 = zChangedInstance12 | z17;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z18) {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        EffectsKt.LaunchedEffect(settledValue11, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z9 = z11;
                        nl3Var2 = nl3Var5;
                        modifier3 = modifier4;
                        z8 = z111;
                        z7 = z10;
                    } else {
                        nl3Var4 = nl3Var3;
                    }
                    dc.b(bm3VarB10, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier19, companion9.getSetModifier());
                    RowScopeInstance rowScopeInstance12 = RowScopeInstance.INSTANCE;
                    dm3Var.invoke(rowScopeInstance12, composerStartRestartGroup, Integer.valueOf(((i1110 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material17 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                    if ((i3 & 7168) == 2048) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    if ((57344 & i3) == 16384) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierDraggableAnchorsV13 = DraggableAnchorsKt.draggableAnchorsV2(companion11, anchoredDraggableState$material17, orientation3, (bm3) objRememberedValue);
                    int i1112 = (i3 >> 12) & 7168;
                    MeasurePolicy measurePolicyRowMeasurePolicy18 = RowKt.rowMeasurePolicy(arrangement6.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                    currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap111 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier111 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV13);
                    constructor3 = companion9.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor3);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion9, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy18, composerM5355constructorimpl3, currentCompositionLocalMap111);
                    if (composerM5355constructorimpl3.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier111, companion9.getSetModifier());
                    dm3Var2.invoke(rowScopeInstance12, composerStartRestartGroup, Integer.valueOf(((i1112 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endNode();
                    SwipeToDismissBoxValue settledValue12 = swipeToDismissBoxState.getSettledValue();
                    boolean zChangedInstance13 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    if ((3670016 & i3) == 1048576) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    z18 = zChangedInstance13 | z17;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z18) {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.LaunchedEffect(settledValue12, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z9 = z11;
                    nl3Var2 = nl3Var5;
                    modifier3 = modifier4;
                    z8 = z111;
                    z7 = z10;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z7 = z4;
                    z8 = z5;
                    z9 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$13(swipeToDismissBoxState, dm3Var, modifier3, z7, z9, z8, nl3Var2, dm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            i8 = i2 & 32;
            if (i8 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                z5 = z3;
            } else {
                z5 = z3;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(z5)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
            }
            i10 = i2 & 64;
            if (i10 != 0) {
                i3 |= 1572864;
                nl3Var2 = nl3Var;
            } else {
                nl3Var2 = nl3Var;
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i3 |= i11;
                }
            }
            if ((i2 & 128) != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                    i12 = 8388608;
                } else {
                    i12 = 4194304;
                }
                i3 |= i12;
            }
            i13 = 1;
            if ((4793491 & i3) != 4793490) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                if (i14 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    z10 = true;
                } else {
                    z10 = z4;
                }
                if (i6 != 0) {
                    z11 = true;
                } else {
                    z11 = z2;
                }
                if (i8 != 0) {
                    z12 = true;
                } else {
                    z12 = z5;
                }
                if (i10 != 0) {
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                        objRememberedValue3 = new wr2(i13);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    nl3Var3 = (nl3) objRememberedValue3;
                } else {
                    nl3Var3 = nl3Var2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-741495334, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:313)");
                }
                AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material18 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                Orientation orientation4 = Orientation.Horizontal;
                if (z12) {
                    z13 = false;
                } else {
                    z13 = false;
                }
                if (swipeToDismissBoxState.getUseFlingBehavior$material3()) {
                    composerStartRestartGroup.startReplaceGroup(387581105);
                    z14 = true;
                    TargetedFlingBehavior targetedFlingBehaviorFlingBehavior4 = AnchoredDraggableDefaults.INSTANCE.flingBehavior(swipeToDismissBoxState.getAnchoredDraggableState$material3(), swipeToDismissBoxState.getPositionalThreshold$material3(), null, composerStartRestartGroup, AnchoredDraggableDefaults.$stable << 9, 4);
                    composerStartRestartGroup.endReplaceGroup();
                    targetedFlingBehavior = targetedFlingBehaviorFlingBehavior4;
                } else {
                    z14 = true;
                    composerStartRestartGroup.startReplaceGroup(-869685853);
                    composerStartRestartGroup.endReplaceGroup();
                    targetedFlingBehavior = null;
                }
                Modifier modifierAnchoredDraggable$default4 = AnchoredDraggableKt.anchoredDraggable$default(modifier4, anchoredDraggableState$material18, orientation4, z13, null, null, targetedFlingBehavior, 24, null);
                companion = Alignment.Companion;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(companion.getTopStart(), z14);
                boolean z112 = z12;
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap112 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier112 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierAnchoredDraggable$default4);
                ComposeUiNode.Companion companion12 = ComposeUiNode.Companion;
                constructor = companion12.getConstructor();
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
                bm3 bm3VarB11 = cc.b(companion12, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy4, composerM5355constructorimpl, currentCompositionLocalMap112);
                if (composerM5355constructorimpl.getInserting()) {
                    companion2 = companion;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier112, companion12.getSetModifier());
                    BoxScopeInstance boxScopeInstance7 = BoxScopeInstance.INSTANCE;
                    Modifier.Companion companion13 = Modifier.Companion;
                    Modifier modifierMatchParentSize7 = boxScopeInstance7.matchParentSize(companion13);
                    int i1113 = (i3 << 6) & 7168;
                    Arrangement arrangement7 = Arrangement.INSTANCE;
                    MeasurePolicy measurePolicyRowMeasurePolicy19 = RowKt.rowMeasurePolicy(arrangement7.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                    currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap113 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier113 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierMatchParentSize7);
                    constructor2 = companion12.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB12 = cc.b(companion12, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy19, composerM5355constructorimpl2, currentCompositionLocalMap113);
                    if (composerM5355constructorimpl2.getInserting()) {
                        nl3Var4 = nl3Var3;
                        if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier113, companion12.getSetModifier());
                        RowScopeInstance rowScopeInstance13 = RowScopeInstance.INSTANCE;
                        dm3Var.invoke(rowScopeInstance13, composerStartRestartGroup, Integer.valueOf(((i1113 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material19 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                        if ((i3 & 7168) == 2048) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        if ((57344 & i3) == 16384) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        Modifier modifierDraggableAnchorsV14 = DraggableAnchorsKt.draggableAnchorsV2(companion13, anchoredDraggableState$material19, orientation4, (bm3) objRememberedValue);
                        int i1114 = (i3 >> 12) & 7168;
                        MeasurePolicy measurePolicyRowMeasurePolicy110 = RowKt.rowMeasurePolicy(arrangement7.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                        currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap114 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier114 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV14);
                        constructor3 = companion12.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor3);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3VarB = cc.b(companion12, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy110, composerM5355constructorimpl3, currentCompositionLocalMap114);
                        if (composerM5355constructorimpl3.getInserting()) {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        } else {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier114, companion12.getSetModifier());
                        dm3Var2.invoke(rowScopeInstance13, composerStartRestartGroup, Integer.valueOf(((i1114 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endNode();
                        SwipeToDismissBoxValue settledValue13 = swipeToDismissBoxState.getSettledValue();
                        boolean zChangedInstance14 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        if ((3670016 & i3) == 1048576) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        z18 = zChangedInstance14 | z17;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z18) {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        EffectsKt.LaunchedEffect(settledValue13, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z9 = z11;
                        nl3Var2 = nl3Var5;
                        modifier3 = modifier4;
                        z8 = z112;
                        z7 = z10;
                    } else {
                        nl3Var4 = nl3Var3;
                    }
                    dc.b(bm3VarB12, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier113, companion12.getSetModifier());
                    RowScopeInstance rowScopeInstance14 = RowScopeInstance.INSTANCE;
                    dm3Var.invoke(rowScopeInstance14, composerStartRestartGroup, Integer.valueOf(((i1113 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material110 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                    if ((i3 & 7168) == 2048) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    if ((57344 & i3) == 16384) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierDraggableAnchorsV15 = DraggableAnchorsKt.draggableAnchorsV2(companion13, anchoredDraggableState$material110, orientation4, (bm3) objRememberedValue);
                    int i1115 = (i3 >> 12) & 7168;
                    MeasurePolicy measurePolicyRowMeasurePolicy111 = RowKt.rowMeasurePolicy(arrangement7.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                    currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap115 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier115 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV15);
                    constructor3 = companion12.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor3);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion12, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy111, composerM5355constructorimpl3, currentCompositionLocalMap115);
                    if (composerM5355constructorimpl3.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier115, companion12.getSetModifier());
                    dm3Var2.invoke(rowScopeInstance14, composerStartRestartGroup, Integer.valueOf(((i1115 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endNode();
                    SwipeToDismissBoxValue settledValue14 = swipeToDismissBoxState.getSettledValue();
                    boolean zChangedInstance15 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    if ((3670016 & i3) == 1048576) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    z18 = zChangedInstance15 | z17;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z18) {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.LaunchedEffect(settledValue14, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z9 = z11;
                    nl3Var2 = nl3Var5;
                    modifier3 = modifier4;
                    z8 = z112;
                    z7 = z10;
                } else {
                    companion2 = companion;
                }
                dc.b(bm3VarB11, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier112, companion12.getSetModifier());
                BoxScopeInstance boxScopeInstance8 = BoxScopeInstance.INSTANCE;
                Modifier.Companion companion14 = Modifier.Companion;
                Modifier modifierMatchParentSize8 = boxScopeInstance8.matchParentSize(companion14);
                int i1116 = (i3 << 6) & 7168;
                Arrangement arrangement8 = Arrangement.INSTANCE;
                MeasurePolicy measurePolicyRowMeasurePolicy112 = RowKt.rowMeasurePolicy(arrangement8.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap116 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier116 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierMatchParentSize8);
                constructor2 = companion12.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor2);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB13 = cc.b(companion12, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy112, composerM5355constructorimpl2, currentCompositionLocalMap116);
                if (composerM5355constructorimpl2.getInserting()) {
                    nl3Var4 = nl3Var3;
                    if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier116, companion12.getSetModifier());
                    RowScopeInstance rowScopeInstance15 = RowScopeInstance.INSTANCE;
                    dm3Var.invoke(rowScopeInstance15, composerStartRestartGroup, Integer.valueOf(((i1116 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material111 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                    if ((i3 & 7168) == 2048) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    if ((57344 & i3) == 16384) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierDraggableAnchorsV16 = DraggableAnchorsKt.draggableAnchorsV2(companion14, anchoredDraggableState$material111, orientation4, (bm3) objRememberedValue);
                    int i1117 = (i3 >> 12) & 7168;
                    MeasurePolicy measurePolicyRowMeasurePolicy113 = RowKt.rowMeasurePolicy(arrangement8.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                    currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap117 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier117 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV16);
                    constructor3 = companion12.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor3);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion12, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy113, composerM5355constructorimpl3, currentCompositionLocalMap117);
                    if (composerM5355constructorimpl3.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier117, companion12.getSetModifier());
                    dm3Var2.invoke(rowScopeInstance15, composerStartRestartGroup, Integer.valueOf(((i1117 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endNode();
                    SwipeToDismissBoxValue settledValue15 = swipeToDismissBoxState.getSettledValue();
                    boolean zChangedInstance16 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    if ((3670016 & i3) == 1048576) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    z18 = zChangedInstance16 | z17;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z18) {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.LaunchedEffect(settledValue15, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z9 = z11;
                    nl3Var2 = nl3Var5;
                    modifier3 = modifier4;
                    z8 = z112;
                    z7 = z10;
                } else {
                    nl3Var4 = nl3Var3;
                }
                dc.b(bm3VarB13, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier116, companion12.getSetModifier());
                RowScopeInstance rowScopeInstance16 = RowScopeInstance.INSTANCE;
                dm3Var.invoke(rowScopeInstance16, composerStartRestartGroup, Integer.valueOf(((i1116 >> 6) & 112) | 6));
                composerStartRestartGroup.endNode();
                AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material112 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                if ((i3 & 7168) == 2048) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                if ((57344 & i3) == 16384) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    objRememberedValue = new bm3() { // from class: sg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new bm3() { // from class: sg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Modifier modifierDraggableAnchorsV17 = DraggableAnchorsKt.draggableAnchorsV2(companion14, anchoredDraggableState$material112, orientation4, (bm3) objRememberedValue);
                int i1118 = (i3 >> 12) & 7168;
                MeasurePolicy measurePolicyRowMeasurePolicy114 = RowKt.rowMeasurePolicy(arrangement8.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap118 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier118 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV17);
                constructor3 = companion12.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor3);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB = cc.b(companion12, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy114, composerM5355constructorimpl3, currentCompositionLocalMap118);
                if (composerM5355constructorimpl3.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                }
                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier118, companion12.getSetModifier());
                dm3Var2.invoke(rowScopeInstance16, composerStartRestartGroup, Integer.valueOf(((i1118 >> 6) & 112) | 6));
                composerStartRestartGroup.endNode();
                composerStartRestartGroup.endNode();
                SwipeToDismissBoxValue settledValue16 = swipeToDismissBoxState.getSettledValue();
                boolean zChangedInstance17 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                if ((3670016 & i3) == 1048576) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                z18 = zChangedInstance17 | z17;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z18) {
                    nl3Var5 = nl3Var4;
                    objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    nl3Var5 = nl3Var4;
                    objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                EffectsKt.LaunchedEffect(settledValue16, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z9 = z11;
                nl3Var2 = nl3Var5;
                modifier3 = modifier4;
                z8 = z112;
                z7 = z10;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z7 = z4;
                z8 = z5;
                z9 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tg8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$13(swipeToDismissBoxState, dm3Var, modifier3, z7, z9, z8, nl3Var2, dm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                z4 = z;
                if (composerStartRestartGroup.changed(z4)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 32;
                if (i8 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    z5 = z3;
                } else {
                    z5 = z3;
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(z5)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                }
                i10 = i2 & 64;
                if (i10 != 0) {
                    i3 |= 1572864;
                    nl3Var2 = nl3Var;
                } else {
                    nl3Var2 = nl3Var;
                    if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i3 |= i11;
                    }
                }
                if ((i2 & 128) != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                        i12 = 8388608;
                    } else {
                        i12 = 4194304;
                    }
                    i3 |= i12;
                }
                i13 = 1;
                if ((4793491 & i3) != 4793490) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                    if (i14 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z10 = true;
                    } else {
                        z10 = z4;
                    }
                    if (i6 != 0) {
                        z11 = true;
                    } else {
                        z11 = z2;
                    }
                    if (i8 != 0) {
                        z12 = true;
                    } else {
                        z12 = z5;
                    }
                    if (i10 != 0) {
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                            objRememberedValue3 = new wr2(i13);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        nl3Var3 = (nl3) objRememberedValue3;
                    } else {
                        nl3Var3 = nl3Var2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-741495334, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:313)");
                    }
                    AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material113 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                    Orientation orientation5 = Orientation.Horizontal;
                    if (z12) {
                        z13 = false;
                    } else {
                        z13 = false;
                    }
                    if (swipeToDismissBoxState.getUseFlingBehavior$material3()) {
                        composerStartRestartGroup.startReplaceGroup(387581105);
                        z14 = true;
                        TargetedFlingBehavior targetedFlingBehaviorFlingBehavior5 = AnchoredDraggableDefaults.INSTANCE.flingBehavior(swipeToDismissBoxState.getAnchoredDraggableState$material3(), swipeToDismissBoxState.getPositionalThreshold$material3(), null, composerStartRestartGroup, AnchoredDraggableDefaults.$stable << 9, 4);
                        composerStartRestartGroup.endReplaceGroup();
                        targetedFlingBehavior = targetedFlingBehaviorFlingBehavior5;
                    } else {
                        z14 = true;
                        composerStartRestartGroup.startReplaceGroup(-869685853);
                        composerStartRestartGroup.endReplaceGroup();
                        targetedFlingBehavior = null;
                    }
                    Modifier modifierAnchoredDraggable$default5 = AnchoredDraggableKt.anchoredDraggable$default(modifier4, anchoredDraggableState$material113, orientation5, z13, null, null, targetedFlingBehavior, 24, null);
                    companion = Alignment.Companion;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy5 = BoxKt.maybeCachedBoxMeasurePolicy(companion.getTopStart(), z14);
                    boolean z113 = z12;
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap119 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier119 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierAnchoredDraggable$default5);
                    ComposeUiNode.Companion companion15 = ComposeUiNode.Companion;
                    constructor = companion15.getConstructor();
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
                    bm3 bm3VarB14 = cc.b(companion15, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy5, composerM5355constructorimpl, currentCompositionLocalMap119);
                    if (composerM5355constructorimpl.getInserting()) {
                        companion2 = companion;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier119, companion15.getSetModifier());
                        BoxScopeInstance boxScopeInstance9 = BoxScopeInstance.INSTANCE;
                        Modifier.Companion companion16 = Modifier.Companion;
                        Modifier modifierMatchParentSize9 = boxScopeInstance9.matchParentSize(companion16);
                        int i1119 = (i3 << 6) & 7168;
                        Arrangement arrangement9 = Arrangement.INSTANCE;
                        MeasurePolicy measurePolicyRowMeasurePolicy115 = RowKt.rowMeasurePolicy(arrangement9.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                        currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap1110 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier1110 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierMatchParentSize9);
                        constructor2 = companion15.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor2);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB15 = cc.b(companion15, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy115, composerM5355constructorimpl2, currentCompositionLocalMap1110);
                        if (composerM5355constructorimpl2.getInserting()) {
                            nl3Var4 = nl3Var3;
                            if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier1110, companion15.getSetModifier());
                            RowScopeInstance rowScopeInstance17 = RowScopeInstance.INSTANCE;
                            dm3Var.invoke(rowScopeInstance17, composerStartRestartGroup, Integer.valueOf(((i1119 >> 6) & 112) | 6));
                            composerStartRestartGroup.endNode();
                            AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material114 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                            if ((i3 & 7168) == 2048) {
                                z15 = true;
                            } else {
                                z15 = false;
                            }
                            if ((57344 & i3) == 16384) {
                                z16 = true;
                            } else {
                                z16 = false;
                            }
                            zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (zChangedInstance) {
                                objRememberedValue = new bm3() { // from class: sg8
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new bm3() { // from class: sg8
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            Modifier modifierDraggableAnchorsV18 = DraggableAnchorsKt.draggableAnchorsV2(companion16, anchoredDraggableState$material114, orientation5, (bm3) objRememberedValue);
                            int i11110 = (i3 >> 12) & 7168;
                            MeasurePolicy measurePolicyRowMeasurePolicy116 = RowKt.rowMeasurePolicy(arrangement9.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                            currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                            CompositionLocalMap currentCompositionLocalMap1111 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier1111 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV18);
                            constructor3 = companion15.getConstructor();
                            if (composerStartRestartGroup.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startReusableNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(constructor3);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                            bm3VarB = cc.b(companion15, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy116, composerM5355constructorimpl3, currentCompositionLocalMap1111);
                            if (composerM5355constructorimpl3.getInserting()) {
                                dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                            } else {
                                dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier1111, companion15.getSetModifier());
                            dm3Var2.invoke(rowScopeInstance17, composerStartRestartGroup, Integer.valueOf(((i11110 >> 6) & 112) | 6));
                            composerStartRestartGroup.endNode();
                            composerStartRestartGroup.endNode();
                            SwipeToDismissBoxValue settledValue17 = swipeToDismissBoxState.getSettledValue();
                            boolean zChangedInstance18 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                            if ((3670016 & i3) == 1048576) {
                                z17 = true;
                            } else {
                                z17 = false;
                            }
                            z18 = zChangedInstance18 | z17;
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z18) {
                                nl3Var5 = nl3Var4;
                                objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                nl3Var5 = nl3Var4;
                                objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            EffectsKt.LaunchedEffect(settledValue17, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            z9 = z11;
                            nl3Var2 = nl3Var5;
                            modifier3 = modifier4;
                            z8 = z113;
                            z7 = z10;
                        } else {
                            nl3Var4 = nl3Var3;
                        }
                        dc.b(bm3VarB15, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier1110, companion15.getSetModifier());
                        RowScopeInstance rowScopeInstance18 = RowScopeInstance.INSTANCE;
                        dm3Var.invoke(rowScopeInstance18, composerStartRestartGroup, Integer.valueOf(((i1119 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material115 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                        if ((i3 & 7168) == 2048) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        if ((57344 & i3) == 16384) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        Modifier modifierDraggableAnchorsV19 = DraggableAnchorsKt.draggableAnchorsV2(companion16, anchoredDraggableState$material115, orientation5, (bm3) objRememberedValue);
                        int i11111 = (i3 >> 12) & 7168;
                        MeasurePolicy measurePolicyRowMeasurePolicy117 = RowKt.rowMeasurePolicy(arrangement9.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                        currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap1112 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier1112 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV19);
                        constructor3 = companion15.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor3);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3VarB = cc.b(companion15, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy117, composerM5355constructorimpl3, currentCompositionLocalMap1112);
                        if (composerM5355constructorimpl3.getInserting()) {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        } else {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier1112, companion15.getSetModifier());
                        dm3Var2.invoke(rowScopeInstance18, composerStartRestartGroup, Integer.valueOf(((i11111 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endNode();
                        SwipeToDismissBoxValue settledValue18 = swipeToDismissBoxState.getSettledValue();
                        boolean zChangedInstance19 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        if ((3670016 & i3) == 1048576) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        z18 = zChangedInstance19 | z17;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z18) {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        EffectsKt.LaunchedEffect(settledValue18, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z9 = z11;
                        nl3Var2 = nl3Var5;
                        modifier3 = modifier4;
                        z8 = z113;
                        z7 = z10;
                    } else {
                        companion2 = companion;
                    }
                    dc.b(bm3VarB14, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier119, companion15.getSetModifier());
                    BoxScopeInstance boxScopeInstance10 = BoxScopeInstance.INSTANCE;
                    Modifier.Companion companion17 = Modifier.Companion;
                    Modifier modifierMatchParentSize10 = boxScopeInstance10.matchParentSize(companion17);
                    int i11112 = (i3 << 6) & 7168;
                    Arrangement arrangement10 = Arrangement.INSTANCE;
                    MeasurePolicy measurePolicyRowMeasurePolicy118 = RowKt.rowMeasurePolicy(arrangement10.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                    currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap1113 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier1113 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierMatchParentSize10);
                    constructor2 = companion15.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB16 = cc.b(companion15, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy118, composerM5355constructorimpl2, currentCompositionLocalMap1113);
                    if (composerM5355constructorimpl2.getInserting()) {
                        nl3Var4 = nl3Var3;
                        if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier1113, companion15.getSetModifier());
                        RowScopeInstance rowScopeInstance19 = RowScopeInstance.INSTANCE;
                        dm3Var.invoke(rowScopeInstance19, composerStartRestartGroup, Integer.valueOf(((i11112 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material116 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                        if ((i3 & 7168) == 2048) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        if ((57344 & i3) == 16384) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        Modifier modifierDraggableAnchorsV110 = DraggableAnchorsKt.draggableAnchorsV2(companion17, anchoredDraggableState$material116, orientation5, (bm3) objRememberedValue);
                        int i11113 = (i3 >> 12) & 7168;
                        MeasurePolicy measurePolicyRowMeasurePolicy119 = RowKt.rowMeasurePolicy(arrangement10.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                        currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap1114 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier1114 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV110);
                        constructor3 = companion15.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor3);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3VarB = cc.b(companion15, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy119, composerM5355constructorimpl3, currentCompositionLocalMap1114);
                        if (composerM5355constructorimpl3.getInserting()) {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        } else {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier1114, companion15.getSetModifier());
                        dm3Var2.invoke(rowScopeInstance19, composerStartRestartGroup, Integer.valueOf(((i11113 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endNode();
                        SwipeToDismissBoxValue settledValue19 = swipeToDismissBoxState.getSettledValue();
                        boolean zChangedInstance110 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        if ((3670016 & i3) == 1048576) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        z18 = zChangedInstance110 | z17;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z18) {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        EffectsKt.LaunchedEffect(settledValue19, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z9 = z11;
                        nl3Var2 = nl3Var5;
                        modifier3 = modifier4;
                        z8 = z113;
                        z7 = z10;
                    } else {
                        nl3Var4 = nl3Var3;
                    }
                    dc.b(bm3VarB16, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier1113, companion15.getSetModifier());
                    RowScopeInstance rowScopeInstance110 = RowScopeInstance.INSTANCE;
                    dm3Var.invoke(rowScopeInstance110, composerStartRestartGroup, Integer.valueOf(((i11112 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material117 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                    if ((i3 & 7168) == 2048) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    if ((57344 & i3) == 16384) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierDraggableAnchorsV111 = DraggableAnchorsKt.draggableAnchorsV2(companion17, anchoredDraggableState$material117, orientation5, (bm3) objRememberedValue);
                    int i11114 = (i3 >> 12) & 7168;
                    MeasurePolicy measurePolicyRowMeasurePolicy1110 = RowKt.rowMeasurePolicy(arrangement10.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                    currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap1115 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier1115 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV111);
                    constructor3 = companion15.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor3);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion15, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy1110, composerM5355constructorimpl3, currentCompositionLocalMap1115);
                    if (composerM5355constructorimpl3.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier1115, companion15.getSetModifier());
                    dm3Var2.invoke(rowScopeInstance110, composerStartRestartGroup, Integer.valueOf(((i11114 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endNode();
                    SwipeToDismissBoxValue settledValue110 = swipeToDismissBoxState.getSettledValue();
                    boolean zChangedInstance111 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    if ((3670016 & i3) == 1048576) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    z18 = zChangedInstance111 | z17;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z18) {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.LaunchedEffect(settledValue110, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z9 = z11;
                    nl3Var2 = nl3Var5;
                    modifier3 = modifier4;
                    z8 = z113;
                    z7 = z10;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z7 = z4;
                    z8 = z5;
                    z9 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$13(swipeToDismissBoxState, dm3Var, modifier3, z7, z9, z8, nl3Var2, dm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            i8 = i2 & 32;
            if (i8 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                z5 = z3;
            } else {
                z5 = z3;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(z5)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
            }
            i10 = i2 & 64;
            if (i10 != 0) {
                i3 |= 1572864;
                nl3Var2 = nl3Var;
            } else {
                nl3Var2 = nl3Var;
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i3 |= i11;
                }
            }
            if ((i2 & 128) != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                    i12 = 8388608;
                } else {
                    i12 = 4194304;
                }
                i3 |= i12;
            }
            i13 = 1;
            if ((4793491 & i3) != 4793490) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                if (i14 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    z10 = true;
                } else {
                    z10 = z4;
                }
                if (i6 != 0) {
                    z11 = true;
                } else {
                    z11 = z2;
                }
                if (i8 != 0) {
                    z12 = true;
                } else {
                    z12 = z5;
                }
                if (i10 != 0) {
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                        objRememberedValue3 = new wr2(i13);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    nl3Var3 = (nl3) objRememberedValue3;
                } else {
                    nl3Var3 = nl3Var2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-741495334, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:313)");
                }
                AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material118 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                Orientation orientation6 = Orientation.Horizontal;
                if (z12) {
                    z13 = false;
                } else {
                    z13 = false;
                }
                if (swipeToDismissBoxState.getUseFlingBehavior$material3()) {
                    composerStartRestartGroup.startReplaceGroup(387581105);
                    z14 = true;
                    TargetedFlingBehavior targetedFlingBehaviorFlingBehavior6 = AnchoredDraggableDefaults.INSTANCE.flingBehavior(swipeToDismissBoxState.getAnchoredDraggableState$material3(), swipeToDismissBoxState.getPositionalThreshold$material3(), null, composerStartRestartGroup, AnchoredDraggableDefaults.$stable << 9, 4);
                    composerStartRestartGroup.endReplaceGroup();
                    targetedFlingBehavior = targetedFlingBehaviorFlingBehavior6;
                } else {
                    z14 = true;
                    composerStartRestartGroup.startReplaceGroup(-869685853);
                    composerStartRestartGroup.endReplaceGroup();
                    targetedFlingBehavior = null;
                }
                Modifier modifierAnchoredDraggable$default6 = AnchoredDraggableKt.anchoredDraggable$default(modifier4, anchoredDraggableState$material118, orientation6, z13, null, null, targetedFlingBehavior, 24, null);
                companion = Alignment.Companion;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy6 = BoxKt.maybeCachedBoxMeasurePolicy(companion.getTopStart(), z14);
                boolean z114 = z12;
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap1116 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier1116 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierAnchoredDraggable$default6);
                ComposeUiNode.Companion companion18 = ComposeUiNode.Companion;
                constructor = companion18.getConstructor();
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
                bm3 bm3VarB17 = cc.b(companion18, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy6, composerM5355constructorimpl, currentCompositionLocalMap1116);
                if (composerM5355constructorimpl.getInserting()) {
                    companion2 = companion;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier1116, companion18.getSetModifier());
                    BoxScopeInstance boxScopeInstance11 = BoxScopeInstance.INSTANCE;
                    Modifier.Companion companion19 = Modifier.Companion;
                    Modifier modifierMatchParentSize11 = boxScopeInstance11.matchParentSize(companion19);
                    int i11115 = (i3 << 6) & 7168;
                    Arrangement arrangement11 = Arrangement.INSTANCE;
                    MeasurePolicy measurePolicyRowMeasurePolicy1111 = RowKt.rowMeasurePolicy(arrangement11.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                    currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap1117 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier1117 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierMatchParentSize11);
                    constructor2 = companion18.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB18 = cc.b(companion18, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy1111, composerM5355constructorimpl2, currentCompositionLocalMap1117);
                    if (composerM5355constructorimpl2.getInserting()) {
                        nl3Var4 = nl3Var3;
                        if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier1117, companion18.getSetModifier());
                        RowScopeInstance rowScopeInstance111 = RowScopeInstance.INSTANCE;
                        dm3Var.invoke(rowScopeInstance111, composerStartRestartGroup, Integer.valueOf(((i11115 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material119 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                        if ((i3 & 7168) == 2048) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        if ((57344 & i3) == 16384) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        Modifier modifierDraggableAnchorsV112 = DraggableAnchorsKt.draggableAnchorsV2(companion19, anchoredDraggableState$material119, orientation6, (bm3) objRememberedValue);
                        int i11116 = (i3 >> 12) & 7168;
                        MeasurePolicy measurePolicyRowMeasurePolicy1112 = RowKt.rowMeasurePolicy(arrangement11.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                        currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap1118 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier1118 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV112);
                        constructor3 = companion18.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor3);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3VarB = cc.b(companion18, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy1112, composerM5355constructorimpl3, currentCompositionLocalMap1118);
                        if (composerM5355constructorimpl3.getInserting()) {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        } else {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier1118, companion18.getSetModifier());
                        dm3Var2.invoke(rowScopeInstance111, composerStartRestartGroup, Integer.valueOf(((i11116 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endNode();
                        SwipeToDismissBoxValue settledValue111 = swipeToDismissBoxState.getSettledValue();
                        boolean zChangedInstance112 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        if ((3670016 & i3) == 1048576) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        z18 = zChangedInstance112 | z17;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z18) {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        EffectsKt.LaunchedEffect(settledValue111, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z9 = z11;
                        nl3Var2 = nl3Var5;
                        modifier3 = modifier4;
                        z8 = z114;
                        z7 = z10;
                    } else {
                        nl3Var4 = nl3Var3;
                    }
                    dc.b(bm3VarB18, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier1117, companion18.getSetModifier());
                    RowScopeInstance rowScopeInstance112 = RowScopeInstance.INSTANCE;
                    dm3Var.invoke(rowScopeInstance112, composerStartRestartGroup, Integer.valueOf(((i11115 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material1110 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                    if ((i3 & 7168) == 2048) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    if ((57344 & i3) == 16384) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierDraggableAnchorsV113 = DraggableAnchorsKt.draggableAnchorsV2(companion19, anchoredDraggableState$material1110, orientation6, (bm3) objRememberedValue);
                    int i11117 = (i3 >> 12) & 7168;
                    MeasurePolicy measurePolicyRowMeasurePolicy1113 = RowKt.rowMeasurePolicy(arrangement11.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                    currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap1119 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier1119 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV113);
                    constructor3 = companion18.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor3);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion18, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy1113, composerM5355constructorimpl3, currentCompositionLocalMap1119);
                    if (composerM5355constructorimpl3.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier1119, companion18.getSetModifier());
                    dm3Var2.invoke(rowScopeInstance112, composerStartRestartGroup, Integer.valueOf(((i11117 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endNode();
                    SwipeToDismissBoxValue settledValue112 = swipeToDismissBoxState.getSettledValue();
                    boolean zChangedInstance113 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    if ((3670016 & i3) == 1048576) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    z18 = zChangedInstance113 | z17;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z18) {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.LaunchedEffect(settledValue112, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z9 = z11;
                    nl3Var2 = nl3Var5;
                    modifier3 = modifier4;
                    z8 = z114;
                    z7 = z10;
                } else {
                    companion2 = companion;
                }
                dc.b(bm3VarB17, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier1116, companion18.getSetModifier());
                BoxScopeInstance boxScopeInstance12 = BoxScopeInstance.INSTANCE;
                Modifier.Companion companion110 = Modifier.Companion;
                Modifier modifierMatchParentSize12 = boxScopeInstance12.matchParentSize(companion110);
                int i11118 = (i3 << 6) & 7168;
                Arrangement arrangement12 = Arrangement.INSTANCE;
                MeasurePolicy measurePolicyRowMeasurePolicy1114 = RowKt.rowMeasurePolicy(arrangement12.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap11110 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier11110 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierMatchParentSize12);
                constructor2 = companion18.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor2);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB19 = cc.b(companion18, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy1114, composerM5355constructorimpl2, currentCompositionLocalMap11110);
                if (composerM5355constructorimpl2.getInserting()) {
                    nl3Var4 = nl3Var3;
                    if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier11110, companion18.getSetModifier());
                    RowScopeInstance rowScopeInstance113 = RowScopeInstance.INSTANCE;
                    dm3Var.invoke(rowScopeInstance113, composerStartRestartGroup, Integer.valueOf(((i11118 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material1111 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                    if ((i3 & 7168) == 2048) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    if ((57344 & i3) == 16384) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierDraggableAnchorsV114 = DraggableAnchorsKt.draggableAnchorsV2(companion110, anchoredDraggableState$material1111, orientation6, (bm3) objRememberedValue);
                    int i11119 = (i3 >> 12) & 7168;
                    MeasurePolicy measurePolicyRowMeasurePolicy1115 = RowKt.rowMeasurePolicy(arrangement12.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                    currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap11111 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier11111 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV114);
                    constructor3 = companion18.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor3);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion18, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy1115, composerM5355constructorimpl3, currentCompositionLocalMap11111);
                    if (composerM5355constructorimpl3.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier11111, companion18.getSetModifier());
                    dm3Var2.invoke(rowScopeInstance113, composerStartRestartGroup, Integer.valueOf(((i11119 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endNode();
                    SwipeToDismissBoxValue settledValue113 = swipeToDismissBoxState.getSettledValue();
                    boolean zChangedInstance114 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    if ((3670016 & i3) == 1048576) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    z18 = zChangedInstance114 | z17;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z18) {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.LaunchedEffect(settledValue113, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z9 = z11;
                    nl3Var2 = nl3Var5;
                    modifier3 = modifier4;
                    z8 = z114;
                    z7 = z10;
                } else {
                    nl3Var4 = nl3Var3;
                }
                dc.b(bm3VarB19, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier11110, companion18.getSetModifier());
                RowScopeInstance rowScopeInstance114 = RowScopeInstance.INSTANCE;
                dm3Var.invoke(rowScopeInstance114, composerStartRestartGroup, Integer.valueOf(((i11118 >> 6) & 112) | 6));
                composerStartRestartGroup.endNode();
                AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material1112 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                if ((i3 & 7168) == 2048) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                if ((57344 & i3) == 16384) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    objRememberedValue = new bm3() { // from class: sg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new bm3() { // from class: sg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Modifier modifierDraggableAnchorsV115 = DraggableAnchorsKt.draggableAnchorsV2(companion110, anchoredDraggableState$material1112, orientation6, (bm3) objRememberedValue);
                int i111110 = (i3 >> 12) & 7168;
                MeasurePolicy measurePolicyRowMeasurePolicy1116 = RowKt.rowMeasurePolicy(arrangement12.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap11112 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier11112 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV115);
                constructor3 = companion18.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor3);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB = cc.b(companion18, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy1116, composerM5355constructorimpl3, currentCompositionLocalMap11112);
                if (composerM5355constructorimpl3.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                }
                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier11112, companion18.getSetModifier());
                dm3Var2.invoke(rowScopeInstance114, composerStartRestartGroup, Integer.valueOf(((i111110 >> 6) & 112) | 6));
                composerStartRestartGroup.endNode();
                composerStartRestartGroup.endNode();
                SwipeToDismissBoxValue settledValue114 = swipeToDismissBoxState.getSettledValue();
                boolean zChangedInstance115 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                if ((3670016 & i3) == 1048576) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                z18 = zChangedInstance115 | z17;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z18) {
                    nl3Var5 = nl3Var4;
                    objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    nl3Var5 = nl3Var4;
                    objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                EffectsKt.LaunchedEffect(settledValue114, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z9 = z11;
                nl3Var2 = nl3Var5;
                modifier3 = modifier4;
                z8 = z114;
                z7 = z10;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z7 = z4;
                z8 = z5;
                z9 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tg8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$13(swipeToDismissBoxState, dm3Var, modifier3, z7, z9, z8, nl3Var2, dm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z4 = z;
        i6 = i2 & 16;
        if (i6 != 0) {
            if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i3 |= i7;
            }
            i8 = i2 & 32;
            if (i8 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                z5 = z3;
            } else {
                z5 = z3;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(z5)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
            }
            i10 = i2 & 64;
            if (i10 != 0) {
                i3 |= 1572864;
                nl3Var2 = nl3Var;
            } else {
                nl3Var2 = nl3Var;
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i3 |= i11;
                }
            }
            if ((i2 & 128) != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                    i12 = 8388608;
                } else {
                    i12 = 4194304;
                }
                i3 |= i12;
            }
            i13 = 1;
            if ((4793491 & i3) != 4793490) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                if (i14 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    z10 = true;
                } else {
                    z10 = z4;
                }
                if (i6 != 0) {
                    z11 = true;
                } else {
                    z11 = z2;
                }
                if (i8 != 0) {
                    z12 = true;
                } else {
                    z12 = z5;
                }
                if (i10 != 0) {
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                        objRememberedValue3 = new wr2(i13);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    nl3Var3 = (nl3) objRememberedValue3;
                } else {
                    nl3Var3 = nl3Var2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-741495334, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:313)");
                }
                AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material1113 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                Orientation orientation7 = Orientation.Horizontal;
                if (z12) {
                    z13 = false;
                } else {
                    z13 = false;
                }
                if (swipeToDismissBoxState.getUseFlingBehavior$material3()) {
                    composerStartRestartGroup.startReplaceGroup(387581105);
                    z14 = true;
                    TargetedFlingBehavior targetedFlingBehaviorFlingBehavior7 = AnchoredDraggableDefaults.INSTANCE.flingBehavior(swipeToDismissBoxState.getAnchoredDraggableState$material3(), swipeToDismissBoxState.getPositionalThreshold$material3(), null, composerStartRestartGroup, AnchoredDraggableDefaults.$stable << 9, 4);
                    composerStartRestartGroup.endReplaceGroup();
                    targetedFlingBehavior = targetedFlingBehaviorFlingBehavior7;
                } else {
                    z14 = true;
                    composerStartRestartGroup.startReplaceGroup(-869685853);
                    composerStartRestartGroup.endReplaceGroup();
                    targetedFlingBehavior = null;
                }
                Modifier modifierAnchoredDraggable$default7 = AnchoredDraggableKt.anchoredDraggable$default(modifier4, anchoredDraggableState$material1113, orientation7, z13, null, null, targetedFlingBehavior, 24, null);
                companion = Alignment.Companion;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy7 = BoxKt.maybeCachedBoxMeasurePolicy(companion.getTopStart(), z14);
                boolean z115 = z12;
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap11113 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier11113 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierAnchoredDraggable$default7);
                ComposeUiNode.Companion companion111 = ComposeUiNode.Companion;
                constructor = companion111.getConstructor();
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
                bm3 bm3VarB110 = cc.b(companion111, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy7, composerM5355constructorimpl, currentCompositionLocalMap11113);
                if (composerM5355constructorimpl.getInserting()) {
                    companion2 = companion;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier11113, companion111.getSetModifier());
                    BoxScopeInstance boxScopeInstance13 = BoxScopeInstance.INSTANCE;
                    Modifier.Companion companion112 = Modifier.Companion;
                    Modifier modifierMatchParentSize13 = boxScopeInstance13.matchParentSize(companion112);
                    int i111111 = (i3 << 6) & 7168;
                    Arrangement arrangement13 = Arrangement.INSTANCE;
                    MeasurePolicy measurePolicyRowMeasurePolicy1117 = RowKt.rowMeasurePolicy(arrangement13.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                    currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap11114 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier11114 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierMatchParentSize13);
                    constructor2 = companion111.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB111 = cc.b(companion111, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy1117, composerM5355constructorimpl2, currentCompositionLocalMap11114);
                    if (composerM5355constructorimpl2.getInserting()) {
                        nl3Var4 = nl3Var3;
                        if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier11114, companion111.getSetModifier());
                        RowScopeInstance rowScopeInstance115 = RowScopeInstance.INSTANCE;
                        dm3Var.invoke(rowScopeInstance115, composerStartRestartGroup, Integer.valueOf(((i111111 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material1114 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                        if ((i3 & 7168) == 2048) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        if ((57344 & i3) == 16384) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new bm3() { // from class: sg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        Modifier modifierDraggableAnchorsV116 = DraggableAnchorsKt.draggableAnchorsV2(companion112, anchoredDraggableState$material1114, orientation7, (bm3) objRememberedValue);
                        int i111112 = (i3 >> 12) & 7168;
                        MeasurePolicy measurePolicyRowMeasurePolicy1118 = RowKt.rowMeasurePolicy(arrangement13.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                        currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap11115 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier11115 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV116);
                        constructor3 = companion111.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor3);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3VarB = cc.b(companion111, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy1118, composerM5355constructorimpl3, currentCompositionLocalMap11115);
                        if (composerM5355constructorimpl3.getInserting()) {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        } else {
                            dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier11115, companion111.getSetModifier());
                        dm3Var2.invoke(rowScopeInstance115, composerStartRestartGroup, Integer.valueOf(((i111112 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endNode();
                        SwipeToDismissBoxValue settledValue115 = swipeToDismissBoxState.getSettledValue();
                        boolean zChangedInstance116 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                        if ((3670016 & i3) == 1048576) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        z18 = zChangedInstance116 | z17;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z18) {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            nl3Var5 = nl3Var4;
                            objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        EffectsKt.LaunchedEffect(settledValue115, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z9 = z11;
                        nl3Var2 = nl3Var5;
                        modifier3 = modifier4;
                        z8 = z115;
                        z7 = z10;
                    } else {
                        nl3Var4 = nl3Var3;
                    }
                    dc.b(bm3VarB111, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier11114, companion111.getSetModifier());
                    RowScopeInstance rowScopeInstance116 = RowScopeInstance.INSTANCE;
                    dm3Var.invoke(rowScopeInstance116, composerStartRestartGroup, Integer.valueOf(((i111111 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material1115 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                    if ((i3 & 7168) == 2048) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    if ((57344 & i3) == 16384) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierDraggableAnchorsV117 = DraggableAnchorsKt.draggableAnchorsV2(companion112, anchoredDraggableState$material1115, orientation7, (bm3) objRememberedValue);
                    int i111113 = (i3 >> 12) & 7168;
                    MeasurePolicy measurePolicyRowMeasurePolicy1119 = RowKt.rowMeasurePolicy(arrangement13.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                    currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap11116 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier11116 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV117);
                    constructor3 = companion111.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor3);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion111, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy1119, composerM5355constructorimpl3, currentCompositionLocalMap11116);
                    if (composerM5355constructorimpl3.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier11116, companion111.getSetModifier());
                    dm3Var2.invoke(rowScopeInstance116, composerStartRestartGroup, Integer.valueOf(((i111113 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endNode();
                    SwipeToDismissBoxValue settledValue116 = swipeToDismissBoxState.getSettledValue();
                    boolean zChangedInstance117 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    if ((3670016 & i3) == 1048576) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    z18 = zChangedInstance117 | z17;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z18) {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.LaunchedEffect(settledValue116, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z9 = z11;
                    nl3Var2 = nl3Var5;
                    modifier3 = modifier4;
                    z8 = z115;
                    z7 = z10;
                } else {
                    companion2 = companion;
                }
                dc.b(bm3VarB110, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier11113, companion111.getSetModifier());
                BoxScopeInstance boxScopeInstance14 = BoxScopeInstance.INSTANCE;
                Modifier.Companion companion113 = Modifier.Companion;
                Modifier modifierMatchParentSize14 = boxScopeInstance14.matchParentSize(companion113);
                int i111114 = (i3 << 6) & 7168;
                Arrangement arrangement14 = Arrangement.INSTANCE;
                MeasurePolicy measurePolicyRowMeasurePolicy11110 = RowKt.rowMeasurePolicy(arrangement14.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap11117 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier11117 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierMatchParentSize14);
                constructor2 = companion111.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor2);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB112 = cc.b(companion111, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy11110, composerM5355constructorimpl2, currentCompositionLocalMap11117);
                if (composerM5355constructorimpl2.getInserting()) {
                    nl3Var4 = nl3Var3;
                    if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier11117, companion111.getSetModifier());
                    RowScopeInstance rowScopeInstance117 = RowScopeInstance.INSTANCE;
                    dm3Var.invoke(rowScopeInstance117, composerStartRestartGroup, Integer.valueOf(((i111114 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material1116 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                    if ((i3 & 7168) == 2048) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    if ((57344 & i3) == 16384) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierDraggableAnchorsV118 = DraggableAnchorsKt.draggableAnchorsV2(companion113, anchoredDraggableState$material1116, orientation7, (bm3) objRememberedValue);
                    int i111115 = (i3 >> 12) & 7168;
                    MeasurePolicy measurePolicyRowMeasurePolicy11111 = RowKt.rowMeasurePolicy(arrangement14.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                    currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap11118 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier11118 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV118);
                    constructor3 = companion111.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor3);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion111, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy11111, composerM5355constructorimpl3, currentCompositionLocalMap11118);
                    if (composerM5355constructorimpl3.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier11118, companion111.getSetModifier());
                    dm3Var2.invoke(rowScopeInstance117, composerStartRestartGroup, Integer.valueOf(((i111115 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endNode();
                    SwipeToDismissBoxValue settledValue117 = swipeToDismissBoxState.getSettledValue();
                    boolean zChangedInstance118 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    if ((3670016 & i3) == 1048576) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    z18 = zChangedInstance118 | z17;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z18) {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.LaunchedEffect(settledValue117, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z9 = z11;
                    nl3Var2 = nl3Var5;
                    modifier3 = modifier4;
                    z8 = z115;
                    z7 = z10;
                } else {
                    nl3Var4 = nl3Var3;
                }
                dc.b(bm3VarB112, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier11117, companion111.getSetModifier());
                RowScopeInstance rowScopeInstance118 = RowScopeInstance.INSTANCE;
                dm3Var.invoke(rowScopeInstance118, composerStartRestartGroup, Integer.valueOf(((i111114 >> 6) & 112) | 6));
                composerStartRestartGroup.endNode();
                AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material1117 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                if ((i3 & 7168) == 2048) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                if ((57344 & i3) == 16384) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    objRememberedValue = new bm3() { // from class: sg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new bm3() { // from class: sg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Modifier modifierDraggableAnchorsV119 = DraggableAnchorsKt.draggableAnchorsV2(companion113, anchoredDraggableState$material1117, orientation7, (bm3) objRememberedValue);
                int i111116 = (i3 >> 12) & 7168;
                MeasurePolicy measurePolicyRowMeasurePolicy11112 = RowKt.rowMeasurePolicy(arrangement14.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap11119 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier11119 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV119);
                constructor3 = companion111.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor3);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB = cc.b(companion111, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy11112, composerM5355constructorimpl3, currentCompositionLocalMap11119);
                if (composerM5355constructorimpl3.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                }
                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier11119, companion111.getSetModifier());
                dm3Var2.invoke(rowScopeInstance118, composerStartRestartGroup, Integer.valueOf(((i111116 >> 6) & 112) | 6));
                composerStartRestartGroup.endNode();
                composerStartRestartGroup.endNode();
                SwipeToDismissBoxValue settledValue118 = swipeToDismissBoxState.getSettledValue();
                boolean zChangedInstance119 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                if ((3670016 & i3) == 1048576) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                z18 = zChangedInstance119 | z17;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z18) {
                    nl3Var5 = nl3Var4;
                    objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    nl3Var5 = nl3Var4;
                    objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                EffectsKt.LaunchedEffect(settledValue118, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z9 = z11;
                nl3Var2 = nl3Var5;
                modifier3 = modifier4;
                z8 = z115;
                z7 = z10;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z7 = z4;
                z8 = z5;
                z9 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tg8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$13(swipeToDismissBoxState, dm3Var, modifier3, z7, z9, z8, nl3Var2, dm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        i8 = i2 & 32;
        if (i8 != 0) {
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z5 = z3;
        } else {
            z5 = z3;
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(z5)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i3 |= i9;
            }
        }
        i10 = i2 & 64;
        if (i10 != 0) {
            i3 |= 1572864;
            nl3Var2 = nl3Var;
        } else {
            nl3Var2 = nl3Var;
            if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                    i11 = 1048576;
                } else {
                    i11 = 524288;
                }
                i3 |= i11;
            }
        }
        if ((i2 & 128) != 0) {
            i3 |= 12582912;
        } else if ((i & 12582912) == 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                i12 = 8388608;
            } else {
                i12 = 4194304;
            }
            i3 |= i12;
        }
        i13 = 1;
        if ((4793491 & i3) != 4793490) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
            if (i14 != 0) {
                modifier4 = Modifier.Companion;
            } else {
                modifier4 = modifier2;
            }
            if (i4 != 0) {
                z10 = true;
            } else {
                z10 = z4;
            }
            if (i6 != 0) {
                z11 = true;
            } else {
                z11 = z2;
            }
            if (i8 != 0) {
                z12 = true;
            } else {
                z12 = z5;
            }
            if (i10 != 0) {
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                    objRememberedValue3 = new wr2(i13);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                nl3Var3 = (nl3) objRememberedValue3;
            } else {
                nl3Var3 = nl3Var2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-741495334, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:313)");
            }
            AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material1118 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
            Orientation orientation8 = Orientation.Horizontal;
            if (z12) {
                z13 = false;
            } else {
                z13 = false;
            }
            if (swipeToDismissBoxState.getUseFlingBehavior$material3()) {
                composerStartRestartGroup.startReplaceGroup(387581105);
                z14 = true;
                TargetedFlingBehavior targetedFlingBehaviorFlingBehavior8 = AnchoredDraggableDefaults.INSTANCE.flingBehavior(swipeToDismissBoxState.getAnchoredDraggableState$material3(), swipeToDismissBoxState.getPositionalThreshold$material3(), null, composerStartRestartGroup, AnchoredDraggableDefaults.$stable << 9, 4);
                composerStartRestartGroup.endReplaceGroup();
                targetedFlingBehavior = targetedFlingBehaviorFlingBehavior8;
            } else {
                z14 = true;
                composerStartRestartGroup.startReplaceGroup(-869685853);
                composerStartRestartGroup.endReplaceGroup();
                targetedFlingBehavior = null;
            }
            Modifier modifierAnchoredDraggable$default8 = AnchoredDraggableKt.anchoredDraggable$default(modifier4, anchoredDraggableState$material1118, orientation8, z13, null, null, targetedFlingBehavior, 24, null);
            companion = Alignment.Companion;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy8 = BoxKt.maybeCachedBoxMeasurePolicy(companion.getTopStart(), z14);
            boolean z116 = z12;
            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap111110 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier111110 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierAnchoredDraggable$default8);
            ComposeUiNode.Companion companion114 = ComposeUiNode.Companion;
            constructor = companion114.getConstructor();
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
            bm3 bm3VarB113 = cc.b(companion114, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy8, composerM5355constructorimpl, currentCompositionLocalMap111110);
            if (composerM5355constructorimpl.getInserting()) {
                companion2 = companion;
                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier111110, companion114.getSetModifier());
                BoxScopeInstance boxScopeInstance15 = BoxScopeInstance.INSTANCE;
                Modifier.Companion companion115 = Modifier.Companion;
                Modifier modifierMatchParentSize15 = boxScopeInstance15.matchParentSize(companion115);
                int i111117 = (i3 << 6) & 7168;
                Arrangement arrangement15 = Arrangement.INSTANCE;
                MeasurePolicy measurePolicyRowMeasurePolicy11113 = RowKt.rowMeasurePolicy(arrangement15.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap111111 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier111111 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierMatchParentSize15);
                constructor2 = companion114.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor2);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB114 = cc.b(companion114, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy11113, composerM5355constructorimpl2, currentCompositionLocalMap111111);
                if (composerM5355constructorimpl2.getInserting()) {
                    nl3Var4 = nl3Var3;
                    if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier111111, companion114.getSetModifier());
                    RowScopeInstance rowScopeInstance119 = RowScopeInstance.INSTANCE;
                    dm3Var.invoke(rowScopeInstance119, composerStartRestartGroup, Integer.valueOf(((i111117 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material1119 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                    if ((i3 & 7168) == 2048) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    if ((57344 & i3) == 16384) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new bm3() { // from class: sg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierDraggableAnchorsV1110 = DraggableAnchorsKt.draggableAnchorsV2(companion115, anchoredDraggableState$material1119, orientation8, (bm3) objRememberedValue);
                    int i111118 = (i3 >> 12) & 7168;
                    MeasurePolicy measurePolicyRowMeasurePolicy11114 = RowKt.rowMeasurePolicy(arrangement15.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                    currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap111112 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier111112 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV1110);
                    constructor3 = companion114.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor3);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion114, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy11114, composerM5355constructorimpl3, currentCompositionLocalMap111112);
                    if (composerM5355constructorimpl3.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier111112, companion114.getSetModifier());
                    dm3Var2.invoke(rowScopeInstance119, composerStartRestartGroup, Integer.valueOf(((i111118 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endNode();
                    SwipeToDismissBoxValue settledValue119 = swipeToDismissBoxState.getSettledValue();
                    boolean zChangedInstance1110 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                    if ((3670016 & i3) == 1048576) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    z18 = zChangedInstance1110 | z17;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z18) {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        nl3Var5 = nl3Var4;
                        objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.LaunchedEffect(settledValue119, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z9 = z11;
                    nl3Var2 = nl3Var5;
                    modifier3 = modifier4;
                    z8 = z116;
                    z7 = z10;
                } else {
                    nl3Var4 = nl3Var3;
                }
                dc.b(bm3VarB114, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier111111, companion114.getSetModifier());
                RowScopeInstance rowScopeInstance1110 = RowScopeInstance.INSTANCE;
                dm3Var.invoke(rowScopeInstance1110, composerStartRestartGroup, Integer.valueOf(((i111117 >> 6) & 112) | 6));
                composerStartRestartGroup.endNode();
                AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material11110 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                if ((i3 & 7168) == 2048) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                if ((57344 & i3) == 16384) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    objRememberedValue = new bm3() { // from class: sg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new bm3() { // from class: sg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Modifier modifierDraggableAnchorsV1111 = DraggableAnchorsKt.draggableAnchorsV2(companion115, anchoredDraggableState$material11110, orientation8, (bm3) objRememberedValue);
                int i111119 = (i3 >> 12) & 7168;
                MeasurePolicy measurePolicyRowMeasurePolicy11115 = RowKt.rowMeasurePolicy(arrangement15.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap111113 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier111113 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV1111);
                constructor3 = companion114.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor3);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB = cc.b(companion114, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy11115, composerM5355constructorimpl3, currentCompositionLocalMap111113);
                if (composerM5355constructorimpl3.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                }
                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier111113, companion114.getSetModifier());
                dm3Var2.invoke(rowScopeInstance1110, composerStartRestartGroup, Integer.valueOf(((i111119 >> 6) & 112) | 6));
                composerStartRestartGroup.endNode();
                composerStartRestartGroup.endNode();
                SwipeToDismissBoxValue settledValue1110 = swipeToDismissBoxState.getSettledValue();
                boolean zChangedInstance1111 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                if ((3670016 & i3) == 1048576) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                z18 = zChangedInstance1111 | z17;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z18) {
                    nl3Var5 = nl3Var4;
                    objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    nl3Var5 = nl3Var4;
                    objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                EffectsKt.LaunchedEffect(settledValue1110, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z9 = z11;
                nl3Var2 = nl3Var5;
                modifier3 = modifier4;
                z8 = z116;
                z7 = z10;
            } else {
                companion2 = companion;
            }
            dc.b(bm3VarB113, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier111110, companion114.getSetModifier());
            BoxScopeInstance boxScopeInstance16 = BoxScopeInstance.INSTANCE;
            Modifier.Companion companion116 = Modifier.Companion;
            Modifier modifierMatchParentSize16 = boxScopeInstance16.matchParentSize(companion116);
            int i1111110 = (i3 << 6) & 7168;
            Arrangement arrangement16 = Arrangement.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy11116 = RowKt.rowMeasurePolicy(arrangement16.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
            currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap111114 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier111114 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierMatchParentSize16);
            constructor2 = companion114.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor2);
            } else {
                composerStartRestartGroup.useNode();
            }
            composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB115 = cc.b(companion114, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy11116, composerM5355constructorimpl2, currentCompositionLocalMap111114);
            if (composerM5355constructorimpl2.getInserting()) {
                nl3Var4 = nl3Var3;
                if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                }
                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier111114, companion114.getSetModifier());
                RowScopeInstance rowScopeInstance1111 = RowScopeInstance.INSTANCE;
                dm3Var.invoke(rowScopeInstance1111, composerStartRestartGroup, Integer.valueOf(((i1111110 >> 6) & 112) | 6));
                composerStartRestartGroup.endNode();
                AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material11111 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
                if ((i3 & 7168) == 2048) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                if ((57344 & i3) == 16384) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    objRememberedValue = new bm3() { // from class: sg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new bm3() { // from class: sg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Modifier modifierDraggableAnchorsV1112 = DraggableAnchorsKt.draggableAnchorsV2(companion116, anchoredDraggableState$material11111, orientation8, (bm3) objRememberedValue);
                int i1111111 = (i3 >> 12) & 7168;
                MeasurePolicy measurePolicyRowMeasurePolicy11117 = RowKt.rowMeasurePolicy(arrangement16.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
                currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap111115 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier111115 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV1112);
                constructor3 = companion114.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor3);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB = cc.b(companion114, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy11117, composerM5355constructorimpl3, currentCompositionLocalMap111115);
                if (composerM5355constructorimpl3.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                }
                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier111115, companion114.getSetModifier());
                dm3Var2.invoke(rowScopeInstance1111, composerStartRestartGroup, Integer.valueOf(((i1111111 >> 6) & 112) | 6));
                composerStartRestartGroup.endNode();
                composerStartRestartGroup.endNode();
                SwipeToDismissBoxValue settledValue1111 = swipeToDismissBoxState.getSettledValue();
                boolean zChangedInstance1112 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
                if ((3670016 & i3) == 1048576) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                z18 = zChangedInstance1112 | z17;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z18) {
                    nl3Var5 = nl3Var4;
                    objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    nl3Var5 = nl3Var4;
                    objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                EffectsKt.LaunchedEffect(settledValue1111, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z9 = z11;
                nl3Var2 = nl3Var5;
                modifier3 = modifier4;
                z8 = z116;
                z7 = z10;
            } else {
                nl3Var4 = nl3Var3;
            }
            dc.b(bm3VarB115, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier111114, companion114.getSetModifier());
            RowScopeInstance rowScopeInstance1112 = RowScopeInstance.INSTANCE;
            dm3Var.invoke(rowScopeInstance1112, composerStartRestartGroup, Integer.valueOf(((i1111110 >> 6) & 112) | 6));
            composerStartRestartGroup.endNode();
            AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material11112 = swipeToDismissBoxState.getAnchoredDraggableState$material3();
            if ((i3 & 7168) == 2048) {
                z15 = true;
            } else {
                z15 = false;
            }
            if ((57344 & i3) == 16384) {
                z16 = true;
            } else {
                z16 = false;
            }
            zChangedInstance = z16 | z15 | composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance) {
                objRememberedValue = new bm3() { // from class: sg8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new bm3() { // from class: sg8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9(swipeToDismissBoxState, z10, z11, (IntSize) obj, (Constraints) obj2);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierDraggableAnchorsV1113 = DraggableAnchorsKt.draggableAnchorsV2(companion116, anchoredDraggableState$material11112, orientation8, (bm3) objRememberedValue);
            int i1111112 = (i3 >> 12) & 7168;
            MeasurePolicy measurePolicyRowMeasurePolicy11118 = RowKt.rowMeasurePolicy(arrangement16.getStart(), companion2.getTop(), composerStartRestartGroup, 0);
            currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap111116 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier111116 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierDraggableAnchorsV1113);
            constructor3 = companion114.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor3);
            } else {
                composerStartRestartGroup.useNode();
            }
            composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3VarB = cc.b(companion114, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy11118, composerM5355constructorimpl3, currentCompositionLocalMap111116);
            if (composerM5355constructorimpl3.getInserting()) {
                dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
            } else {
                dc.b(bm3VarB, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
            }
            Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier111116, companion114.getSetModifier());
            dm3Var2.invoke(rowScopeInstance1112, composerStartRestartGroup, Integer.valueOf(((i1111112 >> 6) & 112) | 6));
            composerStartRestartGroup.endNode();
            composerStartRestartGroup.endNode();
            SwipeToDismissBoxValue settledValue1112 = swipeToDismissBoxState.getSettledValue();
            boolean zChangedInstance1113 = composerStartRestartGroup.changedInstance(swipeToDismissBoxState);
            if ((3670016 & i3) == 1048576) {
                z17 = true;
            } else {
                z17 = false;
            }
            z18 = zChangedInstance1113 | z17;
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z18) {
                nl3Var5 = nl3Var4;
                objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            } else {
                nl3Var5 = nl3Var4;
                objRememberedValue2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, nl3Var5, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            EffectsKt.LaunchedEffect(settledValue1112, nl3Var5, (bm3) objRememberedValue2, composerStartRestartGroup, (i3 >> 15) & 112);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            z9 = z11;
            nl3Var2 = nl3Var5;
            modifier3 = modifier4;
            z8 = z116;
            z7 = z10;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            z7 = z4;
            z8 = z5;
            z9 = z2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tg8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$13(swipeToDismissBoxState, dm3Var, modifier3, z7, z9, z8, nl3Var2, dm3Var2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b36 SwipeToDismissBox$lambda$11$lambda$10$lambda$9(SwipeToDismissBoxState swipeToDismissBoxState, final boolean z, final boolean z2, final IntSize intSize, Constraints constraints) {
        return new b36(AnchoredDraggableKt.DraggableAnchors(new nl3() { // from class: ug8
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$11$lambda$10$lambda$9$lambda$8(intSize, z, z2, (DraggableAnchorsConfig) obj);
            }
        }), swipeToDismissBoxState.getTargetValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SwipeToDismissBox$lambda$11$lambda$10$lambda$9$lambda$8(IntSize intSize, boolean z, boolean z2, DraggableAnchorsConfig draggableAnchorsConfig) {
        float fM9217unboximpl = (int) (intSize.m9217unboximpl() >> 32);
        draggableAnchorsConfig.at(SwipeToDismissBoxValue.Settled, 0.0f);
        if (z) {
            draggableAnchorsConfig.at(SwipeToDismissBoxValue.StartToEnd, fM9217unboximpl);
        }
        if (z2) {
            draggableAnchorsConfig.at(SwipeToDismissBoxValue.EndToStart, -fM9217unboximpl);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SwipeToDismissBox$lambda$13(SwipeToDismissBoxState swipeToDismissBoxState, dm3 dm3Var, Modifier modifier, boolean z, boolean z2, boolean z3, nl3 nl3Var, dm3 dm3Var2, int i, int i2, Composer composer, int i3) {
        SwipeToDismissBox(swipeToDismissBoxState, dm3Var, modifier, z, z2, z3, nl3Var, dm3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SwipeToDismissBox$lambda$15$lambda$14(SwipeToDismissBoxValue swipeToDismissBoxValue) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SwipeToDismissBox$lambda$16(SwipeToDismissBoxState swipeToDismissBoxState, dm3 dm3Var, Modifier modifier, boolean z, boolean z2, boolean z3, dm3 dm3Var2, int i, int i2, Composer composer, int i3) {
        SwipeToDismissBox(swipeToDismissBoxState, dm3Var, modifier, z, z2, z3, dm3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SwipeToDismissBox$lambda$7$lambda$6(SwipeToDismissBoxValue swipeToDismissBoxValue) {
        return j59.a;
    }

    @ul2
    public static final SwipeToDismissBoxState rememberSwipeToDismissBoxState(final SwipeToDismissBoxValue swipeToDismissBoxValue, final nl3<? super SwipeToDismissBoxValue, Boolean> nl3Var, final nl3<? super Float, Float> nl3Var2, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            swipeToDismissBoxValue = SwipeToDismissBoxValue.Settled;
        }
        if ((i2 & 2) != 0) {
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new eg1(2);
                composer.updateRememberedValue(objRememberedValue);
            }
            nl3Var = (nl3) objRememberedValue;
        }
        if ((i2 & 4) != 0) {
            nl3Var2 = SwipeToDismissBoxDefaults.INSTANCE.getPositionalThreshold(composer, 6);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-246335487, i, -1, "androidx.compose.material3.rememberSwipeToDismissBoxState (SwipeToDismissBox.kt:273)");
        }
        final Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        Object[] objArr = new Object[0];
        Saver<SwipeToDismissBoxState, SwipeToDismissBoxValue> Saver = SwipeToDismissBoxState.Companion.Saver(nl3Var, nl3Var2, density);
        boolean z = true;
        boolean zChanged = (((6 ^ (i & 14)) > 4 && composer.changed(swipeToDismissBoxValue.ordinal())) || (i & 6) == 4) | composer.changed(density) | ((((i & 112) ^ 48) > 32 && composer.changed(nl3Var)) || (i & 48) == 32);
        if ((((i & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 || !composer.changed(nl3Var2)) && (i & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
            z = false;
        }
        boolean z2 = zChanged | z;
        Object objRememberedValue2 = composer.rememberedValue();
        if (z2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
            objRememberedValue2 = new ll3() { // from class: qg8
                @Override // defpackage.ll3
                public final Object invoke() {
                    return SwipeToDismissBoxKt.rememberSwipeToDismissBoxState$lambda$5$lambda$4(swipeToDismissBoxValue, density, nl3Var, nl3Var2);
                }
            };
            composer.updateRememberedValue(objRememberedValue2);
        }
        SwipeToDismissBoxState swipeToDismissBoxState = (SwipeToDismissBoxState) RememberSaveableKt.m5624rememberSaveable(objArr, (Saver) Saver, (ll3) objRememberedValue2, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return swipeToDismissBoxState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SwipeToDismissBoxState rememberSwipeToDismissBoxState$lambda$1$lambda$0(SwipeToDismissBoxValue swipeToDismissBoxValue, nl3 nl3Var) {
        return new SwipeToDismissBoxState(swipeToDismissBoxValue, nl3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean rememberSwipeToDismissBoxState$lambda$3$lambda$2(SwipeToDismissBoxValue swipeToDismissBoxValue) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SwipeToDismissBoxState rememberSwipeToDismissBoxState$lambda$5$lambda$4(SwipeToDismissBoxValue swipeToDismissBoxValue, Density density, nl3 nl3Var, nl3 nl3Var2) {
        return new SwipeToDismissBoxState(swipeToDismissBoxValue, density, nl3Var, nl3Var2);
    }

    public static final SwipeToDismissBoxState rememberSwipeToDismissBoxState(final SwipeToDismissBoxValue swipeToDismissBoxValue, final nl3<? super Float, Float> nl3Var, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            swipeToDismissBoxValue = SwipeToDismissBoxValue.Settled;
        }
        if ((i2 & 2) != 0) {
            nl3Var = SwipeToDismissBoxDefaults.INSTANCE.getPositionalThreshold(composer, 6);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-470572556, i, -1, "androidx.compose.material3.rememberSwipeToDismissBoxState (SwipeToDismissBox.kt:243)");
        }
        Object[] objArr = new Object[0];
        Saver<SwipeToDismissBoxState, SwipeToDismissBoxValue> Saver = SwipeToDismissBoxState.Companion.Saver(nl3Var);
        boolean z = true;
        boolean z2 = ((6 ^ (i & 14)) > 4 && composer.changed(swipeToDismissBoxValue.ordinal())) || (i & 6) == 4;
        if ((((i & 112) ^ 48) <= 32 || !composer.changed(nl3Var)) && (i & 48) != 32) {
            z = false;
        }
        boolean z3 = z2 | z;
        Object objRememberedValue = composer.rememberedValue();
        if (z3 || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new ll3() { // from class: vg8
                @Override // defpackage.ll3
                public final Object invoke() {
                    return SwipeToDismissBoxKt.rememberSwipeToDismissBoxState$lambda$1$lambda$0(swipeToDismissBoxValue, nl3Var);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        SwipeToDismissBoxState swipeToDismissBoxState = (SwipeToDismissBoxState) RememberSaveableKt.m5624rememberSaveable(objArr, (Saver) Saver, (ll3) objRememberedValue, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return swipeToDismissBoxState;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x011c  */
    /* JADX WARN: Code duplicated, block: B:105:0x0152  */
    /* JADX WARN: Code duplicated, block: B:107:0x015a  */
    /* JADX WARN: Code duplicated, block: B:110:0x016b  */
    /* JADX WARN: Code duplicated, block: B:112:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0060  */
    /* JADX WARN: Code duplicated, block: B:38:0x0065  */
    /* JADX WARN: Code duplicated, block: B:40:0x0069  */
    /* JADX WARN: Code duplicated, block: B:42:0x0071  */
    /* JADX WARN: Code duplicated, block: B:43:0x0074  */
    /* JADX WARN: Code duplicated, block: B:47:0x007b  */
    /* JADX WARN: Code duplicated, block: B:49:0x0080  */
    /* JADX WARN: Code duplicated, block: B:51:0x0084  */
    /* JADX WARN: Code duplicated, block: B:53:0x008c  */
    /* JADX WARN: Code duplicated, block: B:54:0x008f  */
    /* JADX WARN: Code duplicated, block: B:58:0x0098  */
    /* JADX WARN: Code duplicated, block: B:60:0x009c  */
    /* JADX WARN: Code duplicated, block: B:62:0x009f  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:65:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:71:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:73:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:76:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:81:0x00db  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:89:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:92:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:93:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:95:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:96:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:99:0x0106  */
    @ul2
    public static final /* synthetic */ void SwipeToDismissBox(final SwipeToDismissBoxState swipeToDismissBoxState, final dm3 dm3Var, Modifier modifier, boolean z, boolean z2, boolean z3, final dm3 dm3Var2, Composer composer, final int i, final int i2) {
        SwipeToDismissBoxState swipeToDismissBoxState2;
        int i3;
        dm3 dm3Var3;
        Modifier modifier2;
        int i4;
        boolean z4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z5;
        Composer composer2;
        final boolean z6;
        final Modifier modifier3;
        final boolean z7;
        final boolean z8;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        boolean z9;
        boolean z10;
        boolean z11;
        Object objRememberedValue;
        int i11;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1807005299);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
            swipeToDismissBoxState2 = swipeToDismissBoxState;
        } else {
            swipeToDismissBoxState2 = swipeToDismissBoxState;
            if ((i & 6) == 0) {
                i3 = (composerStartRestartGroup.changedInstance(swipeToDismissBoxState2) ? 4 : 2) | i;
            } else {
                i3 = i;
            }
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
            dm3Var3 = dm3Var;
        } else {
            dm3Var3 = dm3Var;
            if ((i & 48) == 0) {
                i3 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 32 : 16;
            }
        }
        int i12 = i2 & 4;
        if (i12 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 256 : 128;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    z4 = z;
                    if (composerStartRestartGroup.changed(z4)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 16;
                if (i6 != 0) {
                    if ((i & 24576) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i7 = 16384;
                        } else {
                            i7 = 8192;
                        }
                        i3 |= i7;
                    }
                    i8 = i2 & 32;
                    if (i8 != 0) {
                        if ((196608 & i) == 0) {
                            if (composerStartRestartGroup.changed(z3)) {
                                i9 = 131072;
                            } else {
                                i9 = 65536;
                            }
                            i3 |= i9;
                        }
                        if ((i2 & 64) != 0) {
                            if ((i & 1572864) == 0) {
                                if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                                    i10 = 1048576;
                                } else {
                                    i10 = 524288;
                                }
                                i3 |= i10;
                            }
                            if ((i3 & 599187) != 599186) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                                if (i12 != 0) {
                                    modifier4 = Modifier.Companion;
                                } else {
                                    modifier4 = modifier2;
                                }
                                if (i4 != 0) {
                                    z9 = true;
                                } else {
                                    z9 = z4;
                                }
                                if (i6 != 0) {
                                    z10 = true;
                                } else {
                                    z10 = z2;
                                }
                                if (i8 != 0) {
                                    z11 = true;
                                } else {
                                    z11 = z3;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                                }
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                i11 = 3;
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new gg1(i11);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                composer2 = composerStartRestartGroup;
                                SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                modifier3 = modifier4;
                                z7 = z9;
                                z6 = z10;
                                z8 = z11;
                            } else {
                                composer2 = composerStartRestartGroup;
                                composer2.skipToGroupEnd();
                                z6 = z2;
                                modifier3 = modifier2;
                                z7 = z4;
                                z8 = z3;
                            }
                            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i3 |= 1572864;
                        if ((i3 & 599187) != 599186) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                            if (i12 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i4 != 0) {
                                z9 = true;
                            } else {
                                z9 = z4;
                            }
                            if (i6 != 0) {
                                z10 = true;
                            } else {
                                z10 = z2;
                            }
                            if (i8 != 0) {
                                z11 = true;
                            } else {
                                z11 = z3;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            i11 = 3;
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new gg1(i11);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composer2 = composerStartRestartGroup;
                            SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            z7 = z9;
                            z6 = z10;
                            z8 = z11;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            z6 = z2;
                            modifier3 = modifier2;
                            z7 = z4;
                            z8 = z3;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    if ((i2 & 64) != 0) {
                        if ((i & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                                i10 = 1048576;
                            } else {
                                i10 = 524288;
                            }
                            i3 |= i10;
                        }
                        if ((i3 & 599187) != 599186) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                            if (i12 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i4 != 0) {
                                z9 = true;
                            } else {
                                z9 = z4;
                            }
                            if (i6 != 0) {
                                z10 = true;
                            } else {
                                z10 = z2;
                            }
                            if (i8 != 0) {
                                z11 = true;
                            } else {
                                z11 = z3;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            i11 = 3;
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new gg1(i11);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composer2 = composerStartRestartGroup;
                            SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            z7 = z9;
                            z6 = z10;
                            z8 = z11;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            z6 = z2;
                            modifier3 = modifier2;
                            z7 = z4;
                            z8 = z3;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 1572864;
                    if ((i3 & 599187) != 599186) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z9 = true;
                        } else {
                            z9 = z4;
                        }
                        if (i6 != 0) {
                            z10 = true;
                        } else {
                            z10 = z2;
                        }
                        if (i8 != 0) {
                            z11 = true;
                        } else {
                            z11 = z3;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        i11 = 3;
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new gg1(i11);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composer2 = composerStartRestartGroup;
                        SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        z7 = z9;
                        z6 = z10;
                        z8 = z11;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z6 = z2;
                        modifier3 = modifier2;
                        z7 = z4;
                        z8 = z3;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        if (composerStartRestartGroup.changed(z3)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    if ((i2 & 64) != 0) {
                        if ((i & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                                i10 = 1048576;
                            } else {
                                i10 = 524288;
                            }
                            i3 |= i10;
                        }
                        if ((i3 & 599187) != 599186) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                            if (i12 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i4 != 0) {
                                z9 = true;
                            } else {
                                z9 = z4;
                            }
                            if (i6 != 0) {
                                z10 = true;
                            } else {
                                z10 = z2;
                            }
                            if (i8 != 0) {
                                z11 = true;
                            } else {
                                z11 = z3;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            i11 = 3;
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new gg1(i11);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composer2 = composerStartRestartGroup;
                            SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            z7 = z9;
                            z6 = z10;
                            z8 = z11;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            z6 = z2;
                            modifier3 = modifier2;
                            z7 = z4;
                            z8 = z3;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 1572864;
                    if ((i3 & 599187) != 599186) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z9 = true;
                        } else {
                            z9 = z4;
                        }
                        if (i6 != 0) {
                            z10 = true;
                        } else {
                            z10 = z2;
                        }
                        if (i8 != 0) {
                            z11 = true;
                        } else {
                            z11 = z3;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        i11 = 3;
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new gg1(i11);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composer2 = composerStartRestartGroup;
                        SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        z7 = z9;
                        z6 = z10;
                        z8 = z11;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z6 = z2;
                        modifier3 = modifier2;
                        z7 = z4;
                        z8 = z3;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                if ((i2 & 64) != 0) {
                    if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i3 |= i10;
                    }
                    if ((i3 & 599187) != 599186) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z9 = true;
                        } else {
                            z9 = z4;
                        }
                        if (i6 != 0) {
                            z10 = true;
                        } else {
                            z10 = z2;
                        }
                        if (i8 != 0) {
                            z11 = true;
                        } else {
                            z11 = z3;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        i11 = 3;
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new gg1(i11);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composer2 = composerStartRestartGroup;
                        SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        z7 = z9;
                        z6 = z10;
                        z8 = z11;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z6 = z2;
                        modifier3 = modifier2;
                        z7 = z4;
                        z8 = z3;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                if ((i3 & 599187) != 599186) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z9 = true;
                    } else {
                        z9 = z4;
                    }
                    if (i6 != 0) {
                        z10 = true;
                    } else {
                        z10 = z2;
                    }
                    if (i8 != 0) {
                        z11 = true;
                    } else {
                        z11 = z3;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    i11 = 3;
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new gg1(i11);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composer2 = composerStartRestartGroup;
                    SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    z7 = z9;
                    z6 = z10;
                    z8 = z11;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z6 = z2;
                    modifier3 = modifier2;
                    z7 = z4;
                    z8 = z3;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z4 = z;
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        if (composerStartRestartGroup.changed(z3)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    if ((i2 & 64) != 0) {
                        if ((i & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                                i10 = 1048576;
                            } else {
                                i10 = 524288;
                            }
                            i3 |= i10;
                        }
                        if ((i3 & 599187) != 599186) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                            if (i12 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i4 != 0) {
                                z9 = true;
                            } else {
                                z9 = z4;
                            }
                            if (i6 != 0) {
                                z10 = true;
                            } else {
                                z10 = z2;
                            }
                            if (i8 != 0) {
                                z11 = true;
                            } else {
                                z11 = z3;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            i11 = 3;
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new gg1(i11);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composer2 = composerStartRestartGroup;
                            SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            z7 = z9;
                            z6 = z10;
                            z8 = z11;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            z6 = z2;
                            modifier3 = modifier2;
                            z7 = z4;
                            z8 = z3;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 1572864;
                    if ((i3 & 599187) != 599186) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z9 = true;
                        } else {
                            z9 = z4;
                        }
                        if (i6 != 0) {
                            z10 = true;
                        } else {
                            z10 = z2;
                        }
                        if (i8 != 0) {
                            z11 = true;
                        } else {
                            z11 = z3;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        i11 = 3;
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new gg1(i11);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composer2 = composerStartRestartGroup;
                        SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        z7 = z9;
                        z6 = z10;
                        z8 = z11;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z6 = z2;
                        modifier3 = modifier2;
                        z7 = z4;
                        z8 = z3;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                if ((i2 & 64) != 0) {
                    if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i3 |= i10;
                    }
                    if ((i3 & 599187) != 599186) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z9 = true;
                        } else {
                            z9 = z4;
                        }
                        if (i6 != 0) {
                            z10 = true;
                        } else {
                            z10 = z2;
                        }
                        if (i8 != 0) {
                            z11 = true;
                        } else {
                            z11 = z3;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        i11 = 3;
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new gg1(i11);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composer2 = composerStartRestartGroup;
                        SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        z7 = z9;
                        z6 = z10;
                        z8 = z11;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z6 = z2;
                        modifier3 = modifier2;
                        z7 = z4;
                        z8 = z3;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                if ((i3 & 599187) != 599186) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z9 = true;
                    } else {
                        z9 = z4;
                    }
                    if (i6 != 0) {
                        z10 = true;
                    } else {
                        z10 = z2;
                    }
                    if (i8 != 0) {
                        z11 = true;
                    } else {
                        z11 = z3;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    i11 = 3;
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new gg1(i11);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composer2 = composerStartRestartGroup;
                    SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    z7 = z9;
                    z6 = z10;
                    z8 = z11;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z6 = z2;
                    modifier3 = modifier2;
                    z7 = z4;
                    z8 = z3;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    if (composerStartRestartGroup.changed(z3)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                if ((i2 & 64) != 0) {
                    if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i3 |= i10;
                    }
                    if ((i3 & 599187) != 599186) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z9 = true;
                        } else {
                            z9 = z4;
                        }
                        if (i6 != 0) {
                            z10 = true;
                        } else {
                            z10 = z2;
                        }
                        if (i8 != 0) {
                            z11 = true;
                        } else {
                            z11 = z3;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        i11 = 3;
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new gg1(i11);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composer2 = composerStartRestartGroup;
                        SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        z7 = z9;
                        z6 = z10;
                        z8 = z11;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z6 = z2;
                        modifier3 = modifier2;
                        z7 = z4;
                        z8 = z3;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                if ((i3 & 599187) != 599186) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z9 = true;
                    } else {
                        z9 = z4;
                    }
                    if (i6 != 0) {
                        z10 = true;
                    } else {
                        z10 = z2;
                    }
                    if (i8 != 0) {
                        z11 = true;
                    } else {
                        z11 = z3;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    i11 = 3;
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new gg1(i11);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composer2 = composerStartRestartGroup;
                    SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    z7 = z9;
                    z6 = z10;
                    z8 = z11;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z6 = z2;
                    modifier3 = modifier2;
                    z7 = z4;
                    z8 = z3;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            if ((i2 & 64) != 0) {
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i3 |= i10;
                }
                if ((i3 & 599187) != 599186) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z9 = true;
                    } else {
                        z9 = z4;
                    }
                    if (i6 != 0) {
                        z10 = true;
                    } else {
                        z10 = z2;
                    }
                    if (i8 != 0) {
                        z11 = true;
                    } else {
                        z11 = z3;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    i11 = 3;
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new gg1(i11);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composer2 = composerStartRestartGroup;
                    SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    z7 = z9;
                    z6 = z10;
                    z8 = z11;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z6 = z2;
                    modifier3 = modifier2;
                    z7 = z4;
                    z8 = z3;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            if ((i3 & 599187) != 599186) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                if (i12 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    z9 = true;
                } else {
                    z9 = z4;
                }
                if (i6 != 0) {
                    z10 = true;
                } else {
                    z10 = z2;
                }
                if (i8 != 0) {
                    z11 = true;
                } else {
                    z11 = z3;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                i11 = 3;
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new gg1(i11);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composer2 = composerStartRestartGroup;
                SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                z7 = z9;
                z6 = z10;
                z8 = z11;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z6 = z2;
                modifier3 = modifier2;
                z7 = z4;
                z8 = z3;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                z4 = z;
                if (composerStartRestartGroup.changed(z4)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        if (composerStartRestartGroup.changed(z3)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    if ((i2 & 64) != 0) {
                        if ((i & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                                i10 = 1048576;
                            } else {
                                i10 = 524288;
                            }
                            i3 |= i10;
                        }
                        if ((i3 & 599187) != 599186) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                            if (i12 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i4 != 0) {
                                z9 = true;
                            } else {
                                z9 = z4;
                            }
                            if (i6 != 0) {
                                z10 = true;
                            } else {
                                z10 = z2;
                            }
                            if (i8 != 0) {
                                z11 = true;
                            } else {
                                z11 = z3;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            i11 = 3;
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new gg1(i11);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composer2 = composerStartRestartGroup;
                            SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            z7 = z9;
                            z6 = z10;
                            z8 = z11;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            z6 = z2;
                            modifier3 = modifier2;
                            z7 = z4;
                            z8 = z3;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 1572864;
                    if ((i3 & 599187) != 599186) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z9 = true;
                        } else {
                            z9 = z4;
                        }
                        if (i6 != 0) {
                            z10 = true;
                        } else {
                            z10 = z2;
                        }
                        if (i8 != 0) {
                            z11 = true;
                        } else {
                            z11 = z3;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        i11 = 3;
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new gg1(i11);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composer2 = composerStartRestartGroup;
                        SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        z7 = z9;
                        z6 = z10;
                        z8 = z11;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z6 = z2;
                        modifier3 = modifier2;
                        z7 = z4;
                        z8 = z3;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                if ((i2 & 64) != 0) {
                    if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i3 |= i10;
                    }
                    if ((i3 & 599187) != 599186) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z9 = true;
                        } else {
                            z9 = z4;
                        }
                        if (i6 != 0) {
                            z10 = true;
                        } else {
                            z10 = z2;
                        }
                        if (i8 != 0) {
                            z11 = true;
                        } else {
                            z11 = z3;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        i11 = 3;
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new gg1(i11);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composer2 = composerStartRestartGroup;
                        SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        z7 = z9;
                        z6 = z10;
                        z8 = z11;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z6 = z2;
                        modifier3 = modifier2;
                        z7 = z4;
                        z8 = z3;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                if ((i3 & 599187) != 599186) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z9 = true;
                    } else {
                        z9 = z4;
                    }
                    if (i6 != 0) {
                        z10 = true;
                    } else {
                        z10 = z2;
                    }
                    if (i8 != 0) {
                        z11 = true;
                    } else {
                        z11 = z3;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    i11 = 3;
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new gg1(i11);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composer2 = composerStartRestartGroup;
                    SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    z7 = z9;
                    z6 = z10;
                    z8 = z11;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z6 = z2;
                    modifier3 = modifier2;
                    z7 = z4;
                    z8 = z3;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    if (composerStartRestartGroup.changed(z3)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                if ((i2 & 64) != 0) {
                    if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i3 |= i10;
                    }
                    if ((i3 & 599187) != 599186) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z9 = true;
                        } else {
                            z9 = z4;
                        }
                        if (i6 != 0) {
                            z10 = true;
                        } else {
                            z10 = z2;
                        }
                        if (i8 != 0) {
                            z11 = true;
                        } else {
                            z11 = z3;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        i11 = 3;
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new gg1(i11);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composer2 = composerStartRestartGroup;
                        SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        z7 = z9;
                        z6 = z10;
                        z8 = z11;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z6 = z2;
                        modifier3 = modifier2;
                        z7 = z4;
                        z8 = z3;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                if ((i3 & 599187) != 599186) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z9 = true;
                    } else {
                        z9 = z4;
                    }
                    if (i6 != 0) {
                        z10 = true;
                    } else {
                        z10 = z2;
                    }
                    if (i8 != 0) {
                        z11 = true;
                    } else {
                        z11 = z3;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    i11 = 3;
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new gg1(i11);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composer2 = composerStartRestartGroup;
                    SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    z7 = z9;
                    z6 = z10;
                    z8 = z11;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z6 = z2;
                    modifier3 = modifier2;
                    z7 = z4;
                    z8 = z3;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            if ((i2 & 64) != 0) {
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i3 |= i10;
                }
                if ((i3 & 599187) != 599186) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z9 = true;
                    } else {
                        z9 = z4;
                    }
                    if (i6 != 0) {
                        z10 = true;
                    } else {
                        z10 = z2;
                    }
                    if (i8 != 0) {
                        z11 = true;
                    } else {
                        z11 = z3;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    i11 = 3;
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new gg1(i11);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composer2 = composerStartRestartGroup;
                    SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    z7 = z9;
                    z6 = z10;
                    z8 = z11;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z6 = z2;
                    modifier3 = modifier2;
                    z7 = z4;
                    z8 = z3;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            if ((i3 & 599187) != 599186) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                if (i12 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    z9 = true;
                } else {
                    z9 = z4;
                }
                if (i6 != 0) {
                    z10 = true;
                } else {
                    z10 = z2;
                }
                if (i8 != 0) {
                    z11 = true;
                } else {
                    z11 = z3;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                i11 = 3;
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new gg1(i11);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composer2 = composerStartRestartGroup;
                SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                z7 = z9;
                z6 = z10;
                z8 = z11;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z6 = z2;
                modifier3 = modifier2;
                z7 = z4;
                z8 = z3;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z4 = z;
        i6 = i2 & 16;
        if (i6 != 0) {
            if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i3 |= i7;
            }
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    if (composerStartRestartGroup.changed(z3)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                if ((i2 & 64) != 0) {
                    if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i3 |= i10;
                    }
                    if ((i3 & 599187) != 599186) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z9 = true;
                        } else {
                            z9 = z4;
                        }
                        if (i6 != 0) {
                            z10 = true;
                        } else {
                            z10 = z2;
                        }
                        if (i8 != 0) {
                            z11 = true;
                        } else {
                            z11 = z3;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        i11 = 3;
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new gg1(i11);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composer2 = composerStartRestartGroup;
                        SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        z7 = z9;
                        z6 = z10;
                        z8 = z11;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z6 = z2;
                        modifier3 = modifier2;
                        z7 = z4;
                        z8 = z3;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                if ((i3 & 599187) != 599186) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z9 = true;
                    } else {
                        z9 = z4;
                    }
                    if (i6 != 0) {
                        z10 = true;
                    } else {
                        z10 = z2;
                    }
                    if (i8 != 0) {
                        z11 = true;
                    } else {
                        z11 = z3;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    i11 = 3;
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new gg1(i11);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composer2 = composerStartRestartGroup;
                    SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    z7 = z9;
                    z6 = z10;
                    z8 = z11;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z6 = z2;
                    modifier3 = modifier2;
                    z7 = z4;
                    z8 = z3;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            if ((i2 & 64) != 0) {
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i3 |= i10;
                }
                if ((i3 & 599187) != 599186) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z9 = true;
                    } else {
                        z9 = z4;
                    }
                    if (i6 != 0) {
                        z10 = true;
                    } else {
                        z10 = z2;
                    }
                    if (i8 != 0) {
                        z11 = true;
                    } else {
                        z11 = z3;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    i11 = 3;
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new gg1(i11);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composer2 = composerStartRestartGroup;
                    SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    z7 = z9;
                    z6 = z10;
                    z8 = z11;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z6 = z2;
                    modifier3 = modifier2;
                    z7 = z4;
                    z8 = z3;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            if ((i3 & 599187) != 599186) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                if (i12 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    z9 = true;
                } else {
                    z9 = z4;
                }
                if (i6 != 0) {
                    z10 = true;
                } else {
                    z10 = z2;
                }
                if (i8 != 0) {
                    z11 = true;
                } else {
                    z11 = z3;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                i11 = 3;
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new gg1(i11);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composer2 = composerStartRestartGroup;
                SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                z7 = z9;
                z6 = z10;
                z8 = z11;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z6 = z2;
                modifier3 = modifier2;
                z7 = z4;
                z8 = z3;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        i8 = i2 & 32;
        if (i8 != 0) {
            if ((196608 & i) == 0) {
                if (composerStartRestartGroup.changed(z3)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i3 |= i9;
            }
            if ((i2 & 64) != 0) {
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i3 |= i10;
                }
                if ((i3 & 599187) != 599186) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z9 = true;
                    } else {
                        z9 = z4;
                    }
                    if (i6 != 0) {
                        z10 = true;
                    } else {
                        z10 = z2;
                    }
                    if (i8 != 0) {
                        z11 = true;
                    } else {
                        z11 = z3;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    i11 = 3;
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new gg1(i11);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composer2 = composerStartRestartGroup;
                    SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    z7 = z9;
                    z6 = z10;
                    z8 = z11;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z6 = z2;
                    modifier3 = modifier2;
                    z7 = z4;
                    z8 = z3;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            if ((i3 & 599187) != 599186) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                if (i12 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    z9 = true;
                } else {
                    z9 = z4;
                }
                if (i6 != 0) {
                    z10 = true;
                } else {
                    z10 = z2;
                }
                if (i8 != 0) {
                    z11 = true;
                } else {
                    z11 = z3;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                i11 = 3;
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new gg1(i11);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composer2 = composerStartRestartGroup;
                SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                z7 = z9;
                z6 = z10;
                z8 = z11;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z6 = z2;
                modifier3 = modifier2;
                z7 = z4;
                z8 = z3;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        if ((i2 & 64) != 0) {
            if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                    i10 = 1048576;
                } else {
                    i10 = 524288;
                }
                i3 |= i10;
            }
            if ((i3 & 599187) != 599186) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                if (i12 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    z9 = true;
                } else {
                    z9 = z4;
                }
                if (i6 != 0) {
                    z10 = true;
                } else {
                    z10 = z2;
                }
                if (i8 != 0) {
                    z11 = true;
                } else {
                    z11 = z3;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                i11 = 3;
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new gg1(i11);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composer2 = composerStartRestartGroup;
                SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                z7 = z9;
                z6 = z10;
                z8 = z11;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z6 = z2;
                modifier3 = modifier2;
                z7 = z4;
                z8 = z3;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 1572864;
        if ((i3 & 599187) != 599186) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
            if (i12 != 0) {
                modifier4 = Modifier.Companion;
            } else {
                modifier4 = modifier2;
            }
            if (i4 != 0) {
                z9 = true;
            } else {
                z9 = z4;
            }
            if (i6 != 0) {
                z10 = true;
            } else {
                z10 = z2;
            }
            if (i8 != 0) {
                z11 = true;
            } else {
                z11 = z3;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1807005299, i3, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:381)");
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            i11 = 3;
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new gg1(i11);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composer2 = composerStartRestartGroup;
            SwipeToDismissBox(swipeToDismissBoxState2, dm3Var3, modifier4, z9, z10, z11, (nl3) objRememberedValue, dm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
            z7 = z9;
            z6 = z10;
            z8 = z11;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            z6 = z2;
            modifier3 = modifier2;
            z7 = z4;
            z8 = z3;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rg8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$16(swipeToDismissBoxState, dm3Var, modifier3, z7, z6, z8, dm3Var2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }
}
