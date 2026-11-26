package androidx.compose.animation;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.VisibilityThresholdsKt;
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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.a07;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.fm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.ul2;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class AnimatedContentKt {
    private static final long UnspecifiedSize = IntSize.m9208constructorimpl(-9223372034707292160L);

    /* JADX INFO: renamed from: androidx.compose.animation.AnimatedContentKt$SizeTransform$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements bm3<IntSize, IntSize, SpringSpec<IntSize>> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(2);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ SpringSpec<IntSize> invoke(IntSize intSize, IntSize intSize2) {
            return m1044invokeTemP2vQ(intSize.m9217unboximpl(), intSize2.m9217unboximpl());
        }

        /* JADX INFO: renamed from: invoke-TemP2vQ, reason: not valid java name */
        public final SpringSpec<IntSize> m1044invokeTemP2vQ(long j, long j2) {
            return AnimationSpecKt.spring$default(0.0f, 400.0f, IntSize.m9205boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 1, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0136  */
    /* JADX WARN: Code duplicated, block: B:104:0x013e  */
    /* JADX WARN: Code duplicated, block: B:107:0x0152  */
    /* JADX WARN: Code duplicated, block: B:108:0x0154  */
    /* JADX WARN: Code duplicated, block: B:111:0x015b  */
    /* JADX WARN: Code duplicated, block: B:113:0x0163  */
    /* JADX WARN: Code duplicated, block: B:116:0x0177  */
    /* JADX WARN: Code duplicated, block: B:119:0x018f  */
    /* JADX WARN: Code duplicated, block: B:121:0x0195  */
    /* JADX WARN: Code duplicated, block: B:123:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:126:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:128:0x01be  */
    /* JADX WARN: Code duplicated, block: B:132:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:137:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:140:0x0201 A[LOOP:0: B:135:0x01e4->B:140:0x0201, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:143:0x0208  */
    /* JADX WARN: Code duplicated, block: B:144:0x0210  */
    /* JADX WARN: Code duplicated, block: B:147:0x0221  */
    /* JADX WARN: Code duplicated, block: B:151:0x0239  */
    /* JADX WARN: Code duplicated, block: B:153:0x0249 A[LOOP:2: B:152:0x0247->B:153:0x0249, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:157:0x028c  */
    /* JADX WARN: Code duplicated, block: B:159:0x0294  */
    /* JADX WARN: Code duplicated, block: B:162:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:165:0x02da  */
    /* JADX WARN: Code duplicated, block: B:168:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:169:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:172:0x0325  */
    /* JADX WARN: Code duplicated, block: B:174:0x033b  */
    /* JADX WARN: Code duplicated, block: B:176:0x0345  */
    /* JADX WARN: Code duplicated, block: B:180:0x0365  */
    /* JADX WARN: Code duplicated, block: B:183:0x036c  */
    /* JADX WARN: Code duplicated, block: B:186:0x0378  */
    /* JADX WARN: Code duplicated, block: B:188:0x0205 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:189:0x0206 A[EDGE_INSN: B:189:0x0206->B:142:0x0206 BREAK  A[LOOP:0: B:135:0x01e4->B:140:0x0201], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:192:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x003c  */
    /* JADX WARN: Code duplicated, block: B:25:0x0041  */
    /* JADX WARN: Code duplicated, block: B:27:0x0045  */
    /* JADX WARN: Code duplicated, block: B:29:0x004d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0050  */
    /* JADX WARN: Code duplicated, block: B:34:0x0057  */
    /* JADX WARN: Code duplicated, block: B:36:0x005c  */
    /* JADX WARN: Code duplicated, block: B:38:0x0060  */
    /* JADX WARN: Code duplicated, block: B:40:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006b  */
    /* JADX WARN: Code duplicated, block: B:45:0x0072  */
    /* JADX WARN: Code duplicated, block: B:47:0x0077  */
    /* JADX WARN: Code duplicated, block: B:49:0x007b  */
    /* JADX WARN: Code duplicated, block: B:51:0x0083  */
    /* JADX WARN: Code duplicated, block: B:52:0x0086  */
    /* JADX WARN: Code duplicated, block: B:56:0x008e  */
    /* JADX WARN: Code duplicated, block: B:58:0x0096  */
    /* JADX WARN: Code duplicated, block: B:59:0x0099  */
    /* JADX WARN: Code duplicated, block: B:61:0x009d  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:70:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:72:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:80:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:89:0x010f  */
    /* JADX WARN: Code duplicated, block: B:90:0x0111  */
    /* JADX WARN: Code duplicated, block: B:93:0x0118  */
    /* JADX WARN: Code duplicated, block: B:95:0x0120  */
    /* JADX WARN: Code duplicated, block: B:98:0x012d  */
    /* JADX WARN: Code duplicated, block: B:99:0x012f  */
    public static final <S> void AnimatedContent(Transition<S> transition, Modifier modifier, nl3<? super AnimatedContentTransitionScope<S>, ContentTransform> nl3Var, Alignment alignment, nl3<? super S, ? extends Object> nl3Var2, fm3<? super AnimatedContentScope, ? super S, ? super Composer, ? super Integer, j59> fm3Var, Composer composer, int i, int i2) {
        Modifier modifier2;
        int i3;
        nl3<? super AnimatedContentTransitionScope<S>, ContentTransform> nl3Var3;
        int i4;
        int i5;
        Alignment topStart;
        int i6;
        int i7;
        nl3<? super S, ? extends Object> nl3Var4;
        int i8;
        fm3<? super AnimatedContentScope, ? super S, ? super Composer, ? super Integer, j59> fm3Var2;
        boolean z;
        Modifier modifier3;
        nl3<? super AnimatedContentTransitionScope<S>, ContentTransform> nl3Var5;
        Alignment alignment2;
        nl3<? super S, ? extends Object> nl3Var6;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        LayoutDirection layoutDirection;
        int i9;
        boolean z2;
        Object objRememberedValue;
        AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl;
        boolean z3;
        Object objRememberedValue2;
        SnapshotStateList snapshotStateList;
        boolean z4;
        Object objRememberedValue3;
        MutableScatterMap mutableScatterMap;
        int size;
        int i10;
        AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl2;
        SnapshotStateList snapshotStateList2;
        int i11;
        boolean zChanged;
        ContentTransform contentTransformRememberedValue;
        Object objRememberedValue4;
        ll3<ComposeUiNode> constructor;
        int size2;
        int i12;
        bm3 bm3Var;
        Iterator<T> it;
        int i13;
        Object objRememberedValue5;
        Object objRememberedValue6;
        int i14;
        Transition<S> transition2 = transition;
        Composer composerStartRestartGroup = composer.startRestartGroup(511725103);
        int i15 = (i & 6) == 0 ? (composerStartRestartGroup.changed(transition2) ? 4 : 2) | i : i;
        int i16 = i2 & 1;
        if (i16 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i15 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            i3 = i2 & 2;
            if (i3 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    nl3Var3 = nl3Var;
                    if (composerStartRestartGroup.changedInstance(nl3Var3)) {
                        i4 = 256;
                    } else {
                        i4 = 128;
                    }
                    i15 |= i4;
                }
                i5 = i2 & 4;
                if (i5 != 0) {
                    if ((i & 3072) == 0) {
                        topStart = alignment;
                        if (composerStartRestartGroup.changed(topStart)) {
                            i6 = 2048;
                        } else {
                            i6 = 1024;
                        }
                        i15 |= i6;
                    }
                    i7 = i2 & 8;
                    if (i7 != 0) {
                        if ((i & 24576) == 0) {
                            nl3Var4 = nl3Var2;
                            if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                                i8 = 16384;
                            } else {
                                i8 = 8192;
                            }
                            i15 |= i8;
                        }
                        if ((196608 & i) == 0) {
                            fm3Var2 = fm3Var;
                            if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                                i14 = 131072;
                            } else {
                                i14 = 65536;
                            }
                            i15 |= i14;
                        } else {
                            fm3Var2 = fm3Var;
                        }
                        if ((74899 & i15) != 74898) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i15 & 1)) {
                            if (i16 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i3 != 0) {
                                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                    objRememberedValue6 = AnimatedContentKt$AnimatedContent$4$1.INSTANCE;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                                }
                                nl3Var5 = (nl3) objRememberedValue6;
                            } else {
                                nl3Var5 = nl3Var3;
                            }
                            if (i5 != 0) {
                                topStart = Alignment.Companion.getTopStart();
                            }
                            if (i7 != 0) {
                                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                                    objRememberedValue5 = AnimatedContentKt$AnimatedContent$5$1.INSTANCE;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                }
                                nl3Var4 = (nl3) objRememberedValue5;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(511725103, i15, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:773)");
                            }
                            layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
                            i9 = i15 & 14;
                            if (i9 == 4) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (z2 || objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) objRememberedValue;
                            if (i9 == 4) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z3 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            snapshotStateList = (SnapshotStateList) objRememberedValue2;
                            if (i9 == 4) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (z4 || objRememberedValue3 == Composer.Companion.getEmpty()) {
                                objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            mutableScatterMap = (MutableScatterMap) objRememberedValue3;
                            if (!snapshotStateList.contains(transition2.getCurrentState())) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition2.getCurrentState());
                            }
                            if (aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                                if (snapshotStateList.size() == 1 || !aa4.e(snapshotStateList.get(0), transition2.getCurrentState())) {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition2.getCurrentState());
                                }
                                if (mutableScatterMap.getSize() == 1 || mutableScatterMap.containsKey(transition2.getCurrentState())) {
                                    mutableScatterMap.clear();
                                }
                                animatedContentTransitionScopeImpl.setContentAlignment(topStart);
                                animatedContentTransitionScopeImpl.setLayoutDirection$animation(layoutDirection);
                            }
                            if (!aa4.e(transition2.getCurrentState(), transition2.getTargetState()) && !snapshotStateList.contains(transition2.getTargetState())) {
                                it = snapshotStateList.iterator();
                                i13 = 0;
                                while (true) {
                                    if (it.hasNext()) {
                                        i13 = -1;
                                        break;
                                    } else if (aa4.e(nl3Var4.invoke((Object) it.next()), nl3Var4.invoke(transition2.getTargetState()))) {
                                        break;
                                    } else {
                                        i13++;
                                    }
                                }
                                if (i13 == -1) {
                                    snapshotStateList.add(transition2.getTargetState());
                                } else {
                                    snapshotStateList.set(i13, transition2.getTargetState());
                                }
                            }
                            if (mutableScatterMap.containsKey(transition2.getTargetState()) || !mutableScatterMap.containsKey(transition2.getCurrentState())) {
                                composerStartRestartGroup.startReplaceGroup(1966410449);
                                mutableScatterMap.clear();
                                size = snapshotStateList.size();
                                i10 = 0;
                                while (i10 < size) {
                                    int i17 = i10;
                                    T t = snapshotStateList.get(i17);
                                    SnapshotStateList snapshotStateList3 = snapshotStateList;
                                    AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl3 = animatedContentTransitionScopeImpl;
                                    mutableScatterMap.set(t, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t, nl3Var5, animatedContentTransitionScopeImpl3, snapshotStateList3, fm3Var2), composerStartRestartGroup, 54));
                                    i10 = i17 + 1;
                                    transition2 = transition;
                                    fm3Var2 = fm3Var;
                                    animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl3;
                                    size = size;
                                    snapshotStateList = snapshotStateList3;
                                }
                                animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                                snapshotStateList2 = snapshotStateList;
                                i11 = 0;
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                composerStartRestartGroup.startReplaceGroup(1968995539);
                                composerStartRestartGroup.endReplaceGroup();
                                animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                                snapshotStateList2 = snapshotStateList;
                                i11 = 0;
                            }
                            zChanged = composerStartRestartGroup.changed(transition.getSegment()) | composerStartRestartGroup.changed(animatedContentTransitionScopeImpl2);
                            contentTransformRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (zChanged || contentTransformRememberedValue == Composer.Companion.getEmpty()) {
                                contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                                composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                            }
                            Modifier modifierThen = modifier4.then(animatedContentTransitionScopeImpl2.createSizeAnimationModifier$animation((ContentTransform) contentTransformRememberedValue, composerStartRestartGroup, i11));
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                                objRememberedValue4 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            AnimatedContentMeasurePolicy animatedContentMeasurePolicy = (AnimatedContentMeasurePolicy) objRememberedValue4;
                            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, i11));
                            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen);
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
                            Updater.m5363setimpl(composerM5355constructorimpl, animatedContentMeasurePolicy, companion.getSetMeasurePolicy());
                            Updater.m5363setimpl(composerM5355constructorimpl, currentCompositionLocalMap, companion.getSetResolvedCompositionLocals());
                            Updater.m5359initimpl(composerM5355constructorimpl, Integer.valueOf(iHashCode), companion.getSetCompositeKeyHash());
                            Updater.m5361reconcileimpl(composerM5355constructorimpl, companion.getApplyOnDeactivatedNodeAssertion());
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                            composerStartRestartGroup.startReplaceGroup(-860173498);
                            size2 = snapshotStateList2.size();
                            for (i12 = i11; i12 < size2; i12++) {
                                a07 a07Var = (Object) snapshotStateList2.get(i12);
                                composerStartRestartGroup.startMovableGroup(-2026002954, nl3Var4.invoke(a07Var));
                                bm3Var = (bm3) mutableScatterMap.get(a07Var);
                                if (bm3Var == null) {
                                    composerStartRestartGroup.startReplaceGroup(1618454323);
                                } else {
                                    composerStartRestartGroup.startReplaceGroup(-2026001778);
                                    bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i11));
                                }
                                composerStartRestartGroup.endReplaceGroup();
                                composerStartRestartGroup.endMovableGroup();
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            modifier3 = modifier2;
                            nl3Var5 = nl3Var3;
                        }
                        alignment2 = topStart;
                        nl3Var6 = nl3Var4;
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(transition, modifier3, nl3Var5, alignment2, nl3Var6, fm3Var, i, i2));
                        }
                    }
                    i15 |= 24576;
                    nl3Var4 = nl3Var2;
                    if ((196608 & i) == 0) {
                        fm3Var2 = fm3Var;
                        if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                            i14 = 131072;
                        } else {
                            i14 = 65536;
                        }
                        i15 |= i14;
                    } else {
                        fm3Var2 = fm3Var;
                    }
                    if ((74899 & i15) != 74898) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i15 & 1)) {
                        if (i16 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i3 != 0) {
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = AnimatedContentKt$AnimatedContent$4$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            nl3Var5 = (nl3) objRememberedValue6;
                        } else {
                            nl3Var5 = nl3Var3;
                        }
                        if (i5 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                        }
                        if (i7 != 0) {
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                                objRememberedValue5 = AnimatedContentKt$AnimatedContent$5$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            nl3Var4 = (nl3) objRememberedValue5;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(511725103, i15, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:773)");
                        }
                        layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
                        i9 = i15 & 14;
                        if (i9 == 4) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) objRememberedValue;
                        if (i9 == 4) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z3) {
                            objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        snapshotStateList = (SnapshotStateList) objRememberedValue2;
                        if (i9 == 4) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z4) {
                            objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        mutableScatterMap = (MutableScatterMap) objRememberedValue3;
                        if (!snapshotStateList.contains(transition2.getCurrentState())) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition2.getCurrentState());
                        }
                        if (aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition2.getCurrentState());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition2.getCurrentState());
                            }
                            if (mutableScatterMap.getSize() == 1) {
                                mutableScatterMap.clear();
                            } else {
                                mutableScatterMap.clear();
                            }
                            animatedContentTransitionScopeImpl.setContentAlignment(topStart);
                            animatedContentTransitionScopeImpl.setLayoutDirection$animation(layoutDirection);
                        }
                        if (!aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                            it = snapshotStateList.iterator();
                            i13 = 0;
                            while (true) {
                                if (it.hasNext()) {
                                    i13 = -1;
                                    break;
                                } else {
                                    if (aa4.e(nl3Var4.invoke((Object) it.next()), nl3Var4.invoke(transition2.getTargetState()))) {
                                        break;
                                        break;
                                    }
                                    i13++;
                                }
                            }
                            if (i13 == -1) {
                                snapshotStateList.add(transition2.getTargetState());
                            } else {
                                snapshotStateList.set(i13, transition2.getTargetState());
                            }
                        }
                        if (mutableScatterMap.containsKey(transition2.getTargetState())) {
                            composerStartRestartGroup.startReplaceGroup(1966410449);
                            mutableScatterMap.clear();
                            size = snapshotStateList.size();
                            i10 = 0;
                            while (i10 < size) {
                                int i18 = i10;
                                T t2 = snapshotStateList.get(i18);
                                SnapshotStateList snapshotStateList4 = snapshotStateList;
                                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl4 = animatedContentTransitionScopeImpl;
                                mutableScatterMap.set(t2, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t2, nl3Var5, animatedContentTransitionScopeImpl4, snapshotStateList4, fm3Var2), composerStartRestartGroup, 54));
                                i10 = i18 + 1;
                                transition2 = transition;
                                fm3Var2 = fm3Var;
                                animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl4;
                                size = size;
                                snapshotStateList = snapshotStateList4;
                            }
                            animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                            snapshotStateList2 = snapshotStateList;
                            i11 = 0;
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1966410449);
                            mutableScatterMap.clear();
                            size = snapshotStateList.size();
                            i10 = 0;
                            while (i10 < size) {
                                int i19 = i10;
                                T t3 = snapshotStateList.get(i19);
                                SnapshotStateList snapshotStateList5 = snapshotStateList;
                                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl5 = animatedContentTransitionScopeImpl;
                                mutableScatterMap.set(t3, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t3, nl3Var5, animatedContentTransitionScopeImpl5, snapshotStateList5, fm3Var2), composerStartRestartGroup, 54));
                                i10 = i19 + 1;
                                transition2 = transition;
                                fm3Var2 = fm3Var;
                                animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl5;
                                size = size;
                                snapshotStateList = snapshotStateList5;
                            }
                            animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                            snapshotStateList2 = snapshotStateList;
                            i11 = 0;
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        zChanged = composerStartRestartGroup.changed(transition.getSegment()) | composerStartRestartGroup.changed(animatedContentTransitionScopeImpl2);
                        contentTransformRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                            composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                        } else {
                            contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                            composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                        }
                        Modifier modifierThen2 = modifier4.then(animatedContentTransitionScopeImpl2.createSizeAnimationModifier$animation((ContentTransform) contentTransformRememberedValue, composerStartRestartGroup, i11));
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy2 = (AnimatedContentMeasurePolicy) objRememberedValue4;
                        int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, i11));
                        CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen2);
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
                        Updater.m5363setimpl(composerM5355constructorimpl2, animatedContentMeasurePolicy2, companion2.getSetMeasurePolicy());
                        Updater.m5363setimpl(composerM5355constructorimpl2, currentCompositionLocalMap2, companion2.getSetResolvedCompositionLocals());
                        Updater.m5359initimpl(composerM5355constructorimpl2, Integer.valueOf(iHashCode2), companion2.getSetCompositeKeyHash());
                        Updater.m5361reconcileimpl(composerM5355constructorimpl2, companion2.getApplyOnDeactivatedNodeAssertion());
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion2.getSetModifier());
                        composerStartRestartGroup.startReplaceGroup(-860173498);
                        size2 = snapshotStateList2.size();
                        while (i12 < size2) {
                            a07 a07Var2 = (Object) snapshotStateList2.get(i12);
                            composerStartRestartGroup.startMovableGroup(-2026002954, nl3Var4.invoke(a07Var2));
                            bm3Var = (bm3) mutableScatterMap.get(a07Var2);
                            if (bm3Var == null) {
                                composerStartRestartGroup.startReplaceGroup(1618454323);
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-2026001778);
                                bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i11));
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            composerStartRestartGroup.endMovableGroup();
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        nl3Var5 = nl3Var3;
                    }
                    alignment2 = topStart;
                    nl3Var6 = nl3Var4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(transition, modifier3, nl3Var5, alignment2, nl3Var6, fm3Var, i, i2));
                    }
                }
                i15 |= 3072;
                topStart = alignment;
                i7 = i2 & 8;
                if (i7 != 0) {
                    if ((i & 24576) == 0) {
                        nl3Var4 = nl3Var2;
                        if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                            i8 = 16384;
                        } else {
                            i8 = 8192;
                        }
                        i15 |= i8;
                    }
                    if ((196608 & i) == 0) {
                        fm3Var2 = fm3Var;
                        if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                            i14 = 131072;
                        } else {
                            i14 = 65536;
                        }
                        i15 |= i14;
                    } else {
                        fm3Var2 = fm3Var;
                    }
                    if ((74899 & i15) != 74898) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i15 & 1)) {
                        if (i16 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i3 != 0) {
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = AnimatedContentKt$AnimatedContent$4$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            nl3Var5 = (nl3) objRememberedValue6;
                        } else {
                            nl3Var5 = nl3Var3;
                        }
                        if (i5 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                        }
                        if (i7 != 0) {
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                                objRememberedValue5 = AnimatedContentKt$AnimatedContent$5$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            nl3Var4 = (nl3) objRememberedValue5;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(511725103, i15, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:773)");
                        }
                        layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
                        i9 = i15 & 14;
                        if (i9 == 4) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) objRememberedValue;
                        if (i9 == 4) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z3) {
                            objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        snapshotStateList = (SnapshotStateList) objRememberedValue2;
                        if (i9 == 4) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z4) {
                            objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        mutableScatterMap = (MutableScatterMap) objRememberedValue3;
                        if (!snapshotStateList.contains(transition2.getCurrentState())) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition2.getCurrentState());
                        }
                        if (aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition2.getCurrentState());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition2.getCurrentState());
                            }
                            if (mutableScatterMap.getSize() == 1) {
                                mutableScatterMap.clear();
                            } else {
                                mutableScatterMap.clear();
                            }
                            animatedContentTransitionScopeImpl.setContentAlignment(topStart);
                            animatedContentTransitionScopeImpl.setLayoutDirection$animation(layoutDirection);
                        }
                        if (!aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                            it = snapshotStateList.iterator();
                            i13 = 0;
                            while (true) {
                                if (it.hasNext()) {
                                    i13 = -1;
                                    break;
                                } else {
                                    if (aa4.e(nl3Var4.invoke((Object) it.next()), nl3Var4.invoke(transition2.getTargetState()))) {
                                        break;
                                        break;
                                    }
                                    i13++;
                                }
                            }
                            if (i13 == -1) {
                                snapshotStateList.add(transition2.getTargetState());
                            } else {
                                snapshotStateList.set(i13, transition2.getTargetState());
                            }
                        }
                        if (mutableScatterMap.containsKey(transition2.getTargetState())) {
                            composerStartRestartGroup.startReplaceGroup(1966410449);
                            mutableScatterMap.clear();
                            size = snapshotStateList.size();
                            i10 = 0;
                            while (i10 < size) {
                                int i110 = i10;
                                T t4 = snapshotStateList.get(i110);
                                SnapshotStateList snapshotStateList6 = snapshotStateList;
                                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl6 = animatedContentTransitionScopeImpl;
                                mutableScatterMap.set(t4, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t4, nl3Var5, animatedContentTransitionScopeImpl6, snapshotStateList6, fm3Var2), composerStartRestartGroup, 54));
                                i10 = i110 + 1;
                                transition2 = transition;
                                fm3Var2 = fm3Var;
                                animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl6;
                                size = size;
                                snapshotStateList = snapshotStateList6;
                            }
                            animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                            snapshotStateList2 = snapshotStateList;
                            i11 = 0;
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1966410449);
                            mutableScatterMap.clear();
                            size = snapshotStateList.size();
                            i10 = 0;
                            while (i10 < size) {
                                int i111 = i10;
                                T t5 = snapshotStateList.get(i111);
                                SnapshotStateList snapshotStateList7 = snapshotStateList;
                                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl7 = animatedContentTransitionScopeImpl;
                                mutableScatterMap.set(t5, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t5, nl3Var5, animatedContentTransitionScopeImpl7, snapshotStateList7, fm3Var2), composerStartRestartGroup, 54));
                                i10 = i111 + 1;
                                transition2 = transition;
                                fm3Var2 = fm3Var;
                                animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl7;
                                size = size;
                                snapshotStateList = snapshotStateList7;
                            }
                            animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                            snapshotStateList2 = snapshotStateList;
                            i11 = 0;
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        zChanged = composerStartRestartGroup.changed(transition.getSegment()) | composerStartRestartGroup.changed(animatedContentTransitionScopeImpl2);
                        contentTransformRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                            composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                        } else {
                            contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                            composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                        }
                        Modifier modifierThen3 = modifier4.then(animatedContentTransitionScopeImpl2.createSizeAnimationModifier$animation((ContentTransform) contentTransformRememberedValue, composerStartRestartGroup, i11));
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy3 = (AnimatedContentMeasurePolicy) objRememberedValue4;
                        int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, i11));
                        CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen3);
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
                        Updater.m5363setimpl(composerM5355constructorimpl3, animatedContentMeasurePolicy3, companion3.getSetMeasurePolicy());
                        Updater.m5363setimpl(composerM5355constructorimpl3, currentCompositionLocalMap3, companion3.getSetResolvedCompositionLocals());
                        Updater.m5359initimpl(composerM5355constructorimpl3, Integer.valueOf(iHashCode3), companion3.getSetCompositeKeyHash());
                        Updater.m5361reconcileimpl(composerM5355constructorimpl3, companion3.getApplyOnDeactivatedNodeAssertion());
                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion3.getSetModifier());
                        composerStartRestartGroup.startReplaceGroup(-860173498);
                        size2 = snapshotStateList2.size();
                        while (i12 < size2) {
                            a07 a07Var3 = (Object) snapshotStateList2.get(i12);
                            composerStartRestartGroup.startMovableGroup(-2026002954, nl3Var4.invoke(a07Var3));
                            bm3Var = (bm3) mutableScatterMap.get(a07Var3);
                            if (bm3Var == null) {
                                composerStartRestartGroup.startReplaceGroup(1618454323);
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-2026001778);
                                bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i11));
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            composerStartRestartGroup.endMovableGroup();
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        nl3Var5 = nl3Var3;
                    }
                    alignment2 = topStart;
                    nl3Var6 = nl3Var4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(transition, modifier3, nl3Var5, alignment2, nl3Var6, fm3Var, i, i2));
                    }
                }
                i15 |= 24576;
                nl3Var4 = nl3Var2;
                if ((196608 & i) == 0) {
                    fm3Var2 = fm3Var;
                    if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i15 |= i14;
                } else {
                    fm3Var2 = fm3Var;
                }
                if ((74899 & i15) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i15 & 1)) {
                    if (i16 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i3 != 0) {
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = AnimatedContentKt$AnimatedContent$4$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        nl3Var5 = (nl3) objRememberedValue6;
                    } else {
                        nl3Var5 = nl3Var3;
                    }
                    if (i5 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                    }
                    if (i7 != 0) {
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                            objRememberedValue5 = AnimatedContentKt$AnimatedContent$5$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        nl3Var4 = (nl3) objRememberedValue5;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(511725103, i15, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:773)");
                    }
                    layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
                    i9 = i15 & 14;
                    if (i9 == 4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) objRememberedValue;
                    if (i9 == 4) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z3) {
                        objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    snapshotStateList = (SnapshotStateList) objRememberedValue2;
                    if (i9 == 4) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z4) {
                        objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    mutableScatterMap = (MutableScatterMap) objRememberedValue3;
                    if (!snapshotStateList.contains(transition2.getCurrentState())) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition2.getCurrentState());
                    }
                    if (aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition2.getCurrentState());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition2.getCurrentState());
                        }
                        if (mutableScatterMap.getSize() == 1) {
                            mutableScatterMap.clear();
                        } else {
                            mutableScatterMap.clear();
                        }
                        animatedContentTransitionScopeImpl.setContentAlignment(topStart);
                        animatedContentTransitionScopeImpl.setLayoutDirection$animation(layoutDirection);
                    }
                    if (!aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                        it = snapshotStateList.iterator();
                        i13 = 0;
                        while (true) {
                            if (it.hasNext()) {
                                i13 = -1;
                                break;
                            } else {
                                if (aa4.e(nl3Var4.invoke((Object) it.next()), nl3Var4.invoke(transition2.getTargetState()))) {
                                    break;
                                    break;
                                }
                                i13++;
                            }
                        }
                        if (i13 == -1) {
                            snapshotStateList.add(transition2.getTargetState());
                        } else {
                            snapshotStateList.set(i13, transition2.getTargetState());
                        }
                    }
                    if (mutableScatterMap.containsKey(transition2.getTargetState())) {
                        composerStartRestartGroup.startReplaceGroup(1966410449);
                        mutableScatterMap.clear();
                        size = snapshotStateList.size();
                        i10 = 0;
                        while (i10 < size) {
                            int i112 = i10;
                            T t6 = snapshotStateList.get(i112);
                            SnapshotStateList snapshotStateList8 = snapshotStateList;
                            AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl8 = animatedContentTransitionScopeImpl;
                            mutableScatterMap.set(t6, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t6, nl3Var5, animatedContentTransitionScopeImpl8, snapshotStateList8, fm3Var2), composerStartRestartGroup, 54));
                            i10 = i112 + 1;
                            transition2 = transition;
                            fm3Var2 = fm3Var;
                            animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl8;
                            size = size;
                            snapshotStateList = snapshotStateList8;
                        }
                        animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                        snapshotStateList2 = snapshotStateList;
                        i11 = 0;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1966410449);
                        mutableScatterMap.clear();
                        size = snapshotStateList.size();
                        i10 = 0;
                        while (i10 < size) {
                            int i113 = i10;
                            T t7 = snapshotStateList.get(i113);
                            SnapshotStateList snapshotStateList9 = snapshotStateList;
                            AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl9 = animatedContentTransitionScopeImpl;
                            mutableScatterMap.set(t7, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t7, nl3Var5, animatedContentTransitionScopeImpl9, snapshotStateList9, fm3Var2), composerStartRestartGroup, 54));
                            i10 = i113 + 1;
                            transition2 = transition;
                            fm3Var2 = fm3Var;
                            animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl9;
                            size = size;
                            snapshotStateList = snapshotStateList9;
                        }
                        animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                        snapshotStateList2 = snapshotStateList;
                        i11 = 0;
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    zChanged = composerStartRestartGroup.changed(transition.getSegment()) | composerStartRestartGroup.changed(animatedContentTransitionScopeImpl2);
                    contentTransformRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                    } else {
                        contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                    }
                    Modifier modifierThen4 = modifier4.then(animatedContentTransitionScopeImpl2.createSizeAnimationModifier$animation((ContentTransform) contentTransformRememberedValue, composerStartRestartGroup, i11));
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy4 = (AnimatedContentMeasurePolicy) objRememberedValue4;
                    int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, i11));
                    CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen4);
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
                    Updater.m5363setimpl(composerM5355constructorimpl4, animatedContentMeasurePolicy4, companion4.getSetMeasurePolicy());
                    Updater.m5363setimpl(composerM5355constructorimpl4, currentCompositionLocalMap4, companion4.getSetResolvedCompositionLocals());
                    Updater.m5359initimpl(composerM5355constructorimpl4, Integer.valueOf(iHashCode4), companion4.getSetCompositeKeyHash());
                    Updater.m5361reconcileimpl(composerM5355constructorimpl4, companion4.getApplyOnDeactivatedNodeAssertion());
                    Updater.m5363setimpl(composerM5355constructorimpl4, modifierMaterializeModifier4, companion4.getSetModifier());
                    composerStartRestartGroup.startReplaceGroup(-860173498);
                    size2 = snapshotStateList2.size();
                    while (i12 < size2) {
                        a07 a07Var4 = (Object) snapshotStateList2.get(i12);
                        composerStartRestartGroup.startMovableGroup(-2026002954, nl3Var4.invoke(a07Var4));
                        bm3Var = (bm3) mutableScatterMap.get(a07Var4);
                        if (bm3Var == null) {
                            composerStartRestartGroup.startReplaceGroup(1618454323);
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-2026001778);
                            bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i11));
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        composerStartRestartGroup.endMovableGroup();
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    nl3Var5 = nl3Var3;
                }
                alignment2 = topStart;
                nl3Var6 = nl3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(transition, modifier3, nl3Var5, alignment2, nl3Var6, fm3Var, i, i2));
                }
            }
            i15 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            nl3Var3 = nl3Var;
            i5 = i2 & 4;
            if (i5 != 0) {
                if ((i & 3072) == 0) {
                    topStart = alignment;
                    if (composerStartRestartGroup.changed(topStart)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i15 |= i6;
                }
                i7 = i2 & 8;
                if (i7 != 0) {
                    if ((i & 24576) == 0) {
                        nl3Var4 = nl3Var2;
                        if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                            i8 = 16384;
                        } else {
                            i8 = 8192;
                        }
                        i15 |= i8;
                    }
                    if ((196608 & i) == 0) {
                        fm3Var2 = fm3Var;
                        if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                            i14 = 131072;
                        } else {
                            i14 = 65536;
                        }
                        i15 |= i14;
                    } else {
                        fm3Var2 = fm3Var;
                    }
                    if ((74899 & i15) != 74898) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i15 & 1)) {
                        if (i16 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i3 != 0) {
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = AnimatedContentKt$AnimatedContent$4$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            nl3Var5 = (nl3) objRememberedValue6;
                        } else {
                            nl3Var5 = nl3Var3;
                        }
                        if (i5 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                        }
                        if (i7 != 0) {
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                                objRememberedValue5 = AnimatedContentKt$AnimatedContent$5$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            nl3Var4 = (nl3) objRememberedValue5;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(511725103, i15, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:773)");
                        }
                        layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
                        i9 = i15 & 14;
                        if (i9 == 4) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) objRememberedValue;
                        if (i9 == 4) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z3) {
                            objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        snapshotStateList = (SnapshotStateList) objRememberedValue2;
                        if (i9 == 4) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z4) {
                            objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        mutableScatterMap = (MutableScatterMap) objRememberedValue3;
                        if (!snapshotStateList.contains(transition2.getCurrentState())) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition2.getCurrentState());
                        }
                        if (aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition2.getCurrentState());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition2.getCurrentState());
                            }
                            if (mutableScatterMap.getSize() == 1) {
                                mutableScatterMap.clear();
                            } else {
                                mutableScatterMap.clear();
                            }
                            animatedContentTransitionScopeImpl.setContentAlignment(topStart);
                            animatedContentTransitionScopeImpl.setLayoutDirection$animation(layoutDirection);
                        }
                        if (!aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                            it = snapshotStateList.iterator();
                            i13 = 0;
                            while (true) {
                                if (it.hasNext()) {
                                    i13 = -1;
                                    break;
                                } else {
                                    if (aa4.e(nl3Var4.invoke((Object) it.next()), nl3Var4.invoke(transition2.getTargetState()))) {
                                        break;
                                        break;
                                    }
                                    i13++;
                                }
                            }
                            if (i13 == -1) {
                                snapshotStateList.add(transition2.getTargetState());
                            } else {
                                snapshotStateList.set(i13, transition2.getTargetState());
                            }
                        }
                        if (mutableScatterMap.containsKey(transition2.getTargetState())) {
                            composerStartRestartGroup.startReplaceGroup(1966410449);
                            mutableScatterMap.clear();
                            size = snapshotStateList.size();
                            i10 = 0;
                            while (i10 < size) {
                                int i114 = i10;
                                T t8 = snapshotStateList.get(i114);
                                SnapshotStateList snapshotStateList10 = snapshotStateList;
                                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl10 = animatedContentTransitionScopeImpl;
                                mutableScatterMap.set(t8, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t8, nl3Var5, animatedContentTransitionScopeImpl10, snapshotStateList10, fm3Var2), composerStartRestartGroup, 54));
                                i10 = i114 + 1;
                                transition2 = transition;
                                fm3Var2 = fm3Var;
                                animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl10;
                                size = size;
                                snapshotStateList = snapshotStateList10;
                            }
                            animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                            snapshotStateList2 = snapshotStateList;
                            i11 = 0;
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1966410449);
                            mutableScatterMap.clear();
                            size = snapshotStateList.size();
                            i10 = 0;
                            while (i10 < size) {
                                int i115 = i10;
                                T t9 = snapshotStateList.get(i115);
                                SnapshotStateList snapshotStateList11 = snapshotStateList;
                                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl11 = animatedContentTransitionScopeImpl;
                                mutableScatterMap.set(t9, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t9, nl3Var5, animatedContentTransitionScopeImpl11, snapshotStateList11, fm3Var2), composerStartRestartGroup, 54));
                                i10 = i115 + 1;
                                transition2 = transition;
                                fm3Var2 = fm3Var;
                                animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl11;
                                size = size;
                                snapshotStateList = snapshotStateList11;
                            }
                            animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                            snapshotStateList2 = snapshotStateList;
                            i11 = 0;
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        zChanged = composerStartRestartGroup.changed(transition.getSegment()) | composerStartRestartGroup.changed(animatedContentTransitionScopeImpl2);
                        contentTransformRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                            composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                        } else {
                            contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                            composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                        }
                        Modifier modifierThen5 = modifier4.then(animatedContentTransitionScopeImpl2.createSizeAnimationModifier$animation((ContentTransform) contentTransformRememberedValue, composerStartRestartGroup, i11));
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy5 = (AnimatedContentMeasurePolicy) objRememberedValue4;
                        int iHashCode5 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, i11));
                        CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen5);
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
                        Updater.m5363setimpl(composerM5355constructorimpl5, animatedContentMeasurePolicy5, companion5.getSetMeasurePolicy());
                        Updater.m5363setimpl(composerM5355constructorimpl5, currentCompositionLocalMap5, companion5.getSetResolvedCompositionLocals());
                        Updater.m5359initimpl(composerM5355constructorimpl5, Integer.valueOf(iHashCode5), companion5.getSetCompositeKeyHash());
                        Updater.m5361reconcileimpl(composerM5355constructorimpl5, companion5.getApplyOnDeactivatedNodeAssertion());
                        Updater.m5363setimpl(composerM5355constructorimpl5, modifierMaterializeModifier5, companion5.getSetModifier());
                        composerStartRestartGroup.startReplaceGroup(-860173498);
                        size2 = snapshotStateList2.size();
                        while (i12 < size2) {
                            a07 a07Var5 = (Object) snapshotStateList2.get(i12);
                            composerStartRestartGroup.startMovableGroup(-2026002954, nl3Var4.invoke(a07Var5));
                            bm3Var = (bm3) mutableScatterMap.get(a07Var5);
                            if (bm3Var == null) {
                                composerStartRestartGroup.startReplaceGroup(1618454323);
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-2026001778);
                                bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i11));
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            composerStartRestartGroup.endMovableGroup();
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        nl3Var5 = nl3Var3;
                    }
                    alignment2 = topStart;
                    nl3Var6 = nl3Var4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(transition, modifier3, nl3Var5, alignment2, nl3Var6, fm3Var, i, i2));
                    }
                }
                i15 |= 24576;
                nl3Var4 = nl3Var2;
                if ((196608 & i) == 0) {
                    fm3Var2 = fm3Var;
                    if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i15 |= i14;
                } else {
                    fm3Var2 = fm3Var;
                }
                if ((74899 & i15) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i15 & 1)) {
                    if (i16 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i3 != 0) {
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = AnimatedContentKt$AnimatedContent$4$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        nl3Var5 = (nl3) objRememberedValue6;
                    } else {
                        nl3Var5 = nl3Var3;
                    }
                    if (i5 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                    }
                    if (i7 != 0) {
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                            objRememberedValue5 = AnimatedContentKt$AnimatedContent$5$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        nl3Var4 = (nl3) objRememberedValue5;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(511725103, i15, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:773)");
                    }
                    layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
                    i9 = i15 & 14;
                    if (i9 == 4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) objRememberedValue;
                    if (i9 == 4) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z3) {
                        objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    snapshotStateList = (SnapshotStateList) objRememberedValue2;
                    if (i9 == 4) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z4) {
                        objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    mutableScatterMap = (MutableScatterMap) objRememberedValue3;
                    if (!snapshotStateList.contains(transition2.getCurrentState())) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition2.getCurrentState());
                    }
                    if (aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition2.getCurrentState());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition2.getCurrentState());
                        }
                        if (mutableScatterMap.getSize() == 1) {
                            mutableScatterMap.clear();
                        } else {
                            mutableScatterMap.clear();
                        }
                        animatedContentTransitionScopeImpl.setContentAlignment(topStart);
                        animatedContentTransitionScopeImpl.setLayoutDirection$animation(layoutDirection);
                    }
                    if (!aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                        it = snapshotStateList.iterator();
                        i13 = 0;
                        while (true) {
                            if (it.hasNext()) {
                                i13 = -1;
                                break;
                            } else {
                                if (aa4.e(nl3Var4.invoke((Object) it.next()), nl3Var4.invoke(transition2.getTargetState()))) {
                                    break;
                                    break;
                                }
                                i13++;
                            }
                        }
                        if (i13 == -1) {
                            snapshotStateList.add(transition2.getTargetState());
                        } else {
                            snapshotStateList.set(i13, transition2.getTargetState());
                        }
                    }
                    if (mutableScatterMap.containsKey(transition2.getTargetState())) {
                        composerStartRestartGroup.startReplaceGroup(1966410449);
                        mutableScatterMap.clear();
                        size = snapshotStateList.size();
                        i10 = 0;
                        while (i10 < size) {
                            int i116 = i10;
                            T t10 = snapshotStateList.get(i116);
                            SnapshotStateList snapshotStateList12 = snapshotStateList;
                            AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl12 = animatedContentTransitionScopeImpl;
                            mutableScatterMap.set(t10, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t10, nl3Var5, animatedContentTransitionScopeImpl12, snapshotStateList12, fm3Var2), composerStartRestartGroup, 54));
                            i10 = i116 + 1;
                            transition2 = transition;
                            fm3Var2 = fm3Var;
                            animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl12;
                            size = size;
                            snapshotStateList = snapshotStateList12;
                        }
                        animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                        snapshotStateList2 = snapshotStateList;
                        i11 = 0;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1966410449);
                        mutableScatterMap.clear();
                        size = snapshotStateList.size();
                        i10 = 0;
                        while (i10 < size) {
                            int i117 = i10;
                            T t11 = snapshotStateList.get(i117);
                            SnapshotStateList snapshotStateList13 = snapshotStateList;
                            AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl13 = animatedContentTransitionScopeImpl;
                            mutableScatterMap.set(t11, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t11, nl3Var5, animatedContentTransitionScopeImpl13, snapshotStateList13, fm3Var2), composerStartRestartGroup, 54));
                            i10 = i117 + 1;
                            transition2 = transition;
                            fm3Var2 = fm3Var;
                            animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl13;
                            size = size;
                            snapshotStateList = snapshotStateList13;
                        }
                        animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                        snapshotStateList2 = snapshotStateList;
                        i11 = 0;
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    zChanged = composerStartRestartGroup.changed(transition.getSegment()) | composerStartRestartGroup.changed(animatedContentTransitionScopeImpl2);
                    contentTransformRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                    } else {
                        contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                    }
                    Modifier modifierThen6 = modifier4.then(animatedContentTransitionScopeImpl2.createSizeAnimationModifier$animation((ContentTransform) contentTransformRememberedValue, composerStartRestartGroup, i11));
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy6 = (AnimatedContentMeasurePolicy) objRememberedValue4;
                    int iHashCode6 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, i11));
                    CompositionLocalMap currentCompositionLocalMap6 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen6);
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
                    Updater.m5363setimpl(composerM5355constructorimpl6, animatedContentMeasurePolicy6, companion6.getSetMeasurePolicy());
                    Updater.m5363setimpl(composerM5355constructorimpl6, currentCompositionLocalMap6, companion6.getSetResolvedCompositionLocals());
                    Updater.m5359initimpl(composerM5355constructorimpl6, Integer.valueOf(iHashCode6), companion6.getSetCompositeKeyHash());
                    Updater.m5361reconcileimpl(composerM5355constructorimpl6, companion6.getApplyOnDeactivatedNodeAssertion());
                    Updater.m5363setimpl(composerM5355constructorimpl6, modifierMaterializeModifier6, companion6.getSetModifier());
                    composerStartRestartGroup.startReplaceGroup(-860173498);
                    size2 = snapshotStateList2.size();
                    while (i12 < size2) {
                        a07 a07Var6 = (Object) snapshotStateList2.get(i12);
                        composerStartRestartGroup.startMovableGroup(-2026002954, nl3Var4.invoke(a07Var6));
                        bm3Var = (bm3) mutableScatterMap.get(a07Var6);
                        if (bm3Var == null) {
                            composerStartRestartGroup.startReplaceGroup(1618454323);
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-2026001778);
                            bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i11));
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        composerStartRestartGroup.endMovableGroup();
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    nl3Var5 = nl3Var3;
                }
                alignment2 = topStart;
                nl3Var6 = nl3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(transition, modifier3, nl3Var5, alignment2, nl3Var6, fm3Var, i, i2));
                }
            }
            i15 |= 3072;
            topStart = alignment;
            i7 = i2 & 8;
            if (i7 != 0) {
                if ((i & 24576) == 0) {
                    nl3Var4 = nl3Var2;
                    if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i15 |= i8;
                }
                if ((196608 & i) == 0) {
                    fm3Var2 = fm3Var;
                    if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i15 |= i14;
                } else {
                    fm3Var2 = fm3Var;
                }
                if ((74899 & i15) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i15 & 1)) {
                    if (i16 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i3 != 0) {
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = AnimatedContentKt$AnimatedContent$4$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        nl3Var5 = (nl3) objRememberedValue6;
                    } else {
                        nl3Var5 = nl3Var3;
                    }
                    if (i5 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                    }
                    if (i7 != 0) {
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                            objRememberedValue5 = AnimatedContentKt$AnimatedContent$5$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        nl3Var4 = (nl3) objRememberedValue5;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(511725103, i15, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:773)");
                    }
                    layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
                    i9 = i15 & 14;
                    if (i9 == 4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) objRememberedValue;
                    if (i9 == 4) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z3) {
                        objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    snapshotStateList = (SnapshotStateList) objRememberedValue2;
                    if (i9 == 4) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z4) {
                        objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    mutableScatterMap = (MutableScatterMap) objRememberedValue3;
                    if (!snapshotStateList.contains(transition2.getCurrentState())) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition2.getCurrentState());
                    }
                    if (aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition2.getCurrentState());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition2.getCurrentState());
                        }
                        if (mutableScatterMap.getSize() == 1) {
                            mutableScatterMap.clear();
                        } else {
                            mutableScatterMap.clear();
                        }
                        animatedContentTransitionScopeImpl.setContentAlignment(topStart);
                        animatedContentTransitionScopeImpl.setLayoutDirection$animation(layoutDirection);
                    }
                    if (!aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                        it = snapshotStateList.iterator();
                        i13 = 0;
                        while (true) {
                            if (it.hasNext()) {
                                i13 = -1;
                                break;
                            } else {
                                if (aa4.e(nl3Var4.invoke((Object) it.next()), nl3Var4.invoke(transition2.getTargetState()))) {
                                    break;
                                    break;
                                }
                                i13++;
                            }
                        }
                        if (i13 == -1) {
                            snapshotStateList.add(transition2.getTargetState());
                        } else {
                            snapshotStateList.set(i13, transition2.getTargetState());
                        }
                    }
                    if (mutableScatterMap.containsKey(transition2.getTargetState())) {
                        composerStartRestartGroup.startReplaceGroup(1966410449);
                        mutableScatterMap.clear();
                        size = snapshotStateList.size();
                        i10 = 0;
                        while (i10 < size) {
                            int i118 = i10;
                            T t12 = snapshotStateList.get(i118);
                            SnapshotStateList snapshotStateList14 = snapshotStateList;
                            AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl14 = animatedContentTransitionScopeImpl;
                            mutableScatterMap.set(t12, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t12, nl3Var5, animatedContentTransitionScopeImpl14, snapshotStateList14, fm3Var2), composerStartRestartGroup, 54));
                            i10 = i118 + 1;
                            transition2 = transition;
                            fm3Var2 = fm3Var;
                            animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl14;
                            size = size;
                            snapshotStateList = snapshotStateList14;
                        }
                        animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                        snapshotStateList2 = snapshotStateList;
                        i11 = 0;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1966410449);
                        mutableScatterMap.clear();
                        size = snapshotStateList.size();
                        i10 = 0;
                        while (i10 < size) {
                            int i119 = i10;
                            T t13 = snapshotStateList.get(i119);
                            SnapshotStateList snapshotStateList15 = snapshotStateList;
                            AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl15 = animatedContentTransitionScopeImpl;
                            mutableScatterMap.set(t13, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t13, nl3Var5, animatedContentTransitionScopeImpl15, snapshotStateList15, fm3Var2), composerStartRestartGroup, 54));
                            i10 = i119 + 1;
                            transition2 = transition;
                            fm3Var2 = fm3Var;
                            animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl15;
                            size = size;
                            snapshotStateList = snapshotStateList15;
                        }
                        animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                        snapshotStateList2 = snapshotStateList;
                        i11 = 0;
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    zChanged = composerStartRestartGroup.changed(transition.getSegment()) | composerStartRestartGroup.changed(animatedContentTransitionScopeImpl2);
                    contentTransformRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                    } else {
                        contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                    }
                    Modifier modifierThen7 = modifier4.then(animatedContentTransitionScopeImpl2.createSizeAnimationModifier$animation((ContentTransform) contentTransformRememberedValue, composerStartRestartGroup, i11));
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy7 = (AnimatedContentMeasurePolicy) objRememberedValue4;
                    int iHashCode7 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, i11));
                    CompositionLocalMap currentCompositionLocalMap7 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier7 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen7);
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
                    Updater.m5363setimpl(composerM5355constructorimpl7, animatedContentMeasurePolicy7, companion7.getSetMeasurePolicy());
                    Updater.m5363setimpl(composerM5355constructorimpl7, currentCompositionLocalMap7, companion7.getSetResolvedCompositionLocals());
                    Updater.m5359initimpl(composerM5355constructorimpl7, Integer.valueOf(iHashCode7), companion7.getSetCompositeKeyHash());
                    Updater.m5361reconcileimpl(composerM5355constructorimpl7, companion7.getApplyOnDeactivatedNodeAssertion());
                    Updater.m5363setimpl(composerM5355constructorimpl7, modifierMaterializeModifier7, companion7.getSetModifier());
                    composerStartRestartGroup.startReplaceGroup(-860173498);
                    size2 = snapshotStateList2.size();
                    while (i12 < size2) {
                        a07 a07Var7 = (Object) snapshotStateList2.get(i12);
                        composerStartRestartGroup.startMovableGroup(-2026002954, nl3Var4.invoke(a07Var7));
                        bm3Var = (bm3) mutableScatterMap.get(a07Var7);
                        if (bm3Var == null) {
                            composerStartRestartGroup.startReplaceGroup(1618454323);
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-2026001778);
                            bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i11));
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        composerStartRestartGroup.endMovableGroup();
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    nl3Var5 = nl3Var3;
                }
                alignment2 = topStart;
                nl3Var6 = nl3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(transition, modifier3, nl3Var5, alignment2, nl3Var6, fm3Var, i, i2));
                }
            }
            i15 |= 24576;
            nl3Var4 = nl3Var2;
            if ((196608 & i) == 0) {
                fm3Var2 = fm3Var;
                if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                    i14 = 131072;
                } else {
                    i14 = 65536;
                }
                i15 |= i14;
            } else {
                fm3Var2 = fm3Var;
            }
            if ((74899 & i15) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i15 & 1)) {
                if (i16 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i3 != 0) {
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                        objRememberedValue6 = AnimatedContentKt$AnimatedContent$4$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    nl3Var5 = (nl3) objRememberedValue6;
                } else {
                    nl3Var5 = nl3Var3;
                }
                if (i5 != 0) {
                    topStart = Alignment.Companion.getTopStart();
                }
                if (i7 != 0) {
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                        objRememberedValue5 = AnimatedContentKt$AnimatedContent$5$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    nl3Var4 = (nl3) objRememberedValue5;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(511725103, i15, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:773)");
                }
                layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
                i9 = i15 & 14;
                if (i9 == 4) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) objRememberedValue;
                if (i9 == 4) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z3) {
                    objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                snapshotStateList = (SnapshotStateList) objRememberedValue2;
                if (i9 == 4) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z4) {
                    objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                mutableScatterMap = (MutableScatterMap) objRememberedValue3;
                if (!snapshotStateList.contains(transition2.getCurrentState())) {
                    snapshotStateList.clear();
                    snapshotStateList.add(transition2.getCurrentState());
                }
                if (aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                    if (snapshotStateList.size() == 1) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition2.getCurrentState());
                    } else {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition2.getCurrentState());
                    }
                    if (mutableScatterMap.getSize() == 1) {
                        mutableScatterMap.clear();
                    } else {
                        mutableScatterMap.clear();
                    }
                    animatedContentTransitionScopeImpl.setContentAlignment(topStart);
                    animatedContentTransitionScopeImpl.setLayoutDirection$animation(layoutDirection);
                }
                if (!aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                    it = snapshotStateList.iterator();
                    i13 = 0;
                    while (true) {
                        if (it.hasNext()) {
                            i13 = -1;
                            break;
                        } else {
                            if (aa4.e(nl3Var4.invoke((Object) it.next()), nl3Var4.invoke(transition2.getTargetState()))) {
                                break;
                                break;
                            }
                            i13++;
                        }
                    }
                    if (i13 == -1) {
                        snapshotStateList.add(transition2.getTargetState());
                    } else {
                        snapshotStateList.set(i13, transition2.getTargetState());
                    }
                }
                if (mutableScatterMap.containsKey(transition2.getTargetState())) {
                    composerStartRestartGroup.startReplaceGroup(1966410449);
                    mutableScatterMap.clear();
                    size = snapshotStateList.size();
                    i10 = 0;
                    while (i10 < size) {
                        int i1110 = i10;
                        T t14 = snapshotStateList.get(i1110);
                        SnapshotStateList snapshotStateList16 = snapshotStateList;
                        AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl16 = animatedContentTransitionScopeImpl;
                        mutableScatterMap.set(t14, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t14, nl3Var5, animatedContentTransitionScopeImpl16, snapshotStateList16, fm3Var2), composerStartRestartGroup, 54));
                        i10 = i1110 + 1;
                        transition2 = transition;
                        fm3Var2 = fm3Var;
                        animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl16;
                        size = size;
                        snapshotStateList = snapshotStateList16;
                    }
                    animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                    snapshotStateList2 = snapshotStateList;
                    i11 = 0;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1966410449);
                    mutableScatterMap.clear();
                    size = snapshotStateList.size();
                    i10 = 0;
                    while (i10 < size) {
                        int i1111 = i10;
                        T t15 = snapshotStateList.get(i1111);
                        SnapshotStateList snapshotStateList17 = snapshotStateList;
                        AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl17 = animatedContentTransitionScopeImpl;
                        mutableScatterMap.set(t15, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t15, nl3Var5, animatedContentTransitionScopeImpl17, snapshotStateList17, fm3Var2), composerStartRestartGroup, 54));
                        i10 = i1111 + 1;
                        transition2 = transition;
                        fm3Var2 = fm3Var;
                        animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl17;
                        size = size;
                        snapshotStateList = snapshotStateList17;
                    }
                    animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                    snapshotStateList2 = snapshotStateList;
                    i11 = 0;
                    composerStartRestartGroup.endReplaceGroup();
                }
                zChanged = composerStartRestartGroup.changed(transition.getSegment()) | composerStartRestartGroup.changed(animatedContentTransitionScopeImpl2);
                contentTransformRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                    composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                } else {
                    contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                    composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                }
                Modifier modifierThen8 = modifier4.then(animatedContentTransitionScopeImpl2.createSizeAnimationModifier$animation((ContentTransform) contentTransformRememberedValue, composerStartRestartGroup, i11));
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                    objRememberedValue4 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                AnimatedContentMeasurePolicy animatedContentMeasurePolicy8 = (AnimatedContentMeasurePolicy) objRememberedValue4;
                int iHashCode8 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, i11));
                CompositionLocalMap currentCompositionLocalMap8 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier8 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen8);
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
                Updater.m5363setimpl(composerM5355constructorimpl8, animatedContentMeasurePolicy8, companion8.getSetMeasurePolicy());
                Updater.m5363setimpl(composerM5355constructorimpl8, currentCompositionLocalMap8, companion8.getSetResolvedCompositionLocals());
                Updater.m5359initimpl(composerM5355constructorimpl8, Integer.valueOf(iHashCode8), companion8.getSetCompositeKeyHash());
                Updater.m5361reconcileimpl(composerM5355constructorimpl8, companion8.getApplyOnDeactivatedNodeAssertion());
                Updater.m5363setimpl(composerM5355constructorimpl8, modifierMaterializeModifier8, companion8.getSetModifier());
                composerStartRestartGroup.startReplaceGroup(-860173498);
                size2 = snapshotStateList2.size();
                while (i12 < size2) {
                    a07 a07Var8 = (Object) snapshotStateList2.get(i12);
                    composerStartRestartGroup.startMovableGroup(-2026002954, nl3Var4.invoke(a07Var8));
                    bm3Var = (bm3) mutableScatterMap.get(a07Var8);
                    if (bm3Var == null) {
                        composerStartRestartGroup.startReplaceGroup(1618454323);
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-2026001778);
                        bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i11));
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.endMovableGroup();
                }
                composerStartRestartGroup.endReplaceGroup();
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                nl3Var5 = nl3Var3;
            }
            alignment2 = topStart;
            nl3Var6 = nl3Var4;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(transition, modifier3, nl3Var5, alignment2, nl3Var6, fm3Var, i, i2));
            }
        }
        i15 |= 48;
        modifier2 = modifier;
        i3 = i2 & 2;
        if (i3 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                nl3Var3 = nl3Var;
                if (composerStartRestartGroup.changedInstance(nl3Var3)) {
                    i4 = 256;
                } else {
                    i4 = 128;
                }
                i15 |= i4;
            }
            i5 = i2 & 4;
            if (i5 != 0) {
                if ((i & 3072) == 0) {
                    topStart = alignment;
                    if (composerStartRestartGroup.changed(topStart)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i15 |= i6;
                }
                i7 = i2 & 8;
                if (i7 != 0) {
                    if ((i & 24576) == 0) {
                        nl3Var4 = nl3Var2;
                        if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                            i8 = 16384;
                        } else {
                            i8 = 8192;
                        }
                        i15 |= i8;
                    }
                    if ((196608 & i) == 0) {
                        fm3Var2 = fm3Var;
                        if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                            i14 = 131072;
                        } else {
                            i14 = 65536;
                        }
                        i15 |= i14;
                    } else {
                        fm3Var2 = fm3Var;
                    }
                    if ((74899 & i15) != 74898) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i15 & 1)) {
                        if (i16 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i3 != 0) {
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = AnimatedContentKt$AnimatedContent$4$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            nl3Var5 = (nl3) objRememberedValue6;
                        } else {
                            nl3Var5 = nl3Var3;
                        }
                        if (i5 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                        }
                        if (i7 != 0) {
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                                objRememberedValue5 = AnimatedContentKt$AnimatedContent$5$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            nl3Var4 = (nl3) objRememberedValue5;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(511725103, i15, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:773)");
                        }
                        layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
                        i9 = i15 & 14;
                        if (i9 == 4) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) objRememberedValue;
                        if (i9 == 4) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z3) {
                            objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        snapshotStateList = (SnapshotStateList) objRememberedValue2;
                        if (i9 == 4) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z4) {
                            objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        mutableScatterMap = (MutableScatterMap) objRememberedValue3;
                        if (!snapshotStateList.contains(transition2.getCurrentState())) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition2.getCurrentState());
                        }
                        if (aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition2.getCurrentState());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition2.getCurrentState());
                            }
                            if (mutableScatterMap.getSize() == 1) {
                                mutableScatterMap.clear();
                            } else {
                                mutableScatterMap.clear();
                            }
                            animatedContentTransitionScopeImpl.setContentAlignment(topStart);
                            animatedContentTransitionScopeImpl.setLayoutDirection$animation(layoutDirection);
                        }
                        if (!aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                            it = snapshotStateList.iterator();
                            i13 = 0;
                            while (true) {
                                if (it.hasNext()) {
                                    i13 = -1;
                                    break;
                                } else {
                                    if (aa4.e(nl3Var4.invoke((Object) it.next()), nl3Var4.invoke(transition2.getTargetState()))) {
                                        break;
                                        break;
                                    }
                                    i13++;
                                }
                            }
                            if (i13 == -1) {
                                snapshotStateList.add(transition2.getTargetState());
                            } else {
                                snapshotStateList.set(i13, transition2.getTargetState());
                            }
                        }
                        if (mutableScatterMap.containsKey(transition2.getTargetState())) {
                            composerStartRestartGroup.startReplaceGroup(1966410449);
                            mutableScatterMap.clear();
                            size = snapshotStateList.size();
                            i10 = 0;
                            while (i10 < size) {
                                int i1112 = i10;
                                T t16 = snapshotStateList.get(i1112);
                                SnapshotStateList snapshotStateList18 = snapshotStateList;
                                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl18 = animatedContentTransitionScopeImpl;
                                mutableScatterMap.set(t16, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t16, nl3Var5, animatedContentTransitionScopeImpl18, snapshotStateList18, fm3Var2), composerStartRestartGroup, 54));
                                i10 = i1112 + 1;
                                transition2 = transition;
                                fm3Var2 = fm3Var;
                                animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl18;
                                size = size;
                                snapshotStateList = snapshotStateList18;
                            }
                            animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                            snapshotStateList2 = snapshotStateList;
                            i11 = 0;
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1966410449);
                            mutableScatterMap.clear();
                            size = snapshotStateList.size();
                            i10 = 0;
                            while (i10 < size) {
                                int i1113 = i10;
                                T t17 = snapshotStateList.get(i1113);
                                SnapshotStateList snapshotStateList19 = snapshotStateList;
                                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl19 = animatedContentTransitionScopeImpl;
                                mutableScatterMap.set(t17, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t17, nl3Var5, animatedContentTransitionScopeImpl19, snapshotStateList19, fm3Var2), composerStartRestartGroup, 54));
                                i10 = i1113 + 1;
                                transition2 = transition;
                                fm3Var2 = fm3Var;
                                animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl19;
                                size = size;
                                snapshotStateList = snapshotStateList19;
                            }
                            animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                            snapshotStateList2 = snapshotStateList;
                            i11 = 0;
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        zChanged = composerStartRestartGroup.changed(transition.getSegment()) | composerStartRestartGroup.changed(animatedContentTransitionScopeImpl2);
                        contentTransformRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                            composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                        } else {
                            contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                            composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                        }
                        Modifier modifierThen9 = modifier4.then(animatedContentTransitionScopeImpl2.createSizeAnimationModifier$animation((ContentTransform) contentTransformRememberedValue, composerStartRestartGroup, i11));
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy9 = (AnimatedContentMeasurePolicy) objRememberedValue4;
                        int iHashCode9 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, i11));
                        CompositionLocalMap currentCompositionLocalMap9 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier9 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen9);
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
                        Composer composerM5355constructorimpl9 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        Updater.m5363setimpl(composerM5355constructorimpl9, animatedContentMeasurePolicy9, companion9.getSetMeasurePolicy());
                        Updater.m5363setimpl(composerM5355constructorimpl9, currentCompositionLocalMap9, companion9.getSetResolvedCompositionLocals());
                        Updater.m5359initimpl(composerM5355constructorimpl9, Integer.valueOf(iHashCode9), companion9.getSetCompositeKeyHash());
                        Updater.m5361reconcileimpl(composerM5355constructorimpl9, companion9.getApplyOnDeactivatedNodeAssertion());
                        Updater.m5363setimpl(composerM5355constructorimpl9, modifierMaterializeModifier9, companion9.getSetModifier());
                        composerStartRestartGroup.startReplaceGroup(-860173498);
                        size2 = snapshotStateList2.size();
                        while (i12 < size2) {
                            a07 a07Var9 = (Object) snapshotStateList2.get(i12);
                            composerStartRestartGroup.startMovableGroup(-2026002954, nl3Var4.invoke(a07Var9));
                            bm3Var = (bm3) mutableScatterMap.get(a07Var9);
                            if (bm3Var == null) {
                                composerStartRestartGroup.startReplaceGroup(1618454323);
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-2026001778);
                                bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i11));
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            composerStartRestartGroup.endMovableGroup();
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        nl3Var5 = nl3Var3;
                    }
                    alignment2 = topStart;
                    nl3Var6 = nl3Var4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(transition, modifier3, nl3Var5, alignment2, nl3Var6, fm3Var, i, i2));
                    }
                }
                i15 |= 24576;
                nl3Var4 = nl3Var2;
                if ((196608 & i) == 0) {
                    fm3Var2 = fm3Var;
                    if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i15 |= i14;
                } else {
                    fm3Var2 = fm3Var;
                }
                if ((74899 & i15) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i15 & 1)) {
                    if (i16 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i3 != 0) {
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = AnimatedContentKt$AnimatedContent$4$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        nl3Var5 = (nl3) objRememberedValue6;
                    } else {
                        nl3Var5 = nl3Var3;
                    }
                    if (i5 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                    }
                    if (i7 != 0) {
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                            objRememberedValue5 = AnimatedContentKt$AnimatedContent$5$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        nl3Var4 = (nl3) objRememberedValue5;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(511725103, i15, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:773)");
                    }
                    layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
                    i9 = i15 & 14;
                    if (i9 == 4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) objRememberedValue;
                    if (i9 == 4) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z3) {
                        objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    snapshotStateList = (SnapshotStateList) objRememberedValue2;
                    if (i9 == 4) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z4) {
                        objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    mutableScatterMap = (MutableScatterMap) objRememberedValue3;
                    if (!snapshotStateList.contains(transition2.getCurrentState())) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition2.getCurrentState());
                    }
                    if (aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition2.getCurrentState());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition2.getCurrentState());
                        }
                        if (mutableScatterMap.getSize() == 1) {
                            mutableScatterMap.clear();
                        } else {
                            mutableScatterMap.clear();
                        }
                        animatedContentTransitionScopeImpl.setContentAlignment(topStart);
                        animatedContentTransitionScopeImpl.setLayoutDirection$animation(layoutDirection);
                    }
                    if (!aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                        it = snapshotStateList.iterator();
                        i13 = 0;
                        while (true) {
                            if (it.hasNext()) {
                                i13 = -1;
                                break;
                            } else {
                                if (aa4.e(nl3Var4.invoke((Object) it.next()), nl3Var4.invoke(transition2.getTargetState()))) {
                                    break;
                                    break;
                                }
                                i13++;
                            }
                        }
                        if (i13 == -1) {
                            snapshotStateList.add(transition2.getTargetState());
                        } else {
                            snapshotStateList.set(i13, transition2.getTargetState());
                        }
                    }
                    if (mutableScatterMap.containsKey(transition2.getTargetState())) {
                        composerStartRestartGroup.startReplaceGroup(1966410449);
                        mutableScatterMap.clear();
                        size = snapshotStateList.size();
                        i10 = 0;
                        while (i10 < size) {
                            int i1114 = i10;
                            T t18 = snapshotStateList.get(i1114);
                            SnapshotStateList snapshotStateList110 = snapshotStateList;
                            AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl110 = animatedContentTransitionScopeImpl;
                            mutableScatterMap.set(t18, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t18, nl3Var5, animatedContentTransitionScopeImpl110, snapshotStateList110, fm3Var2), composerStartRestartGroup, 54));
                            i10 = i1114 + 1;
                            transition2 = transition;
                            fm3Var2 = fm3Var;
                            animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl110;
                            size = size;
                            snapshotStateList = snapshotStateList110;
                        }
                        animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                        snapshotStateList2 = snapshotStateList;
                        i11 = 0;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1966410449);
                        mutableScatterMap.clear();
                        size = snapshotStateList.size();
                        i10 = 0;
                        while (i10 < size) {
                            int i1115 = i10;
                            T t19 = snapshotStateList.get(i1115);
                            SnapshotStateList snapshotStateList111 = snapshotStateList;
                            AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl111 = animatedContentTransitionScopeImpl;
                            mutableScatterMap.set(t19, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t19, nl3Var5, animatedContentTransitionScopeImpl111, snapshotStateList111, fm3Var2), composerStartRestartGroup, 54));
                            i10 = i1115 + 1;
                            transition2 = transition;
                            fm3Var2 = fm3Var;
                            animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl111;
                            size = size;
                            snapshotStateList = snapshotStateList111;
                        }
                        animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                        snapshotStateList2 = snapshotStateList;
                        i11 = 0;
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    zChanged = composerStartRestartGroup.changed(transition.getSegment()) | composerStartRestartGroup.changed(animatedContentTransitionScopeImpl2);
                    contentTransformRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                    } else {
                        contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                    }
                    Modifier modifierThen10 = modifier4.then(animatedContentTransitionScopeImpl2.createSizeAnimationModifier$animation((ContentTransform) contentTransformRememberedValue, composerStartRestartGroup, i11));
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy10 = (AnimatedContentMeasurePolicy) objRememberedValue4;
                    int iHashCode10 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, i11));
                    CompositionLocalMap currentCompositionLocalMap10 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier10 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen10);
                    ComposeUiNode.Companion companion10 = ComposeUiNode.Companion;
                    constructor = companion10.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl10 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    Updater.m5363setimpl(composerM5355constructorimpl10, animatedContentMeasurePolicy10, companion10.getSetMeasurePolicy());
                    Updater.m5363setimpl(composerM5355constructorimpl10, currentCompositionLocalMap10, companion10.getSetResolvedCompositionLocals());
                    Updater.m5359initimpl(composerM5355constructorimpl10, Integer.valueOf(iHashCode10), companion10.getSetCompositeKeyHash());
                    Updater.m5361reconcileimpl(composerM5355constructorimpl10, companion10.getApplyOnDeactivatedNodeAssertion());
                    Updater.m5363setimpl(composerM5355constructorimpl10, modifierMaterializeModifier10, companion10.getSetModifier());
                    composerStartRestartGroup.startReplaceGroup(-860173498);
                    size2 = snapshotStateList2.size();
                    while (i12 < size2) {
                        a07 a07Var10 = (Object) snapshotStateList2.get(i12);
                        composerStartRestartGroup.startMovableGroup(-2026002954, nl3Var4.invoke(a07Var10));
                        bm3Var = (bm3) mutableScatterMap.get(a07Var10);
                        if (bm3Var == null) {
                            composerStartRestartGroup.startReplaceGroup(1618454323);
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-2026001778);
                            bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i11));
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        composerStartRestartGroup.endMovableGroup();
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    nl3Var5 = nl3Var3;
                }
                alignment2 = topStart;
                nl3Var6 = nl3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(transition, modifier3, nl3Var5, alignment2, nl3Var6, fm3Var, i, i2));
                }
            }
            i15 |= 3072;
            topStart = alignment;
            i7 = i2 & 8;
            if (i7 != 0) {
                if ((i & 24576) == 0) {
                    nl3Var4 = nl3Var2;
                    if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i15 |= i8;
                }
                if ((196608 & i) == 0) {
                    fm3Var2 = fm3Var;
                    if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i15 |= i14;
                } else {
                    fm3Var2 = fm3Var;
                }
                if ((74899 & i15) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i15 & 1)) {
                    if (i16 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i3 != 0) {
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = AnimatedContentKt$AnimatedContent$4$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        nl3Var5 = (nl3) objRememberedValue6;
                    } else {
                        nl3Var5 = nl3Var3;
                    }
                    if (i5 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                    }
                    if (i7 != 0) {
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                            objRememberedValue5 = AnimatedContentKt$AnimatedContent$5$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        nl3Var4 = (nl3) objRememberedValue5;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(511725103, i15, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:773)");
                    }
                    layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
                    i9 = i15 & 14;
                    if (i9 == 4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) objRememberedValue;
                    if (i9 == 4) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z3) {
                        objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    snapshotStateList = (SnapshotStateList) objRememberedValue2;
                    if (i9 == 4) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z4) {
                        objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    mutableScatterMap = (MutableScatterMap) objRememberedValue3;
                    if (!snapshotStateList.contains(transition2.getCurrentState())) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition2.getCurrentState());
                    }
                    if (aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition2.getCurrentState());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition2.getCurrentState());
                        }
                        if (mutableScatterMap.getSize() == 1) {
                            mutableScatterMap.clear();
                        } else {
                            mutableScatterMap.clear();
                        }
                        animatedContentTransitionScopeImpl.setContentAlignment(topStart);
                        animatedContentTransitionScopeImpl.setLayoutDirection$animation(layoutDirection);
                    }
                    if (!aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                        it = snapshotStateList.iterator();
                        i13 = 0;
                        while (true) {
                            if (it.hasNext()) {
                                i13 = -1;
                                break;
                            } else {
                                if (aa4.e(nl3Var4.invoke((Object) it.next()), nl3Var4.invoke(transition2.getTargetState()))) {
                                    break;
                                    break;
                                }
                                i13++;
                            }
                        }
                        if (i13 == -1) {
                            snapshotStateList.add(transition2.getTargetState());
                        } else {
                            snapshotStateList.set(i13, transition2.getTargetState());
                        }
                    }
                    if (mutableScatterMap.containsKey(transition2.getTargetState())) {
                        composerStartRestartGroup.startReplaceGroup(1966410449);
                        mutableScatterMap.clear();
                        size = snapshotStateList.size();
                        i10 = 0;
                        while (i10 < size) {
                            int i1116 = i10;
                            T t110 = snapshotStateList.get(i1116);
                            SnapshotStateList snapshotStateList112 = snapshotStateList;
                            AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl112 = animatedContentTransitionScopeImpl;
                            mutableScatterMap.set(t110, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t110, nl3Var5, animatedContentTransitionScopeImpl112, snapshotStateList112, fm3Var2), composerStartRestartGroup, 54));
                            i10 = i1116 + 1;
                            transition2 = transition;
                            fm3Var2 = fm3Var;
                            animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl112;
                            size = size;
                            snapshotStateList = snapshotStateList112;
                        }
                        animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                        snapshotStateList2 = snapshotStateList;
                        i11 = 0;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1966410449);
                        mutableScatterMap.clear();
                        size = snapshotStateList.size();
                        i10 = 0;
                        while (i10 < size) {
                            int i1117 = i10;
                            T t111 = snapshotStateList.get(i1117);
                            SnapshotStateList snapshotStateList113 = snapshotStateList;
                            AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl113 = animatedContentTransitionScopeImpl;
                            mutableScatterMap.set(t111, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t111, nl3Var5, animatedContentTransitionScopeImpl113, snapshotStateList113, fm3Var2), composerStartRestartGroup, 54));
                            i10 = i1117 + 1;
                            transition2 = transition;
                            fm3Var2 = fm3Var;
                            animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl113;
                            size = size;
                            snapshotStateList = snapshotStateList113;
                        }
                        animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                        snapshotStateList2 = snapshotStateList;
                        i11 = 0;
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    zChanged = composerStartRestartGroup.changed(transition.getSegment()) | composerStartRestartGroup.changed(animatedContentTransitionScopeImpl2);
                    contentTransformRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                    } else {
                        contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                    }
                    Modifier modifierThen11 = modifier4.then(animatedContentTransitionScopeImpl2.createSizeAnimationModifier$animation((ContentTransform) contentTransformRememberedValue, composerStartRestartGroup, i11));
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy11 = (AnimatedContentMeasurePolicy) objRememberedValue4;
                    int iHashCode11 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, i11));
                    CompositionLocalMap currentCompositionLocalMap11 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier11 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen11);
                    ComposeUiNode.Companion companion11 = ComposeUiNode.Companion;
                    constructor = companion11.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl11 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    Updater.m5363setimpl(composerM5355constructorimpl11, animatedContentMeasurePolicy11, companion11.getSetMeasurePolicy());
                    Updater.m5363setimpl(composerM5355constructorimpl11, currentCompositionLocalMap11, companion11.getSetResolvedCompositionLocals());
                    Updater.m5359initimpl(composerM5355constructorimpl11, Integer.valueOf(iHashCode11), companion11.getSetCompositeKeyHash());
                    Updater.m5361reconcileimpl(composerM5355constructorimpl11, companion11.getApplyOnDeactivatedNodeAssertion());
                    Updater.m5363setimpl(composerM5355constructorimpl11, modifierMaterializeModifier11, companion11.getSetModifier());
                    composerStartRestartGroup.startReplaceGroup(-860173498);
                    size2 = snapshotStateList2.size();
                    while (i12 < size2) {
                        a07 a07Var11 = (Object) snapshotStateList2.get(i12);
                        composerStartRestartGroup.startMovableGroup(-2026002954, nl3Var4.invoke(a07Var11));
                        bm3Var = (bm3) mutableScatterMap.get(a07Var11);
                        if (bm3Var == null) {
                            composerStartRestartGroup.startReplaceGroup(1618454323);
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-2026001778);
                            bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i11));
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        composerStartRestartGroup.endMovableGroup();
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    nl3Var5 = nl3Var3;
                }
                alignment2 = topStart;
                nl3Var6 = nl3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(transition, modifier3, nl3Var5, alignment2, nl3Var6, fm3Var, i, i2));
                }
            }
            i15 |= 24576;
            nl3Var4 = nl3Var2;
            if ((196608 & i) == 0) {
                fm3Var2 = fm3Var;
                if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                    i14 = 131072;
                } else {
                    i14 = 65536;
                }
                i15 |= i14;
            } else {
                fm3Var2 = fm3Var;
            }
            if ((74899 & i15) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i15 & 1)) {
                if (i16 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i3 != 0) {
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                        objRememberedValue6 = AnimatedContentKt$AnimatedContent$4$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    nl3Var5 = (nl3) objRememberedValue6;
                } else {
                    nl3Var5 = nl3Var3;
                }
                if (i5 != 0) {
                    topStart = Alignment.Companion.getTopStart();
                }
                if (i7 != 0) {
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                        objRememberedValue5 = AnimatedContentKt$AnimatedContent$5$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    nl3Var4 = (nl3) objRememberedValue5;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(511725103, i15, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:773)");
                }
                layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
                i9 = i15 & 14;
                if (i9 == 4) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) objRememberedValue;
                if (i9 == 4) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z3) {
                    objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                snapshotStateList = (SnapshotStateList) objRememberedValue2;
                if (i9 == 4) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z4) {
                    objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                mutableScatterMap = (MutableScatterMap) objRememberedValue3;
                if (!snapshotStateList.contains(transition2.getCurrentState())) {
                    snapshotStateList.clear();
                    snapshotStateList.add(transition2.getCurrentState());
                }
                if (aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                    if (snapshotStateList.size() == 1) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition2.getCurrentState());
                    } else {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition2.getCurrentState());
                    }
                    if (mutableScatterMap.getSize() == 1) {
                        mutableScatterMap.clear();
                    } else {
                        mutableScatterMap.clear();
                    }
                    animatedContentTransitionScopeImpl.setContentAlignment(topStart);
                    animatedContentTransitionScopeImpl.setLayoutDirection$animation(layoutDirection);
                }
                if (!aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                    it = snapshotStateList.iterator();
                    i13 = 0;
                    while (true) {
                        if (it.hasNext()) {
                            i13 = -1;
                            break;
                        } else {
                            if (aa4.e(nl3Var4.invoke((Object) it.next()), nl3Var4.invoke(transition2.getTargetState()))) {
                                break;
                                break;
                            }
                            i13++;
                        }
                    }
                    if (i13 == -1) {
                        snapshotStateList.add(transition2.getTargetState());
                    } else {
                        snapshotStateList.set(i13, transition2.getTargetState());
                    }
                }
                if (mutableScatterMap.containsKey(transition2.getTargetState())) {
                    composerStartRestartGroup.startReplaceGroup(1966410449);
                    mutableScatterMap.clear();
                    size = snapshotStateList.size();
                    i10 = 0;
                    while (i10 < size) {
                        int i1118 = i10;
                        T t112 = snapshotStateList.get(i1118);
                        SnapshotStateList snapshotStateList114 = snapshotStateList;
                        AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl114 = animatedContentTransitionScopeImpl;
                        mutableScatterMap.set(t112, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t112, nl3Var5, animatedContentTransitionScopeImpl114, snapshotStateList114, fm3Var2), composerStartRestartGroup, 54));
                        i10 = i1118 + 1;
                        transition2 = transition;
                        fm3Var2 = fm3Var;
                        animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl114;
                        size = size;
                        snapshotStateList = snapshotStateList114;
                    }
                    animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                    snapshotStateList2 = snapshotStateList;
                    i11 = 0;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1966410449);
                    mutableScatterMap.clear();
                    size = snapshotStateList.size();
                    i10 = 0;
                    while (i10 < size) {
                        int i1119 = i10;
                        T t113 = snapshotStateList.get(i1119);
                        SnapshotStateList snapshotStateList115 = snapshotStateList;
                        AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl115 = animatedContentTransitionScopeImpl;
                        mutableScatterMap.set(t113, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t113, nl3Var5, animatedContentTransitionScopeImpl115, snapshotStateList115, fm3Var2), composerStartRestartGroup, 54));
                        i10 = i1119 + 1;
                        transition2 = transition;
                        fm3Var2 = fm3Var;
                        animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl115;
                        size = size;
                        snapshotStateList = snapshotStateList115;
                    }
                    animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                    snapshotStateList2 = snapshotStateList;
                    i11 = 0;
                    composerStartRestartGroup.endReplaceGroup();
                }
                zChanged = composerStartRestartGroup.changed(transition.getSegment()) | composerStartRestartGroup.changed(animatedContentTransitionScopeImpl2);
                contentTransformRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                    composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                } else {
                    contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                    composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                }
                Modifier modifierThen12 = modifier4.then(animatedContentTransitionScopeImpl2.createSizeAnimationModifier$animation((ContentTransform) contentTransformRememberedValue, composerStartRestartGroup, i11));
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                    objRememberedValue4 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                AnimatedContentMeasurePolicy animatedContentMeasurePolicy12 = (AnimatedContentMeasurePolicy) objRememberedValue4;
                int iHashCode12 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, i11));
                CompositionLocalMap currentCompositionLocalMap12 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier12 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen12);
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
                Composer composerM5355constructorimpl12 = Updater.m5355constructorimpl(composerStartRestartGroup);
                Updater.m5363setimpl(composerM5355constructorimpl12, animatedContentMeasurePolicy12, companion12.getSetMeasurePolicy());
                Updater.m5363setimpl(composerM5355constructorimpl12, currentCompositionLocalMap12, companion12.getSetResolvedCompositionLocals());
                Updater.m5359initimpl(composerM5355constructorimpl12, Integer.valueOf(iHashCode12), companion12.getSetCompositeKeyHash());
                Updater.m5361reconcileimpl(composerM5355constructorimpl12, companion12.getApplyOnDeactivatedNodeAssertion());
                Updater.m5363setimpl(composerM5355constructorimpl12, modifierMaterializeModifier12, companion12.getSetModifier());
                composerStartRestartGroup.startReplaceGroup(-860173498);
                size2 = snapshotStateList2.size();
                while (i12 < size2) {
                    a07 a07Var12 = (Object) snapshotStateList2.get(i12);
                    composerStartRestartGroup.startMovableGroup(-2026002954, nl3Var4.invoke(a07Var12));
                    bm3Var = (bm3) mutableScatterMap.get(a07Var12);
                    if (bm3Var == null) {
                        composerStartRestartGroup.startReplaceGroup(1618454323);
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-2026001778);
                        bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i11));
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.endMovableGroup();
                }
                composerStartRestartGroup.endReplaceGroup();
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                nl3Var5 = nl3Var3;
            }
            alignment2 = topStart;
            nl3Var6 = nl3Var4;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(transition, modifier3, nl3Var5, alignment2, nl3Var6, fm3Var, i, i2));
            }
        }
        i15 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        nl3Var3 = nl3Var;
        i5 = i2 & 4;
        if (i5 != 0) {
            if ((i & 3072) == 0) {
                topStart = alignment;
                if (composerStartRestartGroup.changed(topStart)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i15 |= i6;
            }
            i7 = i2 & 8;
            if (i7 != 0) {
                if ((i & 24576) == 0) {
                    nl3Var4 = nl3Var2;
                    if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i15 |= i8;
                }
                if ((196608 & i) == 0) {
                    fm3Var2 = fm3Var;
                    if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i15 |= i14;
                } else {
                    fm3Var2 = fm3Var;
                }
                if ((74899 & i15) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i15 & 1)) {
                    if (i16 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i3 != 0) {
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = AnimatedContentKt$AnimatedContent$4$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        nl3Var5 = (nl3) objRememberedValue6;
                    } else {
                        nl3Var5 = nl3Var3;
                    }
                    if (i5 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                    }
                    if (i7 != 0) {
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                            objRememberedValue5 = AnimatedContentKt$AnimatedContent$5$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        nl3Var4 = (nl3) objRememberedValue5;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(511725103, i15, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:773)");
                    }
                    layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
                    i9 = i15 & 14;
                    if (i9 == 4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) objRememberedValue;
                    if (i9 == 4) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z3) {
                        objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    snapshotStateList = (SnapshotStateList) objRememberedValue2;
                    if (i9 == 4) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z4) {
                        objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    mutableScatterMap = (MutableScatterMap) objRememberedValue3;
                    if (!snapshotStateList.contains(transition2.getCurrentState())) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition2.getCurrentState());
                    }
                    if (aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition2.getCurrentState());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition2.getCurrentState());
                        }
                        if (mutableScatterMap.getSize() == 1) {
                            mutableScatterMap.clear();
                        } else {
                            mutableScatterMap.clear();
                        }
                        animatedContentTransitionScopeImpl.setContentAlignment(topStart);
                        animatedContentTransitionScopeImpl.setLayoutDirection$animation(layoutDirection);
                    }
                    if (!aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                        it = snapshotStateList.iterator();
                        i13 = 0;
                        while (true) {
                            if (it.hasNext()) {
                                i13 = -1;
                                break;
                            } else {
                                if (aa4.e(nl3Var4.invoke((Object) it.next()), nl3Var4.invoke(transition2.getTargetState()))) {
                                    break;
                                    break;
                                }
                                i13++;
                            }
                        }
                        if (i13 == -1) {
                            snapshotStateList.add(transition2.getTargetState());
                        } else {
                            snapshotStateList.set(i13, transition2.getTargetState());
                        }
                    }
                    if (mutableScatterMap.containsKey(transition2.getTargetState())) {
                        composerStartRestartGroup.startReplaceGroup(1966410449);
                        mutableScatterMap.clear();
                        size = snapshotStateList.size();
                        i10 = 0;
                        while (i10 < size) {
                            int i11110 = i10;
                            T t114 = snapshotStateList.get(i11110);
                            SnapshotStateList snapshotStateList116 = snapshotStateList;
                            AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl116 = animatedContentTransitionScopeImpl;
                            mutableScatterMap.set(t114, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t114, nl3Var5, animatedContentTransitionScopeImpl116, snapshotStateList116, fm3Var2), composerStartRestartGroup, 54));
                            i10 = i11110 + 1;
                            transition2 = transition;
                            fm3Var2 = fm3Var;
                            animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl116;
                            size = size;
                            snapshotStateList = snapshotStateList116;
                        }
                        animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                        snapshotStateList2 = snapshotStateList;
                        i11 = 0;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1966410449);
                        mutableScatterMap.clear();
                        size = snapshotStateList.size();
                        i10 = 0;
                        while (i10 < size) {
                            int i11111 = i10;
                            T t115 = snapshotStateList.get(i11111);
                            SnapshotStateList snapshotStateList117 = snapshotStateList;
                            AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl117 = animatedContentTransitionScopeImpl;
                            mutableScatterMap.set(t115, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t115, nl3Var5, animatedContentTransitionScopeImpl117, snapshotStateList117, fm3Var2), composerStartRestartGroup, 54));
                            i10 = i11111 + 1;
                            transition2 = transition;
                            fm3Var2 = fm3Var;
                            animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl117;
                            size = size;
                            snapshotStateList = snapshotStateList117;
                        }
                        animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                        snapshotStateList2 = snapshotStateList;
                        i11 = 0;
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    zChanged = composerStartRestartGroup.changed(transition.getSegment()) | composerStartRestartGroup.changed(animatedContentTransitionScopeImpl2);
                    contentTransformRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                    } else {
                        contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                    }
                    Modifier modifierThen13 = modifier4.then(animatedContentTransitionScopeImpl2.createSizeAnimationModifier$animation((ContentTransform) contentTransformRememberedValue, composerStartRestartGroup, i11));
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy13 = (AnimatedContentMeasurePolicy) objRememberedValue4;
                    int iHashCode13 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, i11));
                    CompositionLocalMap currentCompositionLocalMap13 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier13 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen13);
                    ComposeUiNode.Companion companion13 = ComposeUiNode.Companion;
                    constructor = companion13.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl13 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    Updater.m5363setimpl(composerM5355constructorimpl13, animatedContentMeasurePolicy13, companion13.getSetMeasurePolicy());
                    Updater.m5363setimpl(composerM5355constructorimpl13, currentCompositionLocalMap13, companion13.getSetResolvedCompositionLocals());
                    Updater.m5359initimpl(composerM5355constructorimpl13, Integer.valueOf(iHashCode13), companion13.getSetCompositeKeyHash());
                    Updater.m5361reconcileimpl(composerM5355constructorimpl13, companion13.getApplyOnDeactivatedNodeAssertion());
                    Updater.m5363setimpl(composerM5355constructorimpl13, modifierMaterializeModifier13, companion13.getSetModifier());
                    composerStartRestartGroup.startReplaceGroup(-860173498);
                    size2 = snapshotStateList2.size();
                    while (i12 < size2) {
                        a07 a07Var13 = (Object) snapshotStateList2.get(i12);
                        composerStartRestartGroup.startMovableGroup(-2026002954, nl3Var4.invoke(a07Var13));
                        bm3Var = (bm3) mutableScatterMap.get(a07Var13);
                        if (bm3Var == null) {
                            composerStartRestartGroup.startReplaceGroup(1618454323);
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-2026001778);
                            bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i11));
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        composerStartRestartGroup.endMovableGroup();
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    nl3Var5 = nl3Var3;
                }
                alignment2 = topStart;
                nl3Var6 = nl3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(transition, modifier3, nl3Var5, alignment2, nl3Var6, fm3Var, i, i2));
                }
            }
            i15 |= 24576;
            nl3Var4 = nl3Var2;
            if ((196608 & i) == 0) {
                fm3Var2 = fm3Var;
                if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                    i14 = 131072;
                } else {
                    i14 = 65536;
                }
                i15 |= i14;
            } else {
                fm3Var2 = fm3Var;
            }
            if ((74899 & i15) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i15 & 1)) {
                if (i16 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i3 != 0) {
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                        objRememberedValue6 = AnimatedContentKt$AnimatedContent$4$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    nl3Var5 = (nl3) objRememberedValue6;
                } else {
                    nl3Var5 = nl3Var3;
                }
                if (i5 != 0) {
                    topStart = Alignment.Companion.getTopStart();
                }
                if (i7 != 0) {
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                        objRememberedValue5 = AnimatedContentKt$AnimatedContent$5$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    nl3Var4 = (nl3) objRememberedValue5;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(511725103, i15, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:773)");
                }
                layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
                i9 = i15 & 14;
                if (i9 == 4) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) objRememberedValue;
                if (i9 == 4) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z3) {
                    objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                snapshotStateList = (SnapshotStateList) objRememberedValue2;
                if (i9 == 4) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z4) {
                    objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                mutableScatterMap = (MutableScatterMap) objRememberedValue3;
                if (!snapshotStateList.contains(transition2.getCurrentState())) {
                    snapshotStateList.clear();
                    snapshotStateList.add(transition2.getCurrentState());
                }
                if (aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                    if (snapshotStateList.size() == 1) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition2.getCurrentState());
                    } else {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition2.getCurrentState());
                    }
                    if (mutableScatterMap.getSize() == 1) {
                        mutableScatterMap.clear();
                    } else {
                        mutableScatterMap.clear();
                    }
                    animatedContentTransitionScopeImpl.setContentAlignment(topStart);
                    animatedContentTransitionScopeImpl.setLayoutDirection$animation(layoutDirection);
                }
                if (!aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                    it = snapshotStateList.iterator();
                    i13 = 0;
                    while (true) {
                        if (it.hasNext()) {
                            i13 = -1;
                            break;
                        } else {
                            if (aa4.e(nl3Var4.invoke((Object) it.next()), nl3Var4.invoke(transition2.getTargetState()))) {
                                break;
                                break;
                            }
                            i13++;
                        }
                    }
                    if (i13 == -1) {
                        snapshotStateList.add(transition2.getTargetState());
                    } else {
                        snapshotStateList.set(i13, transition2.getTargetState());
                    }
                }
                if (mutableScatterMap.containsKey(transition2.getTargetState())) {
                    composerStartRestartGroup.startReplaceGroup(1966410449);
                    mutableScatterMap.clear();
                    size = snapshotStateList.size();
                    i10 = 0;
                    while (i10 < size) {
                        int i11112 = i10;
                        T t116 = snapshotStateList.get(i11112);
                        SnapshotStateList snapshotStateList118 = snapshotStateList;
                        AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl118 = animatedContentTransitionScopeImpl;
                        mutableScatterMap.set(t116, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t116, nl3Var5, animatedContentTransitionScopeImpl118, snapshotStateList118, fm3Var2), composerStartRestartGroup, 54));
                        i10 = i11112 + 1;
                        transition2 = transition;
                        fm3Var2 = fm3Var;
                        animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl118;
                        size = size;
                        snapshotStateList = snapshotStateList118;
                    }
                    animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                    snapshotStateList2 = snapshotStateList;
                    i11 = 0;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1966410449);
                    mutableScatterMap.clear();
                    size = snapshotStateList.size();
                    i10 = 0;
                    while (i10 < size) {
                        int i11113 = i10;
                        T t117 = snapshotStateList.get(i11113);
                        SnapshotStateList snapshotStateList119 = snapshotStateList;
                        AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl119 = animatedContentTransitionScopeImpl;
                        mutableScatterMap.set(t117, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t117, nl3Var5, animatedContentTransitionScopeImpl119, snapshotStateList119, fm3Var2), composerStartRestartGroup, 54));
                        i10 = i11113 + 1;
                        transition2 = transition;
                        fm3Var2 = fm3Var;
                        animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl119;
                        size = size;
                        snapshotStateList = snapshotStateList119;
                    }
                    animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                    snapshotStateList2 = snapshotStateList;
                    i11 = 0;
                    composerStartRestartGroup.endReplaceGroup();
                }
                zChanged = composerStartRestartGroup.changed(transition.getSegment()) | composerStartRestartGroup.changed(animatedContentTransitionScopeImpl2);
                contentTransformRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                    composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                } else {
                    contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                    composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                }
                Modifier modifierThen14 = modifier4.then(animatedContentTransitionScopeImpl2.createSizeAnimationModifier$animation((ContentTransform) contentTransformRememberedValue, composerStartRestartGroup, i11));
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                    objRememberedValue4 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                AnimatedContentMeasurePolicy animatedContentMeasurePolicy14 = (AnimatedContentMeasurePolicy) objRememberedValue4;
                int iHashCode14 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, i11));
                CompositionLocalMap currentCompositionLocalMap14 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier14 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen14);
                ComposeUiNode.Companion companion14 = ComposeUiNode.Companion;
                constructor = companion14.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl14 = Updater.m5355constructorimpl(composerStartRestartGroup);
                Updater.m5363setimpl(composerM5355constructorimpl14, animatedContentMeasurePolicy14, companion14.getSetMeasurePolicy());
                Updater.m5363setimpl(composerM5355constructorimpl14, currentCompositionLocalMap14, companion14.getSetResolvedCompositionLocals());
                Updater.m5359initimpl(composerM5355constructorimpl14, Integer.valueOf(iHashCode14), companion14.getSetCompositeKeyHash());
                Updater.m5361reconcileimpl(composerM5355constructorimpl14, companion14.getApplyOnDeactivatedNodeAssertion());
                Updater.m5363setimpl(composerM5355constructorimpl14, modifierMaterializeModifier14, companion14.getSetModifier());
                composerStartRestartGroup.startReplaceGroup(-860173498);
                size2 = snapshotStateList2.size();
                while (i12 < size2) {
                    a07 a07Var14 = (Object) snapshotStateList2.get(i12);
                    composerStartRestartGroup.startMovableGroup(-2026002954, nl3Var4.invoke(a07Var14));
                    bm3Var = (bm3) mutableScatterMap.get(a07Var14);
                    if (bm3Var == null) {
                        composerStartRestartGroup.startReplaceGroup(1618454323);
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-2026001778);
                        bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i11));
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.endMovableGroup();
                }
                composerStartRestartGroup.endReplaceGroup();
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                nl3Var5 = nl3Var3;
            }
            alignment2 = topStart;
            nl3Var6 = nl3Var4;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(transition, modifier3, nl3Var5, alignment2, nl3Var6, fm3Var, i, i2));
            }
        }
        i15 |= 3072;
        topStart = alignment;
        i7 = i2 & 8;
        if (i7 != 0) {
            if ((i & 24576) == 0) {
                nl3Var4 = nl3Var2;
                if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i15 |= i8;
            }
            if ((196608 & i) == 0) {
                fm3Var2 = fm3Var;
                if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                    i14 = 131072;
                } else {
                    i14 = 65536;
                }
                i15 |= i14;
            } else {
                fm3Var2 = fm3Var;
            }
            if ((74899 & i15) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i15 & 1)) {
                if (i16 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i3 != 0) {
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                        objRememberedValue6 = AnimatedContentKt$AnimatedContent$4$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    nl3Var5 = (nl3) objRememberedValue6;
                } else {
                    nl3Var5 = nl3Var3;
                }
                if (i5 != 0) {
                    topStart = Alignment.Companion.getTopStart();
                }
                if (i7 != 0) {
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                        objRememberedValue5 = AnimatedContentKt$AnimatedContent$5$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    nl3Var4 = (nl3) objRememberedValue5;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(511725103, i15, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:773)");
                }
                layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
                i9 = i15 & 14;
                if (i9 == 4) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) objRememberedValue;
                if (i9 == 4) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z3) {
                    objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                snapshotStateList = (SnapshotStateList) objRememberedValue2;
                if (i9 == 4) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z4) {
                    objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                mutableScatterMap = (MutableScatterMap) objRememberedValue3;
                if (!snapshotStateList.contains(transition2.getCurrentState())) {
                    snapshotStateList.clear();
                    snapshotStateList.add(transition2.getCurrentState());
                }
                if (aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                    if (snapshotStateList.size() == 1) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition2.getCurrentState());
                    } else {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition2.getCurrentState());
                    }
                    if (mutableScatterMap.getSize() == 1) {
                        mutableScatterMap.clear();
                    } else {
                        mutableScatterMap.clear();
                    }
                    animatedContentTransitionScopeImpl.setContentAlignment(topStart);
                    animatedContentTransitionScopeImpl.setLayoutDirection$animation(layoutDirection);
                }
                if (!aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                    it = snapshotStateList.iterator();
                    i13 = 0;
                    while (true) {
                        if (it.hasNext()) {
                            i13 = -1;
                            break;
                        } else {
                            if (aa4.e(nl3Var4.invoke((Object) it.next()), nl3Var4.invoke(transition2.getTargetState()))) {
                                break;
                                break;
                            }
                            i13++;
                        }
                    }
                    if (i13 == -1) {
                        snapshotStateList.add(transition2.getTargetState());
                    } else {
                        snapshotStateList.set(i13, transition2.getTargetState());
                    }
                }
                if (mutableScatterMap.containsKey(transition2.getTargetState())) {
                    composerStartRestartGroup.startReplaceGroup(1966410449);
                    mutableScatterMap.clear();
                    size = snapshotStateList.size();
                    i10 = 0;
                    while (i10 < size) {
                        int i11114 = i10;
                        T t118 = snapshotStateList.get(i11114);
                        SnapshotStateList snapshotStateList1110 = snapshotStateList;
                        AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl1110 = animatedContentTransitionScopeImpl;
                        mutableScatterMap.set(t118, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t118, nl3Var5, animatedContentTransitionScopeImpl1110, snapshotStateList1110, fm3Var2), composerStartRestartGroup, 54));
                        i10 = i11114 + 1;
                        transition2 = transition;
                        fm3Var2 = fm3Var;
                        animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl1110;
                        size = size;
                        snapshotStateList = snapshotStateList1110;
                    }
                    animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                    snapshotStateList2 = snapshotStateList;
                    i11 = 0;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1966410449);
                    mutableScatterMap.clear();
                    size = snapshotStateList.size();
                    i10 = 0;
                    while (i10 < size) {
                        int i11115 = i10;
                        T t119 = snapshotStateList.get(i11115);
                        SnapshotStateList snapshotStateList1111 = snapshotStateList;
                        AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl1111 = animatedContentTransitionScopeImpl;
                        mutableScatterMap.set(t119, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t119, nl3Var5, animatedContentTransitionScopeImpl1111, snapshotStateList1111, fm3Var2), composerStartRestartGroup, 54));
                        i10 = i11115 + 1;
                        transition2 = transition;
                        fm3Var2 = fm3Var;
                        animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl1111;
                        size = size;
                        snapshotStateList = snapshotStateList1111;
                    }
                    animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                    snapshotStateList2 = snapshotStateList;
                    i11 = 0;
                    composerStartRestartGroup.endReplaceGroup();
                }
                zChanged = composerStartRestartGroup.changed(transition.getSegment()) | composerStartRestartGroup.changed(animatedContentTransitionScopeImpl2);
                contentTransformRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                    composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                } else {
                    contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                    composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
                }
                Modifier modifierThen15 = modifier4.then(animatedContentTransitionScopeImpl2.createSizeAnimationModifier$animation((ContentTransform) contentTransformRememberedValue, composerStartRestartGroup, i11));
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                    objRememberedValue4 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                AnimatedContentMeasurePolicy animatedContentMeasurePolicy15 = (AnimatedContentMeasurePolicy) objRememberedValue4;
                int iHashCode15 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, i11));
                CompositionLocalMap currentCompositionLocalMap15 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier15 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen15);
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
                Composer composerM5355constructorimpl15 = Updater.m5355constructorimpl(composerStartRestartGroup);
                Updater.m5363setimpl(composerM5355constructorimpl15, animatedContentMeasurePolicy15, companion15.getSetMeasurePolicy());
                Updater.m5363setimpl(composerM5355constructorimpl15, currentCompositionLocalMap15, companion15.getSetResolvedCompositionLocals());
                Updater.m5359initimpl(composerM5355constructorimpl15, Integer.valueOf(iHashCode15), companion15.getSetCompositeKeyHash());
                Updater.m5361reconcileimpl(composerM5355constructorimpl15, companion15.getApplyOnDeactivatedNodeAssertion());
                Updater.m5363setimpl(composerM5355constructorimpl15, modifierMaterializeModifier15, companion15.getSetModifier());
                composerStartRestartGroup.startReplaceGroup(-860173498);
                size2 = snapshotStateList2.size();
                while (i12 < size2) {
                    a07 a07Var15 = (Object) snapshotStateList2.get(i12);
                    composerStartRestartGroup.startMovableGroup(-2026002954, nl3Var4.invoke(a07Var15));
                    bm3Var = (bm3) mutableScatterMap.get(a07Var15);
                    if (bm3Var == null) {
                        composerStartRestartGroup.startReplaceGroup(1618454323);
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-2026001778);
                        bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i11));
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.endMovableGroup();
                }
                composerStartRestartGroup.endReplaceGroup();
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                nl3Var5 = nl3Var3;
            }
            alignment2 = topStart;
            nl3Var6 = nl3Var4;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(transition, modifier3, nl3Var5, alignment2, nl3Var6, fm3Var, i, i2));
            }
        }
        i15 |= 24576;
        nl3Var4 = nl3Var2;
        if ((196608 & i) == 0) {
            fm3Var2 = fm3Var;
            if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                i14 = 131072;
            } else {
                i14 = 65536;
            }
            i15 |= i14;
        } else {
            fm3Var2 = fm3Var;
        }
        if ((74899 & i15) != 74898) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i15 & 1)) {
            if (i16 != 0) {
                modifier4 = Modifier.Companion;
            } else {
                modifier4 = modifier2;
            }
            if (i3 != 0) {
                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                    objRememberedValue6 = AnimatedContentKt$AnimatedContent$4$1.INSTANCE;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                nl3Var5 = (nl3) objRememberedValue6;
            } else {
                nl3Var5 = nl3Var3;
            }
            if (i5 != 0) {
                topStart = Alignment.Companion.getTopStart();
            }
            if (i7 != 0) {
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                    objRememberedValue5 = AnimatedContentKt$AnimatedContent$5$1.INSTANCE;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                nl3Var4 = (nl3) objRememberedValue5;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(511725103, i15, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:773)");
            }
            layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
            i9 = i15 & 14;
            if (i9 == 4) {
                z2 = true;
            } else {
                z2 = false;
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z2) {
                objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new AnimatedContentTransitionScopeImpl(transition2, topStart, layoutDirection);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) objRememberedValue;
            if (i9 == 4) {
                z3 = true;
            } else {
                z3 = false;
            }
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z3) {
                objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            } else {
                objRememberedValue2 = SnapshotStateKt.mutableStateListOf(transition2.getCurrentState());
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            snapshotStateList = (SnapshotStateList) objRememberedValue2;
            if (i9 == 4) {
                z4 = true;
            } else {
                z4 = false;
            }
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (z4) {
                objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                objRememberedValue3 = ScatterMapKt.mutableScatterMapOf();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            mutableScatterMap = (MutableScatterMap) objRememberedValue3;
            if (!snapshotStateList.contains(transition2.getCurrentState())) {
                snapshotStateList.clear();
                snapshotStateList.add(transition2.getCurrentState());
            }
            if (aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                if (snapshotStateList.size() == 1) {
                    snapshotStateList.clear();
                    snapshotStateList.add(transition2.getCurrentState());
                } else {
                    snapshotStateList.clear();
                    snapshotStateList.add(transition2.getCurrentState());
                }
                if (mutableScatterMap.getSize() == 1) {
                    mutableScatterMap.clear();
                } else {
                    mutableScatterMap.clear();
                }
                animatedContentTransitionScopeImpl.setContentAlignment(topStart);
                animatedContentTransitionScopeImpl.setLayoutDirection$animation(layoutDirection);
            }
            if (!aa4.e(transition2.getCurrentState(), transition2.getTargetState())) {
                it = snapshotStateList.iterator();
                i13 = 0;
                while (true) {
                    if (it.hasNext()) {
                        i13 = -1;
                        break;
                    } else {
                        if (aa4.e(nl3Var4.invoke((Object) it.next()), nl3Var4.invoke(transition2.getTargetState()))) {
                            break;
                            break;
                        }
                        i13++;
                    }
                }
                if (i13 == -1) {
                    snapshotStateList.add(transition2.getTargetState());
                } else {
                    snapshotStateList.set(i13, transition2.getTargetState());
                }
            }
            if (mutableScatterMap.containsKey(transition2.getTargetState())) {
                composerStartRestartGroup.startReplaceGroup(1966410449);
                mutableScatterMap.clear();
                size = snapshotStateList.size();
                i10 = 0;
                while (i10 < size) {
                    int i11116 = i10;
                    T t1110 = snapshotStateList.get(i11116);
                    SnapshotStateList snapshotStateList1112 = snapshotStateList;
                    AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl1112 = animatedContentTransitionScopeImpl;
                    mutableScatterMap.set(t1110, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t1110, nl3Var5, animatedContentTransitionScopeImpl1112, snapshotStateList1112, fm3Var2), composerStartRestartGroup, 54));
                    i10 = i11116 + 1;
                    transition2 = transition;
                    fm3Var2 = fm3Var;
                    animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl1112;
                    size = size;
                    snapshotStateList = snapshotStateList1112;
                }
                animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                snapshotStateList2 = snapshotStateList;
                i11 = 0;
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(1966410449);
                mutableScatterMap.clear();
                size = snapshotStateList.size();
                i10 = 0;
                while (i10 < size) {
                    int i11117 = i10;
                    T t1111 = snapshotStateList.get(i11117);
                    SnapshotStateList snapshotStateList1113 = snapshotStateList;
                    AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl1113 = animatedContentTransitionScopeImpl;
                    mutableScatterMap.set(t1111, ComposableLambdaKt.rememberComposableLambda(-23915175, true, new AnimatedContentKt$AnimatedContent$6$1(transition2, t1111, nl3Var5, animatedContentTransitionScopeImpl1113, snapshotStateList1113, fm3Var2), composerStartRestartGroup, 54));
                    i10 = i11117 + 1;
                    transition2 = transition;
                    fm3Var2 = fm3Var;
                    animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl1113;
                    size = size;
                    snapshotStateList = snapshotStateList1113;
                }
                animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                snapshotStateList2 = snapshotStateList;
                i11 = 0;
                composerStartRestartGroup.endReplaceGroup();
            }
            zChanged = composerStartRestartGroup.changed(transition.getSegment()) | composerStartRestartGroup.changed(animatedContentTransitionScopeImpl2);
            contentTransformRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
            } else {
                contentTransformRememberedValue = nl3Var5.invoke(animatedContentTransitionScopeImpl2);
                composerStartRestartGroup.updateRememberedValue(contentTransformRememberedValue);
            }
            Modifier modifierThen16 = modifier4.then(animatedContentTransitionScopeImpl2.createSizeAnimationModifier$animation((ContentTransform) contentTransformRememberedValue, composerStartRestartGroup, i11));
            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                objRememberedValue4 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            AnimatedContentMeasurePolicy animatedContentMeasurePolicy16 = (AnimatedContentMeasurePolicy) objRememberedValue4;
            int iHashCode16 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, i11));
            CompositionLocalMap currentCompositionLocalMap16 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier16 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen16);
            ComposeUiNode.Companion companion16 = ComposeUiNode.Companion;
            constructor = companion16.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl16 = Updater.m5355constructorimpl(composerStartRestartGroup);
            Updater.m5363setimpl(composerM5355constructorimpl16, animatedContentMeasurePolicy16, companion16.getSetMeasurePolicy());
            Updater.m5363setimpl(composerM5355constructorimpl16, currentCompositionLocalMap16, companion16.getSetResolvedCompositionLocals());
            Updater.m5359initimpl(composerM5355constructorimpl16, Integer.valueOf(iHashCode16), companion16.getSetCompositeKeyHash());
            Updater.m5361reconcileimpl(composerM5355constructorimpl16, companion16.getApplyOnDeactivatedNodeAssertion());
            Updater.m5363setimpl(composerM5355constructorimpl16, modifierMaterializeModifier16, companion16.getSetModifier());
            composerStartRestartGroup.startReplaceGroup(-860173498);
            size2 = snapshotStateList2.size();
            while (i12 < size2) {
                a07 a07Var16 = (Object) snapshotStateList2.get(i12);
                composerStartRestartGroup.startMovableGroup(-2026002954, nl3Var4.invoke(a07Var16));
                bm3Var = (bm3) mutableScatterMap.get(a07Var16);
                if (bm3Var == null) {
                    composerStartRestartGroup.startReplaceGroup(1618454323);
                } else {
                    composerStartRestartGroup.startReplaceGroup(-2026001778);
                    bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i11));
                }
                composerStartRestartGroup.endReplaceGroup();
                composerStartRestartGroup.endMovableGroup();
            }
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            nl3Var5 = nl3Var3;
        }
        alignment2 = topStart;
        nl3Var6 = nl3Var4;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(transition, modifier3, nl3Var5, alignment2, nl3Var6, fm3Var, i, i2));
        }
    }

    public static final SizeTransform SizeTransform(boolean z, bm3<? super IntSize, ? super IntSize, ? extends FiniteAnimationSpec<IntSize>> bm3Var) {
        return new SizeTransformImpl(z, bm3Var);
    }

    public static /* synthetic */ SizeTransform SizeTransform$default(boolean z, bm3 bm3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            bm3Var = AnonymousClass1.INSTANCE;
        }
        return SizeTransform(z, bm3Var);
    }

    public static final ContentTransform togetherWith(EnterTransition enterTransition, ExitTransition exitTransition) {
        return new ContentTransform(enterTransition, exitTransition, 0.0f, null, 12, null);
    }

    @ul2
    public static final ContentTransform with(EnterTransition enterTransition, ExitTransition exitTransition) {
        return new ContentTransform(enterTransition, exitTransition, 0.0f, null, 12, null);
    }

    /* JADX INFO: renamed from: androidx.compose.animation.AnimatedContentKt$AnimatedContent$9, reason: invalid class name */
    public static final class AnonymousClass9 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ int $$default;
        final /* synthetic */ fm3<AnimatedContentScope, S, Composer, Integer, j59> $content;
        final /* synthetic */ Alignment $contentAlignment;
        final /* synthetic */ nl3<S, Object> $contentKey;
        final /* synthetic */ Modifier $modifier;
        final /* synthetic */ Transition<S> $this_AnimatedContent;
        final /* synthetic */ nl3<AnimatedContentTransitionScope<S>, ContentTransform> $transitionSpec;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass9(Transition<S> transition, Modifier modifier, nl3<? super AnimatedContentTransitionScope<S>, ContentTransform> nl3Var, Alignment alignment, nl3<? super S, ? extends Object> nl3Var2, fm3<? super AnimatedContentScope, ? super S, ? super Composer, ? super Integer, j59> fm3Var, int i, int i2) {
            super(2);
            this.$this_AnimatedContent = transition;
            this.$modifier = modifier;
            this.$transitionSpec = nl3Var;
            this.$contentAlignment = alignment;
            this.$contentKey = nl3Var2;
            this.$content = fm3Var;
            this.$$changed = i;
            this.$$default = i2;
        }

        public final void invoke(Composer composer, int i) {
            AnimatedContentKt.AnimatedContent(this.$this_AnimatedContent, this.$modifier, this.$transitionSpec, this.$contentAlignment, this.$contentKey, this.$content, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1), this.$$default);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.AnimatedContentKt$AnimatedContent$3, reason: invalid class name */
    public static final class AnonymousClass3 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ int $$default;
        final /* synthetic */ fm3<AnimatedContentScope, S, Composer, Integer, j59> $content;
        final /* synthetic */ Alignment $contentAlignment;
        final /* synthetic */ nl3<S, Object> $contentKey;
        final /* synthetic */ String $label;
        final /* synthetic */ Modifier $modifier;
        final /* synthetic */ S $targetState;
        final /* synthetic */ nl3<AnimatedContentTransitionScope<S>, ContentTransform> $transitionSpec;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass3(S s, Modifier modifier, nl3<? super AnimatedContentTransitionScope<S>, ContentTransform> nl3Var, Alignment alignment, String str, nl3<? super S, ? extends Object> nl3Var2, fm3<? super AnimatedContentScope, ? super S, ? super Composer, ? super Integer, j59> fm3Var, int i, int i2) {
            super(2);
            this.$targetState = s;
            this.$modifier = modifier;
            this.$transitionSpec = nl3Var;
            this.$contentAlignment = alignment;
            this.$label = str;
            this.$contentKey = nl3Var2;
            this.$content = fm3Var;
            this.$$changed = i;
            this.$$default = i2;
        }

        public final void invoke(Composer composer, int i) {
            AnimatedContentKt.AnimatedContent(this.$targetState, this.$modifier, this.$transitionSpec, this.$contentAlignment, this.$label, this.$contentKey, this.$content, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1), this.$$default);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0126  */
    /* JADX WARN: Code duplicated, block: B:104:0x0134  */
    /* JADX WARN: Code duplicated, block: B:107:0x0161  */
    /* JADX WARN: Code duplicated, block: B:110:0x016a  */
    /* JADX WARN: Code duplicated, block: B:113:0x017a  */
    /* JADX WARN: Code duplicated, block: B:115:? A[RETURN, SYNTHETIC] */
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
    /* JADX WARN: Code duplicated, block: B:48:0x007b  */
    /* JADX WARN: Code duplicated, block: B:50:0x0080  */
    /* JADX WARN: Code duplicated, block: B:52:0x0084  */
    /* JADX WARN: Code duplicated, block: B:54:0x008c  */
    /* JADX WARN: Code duplicated, block: B:55:0x008f  */
    /* JADX WARN: Code duplicated, block: B:59:0x0098  */
    /* JADX WARN: Code duplicated, block: B:61:0x009c  */
    /* JADX WARN: Code duplicated, block: B:63:0x009f  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:66:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:72:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:73:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:82:0x00dc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x00de  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:86:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:90:0x0100  */
    /* JADX WARN: Code duplicated, block: B:92:0x0103  */
    /* JADX WARN: Code duplicated, block: B:93:0x010f  */
    /* JADX WARN: Code duplicated, block: B:95:0x0113  */
    /* JADX WARN: Code duplicated, block: B:96:0x0116  */
    /* JADX WARN: Code duplicated, block: B:98:0x011a  */
    public static final <S> void AnimatedContent(S s, Modifier modifier, nl3<? super AnimatedContentTransitionScope<S>, ContentTransform> nl3Var, Alignment alignment, String str, nl3<? super S, ? extends Object> nl3Var2, fm3<? super AnimatedContentScope, ? super S, ? super Composer, ? super Integer, j59> fm3Var, Composer composer, int i, int i2) {
        int i3;
        int i4;
        nl3<? super AnimatedContentTransitionScope<S>, ContentTransform> nl3Var3;
        int i5;
        int i6;
        Alignment alignment2;
        int i7;
        int i8;
        int i9;
        int i10;
        nl3<? super S, ? extends Object> nl3Var4;
        int i11;
        fm3<? super AnimatedContentScope, ? super S, ? super Composer, ? super Integer, j59> fm3Var2;
        boolean z;
        Modifier modifier2;
        String str2;
        nl3<? super AnimatedContentTransitionScope<S>, ContentTransform> nl3Var5;
        Alignment alignment3;
        nl3<? super S, ? extends Object> nl3Var6;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i12;
        Modifier modifier3;
        nl3<? super AnimatedContentTransitionScope<S>, ContentTransform> nl3Var7;
        int i13;
        Alignment topStart;
        String str3;
        Object objRememberedValue;
        Object objRememberedValue2;
        int i14;
        Composer composerStartRestartGroup = composer.startRestartGroup(1501828832);
        if ((i & 6) == 0) {
            i3 = ((i & 8) == 0 ? composerStartRestartGroup.changed(s) : composerStartRestartGroup.changedInstance(s) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i15 = i2 & 2;
        if (i15 == 0) {
            if ((i & 48) == 0) {
                i3 |= composerStartRestartGroup.changed(modifier) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    nl3Var3 = nl3Var;
                    if (composerStartRestartGroup.changedInstance(nl3Var3)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 8;
                if (i6 != 0) {
                    if ((i & 3072) == 0) {
                        alignment2 = alignment;
                        if (composerStartRestartGroup.changed(alignment2)) {
                            i7 = 2048;
                        } else {
                            i7 = 1024;
                        }
                        i3 |= i7;
                    }
                    i8 = i2 & 16;
                    if (i8 != 0) {
                        if ((i & 24576) == 0) {
                            if (composerStartRestartGroup.changed(str)) {
                                i9 = 16384;
                            } else {
                                i9 = 8192;
                            }
                            i3 |= i9;
                        }
                        i10 = i2 & 32;
                        if (i10 != 0) {
                            if ((196608 & i) == 0) {
                                nl3Var4 = nl3Var2;
                                if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                                    i11 = 131072;
                                } else {
                                    i11 = 65536;
                                }
                                i3 |= i11;
                            }
                            if ((1572864 & i) == 0) {
                                fm3Var2 = fm3Var;
                                if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                                    i14 = 1048576;
                                } else {
                                    i14 = 524288;
                                }
                                i3 |= i14;
                            } else {
                                fm3Var2 = fm3Var;
                            }
                            if ((i3 & 599187) != 599186) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                                if (i15 != 0) {
                                    modifier3 = Modifier.Companion;
                                    i12 = i8;
                                } else {
                                    i12 = i8;
                                    modifier3 = modifier;
                                }
                                if (i4 != 0) {
                                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                    if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                        objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                    }
                                    nl3Var7 = (nl3) objRememberedValue2;
                                } else {
                                    nl3Var7 = nl3Var3;
                                }
                                if (i6 != 0) {
                                    topStart = Alignment.Companion.getTopStart();
                                    i13 = i10;
                                } else {
                                    i13 = i10;
                                    topStart = alignment2;
                                }
                                if (i12 != 0) {
                                    str3 = "AnimatedContent";
                                } else {
                                    str3 = str;
                                }
                                if (i13 != 0) {
                                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                                        objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                    }
                                    nl3Var4 = (nl3) objRememberedValue;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                                }
                                Transition transitionUpdateTransition = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                                int i16 = i3 & 8176;
                                int i17 = i3 >> 3;
                                AnimatedContent(transitionUpdateTransition, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i16 | (57344 & i17) | (i17 & 458752), 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                str2 = str3;
                                modifier2 = modifier3;
                                nl3Var5 = nl3Var7;
                                alignment3 = topStart;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                modifier2 = modifier;
                                str2 = str;
                                nl3Var5 = nl3Var3;
                                alignment3 = alignment2;
                            }
                            nl3Var6 = nl3Var4;
                            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                            }
                        }
                        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        nl3Var4 = nl3Var2;
                        if ((1572864 & i) == 0) {
                            fm3Var2 = fm3Var;
                            if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                                i14 = 1048576;
                            } else {
                                i14 = 524288;
                            }
                            i3 |= i14;
                        } else {
                            fm3Var2 = fm3Var;
                        }
                        if ((i3 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                            if (i15 != 0) {
                                modifier3 = Modifier.Companion;
                                i12 = i8;
                            } else {
                                i12 = i8;
                                modifier3 = modifier;
                            }
                            if (i4 != 0) {
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                nl3Var7 = (nl3) objRememberedValue2;
                            } else {
                                nl3Var7 = nl3Var3;
                            }
                            if (i6 != 0) {
                                topStart = Alignment.Companion.getTopStart();
                                i13 = i10;
                            } else {
                                i13 = i10;
                                topStart = alignment2;
                            }
                            if (i12 != 0) {
                                str3 = "AnimatedContent";
                            } else {
                                str3 = str;
                            }
                            if (i13 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                nl3Var4 = (nl3) objRememberedValue;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                            }
                            Transition transitionUpdateTransition2 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                            int i18 = i3 & 8176;
                            int i19 = i3 >> 3;
                            AnimatedContent(transitionUpdateTransition2, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i18 | (57344 & i19) | (i19 & 458752), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            str2 = str3;
                            modifier2 = modifier3;
                            nl3Var5 = nl3Var7;
                            alignment3 = topStart;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            modifier2 = modifier;
                            str2 = str;
                            nl3Var5 = nl3Var3;
                            alignment3 = alignment2;
                        }
                        nl3Var6 = nl3Var4;
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                        }
                    }
                    i3 |= 24576;
                    i10 = i2 & 32;
                    if (i10 != 0) {
                        if ((196608 & i) == 0) {
                            nl3Var4 = nl3Var2;
                            if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                                i11 = 131072;
                            } else {
                                i11 = 65536;
                            }
                            i3 |= i11;
                        }
                        if ((1572864 & i) == 0) {
                            fm3Var2 = fm3Var;
                            if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                                i14 = 1048576;
                            } else {
                                i14 = 524288;
                            }
                            i3 |= i14;
                        } else {
                            fm3Var2 = fm3Var;
                        }
                        if ((i3 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                            if (i15 != 0) {
                                modifier3 = Modifier.Companion;
                                i12 = i8;
                            } else {
                                i12 = i8;
                                modifier3 = modifier;
                            }
                            if (i4 != 0) {
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                nl3Var7 = (nl3) objRememberedValue2;
                            } else {
                                nl3Var7 = nl3Var3;
                            }
                            if (i6 != 0) {
                                topStart = Alignment.Companion.getTopStart();
                                i13 = i10;
                            } else {
                                i13 = i10;
                                topStart = alignment2;
                            }
                            if (i12 != 0) {
                                str3 = "AnimatedContent";
                            } else {
                                str3 = str;
                            }
                            if (i13 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                nl3Var4 = (nl3) objRememberedValue;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                            }
                            Transition transitionUpdateTransition3 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                            int i110 = i3 & 8176;
                            int i111 = i3 >> 3;
                            AnimatedContent(transitionUpdateTransition3, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i110 | (57344 & i111) | (i111 & 458752), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            str2 = str3;
                            modifier2 = modifier3;
                            nl3Var5 = nl3Var7;
                            alignment3 = topStart;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            modifier2 = modifier;
                            str2 = str;
                            nl3Var5 = nl3Var3;
                            alignment3 = alignment2;
                        }
                        nl3Var6 = nl3Var4;
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                        }
                    }
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    nl3Var4 = nl3Var2;
                    if ((1572864 & i) == 0) {
                        fm3Var2 = fm3Var;
                        if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i3 |= i14;
                    } else {
                        fm3Var2 = fm3Var;
                    }
                    if ((i3 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i15 != 0) {
                            modifier3 = Modifier.Companion;
                            i12 = i8;
                        } else {
                            i12 = i8;
                            modifier3 = modifier;
                        }
                        if (i4 != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            nl3Var7 = (nl3) objRememberedValue2;
                        } else {
                            nl3Var7 = nl3Var3;
                        }
                        if (i6 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                            i13 = i10;
                        } else {
                            i13 = i10;
                            topStart = alignment2;
                        }
                        if (i12 != 0) {
                            str3 = "AnimatedContent";
                        } else {
                            str3 = str;
                        }
                        if (i13 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var4 = (nl3) objRememberedValue;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                        }
                        Transition transitionUpdateTransition4 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                        int i112 = i3 & 8176;
                        int i113 = i3 >> 3;
                        AnimatedContent(transitionUpdateTransition4, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i112 | (57344 & i113) | (i113 & 458752), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        str2 = str3;
                        modifier2 = modifier3;
                        nl3Var5 = nl3Var7;
                        alignment3 = topStart;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        str2 = str;
                        nl3Var5 = nl3Var3;
                        alignment3 = alignment2;
                    }
                    nl3Var6 = nl3Var4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                    }
                }
                i3 |= 3072;
                alignment2 = alignment;
                i8 = i2 & 16;
                if (i8 != 0) {
                    if ((i & 24576) == 0) {
                        if (composerStartRestartGroup.changed(str)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i3 |= i9;
                    }
                    i10 = i2 & 32;
                    if (i10 != 0) {
                        if ((196608 & i) == 0) {
                            nl3Var4 = nl3Var2;
                            if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                                i11 = 131072;
                            } else {
                                i11 = 65536;
                            }
                            i3 |= i11;
                        }
                        if ((1572864 & i) == 0) {
                            fm3Var2 = fm3Var;
                            if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                                i14 = 1048576;
                            } else {
                                i14 = 524288;
                            }
                            i3 |= i14;
                        } else {
                            fm3Var2 = fm3Var;
                        }
                        if ((i3 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                            if (i15 != 0) {
                                modifier3 = Modifier.Companion;
                                i12 = i8;
                            } else {
                                i12 = i8;
                                modifier3 = modifier;
                            }
                            if (i4 != 0) {
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                nl3Var7 = (nl3) objRememberedValue2;
                            } else {
                                nl3Var7 = nl3Var3;
                            }
                            if (i6 != 0) {
                                topStart = Alignment.Companion.getTopStart();
                                i13 = i10;
                            } else {
                                i13 = i10;
                                topStart = alignment2;
                            }
                            if (i12 != 0) {
                                str3 = "AnimatedContent";
                            } else {
                                str3 = str;
                            }
                            if (i13 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                nl3Var4 = (nl3) objRememberedValue;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                            }
                            Transition transitionUpdateTransition5 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                            int i114 = i3 & 8176;
                            int i115 = i3 >> 3;
                            AnimatedContent(transitionUpdateTransition5, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i114 | (57344 & i115) | (i115 & 458752), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            str2 = str3;
                            modifier2 = modifier3;
                            nl3Var5 = nl3Var7;
                            alignment3 = topStart;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            modifier2 = modifier;
                            str2 = str;
                            nl3Var5 = nl3Var3;
                            alignment3 = alignment2;
                        }
                        nl3Var6 = nl3Var4;
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                        }
                    }
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    nl3Var4 = nl3Var2;
                    if ((1572864 & i) == 0) {
                        fm3Var2 = fm3Var;
                        if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i3 |= i14;
                    } else {
                        fm3Var2 = fm3Var;
                    }
                    if ((i3 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i15 != 0) {
                            modifier3 = Modifier.Companion;
                            i12 = i8;
                        } else {
                            i12 = i8;
                            modifier3 = modifier;
                        }
                        if (i4 != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            nl3Var7 = (nl3) objRememberedValue2;
                        } else {
                            nl3Var7 = nl3Var3;
                        }
                        if (i6 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                            i13 = i10;
                        } else {
                            i13 = i10;
                            topStart = alignment2;
                        }
                        if (i12 != 0) {
                            str3 = "AnimatedContent";
                        } else {
                            str3 = str;
                        }
                        if (i13 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var4 = (nl3) objRememberedValue;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                        }
                        Transition transitionUpdateTransition6 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                        int i116 = i3 & 8176;
                        int i117 = i3 >> 3;
                        AnimatedContent(transitionUpdateTransition6, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i116 | (57344 & i117) | (i117 & 458752), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        str2 = str3;
                        modifier2 = modifier3;
                        nl3Var5 = nl3Var7;
                        alignment3 = topStart;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        str2 = str;
                        nl3Var5 = nl3Var3;
                        alignment3 = alignment2;
                    }
                    nl3Var6 = nl3Var4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                    }
                }
                i3 |= 24576;
                i10 = i2 & 32;
                if (i10 != 0) {
                    if ((196608 & i) == 0) {
                        nl3Var4 = nl3Var2;
                        if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                            i11 = 131072;
                        } else {
                            i11 = 65536;
                        }
                        i3 |= i11;
                    }
                    if ((1572864 & i) == 0) {
                        fm3Var2 = fm3Var;
                        if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i3 |= i14;
                    } else {
                        fm3Var2 = fm3Var;
                    }
                    if ((i3 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i15 != 0) {
                            modifier3 = Modifier.Companion;
                            i12 = i8;
                        } else {
                            i12 = i8;
                            modifier3 = modifier;
                        }
                        if (i4 != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            nl3Var7 = (nl3) objRememberedValue2;
                        } else {
                            nl3Var7 = nl3Var3;
                        }
                        if (i6 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                            i13 = i10;
                        } else {
                            i13 = i10;
                            topStart = alignment2;
                        }
                        if (i12 != 0) {
                            str3 = "AnimatedContent";
                        } else {
                            str3 = str;
                        }
                        if (i13 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var4 = (nl3) objRememberedValue;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                        }
                        Transition transitionUpdateTransition7 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                        int i118 = i3 & 8176;
                        int i119 = i3 >> 3;
                        AnimatedContent(transitionUpdateTransition7, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i118 | (57344 & i119) | (i119 & 458752), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        str2 = str3;
                        modifier2 = modifier3;
                        nl3Var5 = nl3Var7;
                        alignment3 = topStart;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        str2 = str;
                        nl3Var5 = nl3Var3;
                        alignment3 = alignment2;
                    }
                    nl3Var6 = nl3Var4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                nl3Var4 = nl3Var2;
                if ((1572864 & i) == 0) {
                    fm3Var2 = fm3Var;
                    if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i3 |= i14;
                } else {
                    fm3Var2 = fm3Var;
                }
                if ((i3 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                        i12 = i8;
                    } else {
                        i12 = i8;
                        modifier3 = modifier;
                    }
                    if (i4 != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        nl3Var7 = (nl3) objRememberedValue2;
                    } else {
                        nl3Var7 = nl3Var3;
                    }
                    if (i6 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                        i13 = i10;
                    } else {
                        i13 = i10;
                        topStart = alignment2;
                    }
                    if (i12 != 0) {
                        str3 = "AnimatedContent";
                    } else {
                        str3 = str;
                    }
                    if (i13 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var4 = (nl3) objRememberedValue;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                    }
                    Transition transitionUpdateTransition8 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                    int i1110 = i3 & 8176;
                    int i1111 = i3 >> 3;
                    AnimatedContent(transitionUpdateTransition8, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i1110 | (57344 & i1111) | (i1111 & 458752), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    str2 = str3;
                    modifier2 = modifier3;
                    nl3Var5 = nl3Var7;
                    alignment3 = topStart;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    str2 = str;
                    nl3Var5 = nl3Var3;
                    alignment3 = alignment2;
                }
                nl3Var6 = nl3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            nl3Var3 = nl3Var;
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    alignment2 = alignment;
                    if (composerStartRestartGroup.changed(alignment2)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 16;
                if (i8 != 0) {
                    if ((i & 24576) == 0) {
                        if (composerStartRestartGroup.changed(str)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i3 |= i9;
                    }
                    i10 = i2 & 32;
                    if (i10 != 0) {
                        if ((196608 & i) == 0) {
                            nl3Var4 = nl3Var2;
                            if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                                i11 = 131072;
                            } else {
                                i11 = 65536;
                            }
                            i3 |= i11;
                        }
                        if ((1572864 & i) == 0) {
                            fm3Var2 = fm3Var;
                            if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                                i14 = 1048576;
                            } else {
                                i14 = 524288;
                            }
                            i3 |= i14;
                        } else {
                            fm3Var2 = fm3Var;
                        }
                        if ((i3 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                            if (i15 != 0) {
                                modifier3 = Modifier.Companion;
                                i12 = i8;
                            } else {
                                i12 = i8;
                                modifier3 = modifier;
                            }
                            if (i4 != 0) {
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                nl3Var7 = (nl3) objRememberedValue2;
                            } else {
                                nl3Var7 = nl3Var3;
                            }
                            if (i6 != 0) {
                                topStart = Alignment.Companion.getTopStart();
                                i13 = i10;
                            } else {
                                i13 = i10;
                                topStart = alignment2;
                            }
                            if (i12 != 0) {
                                str3 = "AnimatedContent";
                            } else {
                                str3 = str;
                            }
                            if (i13 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                nl3Var4 = (nl3) objRememberedValue;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                            }
                            Transition transitionUpdateTransition9 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                            int i1112 = i3 & 8176;
                            int i1113 = i3 >> 3;
                            AnimatedContent(transitionUpdateTransition9, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i1112 | (57344 & i1113) | (i1113 & 458752), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            str2 = str3;
                            modifier2 = modifier3;
                            nl3Var5 = nl3Var7;
                            alignment3 = topStart;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            modifier2 = modifier;
                            str2 = str;
                            nl3Var5 = nl3Var3;
                            alignment3 = alignment2;
                        }
                        nl3Var6 = nl3Var4;
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                        }
                    }
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    nl3Var4 = nl3Var2;
                    if ((1572864 & i) == 0) {
                        fm3Var2 = fm3Var;
                        if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i3 |= i14;
                    } else {
                        fm3Var2 = fm3Var;
                    }
                    if ((i3 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i15 != 0) {
                            modifier3 = Modifier.Companion;
                            i12 = i8;
                        } else {
                            i12 = i8;
                            modifier3 = modifier;
                        }
                        if (i4 != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            nl3Var7 = (nl3) objRememberedValue2;
                        } else {
                            nl3Var7 = nl3Var3;
                        }
                        if (i6 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                            i13 = i10;
                        } else {
                            i13 = i10;
                            topStart = alignment2;
                        }
                        if (i12 != 0) {
                            str3 = "AnimatedContent";
                        } else {
                            str3 = str;
                        }
                        if (i13 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var4 = (nl3) objRememberedValue;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                        }
                        Transition transitionUpdateTransition10 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                        int i1114 = i3 & 8176;
                        int i1115 = i3 >> 3;
                        AnimatedContent(transitionUpdateTransition10, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i1114 | (57344 & i1115) | (i1115 & 458752), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        str2 = str3;
                        modifier2 = modifier3;
                        nl3Var5 = nl3Var7;
                        alignment3 = topStart;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        str2 = str;
                        nl3Var5 = nl3Var3;
                        alignment3 = alignment2;
                    }
                    nl3Var6 = nl3Var4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                    }
                }
                i3 |= 24576;
                i10 = i2 & 32;
                if (i10 != 0) {
                    if ((196608 & i) == 0) {
                        nl3Var4 = nl3Var2;
                        if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                            i11 = 131072;
                        } else {
                            i11 = 65536;
                        }
                        i3 |= i11;
                    }
                    if ((1572864 & i) == 0) {
                        fm3Var2 = fm3Var;
                        if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i3 |= i14;
                    } else {
                        fm3Var2 = fm3Var;
                    }
                    if ((i3 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i15 != 0) {
                            modifier3 = Modifier.Companion;
                            i12 = i8;
                        } else {
                            i12 = i8;
                            modifier3 = modifier;
                        }
                        if (i4 != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            nl3Var7 = (nl3) objRememberedValue2;
                        } else {
                            nl3Var7 = nl3Var3;
                        }
                        if (i6 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                            i13 = i10;
                        } else {
                            i13 = i10;
                            topStart = alignment2;
                        }
                        if (i12 != 0) {
                            str3 = "AnimatedContent";
                        } else {
                            str3 = str;
                        }
                        if (i13 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var4 = (nl3) objRememberedValue;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                        }
                        Transition transitionUpdateTransition11 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                        int i1116 = i3 & 8176;
                        int i1117 = i3 >> 3;
                        AnimatedContent(transitionUpdateTransition11, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i1116 | (57344 & i1117) | (i1117 & 458752), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        str2 = str3;
                        modifier2 = modifier3;
                        nl3Var5 = nl3Var7;
                        alignment3 = topStart;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        str2 = str;
                        nl3Var5 = nl3Var3;
                        alignment3 = alignment2;
                    }
                    nl3Var6 = nl3Var4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                nl3Var4 = nl3Var2;
                if ((1572864 & i) == 0) {
                    fm3Var2 = fm3Var;
                    if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i3 |= i14;
                } else {
                    fm3Var2 = fm3Var;
                }
                if ((i3 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                        i12 = i8;
                    } else {
                        i12 = i8;
                        modifier3 = modifier;
                    }
                    if (i4 != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        nl3Var7 = (nl3) objRememberedValue2;
                    } else {
                        nl3Var7 = nl3Var3;
                    }
                    if (i6 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                        i13 = i10;
                    } else {
                        i13 = i10;
                        topStart = alignment2;
                    }
                    if (i12 != 0) {
                        str3 = "AnimatedContent";
                    } else {
                        str3 = str;
                    }
                    if (i13 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var4 = (nl3) objRememberedValue;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                    }
                    Transition transitionUpdateTransition12 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                    int i1118 = i3 & 8176;
                    int i1119 = i3 >> 3;
                    AnimatedContent(transitionUpdateTransition12, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i1118 | (57344 & i1119) | (i1119 & 458752), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    str2 = str3;
                    modifier2 = modifier3;
                    nl3Var5 = nl3Var7;
                    alignment3 = topStart;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    str2 = str;
                    nl3Var5 = nl3Var3;
                    alignment3 = alignment2;
                }
                nl3Var6 = nl3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                }
            }
            i3 |= 3072;
            alignment2 = alignment;
            i8 = i2 & 16;
            if (i8 != 0) {
                if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changed(str)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 32;
                if (i10 != 0) {
                    if ((196608 & i) == 0) {
                        nl3Var4 = nl3Var2;
                        if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                            i11 = 131072;
                        } else {
                            i11 = 65536;
                        }
                        i3 |= i11;
                    }
                    if ((1572864 & i) == 0) {
                        fm3Var2 = fm3Var;
                        if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i3 |= i14;
                    } else {
                        fm3Var2 = fm3Var;
                    }
                    if ((i3 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i15 != 0) {
                            modifier3 = Modifier.Companion;
                            i12 = i8;
                        } else {
                            i12 = i8;
                            modifier3 = modifier;
                        }
                        if (i4 != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            nl3Var7 = (nl3) objRememberedValue2;
                        } else {
                            nl3Var7 = nl3Var3;
                        }
                        if (i6 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                            i13 = i10;
                        } else {
                            i13 = i10;
                            topStart = alignment2;
                        }
                        if (i12 != 0) {
                            str3 = "AnimatedContent";
                        } else {
                            str3 = str;
                        }
                        if (i13 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var4 = (nl3) objRememberedValue;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                        }
                        Transition transitionUpdateTransition13 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                        int i11110 = i3 & 8176;
                        int i11111 = i3 >> 3;
                        AnimatedContent(transitionUpdateTransition13, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i11110 | (57344 & i11111) | (i11111 & 458752), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        str2 = str3;
                        modifier2 = modifier3;
                        nl3Var5 = nl3Var7;
                        alignment3 = topStart;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        str2 = str;
                        nl3Var5 = nl3Var3;
                        alignment3 = alignment2;
                    }
                    nl3Var6 = nl3Var4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                nl3Var4 = nl3Var2;
                if ((1572864 & i) == 0) {
                    fm3Var2 = fm3Var;
                    if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i3 |= i14;
                } else {
                    fm3Var2 = fm3Var;
                }
                if ((i3 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                        i12 = i8;
                    } else {
                        i12 = i8;
                        modifier3 = modifier;
                    }
                    if (i4 != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        nl3Var7 = (nl3) objRememberedValue2;
                    } else {
                        nl3Var7 = nl3Var3;
                    }
                    if (i6 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                        i13 = i10;
                    } else {
                        i13 = i10;
                        topStart = alignment2;
                    }
                    if (i12 != 0) {
                        str3 = "AnimatedContent";
                    } else {
                        str3 = str;
                    }
                    if (i13 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var4 = (nl3) objRememberedValue;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                    }
                    Transition transitionUpdateTransition14 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                    int i11112 = i3 & 8176;
                    int i11113 = i3 >> 3;
                    AnimatedContent(transitionUpdateTransition14, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i11112 | (57344 & i11113) | (i11113 & 458752), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    str2 = str3;
                    modifier2 = modifier3;
                    nl3Var5 = nl3Var7;
                    alignment3 = topStart;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    str2 = str;
                    nl3Var5 = nl3Var3;
                    alignment3 = alignment2;
                }
                nl3Var6 = nl3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                }
            }
            i3 |= 24576;
            i10 = i2 & 32;
            if (i10 != 0) {
                if ((196608 & i) == 0) {
                    nl3Var4 = nl3Var2;
                    if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i3 |= i11;
                }
                if ((1572864 & i) == 0) {
                    fm3Var2 = fm3Var;
                    if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i3 |= i14;
                } else {
                    fm3Var2 = fm3Var;
                }
                if ((i3 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                        i12 = i8;
                    } else {
                        i12 = i8;
                        modifier3 = modifier;
                    }
                    if (i4 != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        nl3Var7 = (nl3) objRememberedValue2;
                    } else {
                        nl3Var7 = nl3Var3;
                    }
                    if (i6 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                        i13 = i10;
                    } else {
                        i13 = i10;
                        topStart = alignment2;
                    }
                    if (i12 != 0) {
                        str3 = "AnimatedContent";
                    } else {
                        str3 = str;
                    }
                    if (i13 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var4 = (nl3) objRememberedValue;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                    }
                    Transition transitionUpdateTransition15 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                    int i11114 = i3 & 8176;
                    int i11115 = i3 >> 3;
                    AnimatedContent(transitionUpdateTransition15, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i11114 | (57344 & i11115) | (i11115 & 458752), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    str2 = str3;
                    modifier2 = modifier3;
                    nl3Var5 = nl3Var7;
                    alignment3 = topStart;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    str2 = str;
                    nl3Var5 = nl3Var3;
                    alignment3 = alignment2;
                }
                nl3Var6 = nl3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            nl3Var4 = nl3Var2;
            if ((1572864 & i) == 0) {
                fm3Var2 = fm3Var;
                if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                    i14 = 1048576;
                } else {
                    i14 = 524288;
                }
                i3 |= i14;
            } else {
                fm3Var2 = fm3Var;
            }
            if ((i3 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                    i12 = i8;
                } else {
                    i12 = i8;
                    modifier3 = modifier;
                }
                if (i4 != 0) {
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                        objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    nl3Var7 = (nl3) objRememberedValue2;
                } else {
                    nl3Var7 = nl3Var3;
                }
                if (i6 != 0) {
                    topStart = Alignment.Companion.getTopStart();
                    i13 = i10;
                } else {
                    i13 = i10;
                    topStart = alignment2;
                }
                if (i12 != 0) {
                    str3 = "AnimatedContent";
                } else {
                    str3 = str;
                }
                if (i13 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    nl3Var4 = (nl3) objRememberedValue;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                }
                Transition transitionUpdateTransition16 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                int i11116 = i3 & 8176;
                int i11117 = i3 >> 3;
                AnimatedContent(transitionUpdateTransition16, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i11116 | (57344 & i11117) | (i11117 & 458752), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                str2 = str3;
                modifier2 = modifier3;
                nl3Var5 = nl3Var7;
                alignment3 = topStart;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier2 = modifier;
                str2 = str;
                nl3Var5 = nl3Var3;
                alignment3 = alignment2;
            }
            nl3Var6 = nl3Var4;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
            }
        }
        i3 |= 48;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                nl3Var3 = nl3Var;
                if (composerStartRestartGroup.changedInstance(nl3Var3)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    alignment2 = alignment;
                    if (composerStartRestartGroup.changed(alignment2)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 16;
                if (i8 != 0) {
                    if ((i & 24576) == 0) {
                        if (composerStartRestartGroup.changed(str)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i3 |= i9;
                    }
                    i10 = i2 & 32;
                    if (i10 != 0) {
                        if ((196608 & i) == 0) {
                            nl3Var4 = nl3Var2;
                            if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                                i11 = 131072;
                            } else {
                                i11 = 65536;
                            }
                            i3 |= i11;
                        }
                        if ((1572864 & i) == 0) {
                            fm3Var2 = fm3Var;
                            if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                                i14 = 1048576;
                            } else {
                                i14 = 524288;
                            }
                            i3 |= i14;
                        } else {
                            fm3Var2 = fm3Var;
                        }
                        if ((i3 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                            if (i15 != 0) {
                                modifier3 = Modifier.Companion;
                                i12 = i8;
                            } else {
                                i12 = i8;
                                modifier3 = modifier;
                            }
                            if (i4 != 0) {
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                nl3Var7 = (nl3) objRememberedValue2;
                            } else {
                                nl3Var7 = nl3Var3;
                            }
                            if (i6 != 0) {
                                topStart = Alignment.Companion.getTopStart();
                                i13 = i10;
                            } else {
                                i13 = i10;
                                topStart = alignment2;
                            }
                            if (i12 != 0) {
                                str3 = "AnimatedContent";
                            } else {
                                str3 = str;
                            }
                            if (i13 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                nl3Var4 = (nl3) objRememberedValue;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                            }
                            Transition transitionUpdateTransition17 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                            int i11118 = i3 & 8176;
                            int i11119 = i3 >> 3;
                            AnimatedContent(transitionUpdateTransition17, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i11118 | (57344 & i11119) | (i11119 & 458752), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            str2 = str3;
                            modifier2 = modifier3;
                            nl3Var5 = nl3Var7;
                            alignment3 = topStart;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            modifier2 = modifier;
                            str2 = str;
                            nl3Var5 = nl3Var3;
                            alignment3 = alignment2;
                        }
                        nl3Var6 = nl3Var4;
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                        }
                    }
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    nl3Var4 = nl3Var2;
                    if ((1572864 & i) == 0) {
                        fm3Var2 = fm3Var;
                        if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i3 |= i14;
                    } else {
                        fm3Var2 = fm3Var;
                    }
                    if ((i3 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i15 != 0) {
                            modifier3 = Modifier.Companion;
                            i12 = i8;
                        } else {
                            i12 = i8;
                            modifier3 = modifier;
                        }
                        if (i4 != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            nl3Var7 = (nl3) objRememberedValue2;
                        } else {
                            nl3Var7 = nl3Var3;
                        }
                        if (i6 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                            i13 = i10;
                        } else {
                            i13 = i10;
                            topStart = alignment2;
                        }
                        if (i12 != 0) {
                            str3 = "AnimatedContent";
                        } else {
                            str3 = str;
                        }
                        if (i13 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var4 = (nl3) objRememberedValue;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                        }
                        Transition transitionUpdateTransition18 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                        int i111110 = i3 & 8176;
                        int i111111 = i3 >> 3;
                        AnimatedContent(transitionUpdateTransition18, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i111110 | (57344 & i111111) | (i111111 & 458752), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        str2 = str3;
                        modifier2 = modifier3;
                        nl3Var5 = nl3Var7;
                        alignment3 = topStart;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        str2 = str;
                        nl3Var5 = nl3Var3;
                        alignment3 = alignment2;
                    }
                    nl3Var6 = nl3Var4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                    }
                }
                i3 |= 24576;
                i10 = i2 & 32;
                if (i10 != 0) {
                    if ((196608 & i) == 0) {
                        nl3Var4 = nl3Var2;
                        if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                            i11 = 131072;
                        } else {
                            i11 = 65536;
                        }
                        i3 |= i11;
                    }
                    if ((1572864 & i) == 0) {
                        fm3Var2 = fm3Var;
                        if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i3 |= i14;
                    } else {
                        fm3Var2 = fm3Var;
                    }
                    if ((i3 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i15 != 0) {
                            modifier3 = Modifier.Companion;
                            i12 = i8;
                        } else {
                            i12 = i8;
                            modifier3 = modifier;
                        }
                        if (i4 != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            nl3Var7 = (nl3) objRememberedValue2;
                        } else {
                            nl3Var7 = nl3Var3;
                        }
                        if (i6 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                            i13 = i10;
                        } else {
                            i13 = i10;
                            topStart = alignment2;
                        }
                        if (i12 != 0) {
                            str3 = "AnimatedContent";
                        } else {
                            str3 = str;
                        }
                        if (i13 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var4 = (nl3) objRememberedValue;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                        }
                        Transition transitionUpdateTransition19 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                        int i111112 = i3 & 8176;
                        int i111113 = i3 >> 3;
                        AnimatedContent(transitionUpdateTransition19, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i111112 | (57344 & i111113) | (i111113 & 458752), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        str2 = str3;
                        modifier2 = modifier3;
                        nl3Var5 = nl3Var7;
                        alignment3 = topStart;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        str2 = str;
                        nl3Var5 = nl3Var3;
                        alignment3 = alignment2;
                    }
                    nl3Var6 = nl3Var4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                nl3Var4 = nl3Var2;
                if ((1572864 & i) == 0) {
                    fm3Var2 = fm3Var;
                    if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i3 |= i14;
                } else {
                    fm3Var2 = fm3Var;
                }
                if ((i3 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                        i12 = i8;
                    } else {
                        i12 = i8;
                        modifier3 = modifier;
                    }
                    if (i4 != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        nl3Var7 = (nl3) objRememberedValue2;
                    } else {
                        nl3Var7 = nl3Var3;
                    }
                    if (i6 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                        i13 = i10;
                    } else {
                        i13 = i10;
                        topStart = alignment2;
                    }
                    if (i12 != 0) {
                        str3 = "AnimatedContent";
                    } else {
                        str3 = str;
                    }
                    if (i13 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var4 = (nl3) objRememberedValue;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                    }
                    Transition transitionUpdateTransition110 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                    int i111114 = i3 & 8176;
                    int i111115 = i3 >> 3;
                    AnimatedContent(transitionUpdateTransition110, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i111114 | (57344 & i111115) | (i111115 & 458752), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    str2 = str3;
                    modifier2 = modifier3;
                    nl3Var5 = nl3Var7;
                    alignment3 = topStart;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    str2 = str;
                    nl3Var5 = nl3Var3;
                    alignment3 = alignment2;
                }
                nl3Var6 = nl3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                }
            }
            i3 |= 3072;
            alignment2 = alignment;
            i8 = i2 & 16;
            if (i8 != 0) {
                if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changed(str)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 32;
                if (i10 != 0) {
                    if ((196608 & i) == 0) {
                        nl3Var4 = nl3Var2;
                        if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                            i11 = 131072;
                        } else {
                            i11 = 65536;
                        }
                        i3 |= i11;
                    }
                    if ((1572864 & i) == 0) {
                        fm3Var2 = fm3Var;
                        if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i3 |= i14;
                    } else {
                        fm3Var2 = fm3Var;
                    }
                    if ((i3 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i15 != 0) {
                            modifier3 = Modifier.Companion;
                            i12 = i8;
                        } else {
                            i12 = i8;
                            modifier3 = modifier;
                        }
                        if (i4 != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            nl3Var7 = (nl3) objRememberedValue2;
                        } else {
                            nl3Var7 = nl3Var3;
                        }
                        if (i6 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                            i13 = i10;
                        } else {
                            i13 = i10;
                            topStart = alignment2;
                        }
                        if (i12 != 0) {
                            str3 = "AnimatedContent";
                        } else {
                            str3 = str;
                        }
                        if (i13 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var4 = (nl3) objRememberedValue;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                        }
                        Transition transitionUpdateTransition111 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                        int i111116 = i3 & 8176;
                        int i111117 = i3 >> 3;
                        AnimatedContent(transitionUpdateTransition111, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i111116 | (57344 & i111117) | (i111117 & 458752), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        str2 = str3;
                        modifier2 = modifier3;
                        nl3Var5 = nl3Var7;
                        alignment3 = topStart;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        str2 = str;
                        nl3Var5 = nl3Var3;
                        alignment3 = alignment2;
                    }
                    nl3Var6 = nl3Var4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                nl3Var4 = nl3Var2;
                if ((1572864 & i) == 0) {
                    fm3Var2 = fm3Var;
                    if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i3 |= i14;
                } else {
                    fm3Var2 = fm3Var;
                }
                if ((i3 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                        i12 = i8;
                    } else {
                        i12 = i8;
                        modifier3 = modifier;
                    }
                    if (i4 != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        nl3Var7 = (nl3) objRememberedValue2;
                    } else {
                        nl3Var7 = nl3Var3;
                    }
                    if (i6 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                        i13 = i10;
                    } else {
                        i13 = i10;
                        topStart = alignment2;
                    }
                    if (i12 != 0) {
                        str3 = "AnimatedContent";
                    } else {
                        str3 = str;
                    }
                    if (i13 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var4 = (nl3) objRememberedValue;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                    }
                    Transition transitionUpdateTransition112 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                    int i111118 = i3 & 8176;
                    int i111119 = i3 >> 3;
                    AnimatedContent(transitionUpdateTransition112, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i111118 | (57344 & i111119) | (i111119 & 458752), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    str2 = str3;
                    modifier2 = modifier3;
                    nl3Var5 = nl3Var7;
                    alignment3 = topStart;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    str2 = str;
                    nl3Var5 = nl3Var3;
                    alignment3 = alignment2;
                }
                nl3Var6 = nl3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                }
            }
            i3 |= 24576;
            i10 = i2 & 32;
            if (i10 != 0) {
                if ((196608 & i) == 0) {
                    nl3Var4 = nl3Var2;
                    if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i3 |= i11;
                }
                if ((1572864 & i) == 0) {
                    fm3Var2 = fm3Var;
                    if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i3 |= i14;
                } else {
                    fm3Var2 = fm3Var;
                }
                if ((i3 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                        i12 = i8;
                    } else {
                        i12 = i8;
                        modifier3 = modifier;
                    }
                    if (i4 != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        nl3Var7 = (nl3) objRememberedValue2;
                    } else {
                        nl3Var7 = nl3Var3;
                    }
                    if (i6 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                        i13 = i10;
                    } else {
                        i13 = i10;
                        topStart = alignment2;
                    }
                    if (i12 != 0) {
                        str3 = "AnimatedContent";
                    } else {
                        str3 = str;
                    }
                    if (i13 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var4 = (nl3) objRememberedValue;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                    }
                    Transition transitionUpdateTransition113 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                    int i1111110 = i3 & 8176;
                    int i1111111 = i3 >> 3;
                    AnimatedContent(transitionUpdateTransition113, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i1111110 | (57344 & i1111111) | (i1111111 & 458752), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    str2 = str3;
                    modifier2 = modifier3;
                    nl3Var5 = nl3Var7;
                    alignment3 = topStart;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    str2 = str;
                    nl3Var5 = nl3Var3;
                    alignment3 = alignment2;
                }
                nl3Var6 = nl3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            nl3Var4 = nl3Var2;
            if ((1572864 & i) == 0) {
                fm3Var2 = fm3Var;
                if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                    i14 = 1048576;
                } else {
                    i14 = 524288;
                }
                i3 |= i14;
            } else {
                fm3Var2 = fm3Var;
            }
            if ((i3 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                    i12 = i8;
                } else {
                    i12 = i8;
                    modifier3 = modifier;
                }
                if (i4 != 0) {
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                        objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    nl3Var7 = (nl3) objRememberedValue2;
                } else {
                    nl3Var7 = nl3Var3;
                }
                if (i6 != 0) {
                    topStart = Alignment.Companion.getTopStart();
                    i13 = i10;
                } else {
                    i13 = i10;
                    topStart = alignment2;
                }
                if (i12 != 0) {
                    str3 = "AnimatedContent";
                } else {
                    str3 = str;
                }
                if (i13 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    nl3Var4 = (nl3) objRememberedValue;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                }
                Transition transitionUpdateTransition114 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                int i1111112 = i3 & 8176;
                int i1111113 = i3 >> 3;
                AnimatedContent(transitionUpdateTransition114, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i1111112 | (57344 & i1111113) | (i1111113 & 458752), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                str2 = str3;
                modifier2 = modifier3;
                nl3Var5 = nl3Var7;
                alignment3 = topStart;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier2 = modifier;
                str2 = str;
                nl3Var5 = nl3Var3;
                alignment3 = alignment2;
            }
            nl3Var6 = nl3Var4;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        nl3Var3 = nl3Var;
        i6 = i2 & 8;
        if (i6 != 0) {
            if ((i & 3072) == 0) {
                alignment2 = alignment;
                if (composerStartRestartGroup.changed(alignment2)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i3 |= i7;
            }
            i8 = i2 & 16;
            if (i8 != 0) {
                if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changed(str)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 32;
                if (i10 != 0) {
                    if ((196608 & i) == 0) {
                        nl3Var4 = nl3Var2;
                        if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                            i11 = 131072;
                        } else {
                            i11 = 65536;
                        }
                        i3 |= i11;
                    }
                    if ((1572864 & i) == 0) {
                        fm3Var2 = fm3Var;
                        if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i3 |= i14;
                    } else {
                        fm3Var2 = fm3Var;
                    }
                    if ((i3 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i15 != 0) {
                            modifier3 = Modifier.Companion;
                            i12 = i8;
                        } else {
                            i12 = i8;
                            modifier3 = modifier;
                        }
                        if (i4 != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            nl3Var7 = (nl3) objRememberedValue2;
                        } else {
                            nl3Var7 = nl3Var3;
                        }
                        if (i6 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                            i13 = i10;
                        } else {
                            i13 = i10;
                            topStart = alignment2;
                        }
                        if (i12 != 0) {
                            str3 = "AnimatedContent";
                        } else {
                            str3 = str;
                        }
                        if (i13 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var4 = (nl3) objRememberedValue;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                        }
                        Transition transitionUpdateTransition115 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                        int i1111114 = i3 & 8176;
                        int i1111115 = i3 >> 3;
                        AnimatedContent(transitionUpdateTransition115, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i1111114 | (57344 & i1111115) | (i1111115 & 458752), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        str2 = str3;
                        modifier2 = modifier3;
                        nl3Var5 = nl3Var7;
                        alignment3 = topStart;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        str2 = str;
                        nl3Var5 = nl3Var3;
                        alignment3 = alignment2;
                    }
                    nl3Var6 = nl3Var4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                nl3Var4 = nl3Var2;
                if ((1572864 & i) == 0) {
                    fm3Var2 = fm3Var;
                    if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i3 |= i14;
                } else {
                    fm3Var2 = fm3Var;
                }
                if ((i3 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                        i12 = i8;
                    } else {
                        i12 = i8;
                        modifier3 = modifier;
                    }
                    if (i4 != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        nl3Var7 = (nl3) objRememberedValue2;
                    } else {
                        nl3Var7 = nl3Var3;
                    }
                    if (i6 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                        i13 = i10;
                    } else {
                        i13 = i10;
                        topStart = alignment2;
                    }
                    if (i12 != 0) {
                        str3 = "AnimatedContent";
                    } else {
                        str3 = str;
                    }
                    if (i13 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var4 = (nl3) objRememberedValue;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                    }
                    Transition transitionUpdateTransition116 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                    int i1111116 = i3 & 8176;
                    int i1111117 = i3 >> 3;
                    AnimatedContent(transitionUpdateTransition116, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i1111116 | (57344 & i1111117) | (i1111117 & 458752), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    str2 = str3;
                    modifier2 = modifier3;
                    nl3Var5 = nl3Var7;
                    alignment3 = topStart;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    str2 = str;
                    nl3Var5 = nl3Var3;
                    alignment3 = alignment2;
                }
                nl3Var6 = nl3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                }
            }
            i3 |= 24576;
            i10 = i2 & 32;
            if (i10 != 0) {
                if ((196608 & i) == 0) {
                    nl3Var4 = nl3Var2;
                    if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i3 |= i11;
                }
                if ((1572864 & i) == 0) {
                    fm3Var2 = fm3Var;
                    if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i3 |= i14;
                } else {
                    fm3Var2 = fm3Var;
                }
                if ((i3 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                        i12 = i8;
                    } else {
                        i12 = i8;
                        modifier3 = modifier;
                    }
                    if (i4 != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        nl3Var7 = (nl3) objRememberedValue2;
                    } else {
                        nl3Var7 = nl3Var3;
                    }
                    if (i6 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                        i13 = i10;
                    } else {
                        i13 = i10;
                        topStart = alignment2;
                    }
                    if (i12 != 0) {
                        str3 = "AnimatedContent";
                    } else {
                        str3 = str;
                    }
                    if (i13 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var4 = (nl3) objRememberedValue;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                    }
                    Transition transitionUpdateTransition117 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                    int i1111118 = i3 & 8176;
                    int i1111119 = i3 >> 3;
                    AnimatedContent(transitionUpdateTransition117, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i1111118 | (57344 & i1111119) | (i1111119 & 458752), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    str2 = str3;
                    modifier2 = modifier3;
                    nl3Var5 = nl3Var7;
                    alignment3 = topStart;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    str2 = str;
                    nl3Var5 = nl3Var3;
                    alignment3 = alignment2;
                }
                nl3Var6 = nl3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            nl3Var4 = nl3Var2;
            if ((1572864 & i) == 0) {
                fm3Var2 = fm3Var;
                if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                    i14 = 1048576;
                } else {
                    i14 = 524288;
                }
                i3 |= i14;
            } else {
                fm3Var2 = fm3Var;
            }
            if ((i3 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                    i12 = i8;
                } else {
                    i12 = i8;
                    modifier3 = modifier;
                }
                if (i4 != 0) {
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                        objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    nl3Var7 = (nl3) objRememberedValue2;
                } else {
                    nl3Var7 = nl3Var3;
                }
                if (i6 != 0) {
                    topStart = Alignment.Companion.getTopStart();
                    i13 = i10;
                } else {
                    i13 = i10;
                    topStart = alignment2;
                }
                if (i12 != 0) {
                    str3 = "AnimatedContent";
                } else {
                    str3 = str;
                }
                if (i13 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    nl3Var4 = (nl3) objRememberedValue;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                }
                Transition transitionUpdateTransition118 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                int i11111110 = i3 & 8176;
                int i11111111 = i3 >> 3;
                AnimatedContent(transitionUpdateTransition118, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i11111110 | (57344 & i11111111) | (i11111111 & 458752), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                str2 = str3;
                modifier2 = modifier3;
                nl3Var5 = nl3Var7;
                alignment3 = topStart;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier2 = modifier;
                str2 = str;
                nl3Var5 = nl3Var3;
                alignment3 = alignment2;
            }
            nl3Var6 = nl3Var4;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
            }
        }
        i3 |= 3072;
        alignment2 = alignment;
        i8 = i2 & 16;
        if (i8 != 0) {
            if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changed(str)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i3 |= i9;
            }
            i10 = i2 & 32;
            if (i10 != 0) {
                if ((196608 & i) == 0) {
                    nl3Var4 = nl3Var2;
                    if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i3 |= i11;
                }
                if ((1572864 & i) == 0) {
                    fm3Var2 = fm3Var;
                    if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i3 |= i14;
                } else {
                    fm3Var2 = fm3Var;
                }
                if ((i3 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                        i12 = i8;
                    } else {
                        i12 = i8;
                        modifier3 = modifier;
                    }
                    if (i4 != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        nl3Var7 = (nl3) objRememberedValue2;
                    } else {
                        nl3Var7 = nl3Var3;
                    }
                    if (i6 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                        i13 = i10;
                    } else {
                        i13 = i10;
                        topStart = alignment2;
                    }
                    if (i12 != 0) {
                        str3 = "AnimatedContent";
                    } else {
                        str3 = str;
                    }
                    if (i13 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var4 = (nl3) objRememberedValue;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                    }
                    Transition transitionUpdateTransition119 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                    int i11111112 = i3 & 8176;
                    int i11111113 = i3 >> 3;
                    AnimatedContent(transitionUpdateTransition119, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i11111112 | (57344 & i11111113) | (i11111113 & 458752), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    str2 = str3;
                    modifier2 = modifier3;
                    nl3Var5 = nl3Var7;
                    alignment3 = topStart;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    str2 = str;
                    nl3Var5 = nl3Var3;
                    alignment3 = alignment2;
                }
                nl3Var6 = nl3Var4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            nl3Var4 = nl3Var2;
            if ((1572864 & i) == 0) {
                fm3Var2 = fm3Var;
                if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                    i14 = 1048576;
                } else {
                    i14 = 524288;
                }
                i3 |= i14;
            } else {
                fm3Var2 = fm3Var;
            }
            if ((i3 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                    i12 = i8;
                } else {
                    i12 = i8;
                    modifier3 = modifier;
                }
                if (i4 != 0) {
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                        objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    nl3Var7 = (nl3) objRememberedValue2;
                } else {
                    nl3Var7 = nl3Var3;
                }
                if (i6 != 0) {
                    topStart = Alignment.Companion.getTopStart();
                    i13 = i10;
                } else {
                    i13 = i10;
                    topStart = alignment2;
                }
                if (i12 != 0) {
                    str3 = "AnimatedContent";
                } else {
                    str3 = str;
                }
                if (i13 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    nl3Var4 = (nl3) objRememberedValue;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                }
                Transition transitionUpdateTransition1110 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                int i11111114 = i3 & 8176;
                int i11111115 = i3 >> 3;
                AnimatedContent(transitionUpdateTransition1110, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i11111114 | (57344 & i11111115) | (i11111115 & 458752), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                str2 = str3;
                modifier2 = modifier3;
                nl3Var5 = nl3Var7;
                alignment3 = topStart;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier2 = modifier;
                str2 = str;
                nl3Var5 = nl3Var3;
                alignment3 = alignment2;
            }
            nl3Var6 = nl3Var4;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
            }
        }
        i3 |= 24576;
        i10 = i2 & 32;
        if (i10 != 0) {
            if ((196608 & i) == 0) {
                nl3Var4 = nl3Var2;
                if (composerStartRestartGroup.changedInstance(nl3Var4)) {
                    i11 = 131072;
                } else {
                    i11 = 65536;
                }
                i3 |= i11;
            }
            if ((1572864 & i) == 0) {
                fm3Var2 = fm3Var;
                if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                    i14 = 1048576;
                } else {
                    i14 = 524288;
                }
                i3 |= i14;
            } else {
                fm3Var2 = fm3Var;
            }
            if ((i3 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                    i12 = i8;
                } else {
                    i12 = i8;
                    modifier3 = modifier;
                }
                if (i4 != 0) {
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                        objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    nl3Var7 = (nl3) objRememberedValue2;
                } else {
                    nl3Var7 = nl3Var3;
                }
                if (i6 != 0) {
                    topStart = Alignment.Companion.getTopStart();
                    i13 = i10;
                } else {
                    i13 = i10;
                    topStart = alignment2;
                }
                if (i12 != 0) {
                    str3 = "AnimatedContent";
                } else {
                    str3 = str;
                }
                if (i13 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    nl3Var4 = (nl3) objRememberedValue;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
                }
                Transition transitionUpdateTransition1111 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
                int i11111116 = i3 & 8176;
                int i11111117 = i3 >> 3;
                AnimatedContent(transitionUpdateTransition1111, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i11111116 | (57344 & i11111117) | (i11111117 & 458752), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                str2 = str3;
                modifier2 = modifier3;
                nl3Var5 = nl3Var7;
                alignment3 = topStart;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier2 = modifier;
                str2 = str;
                nl3Var5 = nl3Var3;
                alignment3 = alignment2;
            }
            nl3Var6 = nl3Var4;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        nl3Var4 = nl3Var2;
        if ((1572864 & i) == 0) {
            fm3Var2 = fm3Var;
            if (composerStartRestartGroup.changedInstance(fm3Var2)) {
                i14 = 1048576;
            } else {
                i14 = 524288;
            }
            i3 |= i14;
        } else {
            fm3Var2 = fm3Var;
        }
        if ((i3 & 599187) != 599186) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
            if (i15 != 0) {
                modifier3 = Modifier.Companion;
                i12 = i8;
            } else {
                i12 = i8;
                modifier3 = modifier;
            }
            if (i4 != 0) {
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                    objRememberedValue2 = AnimatedContentKt$AnimatedContent$1$1.INSTANCE;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                nl3Var7 = (nl3) objRememberedValue2;
            } else {
                nl3Var7 = nl3Var3;
            }
            if (i6 != 0) {
                topStart = Alignment.Companion.getTopStart();
                i13 = i10;
            } else {
                i13 = i10;
                topStart = alignment2;
            }
            if (i12 != 0) {
                str3 = "AnimatedContent";
            } else {
                str3 = str;
            }
            if (i13 != 0) {
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = AnimatedContentKt$AnimatedContent$2$1.INSTANCE;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                nl3Var4 = (nl3) objRememberedValue;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1501828832, i3, -1, "androidx.compose.animation.AnimatedContent (AnimatedContent.kt:140)");
            }
            Transition transitionUpdateTransition1112 = androidx.compose.animation.core.TransitionKt.updateTransition(s, str3, composerStartRestartGroup, (i3 & 14) | ((i3 >> 9) & 112), 0);
            int i11111118 = i3 & 8176;
            int i11111119 = i3 >> 3;
            AnimatedContent(transitionUpdateTransition1112, modifier3, nl3Var7, topStart, nl3Var4, fm3Var2, composerStartRestartGroup, i11111118 | (57344 & i11111119) | (i11111119 & 458752), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            str2 = str3;
            modifier2 = modifier3;
            nl3Var5 = nl3Var7;
            alignment3 = topStart;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier2 = modifier;
            str2 = str;
            nl3Var5 = nl3Var3;
            alignment3 = alignment2;
        }
        nl3Var6 = nl3Var4;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass3(s, modifier2, nl3Var5, alignment3, str2, nl3Var6, fm3Var, i, i2));
        }
    }
}
