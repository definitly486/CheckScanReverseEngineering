package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.DefaultModalWideNavigationRailOverride;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MovableContentKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import defpackage.aa4;
import defpackage.av0;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.e02;
import defpackage.gx2;
import defpackage.j59;
import defpackage.kca;
import defpackage.l91;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.wh0;
import defpackage.x21;
import defpackage.x81;
import defpackage.xh2;
import defpackage.y22;
import defpackage.yh2;
import defpackage.zh2;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultModalWideNavigationRailOverride implements ModalWideNavigationRailOverride {
    public static final int $stable = 0;
    public static final DefaultModalWideNavigationRailOverride INSTANCE = new DefaultModalWideNavigationRailOverride();

    private DefaultModalWideNavigationRailOverride() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalWideNavigationRail$lambda$16$lambda$15(x81 x81Var, ModalWideNavigationRailOverrideScope modalWideNavigationRailOverrideScope) {
        x81Var.mo0trySendJP2dKIU(Boolean.valueOf(WideNavigationRailStateKt.isExpanded(modalWideNavigationRailOverrideScope.getState().getTargetValue())));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalWideNavigationRail$lambda$18$lambda$17(y22 y22Var, ModalWideNavigationRailOverrideScope modalWideNavigationRailOverrideScope) {
        av0.c(y22Var, null, null, new DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$4$1$1(modalWideNavigationRailOverrideScope, null), 3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalWideNavigationRail$lambda$20$lambda$19(y22 y22Var, Animatable animatable, float f) {
        av0.c(y22Var, null, null, new DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$5$1$1(animatable, f, null), 3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalWideNavigationRail$lambda$22$lambda$21(y22 y22Var, Animatable animatable) {
        av0.c(y22Var, null, null, new DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$6$1$1(animatable, null), 3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalWideNavigationRail$lambda$23(DefaultModalWideNavigationRailOverride defaultModalWideNavigationRailOverride, ModalWideNavigationRailOverrideScope modalWideNavigationRailOverrideScope, int i, Composer composer, int i2) {
        defaultModalWideNavigationRailOverride.ModalWideNavigationRail(modalWideNavigationRailOverrideScope, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean ModalWideNavigationRail$lambda$3$lambda$2(State state) {
        return ((Number) state.getValue()).floatValue() == 0.0f;
    }

    private static final boolean ModalWideNavigationRail$lambda$4(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean ModalWideNavigationRail$lambda$6$lambda$5(State state) {
        return ((Number) state.getValue()).floatValue() >= 0.3f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean ModalWideNavigationRail$lambda$7(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [cu0, e02, java.lang.Object, nl3] */
    /* JADX WARN: Type inference failed for: r4v6 */
    @Override // androidx.compose.material3.ModalWideNavigationRailOverride
    public void ModalWideNavigationRail(final ModalWideNavigationRailOverrideScope modalWideNavigationRailOverrideScope, Composer composer, final int i) {
        int i2;
        final ModalWideNavigationRailOverrideScope modalWideNavigationRailOverrideScope2;
        bm3<Composer, Integer, j59> content;
        int i3;
        ?? r4;
        int i4;
        int i5;
        Composer composerStartRestartGroup = composer.startRestartGroup(1751235721);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(modalWideNavigationRailOverrideScope) : composerStartRestartGroup.changedInstance(modalWideNavigationRailOverrideScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i6 = 0;
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1751235721, i2, -1, "androidx.compose.material3.DefaultModalWideNavigationRailOverride.ModalWideNavigationRail (WideNavigationRail.kt:503)");
            }
            if (modalWideNavigationRailOverrideScope.getShouldHideOnCollapse()) {
                composerStartRestartGroup.startReplaceGroup(95781714);
                composerStartRestartGroup.endReplaceGroup();
                content = modalWideNavigationRailOverrideScope.getContent();
            } else {
                composerStartRestartGroup.startReplaceGroup(95826602);
                boolean zChanged = composerStartRestartGroup.changed(modalWideNavigationRailOverrideScope.getContent());
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = MovableContentKt.movableContentOf(modalWideNavigationRailOverrideScope.getContent());
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                content = (bm3) objRememberedValue;
                composerStartRestartGroup.endReplaceGroup();
            }
            final bm3<Composer, Integer, j59> bm3Var = content;
            Density density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            int i7 = 6;
            FiniteAnimationSpec finiteAnimationSpecValue = MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultSpatial, composerStartRestartGroup, 6);
            boolean zChanged2 = composerStartRestartGroup.changed(modalWideNavigationRailOverrideScope.getState());
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChanged2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new ModalWideNavigationRailState(modalWideNavigationRailOverrideScope.getState(), density, finiteAnimationSpecValue);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            final ModalWideNavigationRailState modalWideNavigationRailState = (ModalWideNavigationRailState) objRememberedValue2;
            State<Float> stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(!WideNavigationRailStateKt.isExpanded(modalWideNavigationRailOverrideScope.getState().getTargetValue()) ? 0.0f : 1.0f, MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (objRememberedValue3 == companion.getEmpty()) {
                objRememberedValue3 = SnapshotStateKt.derivedStateOf(new xh2(stateAnimateFloatAsState, i6));
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            State state = (State) objRememberedValue3;
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue4 == companion.getEmpty()) {
                objRememberedValue4 = SnapshotStateKt.derivedStateOf(new kca(stateAnimateFloatAsState, i7));
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            final State state2 = (State) objRememberedValue4;
            int i8 = i2 & 14;
            boolean zChangedInstance = (i8 == 4 || ((i2 & 8) != 0 && composerStartRestartGroup.changedInstance(modalWideNavigationRailOverrideScope))) | composerStartRestartGroup.changedInstance(modalWideNavigationRailState);
            Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue5 == companion.getEmpty()) {
                objRememberedValue5 = new DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$animateToDismiss$1$1(modalWideNavigationRailOverrideScope, modalWideNavigationRailState, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            final nl3 nl3Var = (nl3) objRememberedValue5;
            boolean zChangedInstance2 = (i8 == 4 || ((i2 & 8) != 0 && composerStartRestartGroup.changedInstance(modalWideNavigationRailOverrideScope))) | composerStartRestartGroup.changedInstance(modalWideNavigationRailState);
            Object objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance2 || objRememberedValue6 == companion.getEmpty()) {
                objRememberedValue6 = new DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$settleToDismiss$1$1(modalWideNavigationRailOverrideScope, modalWideNavigationRailState, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            }
            final bm3 bm3Var2 = (bm3) objRememberedValue6;
            if (modalWideNavigationRailOverrideScope.getShouldHideOnCollapse() || !ModalWideNavigationRail$lambda$4(state)) {
                i3 = i8;
                r4 = 0;
                composerStartRestartGroup.startReplaceGroup(97788313);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(97400069);
                i3 = i8;
                r4 = 0;
                WideNavigationRailKt.WideNavigationRailLayout(modalWideNavigationRailOverrideScope.getModifier(), false, false, modalWideNavigationRailOverrideScope.getColors(), modalWideNavigationRailOverrideScope.getCollapsedShape(), modalWideNavigationRailOverrideScope.getHeader(), modalWideNavigationRailOverrideScope.getWindowInsets(), modalWideNavigationRailOverrideScope.getArrangement(), bm3Var, composerStartRestartGroup, 432);
                composerStartRestartGroup = composerStartRestartGroup;
                composerStartRestartGroup.endReplaceGroup();
            }
            Object objRememberedValue7 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue7 == companion.getEmpty()) {
                objRememberedValue7 = l91.a(-1, r4, r4, 6);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
            }
            x81 x81Var = (x81) objRememberedValue7;
            if (modalWideNavigationRailOverrideScope.getShouldHideOnCollapse()) {
                composerStartRestartGroup.startReplaceGroup(97908438);
                boolean zChangedInstance3 = composerStartRestartGroup.changedInstance(x81Var) | composerStartRestartGroup.changedInstance(modalWideNavigationRailState);
                Object objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance3 || objRememberedValue8 == companion.getEmpty()) {
                    objRememberedValue8 = new DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1(x81Var, modalWideNavigationRailState, r4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                }
                EffectsKt.LaunchedEffect(x81Var, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue8, composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(98341849);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ModalWideNavigationRail$lambda$4(state)) {
                modalWideNavigationRailOverrideScope2 = modalWideNavigationRailOverrideScope;
                composerStartRestartGroup.startReplaceGroup(101334713);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(98512256);
                if (modalWideNavigationRailOverrideScope.getShouldHideOnCollapse()) {
                    composerStartRestartGroup.startReplaceGroup(98809081);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(98472731);
                    Modifier modifierM1288backgroundbw27NRU = BackgroundKt.m1288backgroundbw27NRU(Modifier.Companion, modalWideNavigationRailOverrideScope.getColors().m4316getContainerColor0d7_KjU(), modalWideNavigationRailOverrideScope.getCollapsedShape());
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1288backgroundbw27NRU);
                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                    ll3<ComposeUiNode> constructor = companion2.getConstructor();
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
                    bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                    SpacerKt.Spacer(SizeKt.fillMaxHeight$default(SizeKt.m2106widthInVpY3zN4$default(modalWideNavigationRailOverrideScope.getModifier(), WideNavigationRailKt.CollapsedRailWidth, 0.0f, 2, r4), 0.0f, 1, r4), composerStartRestartGroup, 0);
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endReplaceGroup();
                }
                Object objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue9 == companion.getEmpty()) {
                    objRememberedValue9 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                }
                y22 y22Var = (y22) objRememberedValue9;
                Object objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue10 == companion.getEmpty()) {
                    objRememberedValue10 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, r4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                }
                final Animatable animatable = (Animatable) objRememberedValue10;
                Object objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue11 == companion.getEmpty()) {
                    objRememberedValue11 = new RailPredictiveBackState();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                }
                final RailPredictiveBackState railPredictiveBackState = (RailPredictiveBackState) objRememberedValue11;
                int i9 = i3;
                boolean zChangedInstance4 = composerStartRestartGroup.changedInstance(x81Var) | (i9 == 4 || ((i2 & 8) != 0 && composerStartRestartGroup.changedInstance(modalWideNavigationRailOverrideScope)));
                Object objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance4 || objRememberedValue12 == companion.getEmpty()) {
                    i4 = 0;
                    objRememberedValue12 = new yh2(i4, x81Var, modalWideNavigationRailOverrideScope);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                } else {
                    i4 = 0;
                }
                EffectsKt.SideEffect((ll3) objRememberedValue12, composerStartRestartGroup, i4);
                ModalWideNavigationRailProperties expandedProperties = modalWideNavigationRailOverrideScope.getExpandedProperties();
                boolean zChangedInstance5 = (i9 == 4 || ((i2 & 8) != 0 && composerStartRestartGroup.changedInstance(modalWideNavigationRailOverrideScope))) | composerStartRestartGroup.changedInstance(y22Var);
                Object objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance5 || objRememberedValue13 == companion.getEmpty()) {
                    objRememberedValue13 = new x21(1, y22Var, modalWideNavigationRailOverrideScope);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                }
                ll3 ll3Var = (ll3) objRememberedValue13;
                boolean zChangedInstance6 = composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
                Object objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance6 || objRememberedValue14 == companion.getEmpty()) {
                    objRememberedValue14 = new zh2(0, y22Var, animatable);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                }
                nl3 nl3Var2 = (nl3) objRememberedValue14;
                boolean zChangedInstance7 = composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
                Object objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance7 || objRememberedValue15 == companion.getEmpty()) {
                    i5 = 1;
                    objRememberedValue15 = new wh0(i5, y22Var, animatable);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                } else {
                    i5 = 1;
                }
                bm3<Composer, Integer, j59> bm3Var3 = new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DefaultModalWideNavigationRailOverride.ModalWideNavigationRail.7
                    public final void invoke(Composer composer2, int i10) {
                        boolean zModalWideNavigationRail$lambda$7;
                        if (!composer2.shouldExecute((i10 & 3) != 2, i10 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1345045690, i10, -1, "androidx.compose.material3.DefaultModalWideNavigationRailOverride.ModalWideNavigationRail.<anonymous> (WideNavigationRail.kt:600)");
                        }
                        Modifier modifierImePadding = WindowInsetsPadding_androidKt.imePadding(SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, null));
                        final ModalWideNavigationRailOverrideScope modalWideNavigationRailOverrideScope3 = modalWideNavigationRailOverrideScope;
                        ModalWideNavigationRailState modalWideNavigationRailState2 = modalWideNavigationRailState;
                        nl3<e02<? super j59>, Object> nl3Var3 = nl3Var;
                        Animatable<Float, AnimationVector1D> animatable2 = animatable;
                        RailPredictiveBackState railPredictiveBackState2 = railPredictiveBackState;
                        bm3<Float, e02<? super j59>, Object> bm3Var4 = bm3Var2;
                        bm3<Composer, Integer, j59> bm3Var5 = bm3Var;
                        State<Boolean> state3 = state2;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap2 = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer2, modifierImePadding);
                        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                        ll3<ComposeUiNode> constructor2 = companion3.getConstructor();
                        if (composer2.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composer2.startReusableNode();
                        if (composer2.getInserting()) {
                            composer2.createNode(constructor2);
                        } else {
                            composer2.useNode();
                        }
                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer2);
                        bm3 bm3VarB2 = cc.b(companion3, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl2, currentCompositionLocalMap2);
                        if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion3.getSetModifier());
                        BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                        if (modalWideNavigationRailOverrideScope3.getShouldHideOnCollapse()) {
                            zModalWideNavigationRail$lambda$7 = modalWideNavigationRailState2.getTargetValue() != WideNavigationRailValue.Collapsed;
                        } else {
                            zModalWideNavigationRail$lambda$7 = DefaultModalWideNavigationRailOverride.ModalWideNavigationRail$lambda$7(state3);
                        }
                        WideNavigationRailKt.m4326Scrim3JVO9M(modalWideNavigationRailOverrideScope3.getColors().m4320getModalScrimColor0d7_KjU(), nl3Var3, zModalWideNavigationRail$lambda$7, composer2, 0);
                        WideNavigationRailKt.m4325ModalWideNavigationRailContentpU6N4AM(modalWideNavigationRailOverrideScope3.getShouldHideOnCollapse() || DefaultModalWideNavigationRailOverride.ModalWideNavigationRail$lambda$7(state3), modalWideNavigationRailOverrideScope3.getShouldHideOnCollapse(), animatable2, railPredictiveBackState2, bm3Var4, modalWideNavigationRailOverrideScope3.getModifier(), modalWideNavigationRailState2, modalWideNavigationRailOverrideScope3.getColors(), modalWideNavigationRailOverrideScope3.getExpandedShape(), WideNavigationRailKt.ExpandedRailMaxWidth, ComposableLambdaKt.rememberComposableLambda(208840989, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$7$1$1
                            public final void invoke(Composer composer3, int i11) {
                                if (!composer3.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(208840989, i11, -1, "androidx.compose.material3.DefaultModalWideNavigationRailOverride.ModalWideNavigationRail.<anonymous>.<anonymous>.<anonymous> (WideNavigationRail.kt:626)");
                                }
                                Modifier modifierM2037paddingqDBjuR0$default = PaddingKt.m2037paddingqDBjuR0$default(Modifier.Companion, 0.0f, modalWideNavigationRailOverrideScope3.m3631getExpandedHeaderTopPaddingD9Ej5fM(), 0.0f, 0.0f, 13, null);
                                ModalWideNavigationRailOverrideScope modalWideNavigationRailOverrideScope4 = modalWideNavigationRailOverrideScope3;
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                                int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierM2037paddingqDBjuR0$default);
                                ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                if (composer3.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer3.startReusableNode();
                                if (composer3.getInserting()) {
                                    composer3.createNode(constructor3);
                                } else {
                                    composer3.useNode();
                                }
                                Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy3, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                    dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                                bm3<Composer, Integer, j59> header = modalWideNavigationRailOverrideScope4.getHeader();
                                if (header == null) {
                                    composer3.startReplaceGroup(-1627801290);
                                } else {
                                    composer3.startReplaceGroup(-2130719701);
                                    header.invoke(composer3, 0);
                                }
                                composer3.endReplaceGroup();
                                composer3.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composer2, 54), modalWideNavigationRailOverrideScope3.getWindowInsets(), modalWideNavigationRailOverrideScope3.getShouldHideOnCollapse(), modalWideNavigationRailOverrideScope3.getArrangement(), bm3Var5, composer2, (Animatable.$stable << 6) | 805309440, 6);
                        composer2.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                };
                modalWideNavigationRailOverrideScope2 = modalWideNavigationRailOverrideScope;
                WideNavigationRail_androidKt.ModalWideNavigationRailDialog(ll3Var, expandedProperties, nl3Var2, (ll3) objRememberedValue15, railPredictiveBackState, ComposableLambdaKt.rememberComposableLambda(1345045690, i5, bm3Var3, composerStartRestartGroup, 54), composerStartRestartGroup, 221184);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            modalWideNavigationRailOverrideScope2 = modalWideNavigationRailOverrideScope;
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ai2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DefaultModalWideNavigationRailOverride.ModalWideNavigationRail$lambda$23(this.b, modalWideNavigationRailOverrideScope2, i, (Composer) obj, iIntValue);
                }
            });
        }
    }
}
