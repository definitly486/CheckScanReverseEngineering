package androidx.compose.animation;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jg;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.ul2;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class CrossfadeKt {
    /* JADX WARN: Code duplicated, block: B:102:0x0191 A[LOOP:0: B:97:0x0174->B:102:0x0191, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:105:0x0197  */
    /* JADX WARN: Code duplicated, block: B:106:0x019f  */
    /* JADX WARN: Code duplicated, block: B:109:0x01b0 A[LOOP:1: B:108:0x01ae->B:109:0x01b0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:111:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:114:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:117:0x0209  */
    /* JADX WARN: Code duplicated, block: B:118:0x020d  */
    /* JADX WARN: Code duplicated, block: B:121:0x023f  */
    /* JADX WARN: Code duplicated, block: B:123:0x0255  */
    /* JADX WARN: Code duplicated, block: B:124:0x0260  */
    /* JADX WARN: Code duplicated, block: B:128:0x0283  */
    /* JADX WARN: Code duplicated, block: B:130:0x0289  */
    /* JADX WARN: Code duplicated, block: B:133:0x0293  */
    /* JADX WARN: Code duplicated, block: B:135:0x0194 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:0x0195 A[EDGE_INSN: B:136:0x0195->B:104:0x0195 BREAK  A[LOOP:0: B:97:0x0174->B:102:0x0191], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:141:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x003e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0043  */
    /* JADX WARN: Code duplicated, block: B:27:0x0047  */
    /* JADX WARN: Code duplicated, block: B:29:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0052  */
    /* JADX WARN: Code duplicated, block: B:34:0x0059  */
    /* JADX WARN: Code duplicated, block: B:36:0x005e  */
    /* JADX WARN: Code duplicated, block: B:38:0x0062  */
    /* JADX WARN: Code duplicated, block: B:40:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x006d  */
    /* JADX WARN: Code duplicated, block: B:45:0x0074  */
    /* JADX WARN: Code duplicated, block: B:47:0x007a  */
    /* JADX WARN: Code duplicated, block: B:48:0x007d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0088  */
    /* JADX WARN: Code duplicated, block: B:53:0x008a  */
    /* JADX WARN: Code duplicated, block: B:56:0x0093 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x0095  */
    /* JADX WARN: Code duplicated, block: B:59:0x009a  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:63:0x00af  */
    /* JADX WARN: Code duplicated, block: B:67:0x00be  */
    /* JADX WARN: Code duplicated, block: B:70:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:76:0x0100  */
    /* JADX WARN: Code duplicated, block: B:78:0x010c  */
    /* JADX WARN: Code duplicated, block: B:82:0x0125  */
    /* JADX WARN: Code duplicated, block: B:84:0x0130  */
    /* JADX WARN: Code duplicated, block: B:85:0x0132  */
    /* JADX WARN: Code duplicated, block: B:88:0x0139  */
    /* JADX WARN: Code duplicated, block: B:90:0x013f  */
    /* JADX WARN: Code duplicated, block: B:93:0x0156  */
    /* JADX WARN: Code duplicated, block: B:96:0x0169  */
    /* JADX WARN: Code duplicated, block: B:99:0x017a  */
    public static final <T> void Crossfade(Transition<T> transition, Modifier modifier, FiniteAnimationSpec<Float> finiteAnimationSpec, nl3<? super T, ? extends Object> nl3Var, dm3<? super T, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, int i, int i2) {
        Modifier modifier2;
        int i3;
        FiniteAnimationSpec<Float> finiteAnimationSpecTween$default;
        int i4;
        int i5;
        nl3<? super T, ? extends Object> nl3Var2;
        int i6;
        boolean z;
        FiniteAnimationSpec<Float> finiteAnimationSpec2;
        nl3<? super T, ? extends Object> nl3Var3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Object objRememberedValue;
        Composer.Companion companion;
        Object obj;
        SnapshotStateList snapshotStateList;
        Object objRememberedValue2;
        MutableScatterMap mutableScatterMap;
        ll3<ComposeUiNode> constructor;
        int size;
        int i7;
        bm3 bm3Var;
        Iterator<T> it;
        int i8;
        int size2;
        int i9;
        boolean z2;
        Object objRememberedValue3;
        Object objRememberedValue4;
        int i10;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1877370462);
        int i11 = (i & 6) == 0 ? (composerStartRestartGroup.changed(transition) ? 4 : 2) | i : i;
        int i12 = i2 & 1;
        if (i12 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i11 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            i3 = i2 & 2;
            if (i3 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    finiteAnimationSpecTween$default = finiteAnimationSpec;
                    if (composerStartRestartGroup.changedInstance(finiteAnimationSpecTween$default)) {
                        i4 = 256;
                    } else {
                        i4 = 128;
                    }
                    i11 |= i4;
                }
                i5 = i2 & 4;
                if (i5 != 0) {
                    if ((i & 3072) == 0) {
                        nl3Var2 = nl3Var;
                        if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                            i6 = 2048;
                        } else {
                            i6 = 1024;
                        }
                        i11 |= i6;
                    }
                    if ((i & 24576) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i10 = 16384;
                        } else {
                            i10 = 8192;
                        }
                        i11 |= i10;
                    }
                    if ((i11 & 9363) != 9362) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                        if (i12 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i3 != 0) {
                            finiteAnimationSpecTween$default = AnimationSpecKt.tween$default(0, 0, null, 7, null);
                        }
                        if (i5 != 0) {
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                                objRememberedValue4 = CrossfadeKt$Crossfade$3$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            nl3Var2 = (nl3) objRememberedValue4;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1877370462, i11, -1, "androidx.compose.animation.Crossfade (Crossfade.kt:102)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        obj = objRememberedValue;
                        if (objRememberedValue == companion.getEmpty()) {
                            SnapshotStateList snapshotStateListMutableStateListOf = SnapshotStateKt.mutableStateListOf();
                            snapshotStateListMutableStateListOf.add(transition.getCurrentState());
                            composerStartRestartGroup.updateRememberedValue(snapshotStateListMutableStateListOf);
                            obj = snapshotStateListMutableStateListOf;
                        }
                        snapshotStateList = (SnapshotStateList) obj;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = ScatterMapKt.mutableScatterMapOf();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        mutableScatterMap = (MutableScatterMap) objRememberedValue2;
                        if (aa4.e(transition.getCurrentState(), transition.getTargetState())) {
                            composerStartRestartGroup.startReplaceGroup(321145192);
                            if (snapshotStateList.size() == 1 || !aa4.e(snapshotStateList.get(0), transition.getTargetState())) {
                                composerStartRestartGroup.startReplaceGroup(321279546);
                                if ((i11 & 14) == 4) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                                if (z2 || objRememberedValue3 == companion.getEmpty()) {
                                    objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                }
                                nn1.y((nl3) objRememberedValue3, snapshotStateList);
                                mutableScatterMap.clear();
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                composerStartRestartGroup.startReplaceGroup(321469824);
                                composerStartRestartGroup.endReplaceGroup();
                            }
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(321475776);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        if (mutableScatterMap.contains(transition.getTargetState())) {
                            composerStartRestartGroup.startReplaceGroup(322279296);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(321536443);
                            it = snapshotStateList.iterator();
                            i8 = 0;
                            while (true) {
                                if (it.hasNext()) {
                                    i8 = -1;
                                    break;
                                } else if (aa4.e(nl3Var2.invoke(it.next()), nl3Var2.invoke(transition.getTargetState()))) {
                                    break;
                                } else {
                                    i8++;
                                }
                            }
                            if (i8 == -1) {
                                snapshotStateList.add(transition.getTargetState());
                            } else {
                                snapshotStateList.set(i8, transition.getTargetState());
                            }
                            mutableScatterMap.clear();
                            size2 = snapshotStateList.size();
                            for (i9 = 0; i9 < size2; i9++) {
                                T t = snapshotStateList.get(i9);
                                mutableScatterMap.set(t, ComposableLambdaKt.rememberComposableLambda(-934471669, true, new CrossfadeKt$Crossfade$5$1(transition, finiteAnimationSpecTween$default, t, dm3Var), composerStartRestartGroup, 54));
                            }
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier2);
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
                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        jg.d(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                        Updater.m5359initimpl(composerM5355constructorimpl, Integer.valueOf(iHashCode), companion2.getSetCompositeKeyHash());
                        Updater.m5361reconcileimpl(composerM5355constructorimpl, companion2.getApplyOnDeactivatedNodeAssertion());
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        composerStartRestartGroup.startReplaceGroup(-1312707512);
                        size = snapshotStateList.size();
                        for (i7 = 0; i7 < size; i7++) {
                            T t2 = snapshotStateList.get(i7);
                            composerStartRestartGroup.startMovableGroup(1171574969, nl3Var2.invoke(t2));
                            bm3Var = (bm3) mutableScatterMap.get(t2);
                            if (bm3Var == null) {
                                composerStartRestartGroup.startReplaceGroup(1959122128);
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                composerStartRestartGroup.startReplaceGroup(1171576145);
                                bm3Var.invoke(composerStartRestartGroup, 0);
                                composerStartRestartGroup.endReplaceGroup();
                            }
                            composerStartRestartGroup.endMovableGroup();
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                    }
                    finiteAnimationSpec2 = finiteAnimationSpecTween$default;
                    nl3Var3 = nl3Var2;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass7(transition, modifier2, finiteAnimationSpec2, nl3Var3, dm3Var, i, i2));
                    }
                }
                i11 |= 3072;
                nl3Var2 = nl3Var;
                if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i10 = 16384;
                    } else {
                        i10 = 8192;
                    }
                    i11 |= i10;
                }
                if ((i11 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i3 != 0) {
                        finiteAnimationSpecTween$default = AnimationSpecKt.tween$default(0, 0, null, 7, null);
                    }
                    if (i5 != 0) {
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = CrossfadeKt$Crossfade$3$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        nl3Var2 = (nl3) objRememberedValue4;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1877370462, i11, -1, "androidx.compose.animation.Crossfade (Crossfade.kt:102)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    obj = objRememberedValue;
                    if (objRememberedValue == companion.getEmpty()) {
                        SnapshotStateList snapshotStateListMutableStateListOf2 = SnapshotStateKt.mutableStateListOf();
                        snapshotStateListMutableStateListOf2.add(transition.getCurrentState());
                        composerStartRestartGroup.updateRememberedValue(snapshotStateListMutableStateListOf2);
                        obj = snapshotStateListMutableStateListOf2;
                    }
                    snapshotStateList = (SnapshotStateList) obj;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = ScatterMapKt.mutableScatterMapOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    mutableScatterMap = (MutableScatterMap) objRememberedValue2;
                    if (aa4.e(transition.getCurrentState(), transition.getTargetState())) {
                        composerStartRestartGroup.startReplaceGroup(321145192);
                        if (snapshotStateList.size() == 1) {
                            composerStartRestartGroup.startReplaceGroup(321279546);
                            if ((i11 & 14) == 4) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (z2) {
                                objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            nn1.y((nl3) objRememberedValue3, snapshotStateList);
                            mutableScatterMap.clear();
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(321279546);
                            if ((i11 & 14) == 4) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (z2) {
                                objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            nn1.y((nl3) objRememberedValue3, snapshotStateList);
                            mutableScatterMap.clear();
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(321475776);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (mutableScatterMap.contains(transition.getTargetState())) {
                        composerStartRestartGroup.startReplaceGroup(321536443);
                        it = snapshotStateList.iterator();
                        i8 = 0;
                        while (true) {
                            if (it.hasNext()) {
                                i8 = -1;
                                break;
                            } else {
                                if (aa4.e(nl3Var2.invoke(it.next()), nl3Var2.invoke(transition.getTargetState()))) {
                                    break;
                                    break;
                                }
                                i8++;
                            }
                        }
                        if (i8 == -1) {
                            snapshotStateList.add(transition.getTargetState());
                        } else {
                            snapshotStateList.set(i8, transition.getTargetState());
                        }
                        mutableScatterMap.clear();
                        size2 = snapshotStateList.size();
                        while (i9 < size2) {
                            T t3 = snapshotStateList.get(i9);
                            mutableScatterMap.set(t3, ComposableLambdaKt.rememberComposableLambda(-934471669, true, new CrossfadeKt$Crossfade$5$1(transition, finiteAnimationSpecTween$default, t3, dm3Var), composerStartRestartGroup, 54));
                        }
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(322279296);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier2);
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
                    Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion3, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl2, currentCompositionLocalMap2);
                    Updater.m5359initimpl(composerM5355constructorimpl2, Integer.valueOf(iHashCode2), companion3.getSetCompositeKeyHash());
                    Updater.m5361reconcileimpl(composerM5355constructorimpl2, companion3.getApplyOnDeactivatedNodeAssertion());
                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion3.getSetModifier());
                    BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                    composerStartRestartGroup.startReplaceGroup(-1312707512);
                    size = snapshotStateList.size();
                    while (i7 < size) {
                        T t4 = snapshotStateList.get(i7);
                        composerStartRestartGroup.startMovableGroup(1171574969, nl3Var2.invoke(t4));
                        bm3Var = (bm3) mutableScatterMap.get(t4);
                        if (bm3Var == null) {
                            composerStartRestartGroup.startReplaceGroup(1959122128);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1171576145);
                            bm3Var.invoke(composerStartRestartGroup, 0);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        composerStartRestartGroup.endMovableGroup();
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                }
                finiteAnimationSpec2 = finiteAnimationSpecTween$default;
                nl3Var3 = nl3Var2;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass7(transition, modifier2, finiteAnimationSpec2, nl3Var3, dm3Var, i, i2));
                }
            }
            i11 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            finiteAnimationSpecTween$default = finiteAnimationSpec;
            i5 = i2 & 4;
            if (i5 != 0) {
                if ((i & 3072) == 0) {
                    nl3Var2 = nl3Var;
                    if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i11 |= i6;
                }
                if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i10 = 16384;
                    } else {
                        i10 = 8192;
                    }
                    i11 |= i10;
                }
                if ((i11 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i3 != 0) {
                        finiteAnimationSpecTween$default = AnimationSpecKt.tween$default(0, 0, null, 7, null);
                    }
                    if (i5 != 0) {
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = CrossfadeKt$Crossfade$3$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        nl3Var2 = (nl3) objRememberedValue4;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1877370462, i11, -1, "androidx.compose.animation.Crossfade (Crossfade.kt:102)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    obj = objRememberedValue;
                    if (objRememberedValue == companion.getEmpty()) {
                        SnapshotStateList snapshotStateListMutableStateListOf3 = SnapshotStateKt.mutableStateListOf();
                        snapshotStateListMutableStateListOf3.add(transition.getCurrentState());
                        composerStartRestartGroup.updateRememberedValue(snapshotStateListMutableStateListOf3);
                        obj = snapshotStateListMutableStateListOf3;
                    }
                    snapshotStateList = (SnapshotStateList) obj;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = ScatterMapKt.mutableScatterMapOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    mutableScatterMap = (MutableScatterMap) objRememberedValue2;
                    if (aa4.e(transition.getCurrentState(), transition.getTargetState())) {
                        composerStartRestartGroup.startReplaceGroup(321145192);
                        if (snapshotStateList.size() == 1) {
                            composerStartRestartGroup.startReplaceGroup(321279546);
                            if ((i11 & 14) == 4) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (z2) {
                                objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            nn1.y((nl3) objRememberedValue3, snapshotStateList);
                            mutableScatterMap.clear();
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(321279546);
                            if ((i11 & 14) == 4) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (z2) {
                                objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            nn1.y((nl3) objRememberedValue3, snapshotStateList);
                            mutableScatterMap.clear();
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(321475776);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (mutableScatterMap.contains(transition.getTargetState())) {
                        composerStartRestartGroup.startReplaceGroup(321536443);
                        it = snapshotStateList.iterator();
                        i8 = 0;
                        while (true) {
                            if (it.hasNext()) {
                                i8 = -1;
                                break;
                            } else {
                                if (aa4.e(nl3Var2.invoke(it.next()), nl3Var2.invoke(transition.getTargetState()))) {
                                    break;
                                    break;
                                }
                                i8++;
                            }
                        }
                        if (i8 == -1) {
                            snapshotStateList.add(transition.getTargetState());
                        } else {
                            snapshotStateList.set(i8, transition.getTargetState());
                        }
                        mutableScatterMap.clear();
                        size2 = snapshotStateList.size();
                        while (i9 < size2) {
                            T t5 = snapshotStateList.get(i9);
                            mutableScatterMap.set(t5, ComposableLambdaKt.rememberComposableLambda(-934471669, true, new CrossfadeKt$Crossfade$5$1(transition, finiteAnimationSpecTween$default, t5, dm3Var), composerStartRestartGroup, 54));
                        }
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(322279296);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier2);
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
                    Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy3, composerM5355constructorimpl3, currentCompositionLocalMap3);
                    Updater.m5359initimpl(composerM5355constructorimpl3, Integer.valueOf(iHashCode3), companion4.getSetCompositeKeyHash());
                    Updater.m5361reconcileimpl(composerM5355constructorimpl3, companion4.getApplyOnDeactivatedNodeAssertion());
                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                    BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                    composerStartRestartGroup.startReplaceGroup(-1312707512);
                    size = snapshotStateList.size();
                    while (i7 < size) {
                        T t6 = snapshotStateList.get(i7);
                        composerStartRestartGroup.startMovableGroup(1171574969, nl3Var2.invoke(t6));
                        bm3Var = (bm3) mutableScatterMap.get(t6);
                        if (bm3Var == null) {
                            composerStartRestartGroup.startReplaceGroup(1959122128);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1171576145);
                            bm3Var.invoke(composerStartRestartGroup, 0);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        composerStartRestartGroup.endMovableGroup();
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                }
                finiteAnimationSpec2 = finiteAnimationSpecTween$default;
                nl3Var3 = nl3Var2;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass7(transition, modifier2, finiteAnimationSpec2, nl3Var3, dm3Var, i, i2));
                }
            }
            i11 |= 3072;
            nl3Var2 = nl3Var;
            if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i10 = 16384;
                } else {
                    i10 = 8192;
                }
                i11 |= i10;
            }
            if ((i11 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                if (i12 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i3 != 0) {
                    finiteAnimationSpecTween$default = AnimationSpecKt.tween$default(0, 0, null, 7, null);
                }
                if (i5 != 0) {
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = CrossfadeKt$Crossfade$3$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    nl3Var2 = (nl3) objRememberedValue4;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1877370462, i11, -1, "androidx.compose.animation.Crossfade (Crossfade.kt:102)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                obj = objRememberedValue;
                if (objRememberedValue == companion.getEmpty()) {
                    SnapshotStateList snapshotStateListMutableStateListOf4 = SnapshotStateKt.mutableStateListOf();
                    snapshotStateListMutableStateListOf4.add(transition.getCurrentState());
                    composerStartRestartGroup.updateRememberedValue(snapshotStateListMutableStateListOf4);
                    obj = snapshotStateListMutableStateListOf4;
                }
                snapshotStateList = (SnapshotStateList) obj;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = ScatterMapKt.mutableScatterMapOf();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                mutableScatterMap = (MutableScatterMap) objRememberedValue2;
                if (aa4.e(transition.getCurrentState(), transition.getTargetState())) {
                    composerStartRestartGroup.startReplaceGroup(321145192);
                    if (snapshotStateList.size() == 1) {
                        composerStartRestartGroup.startReplaceGroup(321279546);
                        if ((i11 & 14) == 4) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        nn1.y((nl3) objRememberedValue3, snapshotStateList);
                        mutableScatterMap.clear();
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(321279546);
                        if ((i11 & 14) == 4) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        nn1.y((nl3) objRememberedValue3, snapshotStateList);
                        mutableScatterMap.clear();
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(321475776);
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (mutableScatterMap.contains(transition.getTargetState())) {
                    composerStartRestartGroup.startReplaceGroup(321536443);
                    it = snapshotStateList.iterator();
                    i8 = 0;
                    while (true) {
                        if (it.hasNext()) {
                            i8 = -1;
                            break;
                        } else {
                            if (aa4.e(nl3Var2.invoke(it.next()), nl3Var2.invoke(transition.getTargetState()))) {
                                break;
                                break;
                            }
                            i8++;
                        }
                    }
                    if (i8 == -1) {
                        snapshotStateList.add(transition.getTargetState());
                    } else {
                        snapshotStateList.set(i8, transition.getTargetState());
                    }
                    mutableScatterMap.clear();
                    size2 = snapshotStateList.size();
                    while (i9 < size2) {
                        T t7 = snapshotStateList.get(i9);
                        mutableScatterMap.set(t7, ComposableLambdaKt.rememberComposableLambda(-934471669, true, new CrossfadeKt$Crossfade$5$1(transition, finiteAnimationSpecTween$default, t7, dm3Var), composerStartRestartGroup, 54));
                    }
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(322279296);
                    composerStartRestartGroup.endReplaceGroup();
                }
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier2);
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
                Composer composerM5355constructorimpl4 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion5, composerM5355constructorimpl4, measurePolicyMaybeCachedBoxMeasurePolicy4, composerM5355constructorimpl4, currentCompositionLocalMap4);
                Updater.m5359initimpl(composerM5355constructorimpl4, Integer.valueOf(iHashCode4), companion5.getSetCompositeKeyHash());
                Updater.m5361reconcileimpl(composerM5355constructorimpl4, companion5.getApplyOnDeactivatedNodeAssertion());
                Updater.m5363setimpl(composerM5355constructorimpl4, modifierMaterializeModifier4, companion5.getSetModifier());
                BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                composerStartRestartGroup.startReplaceGroup(-1312707512);
                size = snapshotStateList.size();
                while (i7 < size) {
                    T t8 = snapshotStateList.get(i7);
                    composerStartRestartGroup.startMovableGroup(1171574969, nl3Var2.invoke(t8));
                    bm3Var = (bm3) mutableScatterMap.get(t8);
                    if (bm3Var == null) {
                        composerStartRestartGroup.startReplaceGroup(1959122128);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1171576145);
                        bm3Var.invoke(composerStartRestartGroup, 0);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    composerStartRestartGroup.endMovableGroup();
                }
                composerStartRestartGroup.endReplaceGroup();
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
            }
            finiteAnimationSpec2 = finiteAnimationSpecTween$default;
            nl3Var3 = nl3Var2;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass7(transition, modifier2, finiteAnimationSpec2, nl3Var3, dm3Var, i, i2));
            }
        }
        i11 |= 48;
        modifier2 = modifier;
        i3 = i2 & 2;
        if (i3 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                finiteAnimationSpecTween$default = finiteAnimationSpec;
                if (composerStartRestartGroup.changedInstance(finiteAnimationSpecTween$default)) {
                    i4 = 256;
                } else {
                    i4 = 128;
                }
                i11 |= i4;
            }
            i5 = i2 & 4;
            if (i5 != 0) {
                if ((i & 3072) == 0) {
                    nl3Var2 = nl3Var;
                    if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i11 |= i6;
                }
                if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i10 = 16384;
                    } else {
                        i10 = 8192;
                    }
                    i11 |= i10;
                }
                if ((i11 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i3 != 0) {
                        finiteAnimationSpecTween$default = AnimationSpecKt.tween$default(0, 0, null, 7, null);
                    }
                    if (i5 != 0) {
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = CrossfadeKt$Crossfade$3$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        nl3Var2 = (nl3) objRememberedValue4;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1877370462, i11, -1, "androidx.compose.animation.Crossfade (Crossfade.kt:102)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    obj = objRememberedValue;
                    if (objRememberedValue == companion.getEmpty()) {
                        SnapshotStateList snapshotStateListMutableStateListOf5 = SnapshotStateKt.mutableStateListOf();
                        snapshotStateListMutableStateListOf5.add(transition.getCurrentState());
                        composerStartRestartGroup.updateRememberedValue(snapshotStateListMutableStateListOf5);
                        obj = snapshotStateListMutableStateListOf5;
                    }
                    snapshotStateList = (SnapshotStateList) obj;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = ScatterMapKt.mutableScatterMapOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    mutableScatterMap = (MutableScatterMap) objRememberedValue2;
                    if (aa4.e(transition.getCurrentState(), transition.getTargetState())) {
                        composerStartRestartGroup.startReplaceGroup(321145192);
                        if (snapshotStateList.size() == 1) {
                            composerStartRestartGroup.startReplaceGroup(321279546);
                            if ((i11 & 14) == 4) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (z2) {
                                objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            nn1.y((nl3) objRememberedValue3, snapshotStateList);
                            mutableScatterMap.clear();
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(321279546);
                            if ((i11 & 14) == 4) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (z2) {
                                objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            nn1.y((nl3) objRememberedValue3, snapshotStateList);
                            mutableScatterMap.clear();
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(321475776);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (mutableScatterMap.contains(transition.getTargetState())) {
                        composerStartRestartGroup.startReplaceGroup(321536443);
                        it = snapshotStateList.iterator();
                        i8 = 0;
                        while (true) {
                            if (it.hasNext()) {
                                i8 = -1;
                                break;
                            } else {
                                if (aa4.e(nl3Var2.invoke(it.next()), nl3Var2.invoke(transition.getTargetState()))) {
                                    break;
                                    break;
                                }
                                i8++;
                            }
                        }
                        if (i8 == -1) {
                            snapshotStateList.add(transition.getTargetState());
                        } else {
                            snapshotStateList.set(i8, transition.getTargetState());
                        }
                        mutableScatterMap.clear();
                        size2 = snapshotStateList.size();
                        while (i9 < size2) {
                            T t9 = snapshotStateList.get(i9);
                            mutableScatterMap.set(t9, ComposableLambdaKt.rememberComposableLambda(-934471669, true, new CrossfadeKt$Crossfade$5$1(transition, finiteAnimationSpecTween$default, t9, dm3Var), composerStartRestartGroup, 54));
                        }
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(322279296);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy5 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    int iHashCode5 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier2);
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
                    Composer composerM5355constructorimpl5 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion6, composerM5355constructorimpl5, measurePolicyMaybeCachedBoxMeasurePolicy5, composerM5355constructorimpl5, currentCompositionLocalMap5);
                    Updater.m5359initimpl(composerM5355constructorimpl5, Integer.valueOf(iHashCode5), companion6.getSetCompositeKeyHash());
                    Updater.m5361reconcileimpl(composerM5355constructorimpl5, companion6.getApplyOnDeactivatedNodeAssertion());
                    Updater.m5363setimpl(composerM5355constructorimpl5, modifierMaterializeModifier5, companion6.getSetModifier());
                    BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
                    composerStartRestartGroup.startReplaceGroup(-1312707512);
                    size = snapshotStateList.size();
                    while (i7 < size) {
                        T t10 = snapshotStateList.get(i7);
                        composerStartRestartGroup.startMovableGroup(1171574969, nl3Var2.invoke(t10));
                        bm3Var = (bm3) mutableScatterMap.get(t10);
                        if (bm3Var == null) {
                            composerStartRestartGroup.startReplaceGroup(1959122128);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1171576145);
                            bm3Var.invoke(composerStartRestartGroup, 0);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        composerStartRestartGroup.endMovableGroup();
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                }
                finiteAnimationSpec2 = finiteAnimationSpecTween$default;
                nl3Var3 = nl3Var2;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass7(transition, modifier2, finiteAnimationSpec2, nl3Var3, dm3Var, i, i2));
                }
            }
            i11 |= 3072;
            nl3Var2 = nl3Var;
            if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i10 = 16384;
                } else {
                    i10 = 8192;
                }
                i11 |= i10;
            }
            if ((i11 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                if (i12 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i3 != 0) {
                    finiteAnimationSpecTween$default = AnimationSpecKt.tween$default(0, 0, null, 7, null);
                }
                if (i5 != 0) {
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = CrossfadeKt$Crossfade$3$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    nl3Var2 = (nl3) objRememberedValue4;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1877370462, i11, -1, "androidx.compose.animation.Crossfade (Crossfade.kt:102)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                obj = objRememberedValue;
                if (objRememberedValue == companion.getEmpty()) {
                    SnapshotStateList snapshotStateListMutableStateListOf6 = SnapshotStateKt.mutableStateListOf();
                    snapshotStateListMutableStateListOf6.add(transition.getCurrentState());
                    composerStartRestartGroup.updateRememberedValue(snapshotStateListMutableStateListOf6);
                    obj = snapshotStateListMutableStateListOf6;
                }
                snapshotStateList = (SnapshotStateList) obj;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = ScatterMapKt.mutableScatterMapOf();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                mutableScatterMap = (MutableScatterMap) objRememberedValue2;
                if (aa4.e(transition.getCurrentState(), transition.getTargetState())) {
                    composerStartRestartGroup.startReplaceGroup(321145192);
                    if (snapshotStateList.size() == 1) {
                        composerStartRestartGroup.startReplaceGroup(321279546);
                        if ((i11 & 14) == 4) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        nn1.y((nl3) objRememberedValue3, snapshotStateList);
                        mutableScatterMap.clear();
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(321279546);
                        if ((i11 & 14) == 4) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        nn1.y((nl3) objRememberedValue3, snapshotStateList);
                        mutableScatterMap.clear();
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(321475776);
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (mutableScatterMap.contains(transition.getTargetState())) {
                    composerStartRestartGroup.startReplaceGroup(321536443);
                    it = snapshotStateList.iterator();
                    i8 = 0;
                    while (true) {
                        if (it.hasNext()) {
                            i8 = -1;
                            break;
                        } else {
                            if (aa4.e(nl3Var2.invoke(it.next()), nl3Var2.invoke(transition.getTargetState()))) {
                                break;
                                break;
                            }
                            i8++;
                        }
                    }
                    if (i8 == -1) {
                        snapshotStateList.add(transition.getTargetState());
                    } else {
                        snapshotStateList.set(i8, transition.getTargetState());
                    }
                    mutableScatterMap.clear();
                    size2 = snapshotStateList.size();
                    while (i9 < size2) {
                        T t11 = snapshotStateList.get(i9);
                        mutableScatterMap.set(t11, ComposableLambdaKt.rememberComposableLambda(-934471669, true, new CrossfadeKt$Crossfade$5$1(transition, finiteAnimationSpecTween$default, t11, dm3Var), composerStartRestartGroup, 54));
                    }
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(322279296);
                    composerStartRestartGroup.endReplaceGroup();
                }
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy6 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                int iHashCode6 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap6 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier2);
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
                Composer composerM5355constructorimpl6 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion7, composerM5355constructorimpl6, measurePolicyMaybeCachedBoxMeasurePolicy6, composerM5355constructorimpl6, currentCompositionLocalMap6);
                Updater.m5359initimpl(composerM5355constructorimpl6, Integer.valueOf(iHashCode6), companion7.getSetCompositeKeyHash());
                Updater.m5361reconcileimpl(composerM5355constructorimpl6, companion7.getApplyOnDeactivatedNodeAssertion());
                Updater.m5363setimpl(composerM5355constructorimpl6, modifierMaterializeModifier6, companion7.getSetModifier());
                BoxScopeInstance boxScopeInstance6 = BoxScopeInstance.INSTANCE;
                composerStartRestartGroup.startReplaceGroup(-1312707512);
                size = snapshotStateList.size();
                while (i7 < size) {
                    T t12 = snapshotStateList.get(i7);
                    composerStartRestartGroup.startMovableGroup(1171574969, nl3Var2.invoke(t12));
                    bm3Var = (bm3) mutableScatterMap.get(t12);
                    if (bm3Var == null) {
                        composerStartRestartGroup.startReplaceGroup(1959122128);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1171576145);
                        bm3Var.invoke(composerStartRestartGroup, 0);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    composerStartRestartGroup.endMovableGroup();
                }
                composerStartRestartGroup.endReplaceGroup();
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
            }
            finiteAnimationSpec2 = finiteAnimationSpecTween$default;
            nl3Var3 = nl3Var2;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass7(transition, modifier2, finiteAnimationSpec2, nl3Var3, dm3Var, i, i2));
            }
        }
        i11 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        finiteAnimationSpecTween$default = finiteAnimationSpec;
        i5 = i2 & 4;
        if (i5 != 0) {
            if ((i & 3072) == 0) {
                nl3Var2 = nl3Var;
                if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i11 |= i6;
            }
            if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i10 = 16384;
                } else {
                    i10 = 8192;
                }
                i11 |= i10;
            }
            if ((i11 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                if (i12 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i3 != 0) {
                    finiteAnimationSpecTween$default = AnimationSpecKt.tween$default(0, 0, null, 7, null);
                }
                if (i5 != 0) {
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = CrossfadeKt$Crossfade$3$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    nl3Var2 = (nl3) objRememberedValue4;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1877370462, i11, -1, "androidx.compose.animation.Crossfade (Crossfade.kt:102)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                obj = objRememberedValue;
                if (objRememberedValue == companion.getEmpty()) {
                    SnapshotStateList snapshotStateListMutableStateListOf7 = SnapshotStateKt.mutableStateListOf();
                    snapshotStateListMutableStateListOf7.add(transition.getCurrentState());
                    composerStartRestartGroup.updateRememberedValue(snapshotStateListMutableStateListOf7);
                    obj = snapshotStateListMutableStateListOf7;
                }
                snapshotStateList = (SnapshotStateList) obj;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = ScatterMapKt.mutableScatterMapOf();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                mutableScatterMap = (MutableScatterMap) objRememberedValue2;
                if (aa4.e(transition.getCurrentState(), transition.getTargetState())) {
                    composerStartRestartGroup.startReplaceGroup(321145192);
                    if (snapshotStateList.size() == 1) {
                        composerStartRestartGroup.startReplaceGroup(321279546);
                        if ((i11 & 14) == 4) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        nn1.y((nl3) objRememberedValue3, snapshotStateList);
                        mutableScatterMap.clear();
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(321279546);
                        if ((i11 & 14) == 4) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        nn1.y((nl3) objRememberedValue3, snapshotStateList);
                        mutableScatterMap.clear();
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(321475776);
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (mutableScatterMap.contains(transition.getTargetState())) {
                    composerStartRestartGroup.startReplaceGroup(321536443);
                    it = snapshotStateList.iterator();
                    i8 = 0;
                    while (true) {
                        if (it.hasNext()) {
                            i8 = -1;
                            break;
                        } else {
                            if (aa4.e(nl3Var2.invoke(it.next()), nl3Var2.invoke(transition.getTargetState()))) {
                                break;
                                break;
                            }
                            i8++;
                        }
                    }
                    if (i8 == -1) {
                        snapshotStateList.add(transition.getTargetState());
                    } else {
                        snapshotStateList.set(i8, transition.getTargetState());
                    }
                    mutableScatterMap.clear();
                    size2 = snapshotStateList.size();
                    while (i9 < size2) {
                        T t13 = snapshotStateList.get(i9);
                        mutableScatterMap.set(t13, ComposableLambdaKt.rememberComposableLambda(-934471669, true, new CrossfadeKt$Crossfade$5$1(transition, finiteAnimationSpecTween$default, t13, dm3Var), composerStartRestartGroup, 54));
                    }
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(322279296);
                    composerStartRestartGroup.endReplaceGroup();
                }
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy7 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                int iHashCode7 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap7 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier7 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier2);
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
                Composer composerM5355constructorimpl7 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion8, composerM5355constructorimpl7, measurePolicyMaybeCachedBoxMeasurePolicy7, composerM5355constructorimpl7, currentCompositionLocalMap7);
                Updater.m5359initimpl(composerM5355constructorimpl7, Integer.valueOf(iHashCode7), companion8.getSetCompositeKeyHash());
                Updater.m5361reconcileimpl(composerM5355constructorimpl7, companion8.getApplyOnDeactivatedNodeAssertion());
                Updater.m5363setimpl(composerM5355constructorimpl7, modifierMaterializeModifier7, companion8.getSetModifier());
                BoxScopeInstance boxScopeInstance7 = BoxScopeInstance.INSTANCE;
                composerStartRestartGroup.startReplaceGroup(-1312707512);
                size = snapshotStateList.size();
                while (i7 < size) {
                    T t14 = snapshotStateList.get(i7);
                    composerStartRestartGroup.startMovableGroup(1171574969, nl3Var2.invoke(t14));
                    bm3Var = (bm3) mutableScatterMap.get(t14);
                    if (bm3Var == null) {
                        composerStartRestartGroup.startReplaceGroup(1959122128);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1171576145);
                        bm3Var.invoke(composerStartRestartGroup, 0);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    composerStartRestartGroup.endMovableGroup();
                }
                composerStartRestartGroup.endReplaceGroup();
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
            }
            finiteAnimationSpec2 = finiteAnimationSpecTween$default;
            nl3Var3 = nl3Var2;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass7(transition, modifier2, finiteAnimationSpec2, nl3Var3, dm3Var, i, i2));
            }
        }
        i11 |= 3072;
        nl3Var2 = nl3Var;
        if ((i & 24576) == 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                i10 = 16384;
            } else {
                i10 = 8192;
            }
            i11 |= i10;
        }
        if ((i11 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
            if (i12 != 0) {
                modifier2 = Modifier.Companion;
            }
            if (i3 != 0) {
                finiteAnimationSpecTween$default = AnimationSpecKt.tween$default(0, 0, null, 7, null);
            }
            if (i5 != 0) {
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                    objRememberedValue4 = CrossfadeKt$Crossfade$3$1.INSTANCE;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                nl3Var2 = (nl3) objRememberedValue4;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1877370462, i11, -1, "androidx.compose.animation.Crossfade (Crossfade.kt:102)");
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            obj = objRememberedValue;
            if (objRememberedValue == companion.getEmpty()) {
                SnapshotStateList snapshotStateListMutableStateListOf8 = SnapshotStateKt.mutableStateListOf();
                snapshotStateListMutableStateListOf8.add(transition.getCurrentState());
                composerStartRestartGroup.updateRememberedValue(snapshotStateListMutableStateListOf8);
                obj = snapshotStateListMutableStateListOf8;
            }
            snapshotStateList = (SnapshotStateList) obj;
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = ScatterMapKt.mutableScatterMapOf();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            mutableScatterMap = (MutableScatterMap) objRememberedValue2;
            if (aa4.e(transition.getCurrentState(), transition.getTargetState())) {
                composerStartRestartGroup.startReplaceGroup(321145192);
                if (snapshotStateList.size() == 1) {
                    composerStartRestartGroup.startReplaceGroup(321279546);
                    if ((i11 & 14) == 4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    nn1.y((nl3) objRememberedValue3, snapshotStateList);
                    mutableScatterMap.clear();
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(321279546);
                    if ((i11 & 14) == 4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new CrossfadeKt$Crossfade$4$1(transition);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    nn1.y((nl3) objRememberedValue3, snapshotStateList);
                    mutableScatterMap.clear();
                    composerStartRestartGroup.endReplaceGroup();
                }
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(321475776);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (mutableScatterMap.contains(transition.getTargetState())) {
                composerStartRestartGroup.startReplaceGroup(321536443);
                it = snapshotStateList.iterator();
                i8 = 0;
                while (true) {
                    if (it.hasNext()) {
                        i8 = -1;
                        break;
                    } else {
                        if (aa4.e(nl3Var2.invoke(it.next()), nl3Var2.invoke(transition.getTargetState()))) {
                            break;
                            break;
                        }
                        i8++;
                    }
                }
                if (i8 == -1) {
                    snapshotStateList.add(transition.getTargetState());
                } else {
                    snapshotStateList.set(i8, transition.getTargetState());
                }
                mutableScatterMap.clear();
                size2 = snapshotStateList.size();
                while (i9 < size2) {
                    T t15 = snapshotStateList.get(i9);
                    mutableScatterMap.set(t15, ComposableLambdaKt.rememberComposableLambda(-934471669, true, new CrossfadeKt$Crossfade$5$1(transition, finiteAnimationSpecTween$default, t15, dm3Var), composerStartRestartGroup, 54));
                }
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(322279296);
                composerStartRestartGroup.endReplaceGroup();
            }
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy8 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
            int iHashCode8 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap8 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier8 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier2);
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
            Composer composerM5355constructorimpl8 = Updater.m5355constructorimpl(composerStartRestartGroup);
            jg.d(companion9, composerM5355constructorimpl8, measurePolicyMaybeCachedBoxMeasurePolicy8, composerM5355constructorimpl8, currentCompositionLocalMap8);
            Updater.m5359initimpl(composerM5355constructorimpl8, Integer.valueOf(iHashCode8), companion9.getSetCompositeKeyHash());
            Updater.m5361reconcileimpl(composerM5355constructorimpl8, companion9.getApplyOnDeactivatedNodeAssertion());
            Updater.m5363setimpl(composerM5355constructorimpl8, modifierMaterializeModifier8, companion9.getSetModifier());
            BoxScopeInstance boxScopeInstance8 = BoxScopeInstance.INSTANCE;
            composerStartRestartGroup.startReplaceGroup(-1312707512);
            size = snapshotStateList.size();
            while (i7 < size) {
                T t16 = snapshotStateList.get(i7);
                composerStartRestartGroup.startMovableGroup(1171574969, nl3Var2.invoke(t16));
                bm3Var = (bm3) mutableScatterMap.get(t16);
                if (bm3Var == null) {
                    composerStartRestartGroup.startReplaceGroup(1959122128);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1171576145);
                    bm3Var.invoke(composerStartRestartGroup, 0);
                    composerStartRestartGroup.endReplaceGroup();
                }
                composerStartRestartGroup.endMovableGroup();
            }
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        finiteAnimationSpec2 = finiteAnimationSpecTween$default;
        nl3Var3 = nl3Var2;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass7(transition, modifier2, finiteAnimationSpec2, nl3Var3, dm3Var, i, i2));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.CrossfadeKt$Crossfade$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ int $$default;
        final /* synthetic */ FiniteAnimationSpec<Float> $animationSpec;
        final /* synthetic */ dm3 $content;
        final /* synthetic */ Modifier $modifier;
        final /* synthetic */ Object $targetState;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Object obj, Modifier modifier, FiniteAnimationSpec finiteAnimationSpec, dm3 dm3Var, int i, int i2) {
            super(2);
            this.$targetState = obj;
            this.$modifier = modifier;
            this.$animationSpec = finiteAnimationSpec;
            this.$content = dm3Var;
            this.$$changed = i;
            this.$$default = i2;
        }

        public final void invoke(Composer composer, int i) {
            CrossfadeKt.Crossfade(this.$targetState, this.$modifier, this.$animationSpec, this.$content, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1), this.$$default);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.CrossfadeKt$Crossfade$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ int $$default;
        final /* synthetic */ FiniteAnimationSpec<Float> $animationSpec;
        final /* synthetic */ dm3<T, Composer, Integer, j59> $content;
        final /* synthetic */ String $label;
        final /* synthetic */ Modifier $modifier;
        final /* synthetic */ T $targetState;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(T t, Modifier modifier, FiniteAnimationSpec<Float> finiteAnimationSpec, String str, dm3<? super T, ? super Composer, ? super Integer, j59> dm3Var, int i, int i2) {
            super(2);
            this.$targetState = t;
            this.$modifier = modifier;
            this.$animationSpec = finiteAnimationSpec;
            this.$label = str;
            this.$content = dm3Var;
            this.$$changed = i;
            this.$$default = i2;
        }

        public final void invoke(Composer composer, int i) {
            CrossfadeKt.Crossfade(this.$targetState, this.$modifier, this.$animationSpec, this.$label, this.$content, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1), this.$$default);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.CrossfadeKt$Crossfade$7, reason: invalid class name */
    public static final class AnonymousClass7 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ int $$default;
        final /* synthetic */ FiniteAnimationSpec<Float> $animationSpec;
        final /* synthetic */ dm3<T, Composer, Integer, j59> $content;
        final /* synthetic */ nl3<T, Object> $contentKey;
        final /* synthetic */ Modifier $modifier;
        final /* synthetic */ Transition<T> $this_Crossfade;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass7(Transition<T> transition, Modifier modifier, FiniteAnimationSpec<Float> finiteAnimationSpec, nl3<? super T, ? extends Object> nl3Var, dm3<? super T, ? super Composer, ? super Integer, j59> dm3Var, int i, int i2) {
            super(2);
            this.$this_Crossfade = transition;
            this.$modifier = modifier;
            this.$animationSpec = finiteAnimationSpec;
            this.$contentKey = nl3Var;
            this.$content = dm3Var;
            this.$$changed = i;
            this.$$default = i2;
        }

        public final void invoke(Composer composer, int i) {
            CrossfadeKt.Crossfade(this.$this_Crossfade, this.$modifier, this.$animationSpec, this.$contentKey, this.$content, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1), this.$$default);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    @ul2
    public static final /* synthetic */ void Crossfade(Object obj, Modifier modifier, FiniteAnimationSpec finiteAnimationSpec, dm3 dm3Var, Composer composer, int i, int i2) {
        int i3;
        dm3 dm3Var2;
        FiniteAnimationSpec finiteAnimationSpec2;
        Modifier modifier2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-160948176);
        if ((i & 6) == 0) {
            i3 = ((i & 8) == 0 ? composerStartRestartGroup.changed(obj) : composerStartRestartGroup.changedInstance(obj) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i4 = i2 & 2;
        if (i4 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(modifier) ? 32 : 16;
        }
        int i5 = i2 & 4;
        if (i5 != 0) {
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(finiteAnimationSpec) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(dm3Var) ? 2048 : 1024;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 1171) != 1170, i3 & 1)) {
            if (i4 != 0) {
                modifier = Modifier.Companion;
            }
            Modifier modifier3 = modifier;
            if (i5 != 0) {
                finiteAnimationSpec = AnimationSpecKt.tween$default(0, 0, null, 7, null);
            }
            FiniteAnimationSpec finiteAnimationSpec3 = finiteAnimationSpec;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-160948176, i3, -1, "androidx.compose.animation.Crossfade (Crossfade.kt:68)");
            }
            Crossfade(androidx.compose.animation.core.TransitionKt.updateTransition(obj, (String) null, composerStartRestartGroup, i3 & 14, 2), modifier3, (FiniteAnimationSpec<Float>) finiteAnimationSpec3, (nl3) null, dm3Var, composerStartRestartGroup, (i3 & 1008) | ((i3 << 3) & 57344), 4);
            dm3Var2 = dm3Var;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
            finiteAnimationSpec2 = finiteAnimationSpec3;
        } else {
            dm3Var2 = dm3Var;
            composerStartRestartGroup.skipToGroupEnd();
            finiteAnimationSpec2 = finiteAnimationSpec;
            modifier2 = modifier;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass2(obj, modifier2, finiteAnimationSpec2, dm3Var2, i, i2));
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0045  */
    /* JADX WARN: Code duplicated, block: B:28:0x004a  */
    /* JADX WARN: Code duplicated, block: B:30:0x004e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0056  */
    /* JADX WARN: Code duplicated, block: B:33:0x0059  */
    /* JADX WARN: Code duplicated, block: B:37:0x0060  */
    /* JADX WARN: Code duplicated, block: B:39:0x0065  */
    /* JADX WARN: Code duplicated, block: B:41:0x0069  */
    /* JADX WARN: Code duplicated, block: B:43:0x0071  */
    /* JADX WARN: Code duplicated, block: B:44:0x0074  */
    /* JADX WARN: Code duplicated, block: B:48:0x007d  */
    /* JADX WARN: Code duplicated, block: B:50:0x0083  */
    /* JADX WARN: Code duplicated, block: B:51:0x0086  */
    /* JADX WARN: Code duplicated, block: B:55:0x0090  */
    /* JADX WARN: Code duplicated, block: B:56:0x0092  */
    /* JADX WARN: Code duplicated, block: B:59:0x009b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x009d  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00af  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:73:0x00de  */
    /* JADX WARN: Code duplicated, block: B:75:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:78:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:80:? A[RETURN, SYNTHETIC] */
    public static final <T> void Crossfade(T t, Modifier modifier, FiniteAnimationSpec<Float> finiteAnimationSpec, String str, dm3<? super T, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, int i, int i2) {
        int i3;
        Modifier modifier2;
        int i4;
        FiniteAnimationSpec<Float> finiteAnimationSpec2;
        int i5;
        int i6;
        int i7;
        boolean z;
        Modifier modifier3;
        FiniteAnimationSpec<Float> finiteAnimationSpec3;
        String str2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i8;
        Modifier modifier4;
        FiniteAnimationSpec<Float> finiteAnimationSpecTween$default;
        String str3;
        int i9;
        Composer composerStartRestartGroup = composer.startRestartGroup(-513216493);
        if ((i & 6) == 0) {
            i3 = ((i & 8) == 0 ? composerStartRestartGroup.changed(t) : composerStartRestartGroup.changedInstance(t) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i10 = i2 & 2;
        if (i10 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    finiteAnimationSpec2 = finiteAnimationSpec;
                    if (composerStartRestartGroup.changedInstance(finiteAnimationSpec2)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 8;
                if (i6 != 0) {
                    if ((i & 3072) == 0) {
                        if (composerStartRestartGroup.changed(str)) {
                            i7 = 2048;
                        } else {
                            i7 = 1024;
                        }
                        i3 |= i7;
                    }
                    if ((i & 24576) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i3 |= i9;
                    }
                    if ((i3 & 9363) != 9362) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i10 != 0) {
                            modifier4 = Modifier.Companion;
                            i8 = i6;
                        } else {
                            i8 = i6;
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            finiteAnimationSpecTween$default = AnimationSpecKt.tween$default(0, 0, null, 7, null);
                        } else {
                            finiteAnimationSpecTween$default = finiteAnimationSpec2;
                        }
                        if (i8 != 0) {
                            str3 = "Crossfade";
                        } else {
                            str3 = str;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-513216493, i3, -1, "androidx.compose.animation.Crossfade (Crossfade.kt:55)");
                        }
                        Crossfade(androidx.compose.animation.core.TransitionKt.updateTransition(t, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 6) & 112), 0), modifier4, finiteAnimationSpecTween$default, (nl3) null, dm3Var, composerStartRestartGroup, i3 & 58352, 4);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        str2 = str3;
                        modifier3 = modifier4;
                        finiteAnimationSpec3 = finiteAnimationSpecTween$default;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        finiteAnimationSpec3 = finiteAnimationSpec2;
                        str2 = str;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(t, modifier3, finiteAnimationSpec3, str2, dm3Var, i, i2));
                    }
                }
                i3 |= 3072;
                if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                        i8 = i6;
                    } else {
                        i8 = i6;
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        finiteAnimationSpecTween$default = AnimationSpecKt.tween$default(0, 0, null, 7, null);
                    } else {
                        finiteAnimationSpecTween$default = finiteAnimationSpec2;
                    }
                    if (i8 != 0) {
                        str3 = "Crossfade";
                    } else {
                        str3 = str;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-513216493, i3, -1, "androidx.compose.animation.Crossfade (Crossfade.kt:55)");
                    }
                    Crossfade(androidx.compose.animation.core.TransitionKt.updateTransition(t, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 6) & 112), 0), modifier4, finiteAnimationSpecTween$default, (nl3) null, dm3Var, composerStartRestartGroup, i3 & 58352, 4);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    str2 = str3;
                    modifier3 = modifier4;
                    finiteAnimationSpec3 = finiteAnimationSpecTween$default;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    finiteAnimationSpec3 = finiteAnimationSpec2;
                    str2 = str;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(t, modifier3, finiteAnimationSpec3, str2, dm3Var, i, i2));
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            finiteAnimationSpec2 = finiteAnimationSpec;
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    if (composerStartRestartGroup.changed(str)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                        i8 = i6;
                    } else {
                        i8 = i6;
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        finiteAnimationSpecTween$default = AnimationSpecKt.tween$default(0, 0, null, 7, null);
                    } else {
                        finiteAnimationSpecTween$default = finiteAnimationSpec2;
                    }
                    if (i8 != 0) {
                        str3 = "Crossfade";
                    } else {
                        str3 = str;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-513216493, i3, -1, "androidx.compose.animation.Crossfade (Crossfade.kt:55)");
                    }
                    Crossfade(androidx.compose.animation.core.TransitionKt.updateTransition(t, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 6) & 112), 0), modifier4, finiteAnimationSpecTween$default, (nl3) null, dm3Var, composerStartRestartGroup, i3 & 58352, 4);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    str2 = str3;
                    modifier3 = modifier4;
                    finiteAnimationSpec3 = finiteAnimationSpecTween$default;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    finiteAnimationSpec3 = finiteAnimationSpec2;
                    str2 = str;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(t, modifier3, finiteAnimationSpec3, str2, dm3Var, i, i2));
                }
            }
            i3 |= 3072;
            if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i3 |= i9;
            }
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i10 != 0) {
                    modifier4 = Modifier.Companion;
                    i8 = i6;
                } else {
                    i8 = i6;
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    finiteAnimationSpecTween$default = AnimationSpecKt.tween$default(0, 0, null, 7, null);
                } else {
                    finiteAnimationSpecTween$default = finiteAnimationSpec2;
                }
                if (i8 != 0) {
                    str3 = "Crossfade";
                } else {
                    str3 = str;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-513216493, i3, -1, "androidx.compose.animation.Crossfade (Crossfade.kt:55)");
                }
                Crossfade(androidx.compose.animation.core.TransitionKt.updateTransition(t, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 6) & 112), 0), modifier4, finiteAnimationSpecTween$default, (nl3) null, dm3Var, composerStartRestartGroup, i3 & 58352, 4);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                str2 = str3;
                modifier3 = modifier4;
                finiteAnimationSpec3 = finiteAnimationSpecTween$default;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                finiteAnimationSpec3 = finiteAnimationSpec2;
                str2 = str;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(t, modifier3, finiteAnimationSpec3, str2, dm3Var, i, i2));
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                finiteAnimationSpec2 = finiteAnimationSpec;
                if (composerStartRestartGroup.changedInstance(finiteAnimationSpec2)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    if (composerStartRestartGroup.changed(str)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                        i8 = i6;
                    } else {
                        i8 = i6;
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        finiteAnimationSpecTween$default = AnimationSpecKt.tween$default(0, 0, null, 7, null);
                    } else {
                        finiteAnimationSpecTween$default = finiteAnimationSpec2;
                    }
                    if (i8 != 0) {
                        str3 = "Crossfade";
                    } else {
                        str3 = str;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-513216493, i3, -1, "androidx.compose.animation.Crossfade (Crossfade.kt:55)");
                    }
                    Crossfade(androidx.compose.animation.core.TransitionKt.updateTransition(t, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 6) & 112), 0), modifier4, finiteAnimationSpecTween$default, (nl3) null, dm3Var, composerStartRestartGroup, i3 & 58352, 4);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    str2 = str3;
                    modifier3 = modifier4;
                    finiteAnimationSpec3 = finiteAnimationSpecTween$default;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    finiteAnimationSpec3 = finiteAnimationSpec2;
                    str2 = str;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(t, modifier3, finiteAnimationSpec3, str2, dm3Var, i, i2));
                }
            }
            i3 |= 3072;
            if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i3 |= i9;
            }
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i10 != 0) {
                    modifier4 = Modifier.Companion;
                    i8 = i6;
                } else {
                    i8 = i6;
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    finiteAnimationSpecTween$default = AnimationSpecKt.tween$default(0, 0, null, 7, null);
                } else {
                    finiteAnimationSpecTween$default = finiteAnimationSpec2;
                }
                if (i8 != 0) {
                    str3 = "Crossfade";
                } else {
                    str3 = str;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-513216493, i3, -1, "androidx.compose.animation.Crossfade (Crossfade.kt:55)");
                }
                Crossfade(androidx.compose.animation.core.TransitionKt.updateTransition(t, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 6) & 112), 0), modifier4, finiteAnimationSpecTween$default, (nl3) null, dm3Var, composerStartRestartGroup, i3 & 58352, 4);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                str2 = str3;
                modifier3 = modifier4;
                finiteAnimationSpec3 = finiteAnimationSpecTween$default;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                finiteAnimationSpec3 = finiteAnimationSpec2;
                str2 = str;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(t, modifier3, finiteAnimationSpec3, str2, dm3Var, i, i2));
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        finiteAnimationSpec2 = finiteAnimationSpec;
        i6 = i2 & 8;
        if (i6 != 0) {
            if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changed(str)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i3 |= i7;
            }
            if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i3 |= i9;
            }
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i10 != 0) {
                    modifier4 = Modifier.Companion;
                    i8 = i6;
                } else {
                    i8 = i6;
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    finiteAnimationSpecTween$default = AnimationSpecKt.tween$default(0, 0, null, 7, null);
                } else {
                    finiteAnimationSpecTween$default = finiteAnimationSpec2;
                }
                if (i8 != 0) {
                    str3 = "Crossfade";
                } else {
                    str3 = str;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-513216493, i3, -1, "androidx.compose.animation.Crossfade (Crossfade.kt:55)");
                }
                Crossfade(androidx.compose.animation.core.TransitionKt.updateTransition(t, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 6) & 112), 0), modifier4, finiteAnimationSpecTween$default, (nl3) null, dm3Var, composerStartRestartGroup, i3 & 58352, 4);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                str2 = str3;
                modifier3 = modifier4;
                finiteAnimationSpec3 = finiteAnimationSpecTween$default;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                finiteAnimationSpec3 = finiteAnimationSpec2;
                str2 = str;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(t, modifier3, finiteAnimationSpec3, str2, dm3Var, i, i2));
            }
        }
        i3 |= 3072;
        if ((i & 24576) == 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                i9 = 16384;
            } else {
                i9 = 8192;
            }
            i3 |= i9;
        }
        if ((i3 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
            if (i10 != 0) {
                modifier4 = Modifier.Companion;
                i8 = i6;
            } else {
                i8 = i6;
                modifier4 = modifier2;
            }
            if (i4 != 0) {
                finiteAnimationSpecTween$default = AnimationSpecKt.tween$default(0, 0, null, 7, null);
            } else {
                finiteAnimationSpecTween$default = finiteAnimationSpec2;
            }
            if (i8 != 0) {
                str3 = "Crossfade";
            } else {
                str3 = str;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-513216493, i3, -1, "androidx.compose.animation.Crossfade (Crossfade.kt:55)");
            }
            Crossfade(androidx.compose.animation.core.TransitionKt.updateTransition(t, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 6) & 112), 0), modifier4, finiteAnimationSpecTween$default, (nl3) null, dm3Var, composerStartRestartGroup, i3 & 58352, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            str2 = str3;
            modifier3 = modifier4;
            finiteAnimationSpec3 = finiteAnimationSpecTween$default;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            finiteAnimationSpec3 = finiteAnimationSpec2;
            str2 = str;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(t, modifier3, finiteAnimationSpec3, str2, dm3Var, i, i2));
        }
    }
}
