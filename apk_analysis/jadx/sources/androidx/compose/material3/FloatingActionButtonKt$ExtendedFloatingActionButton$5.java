package androidx.compose.material3;

import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.util.MathHelpersKt;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.sc3;

/* JADX INFO: loaded from: classes2.dex */
public final class FloatingActionButtonKt$ExtendedFloatingActionButton$5 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ float $endPadding;
    final /* synthetic */ boolean $expanded;
    final /* synthetic */ bm3<Composer, Integer, j59> $icon;
    final /* synthetic */ float $iconPadding;
    final /* synthetic */ float $minHeight;
    final /* synthetic */ float $minWidth;
    final /* synthetic */ float $startPadding;
    final /* synthetic */ bm3<Composer, Integer, j59> $text;

    /* JADX WARN: Multi-variable type inference failed */
    public FloatingActionButtonKt$ExtendedFloatingActionButton$5(boolean z, float f, float f2, float f3, float f4, bm3<? super Composer, ? super Integer, j59> bm3Var, float f5, bm3<? super Composer, ? super Integer, j59> bm3Var2) {
        this.$expanded = z;
        this.$minWidth = f;
        this.$minHeight = f2;
        this.$startPadding = f3;
        this.$endPadding = f4;
        this.$icon = bm3Var;
        this.$iconPadding = f5;
        this.$text = bm3Var2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$12$lambda$10$lambda$9(State state, GraphicsLayerScope graphicsLayerScope) {
        graphicsLayerScope.setAlpha(((Number) state.getValue()).floatValue());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean invoke$lambda$12$lambda$6$lambda$5(Transition transition) {
        return ((Number) transition.getCurrentState()).floatValue() == 0.0f && !transition.isRunning();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$12$lambda$8$lambda$7(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult invoke$lambda$4$lambda$3(float f, State state, MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        int iLerp = MathHelpersKt.lerp(measureScope.mo1428roundToPx0680j_4(f), measurable.maxIntrinsicWidth(Constraints.m8994getMaxHeightimpl(constraints.m9001unboximpl())), ((Number) state.getValue()).floatValue());
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(constraints.m9001unboximpl());
        return MeasureScope.layout$default(measureScope, iLerp, placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: androidx.compose.material3.z1
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return FloatingActionButtonKt$ExtendedFloatingActionButton$5.invoke$lambda$4$lambda$3$lambda$2(placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$4$lambda$3$lambda$2(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:62:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:65:0x0219  */
    /* JADX WARN: Code duplicated, block: B:67:0x022b  */
    /* JADX WARN: Code duplicated, block: B:72:0x0249  */
    /* JADX WARN: Code duplicated, block: B:75:0x027a  */
    /* JADX WARN: Code duplicated, block: B:78:0x0286  */
    /* JADX WARN: Code duplicated, block: B:79:0x028a  */
    /* JADX WARN: Code duplicated, block: B:84:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:86:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:89:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:93:? A[RETURN, SYNTHETIC] */
    public final void invoke(Composer composer, int i) throws Throwable {
        Alignment.Companion companion;
        boolean zChanged;
        Object objRememberedValue;
        Object objRememberedValue2;
        Composer.Companion companion2;
        boolean zChanged2;
        Object objRememberedValue3;
        int currentCompositeKeyHash;
        ll3<ComposeUiNode> constructor;
        Composer composerM5355constructorimpl;
        bm3 bm3VarB;
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-827388388, i, -1, "androidx.compose.material3.ExtendedFloatingActionButton.<anonymous> (FloatingActionButton.kt:464)");
        }
        final Transition transitionUpdateTransition = TransitionKt.updateTransition(Float.valueOf(this.$expanded ? 1.0f : 0.0f), "expanded state", composer, 48, 0);
        final FiniteAnimationSpec finiteAnimationSpecValue = MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composer, 6);
        final FiniteAnimationSpec finiteAnimationSpecValue2 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composer, 6);
        dm3<Transition.Segment<Float>, Composer, Integer, FiniteAnimationSpec<Float>> dm3Var = new dm3<Transition.Segment<Float>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.material3.FloatingActionButtonKt$ExtendedFloatingActionButton$5$expandedWidthProgress$1
            public final FiniteAnimationSpec<Float> invoke(Transition.Segment<Float> segment, Composer composer2, int i2) {
                composer2.startReplaceGroup(-1114419602);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1114419602, i2, -1, "androidx.compose.material3.ExtendedFloatingActionButton.<anonymous>.<anonymous> (FloatingActionButton.kt:469)");
                }
                FiniteAnimationSpec<Float> finiteAnimationSpec = finiteAnimationSpecValue;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer2.endReplaceGroup();
                return finiteAnimationSpec;
            }

            @Override // defpackage.dm3
            public /* bridge */ /* synthetic */ FiniteAnimationSpec<Float> invoke(Transition.Segment<Float> segment, Composer composer2, Integer num) {
                return invoke(segment, composer2, num.intValue());
            }
        };
        sc3 sc3Var = sc3.a;
        TwoWayConverter<Float, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(sc3Var);
        float fFloatValue = ((Number) transitionUpdateTransition.getCurrentState()).floatValue();
        composer.startReplaceGroup(-157343033);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-157343033, 0, -1, "androidx.compose.material3.ExtendedFloatingActionButton.<anonymous>.<anonymous> (FloatingActionButton.kt:469)");
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        Float fValueOf = Float.valueOf(fFloatValue);
        float fFloatValue2 = ((Number) transitionUpdateTransition.getTargetState()).floatValue();
        composer.startReplaceGroup(-157343033);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-157343033, 0, -1, "androidx.compose.material3.ExtendedFloatingActionButton.<anonymous>.<anonymous> (FloatingActionButton.kt:469)");
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        final State stateCreateTransitionAnimation = TransitionKt.createTransitionAnimation(transitionUpdateTransition, fValueOf, Float.valueOf(fFloatValue2), dm3Var.invoke(transitionUpdateTransition.getSegment(), composer, 0), vectorConverter, "FloatAnimation", composer, 0);
        dm3<Transition.Segment<Float>, Composer, Integer, FiniteAnimationSpec<Float>> dm3Var2 = new dm3<Transition.Segment<Float>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.material3.FloatingActionButtonKt$ExtendedFloatingActionButton$5$expandedAlphaProgress$1
            public final FiniteAnimationSpec<Float> invoke(Transition.Segment<Float> segment, Composer composer2, int i2) {
                composer2.startReplaceGroup(-781713402);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-781713402, i2, -1, "androidx.compose.material3.ExtendedFloatingActionButton.<anonymous>.<anonymous> (FloatingActionButton.kt:471)");
                }
                FiniteAnimationSpec<Float> finiteAnimationSpec = finiteAnimationSpecValue2;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer2.endReplaceGroup();
                return finiteAnimationSpec;
            }

            @Override // defpackage.dm3
            public /* bridge */ /* synthetic */ FiniteAnimationSpec<Float> invoke(Transition.Segment<Float> segment, Composer composer2, Integer num) {
                return invoke(segment, composer2, num.intValue());
            }
        };
        TwoWayConverter<Float, AnimationVector1D> vectorConverter2 = VectorConvertersKt.getVectorConverter(sc3Var);
        float fFloatValue3 = ((Number) transitionUpdateTransition.getCurrentState()).floatValue();
        composer.startReplaceGroup(175363167);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(175363167, 0, -1, "androidx.compose.material3.ExtendedFloatingActionButton.<anonymous>.<anonymous> (FloatingActionButton.kt:471)");
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        Float fValueOf2 = Float.valueOf(fFloatValue3);
        float fFloatValue4 = ((Number) transitionUpdateTransition.getTargetState()).floatValue();
        composer.startReplaceGroup(175363167);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(175363167, 0, -1, "androidx.compose.material3.ExtendedFloatingActionButton.<anonymous>.<anonymous> (FloatingActionButton.kt:471)");
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        final State stateCreateTransitionAnimation2 = TransitionKt.createTransitionAnimation(transitionUpdateTransition, fValueOf2, Float.valueOf(fFloatValue4), dm3Var2.invoke(transitionUpdateTransition.getSegment(), composer, 0), vectorConverter2, "FloatAnimation", composer, 0);
        Modifier.Companion companion3 = Modifier.Companion;
        boolean zChanged3 = composer.changed(this.$minWidth) | composer.changed(stateCreateTransitionAnimation);
        final float f = this.$minWidth;
        Object objRememberedValue4 = composer.rememberedValue();
        if (zChanged3 || objRememberedValue4 == Composer.Companion.getEmpty()) {
            objRememberedValue4 = new dm3() { // from class: androidx.compose.material3.v1
                @Override // defpackage.dm3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return FloatingActionButtonKt$ExtendedFloatingActionButton$5.invoke$lambda$4$lambda$3(f, stateCreateTransitionAnimation, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                }
            };
            composer.updateRememberedValue(objRememberedValue4);
        }
        Modifier modifierM2037paddingqDBjuR0$default = PaddingKt.m2037paddingqDBjuR0$default(SizeKt.m2103sizeInqDBjuR0$default(LayoutModifierKt.layout(companion3, (dm3) objRememberedValue4), this.$minWidth, this.$minHeight, 0.0f, 0.0f, 12, null), this.$startPadding, 0.0f, this.$endPadding, 0.0f, 10, null);
        Alignment.Companion companion4 = Alignment.Companion;
        Alignment.Vertical centerVertically = companion4.getCenterVertically();
        bm3<Composer, Integer, j59> bm3Var = this.$icon;
        float f2 = this.$iconPadding;
        bm3<Composer, Integer, j59> bm3Var2 = this.$text;
        Arrangement arrangement = Arrangement.INSTANCE;
        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement.getStart(), centerVertically, composer, 48);
        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierM2037paddingqDBjuR0$default);
        ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
        ll3<ComposeUiNode> constructor2 = companion5.getConstructor();
        if (composer.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor2);
        } else {
            composer.useNode();
        }
        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer);
        bm3 bm3VarB2 = cc.b(companion5, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap);
        if (!composerM5355constructorimpl2.getInserting()) {
            companion = companion4;
            if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
            }
            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier, companion5.getSetModifier());
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            bm3Var.invoke(composer, 0);
            zChanged = composer.changed(transitionUpdateTransition);
            objRememberedValue = composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = SnapshotStateKt.derivedStateOf(new ll3() { // from class: androidx.compose.material3.w1
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return Boolean.valueOf(FloatingActionButtonKt$ExtendedFloatingActionButton$5.invoke$lambda$12$lambda$6$lambda$5(transitionUpdateTransition));
                    }
                });
                composer.updateRememberedValue(objRememberedValue);
            }
            if (((Boolean) ((State) objRememberedValue).getValue()).booleanValue()) {
                composer.startReplaceGroup(65953058);
                composer.endReplaceGroup();
            } else {
                composer.startReplaceGroup(65675329);
                objRememberedValue2 = composer.rememberedValue();
                companion2 = Composer.Companion;
                if (objRememberedValue2 == companion2.getEmpty()) {
                    objRememberedValue2 = new x1();
                    composer.updateRememberedValue(objRememberedValue2);
                }
                Modifier modifierClearAndSetSemantics = SemanticsModifierKt.clearAndSetSemantics(companion3, (nl3) objRememberedValue2);
                zChanged2 = composer.changed(stateCreateTransitionAnimation2);
                objRememberedValue3 = composer.rememberedValue();
                if (zChanged2 || objRememberedValue3 == companion2.getEmpty()) {
                    objRememberedValue3 = new nl3() { // from class: androidx.compose.material3.y1
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return FloatingActionButtonKt$ExtendedFloatingActionButton$5.invoke$lambda$12$lambda$10$lambda$9(stateCreateTransitionAnimation2, (GraphicsLayerScope) obj);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue3);
                }
                Modifier modifierGraphicsLayer = GraphicsLayerModifierKt.graphicsLayer(modifierClearAndSetSemantics, (nl3) objRememberedValue3);
                MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(arrangement.getStart(), companion.getTop(), composer, 0);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap2 = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer, modifierGraphicsLayer);
                constructor = companion5.getConstructor();
                if (composer.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor);
                } else {
                    composer.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composer);
                bm3VarB = cc.b(companion5, composerM5355constructorimpl, measurePolicyRowMeasurePolicy2, composerM5355constructorimpl, currentCompositionLocalMap2);
                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion5.getSetModifier());
                SpacerKt.Spacer(SizeKt.m2104width3ABfNKs(companion3, f2), composer, 0);
                bm3Var2.invoke(composer, 0);
                composer.endNode();
                composer.endReplaceGroup();
            }
            composer.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        companion = companion4;
        dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier, companion5.getSetModifier());
        RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
        bm3Var.invoke(composer, 0);
        zChanged = composer.changed(transitionUpdateTransition);
        objRememberedValue = composer.rememberedValue();
        if (zChanged) {
            objRememberedValue = SnapshotStateKt.derivedStateOf(new ll3() { // from class: androidx.compose.material3.w1
                @Override // defpackage.ll3
                public final Object invoke() {
                    return Boolean.valueOf(FloatingActionButtonKt$ExtendedFloatingActionButton$5.invoke$lambda$12$lambda$6$lambda$5(transitionUpdateTransition));
                }
            });
            composer.updateRememberedValue(objRememberedValue);
        } else {
            objRememberedValue = SnapshotStateKt.derivedStateOf(new ll3() { // from class: androidx.compose.material3.w1
                @Override // defpackage.ll3
                public final Object invoke() {
                    return Boolean.valueOf(FloatingActionButtonKt$ExtendedFloatingActionButton$5.invoke$lambda$12$lambda$6$lambda$5(transitionUpdateTransition));
                }
            });
            composer.updateRememberedValue(objRememberedValue);
        }
        if (((Boolean) ((State) objRememberedValue).getValue()).booleanValue()) {
            composer.startReplaceGroup(65675329);
            objRememberedValue2 = composer.rememberedValue();
            companion2 = Composer.Companion;
            if (objRememberedValue2 == companion2.getEmpty()) {
                objRememberedValue2 = new x1();
                composer.updateRememberedValue(objRememberedValue2);
            }
            Modifier modifierClearAndSetSemantics2 = SemanticsModifierKt.clearAndSetSemantics(companion3, (nl3) objRememberedValue2);
            zChanged2 = composer.changed(stateCreateTransitionAnimation2);
            objRememberedValue3 = composer.rememberedValue();
            if (zChanged2) {
                objRememberedValue3 = new nl3() { // from class: androidx.compose.material3.y1
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return FloatingActionButtonKt$ExtendedFloatingActionButton$5.invoke$lambda$12$lambda$10$lambda$9(stateCreateTransitionAnimation2, (GraphicsLayerScope) obj);
                    }
                };
                composer.updateRememberedValue(objRememberedValue3);
            } else {
                objRememberedValue3 = new nl3() { // from class: androidx.compose.material3.y1
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return FloatingActionButtonKt$ExtendedFloatingActionButton$5.invoke$lambda$12$lambda$10$lambda$9(stateCreateTransitionAnimation2, (GraphicsLayerScope) obj);
                    }
                };
                composer.updateRememberedValue(objRememberedValue3);
            }
            Modifier modifierGraphicsLayer2 = GraphicsLayerModifierKt.graphicsLayer(modifierClearAndSetSemantics2, (nl3) objRememberedValue3);
            MeasurePolicy measurePolicyRowMeasurePolicy3 = RowKt.rowMeasurePolicy(arrangement.getStart(), companion.getTop(), composer, 0);
            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
            CompositionLocalMap currentCompositionLocalMap3 = composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer, modifierGraphicsLayer2);
            constructor = companion5.getConstructor();
            if (composer.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composer.startReusableNode();
            if (composer.getInserting()) {
                composer.createNode(constructor);
            } else {
                composer.useNode();
            }
            composerM5355constructorimpl = Updater.m5355constructorimpl(composer);
            bm3VarB = cc.b(companion5, composerM5355constructorimpl, measurePolicyRowMeasurePolicy3, composerM5355constructorimpl, currentCompositionLocalMap3);
            if (composerM5355constructorimpl.getInserting()) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            } else {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier3, companion5.getSetModifier());
            SpacerKt.Spacer(SizeKt.m2104width3ABfNKs(companion3, f2), composer, 0);
            bm3Var2.invoke(composer, 0);
            composer.endNode();
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(65953058);
            composer.endReplaceGroup();
        }
        composer.endNode();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) throws Throwable {
        invoke(composer, num.intValue());
        return j59.a;
    }
}
