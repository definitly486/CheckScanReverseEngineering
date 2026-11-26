package androidx.compose.animation;

import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.gh4;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.sc3;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class EnterExitTransitionKt {
    private static final TwoWayConverter<TransformOrigin, AnimationVector2D> TransformOriginVectorConverter = VectorConvertersKt.TwoWayConverter(EnterExitTransitionKt$TransformOriginVectorConverter$1.INSTANCE, EnterExitTransitionKt$TransformOriginVectorConverter$2.INSTANCE);
    private static final SpringSpec<Float> DefaultAlphaAndScaleSpring = AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null);
    private static final SpringSpec<Color> DefaultColorAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null);
    private static final SpringSpec<IntOffset> DefaultOffsetAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntOffset.m9161boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 1, null);
    private static final SpringSpec<IntSize> DefaultSizeAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntSize.m9205boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 1, null);

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$expandHorizontally$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements nl3<IntSize, IntSize> {
        final /* synthetic */ nl3<Integer, Integer> $initialWidth;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(nl3<? super Integer, Integer> nl3Var) {
            super(1);
            this.$initialWidth = nl3Var;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ IntSize invoke(IntSize intSize) {
            return IntSize.m9205boximpl(m1102invokemzRDjE0(intSize.m9217unboximpl()));
        }

        /* JADX INFO: renamed from: invoke-mzRDjE0, reason: not valid java name */
        public final long m1102invokemzRDjE0(long j) {
            return IntSize.m9208constructorimpl((((long) ((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) this.$initialWidth.invoke(Integer.valueOf((int) (j >> 32))).intValue()) << 32));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$expandIn$1, reason: invalid class name and case insensitive filesystem */
    public static final class C04311 extends gh4 implements nl3<IntSize, IntSize> {
        public static final C04311 INSTANCE = new C04311();

        public C04311() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ IntSize invoke(IntSize intSize) {
            return IntSize.m9205boximpl(m1103invokemzRDjE0(intSize.m9217unboximpl()));
        }

        /* JADX INFO: renamed from: invoke-mzRDjE0, reason: not valid java name */
        public final long m1103invokemzRDjE0(long j) {
            return IntSize.m9208constructorimpl(0L);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$expandVertically$2, reason: invalid class name and case insensitive filesystem */
    public static final class C04332 extends gh4 implements nl3<IntSize, IntSize> {
        final /* synthetic */ nl3<Integer, Integer> $initialHeight;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04332(nl3<? super Integer, Integer> nl3Var) {
            super(1);
            this.$initialHeight = nl3Var;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ IntSize invoke(IntSize intSize) {
            return IntSize.m9205boximpl(m1104invokemzRDjE0(intSize.m9217unboximpl()));
        }

        /* JADX INFO: renamed from: invoke-mzRDjE0, reason: not valid java name */
        public final long m1104invokemzRDjE0(long j) {
            return IntSize.m9208constructorimpl((((long) ((int) (j >> 32))) << 32) | (((long) this.$initialHeight.invoke(Integer.valueOf((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))).intValue()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$shrinkHorizontally$2, reason: invalid class name and case insensitive filesystem */
    public static final class C04352 extends gh4 implements nl3<IntSize, IntSize> {
        final /* synthetic */ nl3<Integer, Integer> $targetWidth;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04352(nl3<? super Integer, Integer> nl3Var) {
            super(1);
            this.$targetWidth = nl3Var;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ IntSize invoke(IntSize intSize) {
            return IntSize.m9205boximpl(m1105invokemzRDjE0(intSize.m9217unboximpl()));
        }

        /* JADX INFO: renamed from: invoke-mzRDjE0, reason: not valid java name */
        public final long m1105invokemzRDjE0(long j) {
            return IntSize.m9208constructorimpl((((long) ((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) this.$targetWidth.invoke(Integer.valueOf((int) (j >> 32))).intValue()) << 32));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$shrinkOut$1, reason: invalid class name and case insensitive filesystem */
    public static final class C04361 extends gh4 implements nl3<IntSize, IntSize> {
        public static final C04361 INSTANCE = new C04361();

        public C04361() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ IntSize invoke(IntSize intSize) {
            return IntSize.m9205boximpl(m1106invokemzRDjE0(intSize.m9217unboximpl()));
        }

        /* JADX INFO: renamed from: invoke-mzRDjE0, reason: not valid java name */
        public final long m1106invokemzRDjE0(long j) {
            return IntSize.m9208constructorimpl(0L);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$shrinkVertically$2, reason: invalid class name and case insensitive filesystem */
    public static final class C04382 extends gh4 implements nl3<IntSize, IntSize> {
        final /* synthetic */ nl3<Integer, Integer> $targetHeight;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04382(nl3<? super Integer, Integer> nl3Var) {
            super(1);
            this.$targetHeight = nl3Var;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ IntSize invoke(IntSize intSize) {
            return IntSize.m9205boximpl(m1107invokemzRDjE0(intSize.m9217unboximpl()));
        }

        /* JADX INFO: renamed from: invoke-mzRDjE0, reason: not valid java name */
        public final long m1107invokemzRDjE0(long j) {
            return IntSize.m9208constructorimpl((((long) ((int) (j >> 32))) << 32) | (((long) this.$targetHeight.invoke(Integer.valueOf((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))).intValue()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$slideInHorizontally$2, reason: invalid class name and case insensitive filesystem */
    public static final class C04402 extends gh4 implements nl3<IntSize, IntOffset> {
        final /* synthetic */ nl3<Integer, Integer> $initialOffsetX;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04402(nl3<? super Integer, Integer> nl3Var) {
            super(1);
            this.$initialOffsetX = nl3Var;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ IntOffset invoke(IntSize intSize) {
            return IntOffset.m9161boximpl(m1108invokemHKZG7I(intSize.m9217unboximpl()));
        }

        /* JADX INFO: renamed from: invoke-mHKZG7I, reason: not valid java name */
        public final long m1108invokemHKZG7I(long j) {
            return IntOffset.m9164constructorimpl(((long) this.$initialOffsetX.invoke(Integer.valueOf((int) (j >> 32))).intValue()) << 32);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$slideInVertically$2, reason: invalid class name and case insensitive filesystem */
    public static final class C04422 extends gh4 implements nl3<IntSize, IntOffset> {
        final /* synthetic */ nl3<Integer, Integer> $initialOffsetY;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04422(nl3<? super Integer, Integer> nl3Var) {
            super(1);
            this.$initialOffsetY = nl3Var;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ IntOffset invoke(IntSize intSize) {
            return IntOffset.m9161boximpl(m1109invokemHKZG7I(intSize.m9217unboximpl()));
        }

        /* JADX INFO: renamed from: invoke-mHKZG7I, reason: not valid java name */
        public final long m1109invokemHKZG7I(long j) {
            return IntOffset.m9164constructorimpl(((long) this.$initialOffsetY.invoke(Integer.valueOf((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))).intValue()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$slideOutHorizontally$2, reason: invalid class name and case insensitive filesystem */
    public static final class C04442 extends gh4 implements nl3<IntSize, IntOffset> {
        final /* synthetic */ nl3<Integer, Integer> $targetOffsetX;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04442(nl3<? super Integer, Integer> nl3Var) {
            super(1);
            this.$targetOffsetX = nl3Var;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ IntOffset invoke(IntSize intSize) {
            return IntOffset.m9161boximpl(m1110invokemHKZG7I(intSize.m9217unboximpl()));
        }

        /* JADX INFO: renamed from: invoke-mHKZG7I, reason: not valid java name */
        public final long m1110invokemHKZG7I(long j) {
            return IntOffset.m9164constructorimpl(((long) this.$targetOffsetX.invoke(Integer.valueOf((int) (j >> 32))).intValue()) << 32);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$slideOutVertically$2, reason: invalid class name and case insensitive filesystem */
    public static final class C04462 extends gh4 implements nl3<IntSize, IntOffset> {
        final /* synthetic */ nl3<Integer, Integer> $targetOffsetY;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04462(nl3<? super Integer, Integer> nl3Var) {
            super(1);
            this.$targetOffsetY = nl3Var;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ IntOffset invoke(IntSize intSize) {
            return IntOffset.m9161boximpl(m1111invokemHKZG7I(intSize.m9217unboximpl()));
        }

        /* JADX INFO: renamed from: invoke-mHKZG7I, reason: not valid java name */
        public final long m1111invokemHKZG7I(long j) {
            return IntOffset.m9164constructorimpl(((long) this.$targetOffsetY.invoke(Integer.valueOf((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))).intValue()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x011c A[PHI: r1
      0x011c: PHI (r1v11 androidx.compose.animation.EnterTransition) = (r1v9 androidx.compose.animation.EnterTransition), (r1v12 androidx.compose.animation.EnterTransition) binds: [B:42:0x011a, B:38:0x0113] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:47:0x0128  */
    /* JADX WARN: Code duplicated, block: B:50:0x0131  */
    /* JADX WARN: Code duplicated, block: B:53:0x0137 A[PHI: r2
      0x0137: PHI (r2v10 androidx.compose.animation.ExitTransition) = (r2v8 androidx.compose.animation.ExitTransition), (r2v11 androidx.compose.animation.ExitTransition) binds: [B:52:0x0135, B:48:0x012e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:54:0x0139  */
    /* JADX WARN: Code duplicated, block: B:57:0x0147  */
    /* JADX WARN: Code duplicated, block: B:60:0x0150  */
    /* JADX WARN: Code duplicated, block: B:64:0x0157  */
    /* JADX WARN: Code duplicated, block: B:67:0x0164  */
    /* JADX WARN: Code duplicated, block: B:69:0x016c  */
    /* JADX WARN: Code duplicated, block: B:72:0x0185  */
    private static final GraphicsLayerBlockForEnterExit createGraphicsLayerBlock(Transition<EnterExitState> transition, EnterTransition enterTransition, ExitTransition exitTransition, String str, Composer composer, int i) {
        final Transition.DeferredAnimation deferredAnimation;
        final Transition.DeferredAnimation deferredAnimation2;
        EnterTransition enterTransition2;
        boolean z;
        ExitTransition exitTransition2;
        boolean z2;
        Transition<EnterExitState> transition2;
        boolean zChangedInstance;
        Object objRememberedValue;
        Composer composer2 = composer;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(642253525, i, -1, "androidx.compose.animation.createGraphicsLayerBlock (EnterExitTransition.kt:1052)");
        }
        boolean z3 = true;
        boolean z4 = (enterTransition.getData$animation().getFade() == null && exitTransition.getData$animation().getFade() == null) ? false : true;
        boolean z5 = (enterTransition.getData$animation().getScale() == null && exitTransition.getData$animation().getScale() == null) ? false : true;
        sc3 sc3Var = sc3.a;
        Transition.DeferredAnimation deferredAnimationCreateDeferredAnimation = null;
        if (z4) {
            composer2.startReplaceGroup(-703879421);
            TwoWayConverter<Float, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(sc3Var);
            Object objRememberedValue2 = composer2.rememberedValue();
            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = str + " alpha";
                composer2.updateRememberedValue(objRememberedValue2);
            }
            Transition.DeferredAnimation deferredAnimationCreateDeferredAnimation2 = androidx.compose.animation.core.TransitionKt.createDeferredAnimation(transition, vectorConverter, (String) objRememberedValue2, composer2, (i & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
            composer2 = composer2;
            composer2.endReplaceGroup();
            deferredAnimation = deferredAnimationCreateDeferredAnimation2;
        } else {
            composer2.startReplaceGroup(-703709976);
            composer2.endReplaceGroup();
            deferredAnimation = null;
        }
        if (z5) {
            composer2.startReplaceGroup(-703642333);
            TwoWayConverter<Float, AnimationVector1D> vectorConverter2 = VectorConvertersKt.getVectorConverter(sc3Var);
            Object objRememberedValue3 = composer2.rememberedValue();
            if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                objRememberedValue3 = str + " scale";
                composer2.updateRememberedValue(objRememberedValue3);
            }
            Transition.DeferredAnimation deferredAnimationCreateDeferredAnimation3 = androidx.compose.animation.core.TransitionKt.createDeferredAnimation(transition, vectorConverter2, (String) objRememberedValue3, composer2, (i & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
            composer2.endReplaceGroup();
            deferredAnimation2 = deferredAnimationCreateDeferredAnimation3;
        } else {
            composer2.startReplaceGroup(-703472888);
            composer2.endReplaceGroup();
            deferredAnimation2 = null;
        }
        if (z5) {
            composer2.startReplaceGroup(-703395232);
            deferredAnimationCreateDeferredAnimation = androidx.compose.animation.core.TransitionKt.createDeferredAnimation(transition, TransformOriginVectorConverter, "TransformOriginInterruptionHandling", composer2, (i & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
            composer2.endReplaceGroup();
        } else {
            composer2.startReplaceGroup(-703222904);
            composer2.endReplaceGroup();
        }
        boolean zChangedInstance2 = composer2.changedInstance(deferredAnimation);
        if (((i & 112) ^ 48) > 32) {
            enterTransition2 = enterTransition;
            if (composer2.changed(enterTransition2)) {
                z = true;
            }
            boolean z6 = zChangedInstance2 | z;
            if (((i & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
                exitTransition2 = exitTransition;
                if (!composer2.changed(exitTransition2)) {
                    z2 = true;
                }
                boolean zChangedInstance3 = z6 | z2 | composer2.changedInstance(deferredAnimation2);
                if (((i & 14) ^ 6) > 4) {
                    transition2 = transition;
                    if (!composer2.changed(transition2)) {
                    }
                    zChangedInstance = zChangedInstance3 | z3 | composer2.changedInstance(deferredAnimationCreateDeferredAnimation);
                    objRememberedValue = composer2.rememberedValue();
                    if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                        final EnterTransition enterTransition3 = enterTransition2;
                        final ExitTransition exitTransition3 = exitTransition2;
                        final Transition<EnterExitState> transition3 = transition2;
                        final Transition.DeferredAnimation deferredAnimation3 = deferredAnimationCreateDeferredAnimation;
                        GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit = new GraphicsLayerBlockForEnterExit() { // from class: c03
                            @Override // androidx.compose.animation.GraphicsLayerBlockForEnterExit
                            public final nl3 init() {
                                return EnterExitTransitionKt.createGraphicsLayerBlock$lambda$2$0(deferredAnimation, deferredAnimation2, transition3, enterTransition3, exitTransition3, deferredAnimation3);
                            }
                        };
                        composer2.updateRememberedValue(graphicsLayerBlockForEnterExit);
                        objRememberedValue = graphicsLayerBlockForEnterExit;
                    }
                    GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit2 = (GraphicsLayerBlockForEnterExit) objRememberedValue;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    return graphicsLayerBlockForEnterExit2;
                }
                transition2 = transition;
                if ((i & 6) != 4) {
                    z3 = false;
                }
                zChangedInstance = zChangedInstance3 | z3 | composer2.changedInstance(deferredAnimationCreateDeferredAnimation);
                objRememberedValue = composer2.rememberedValue();
                if (zChangedInstance) {
                    final EnterTransition enterTransition4 = enterTransition2;
                    final ExitTransition exitTransition4 = exitTransition2;
                    final Transition transition4 = transition2;
                    final Transition.DeferredAnimation deferredAnimation4 = deferredAnimationCreateDeferredAnimation;
                    GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit3 = new GraphicsLayerBlockForEnterExit() { // from class: c03
                        @Override // androidx.compose.animation.GraphicsLayerBlockForEnterExit
                        public final nl3 init() {
                            return EnterExitTransitionKt.createGraphicsLayerBlock$lambda$2$0(deferredAnimation, deferredAnimation2, transition4, enterTransition4, exitTransition4, deferredAnimation4);
                        }
                    };
                    composer2.updateRememberedValue(graphicsLayerBlockForEnterExit3);
                    objRememberedValue = graphicsLayerBlockForEnterExit3;
                } else {
                    final EnterTransition enterTransition5 = enterTransition2;
                    final ExitTransition exitTransition5 = exitTransition2;
                    final Transition transition5 = transition2;
                    final Transition.DeferredAnimation deferredAnimation5 = deferredAnimationCreateDeferredAnimation;
                    GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit4 = new GraphicsLayerBlockForEnterExit() { // from class: c03
                        @Override // androidx.compose.animation.GraphicsLayerBlockForEnterExit
                        public final nl3 init() {
                            return EnterExitTransitionKt.createGraphicsLayerBlock$lambda$2$0(deferredAnimation, deferredAnimation2, transition5, enterTransition5, exitTransition5, deferredAnimation5);
                        }
                    };
                    composer2.updateRememberedValue(graphicsLayerBlockForEnterExit4);
                    objRememberedValue = graphicsLayerBlockForEnterExit4;
                }
                GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit5 = (GraphicsLayerBlockForEnterExit) objRememberedValue;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                return graphicsLayerBlockForEnterExit5;
            }
            exitTransition2 = exitTransition;
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
                z2 = true;
            } else {
                z2 = false;
            }
            boolean zChangedInstance4 = z6 | z2 | composer2.changedInstance(deferredAnimation2);
            if (((i & 14) ^ 6) > 4) {
                transition2 = transition;
                if (!composer2.changed(transition2)) {
                }
                zChangedInstance = zChangedInstance4 | z3 | composer2.changedInstance(deferredAnimationCreateDeferredAnimation);
                objRememberedValue = composer2.rememberedValue();
                if (zChangedInstance) {
                    final EnterTransition enterTransition6 = enterTransition2;
                    final ExitTransition exitTransition6 = exitTransition2;
                    final Transition transition6 = transition2;
                    final Transition.DeferredAnimation deferredAnimation6 = deferredAnimationCreateDeferredAnimation;
                    GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit6 = new GraphicsLayerBlockForEnterExit() { // from class: c03
                        @Override // androidx.compose.animation.GraphicsLayerBlockForEnterExit
                        public final nl3 init() {
                            return EnterExitTransitionKt.createGraphicsLayerBlock$lambda$2$0(deferredAnimation, deferredAnimation2, transition6, enterTransition6, exitTransition6, deferredAnimation6);
                        }
                    };
                    composer2.updateRememberedValue(graphicsLayerBlockForEnterExit6);
                    objRememberedValue = graphicsLayerBlockForEnterExit6;
                } else {
                    final EnterTransition enterTransition7 = enterTransition2;
                    final ExitTransition exitTransition7 = exitTransition2;
                    final Transition transition7 = transition2;
                    final Transition.DeferredAnimation deferredAnimation7 = deferredAnimationCreateDeferredAnimation;
                    GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit7 = new GraphicsLayerBlockForEnterExit() { // from class: c03
                        @Override // androidx.compose.animation.GraphicsLayerBlockForEnterExit
                        public final nl3 init() {
                            return EnterExitTransitionKt.createGraphicsLayerBlock$lambda$2$0(deferredAnimation, deferredAnimation2, transition7, enterTransition7, exitTransition7, deferredAnimation7);
                        }
                    };
                    composer2.updateRememberedValue(graphicsLayerBlockForEnterExit7);
                    objRememberedValue = graphicsLayerBlockForEnterExit7;
                }
                GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit8 = (GraphicsLayerBlockForEnterExit) objRememberedValue;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                return graphicsLayerBlockForEnterExit8;
            }
            transition2 = transition;
            if ((i & 6) != 4) {
                z3 = false;
            }
            zChangedInstance = zChangedInstance4 | z3 | composer2.changedInstance(deferredAnimationCreateDeferredAnimation);
            objRememberedValue = composer2.rememberedValue();
            if (zChangedInstance) {
                final EnterTransition enterTransition8 = enterTransition2;
                final ExitTransition exitTransition8 = exitTransition2;
                final Transition transition8 = transition2;
                final Transition.DeferredAnimation deferredAnimation8 = deferredAnimationCreateDeferredAnimation;
                GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit9 = new GraphicsLayerBlockForEnterExit() { // from class: c03
                    @Override // androidx.compose.animation.GraphicsLayerBlockForEnterExit
                    public final nl3 init() {
                        return EnterExitTransitionKt.createGraphicsLayerBlock$lambda$2$0(deferredAnimation, deferredAnimation2, transition8, enterTransition8, exitTransition8, deferredAnimation8);
                    }
                };
                composer2.updateRememberedValue(graphicsLayerBlockForEnterExit9);
                objRememberedValue = graphicsLayerBlockForEnterExit9;
            } else {
                final EnterTransition enterTransition9 = enterTransition2;
                final ExitTransition exitTransition9 = exitTransition2;
                final Transition transition9 = transition2;
                final Transition.DeferredAnimation deferredAnimation9 = deferredAnimationCreateDeferredAnimation;
                GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit10 = new GraphicsLayerBlockForEnterExit() { // from class: c03
                    @Override // androidx.compose.animation.GraphicsLayerBlockForEnterExit
                    public final nl3 init() {
                        return EnterExitTransitionKt.createGraphicsLayerBlock$lambda$2$0(deferredAnimation, deferredAnimation2, transition9, enterTransition9, exitTransition9, deferredAnimation9);
                    }
                };
                composer2.updateRememberedValue(graphicsLayerBlockForEnterExit10);
                objRememberedValue = graphicsLayerBlockForEnterExit10;
            }
            GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit11 = (GraphicsLayerBlockForEnterExit) objRememberedValue;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            return graphicsLayerBlockForEnterExit11;
        }
        enterTransition2 = enterTransition;
        if ((i & 48) == 32) {
            z = true;
        } else {
            z = false;
        }
        boolean z7 = zChangedInstance2 | z;
        if (((i & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
            exitTransition2 = exitTransition;
            if (!composer2.changed(exitTransition2)) {
                z2 = true;
            }
            boolean zChangedInstance5 = z7 | z2 | composer2.changedInstance(deferredAnimation2);
            if (((i & 14) ^ 6) > 4) {
                transition2 = transition;
                if (!composer2.changed(transition2)) {
                }
                zChangedInstance = zChangedInstance5 | z3 | composer2.changedInstance(deferredAnimationCreateDeferredAnimation);
                objRememberedValue = composer2.rememberedValue();
                if (zChangedInstance) {
                    final EnterTransition enterTransition10 = enterTransition2;
                    final ExitTransition exitTransition10 = exitTransition2;
                    final Transition transition10 = transition2;
                    final Transition.DeferredAnimation deferredAnimation10 = deferredAnimationCreateDeferredAnimation;
                    GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit12 = new GraphicsLayerBlockForEnterExit() { // from class: c03
                        @Override // androidx.compose.animation.GraphicsLayerBlockForEnterExit
                        public final nl3 init() {
                            return EnterExitTransitionKt.createGraphicsLayerBlock$lambda$2$0(deferredAnimation, deferredAnimation2, transition10, enterTransition10, exitTransition10, deferredAnimation10);
                        }
                    };
                    composer2.updateRememberedValue(graphicsLayerBlockForEnterExit12);
                    objRememberedValue = graphicsLayerBlockForEnterExit12;
                } else {
                    final EnterTransition enterTransition11 = enterTransition2;
                    final ExitTransition exitTransition11 = exitTransition2;
                    final Transition transition11 = transition2;
                    final Transition.DeferredAnimation deferredAnimation11 = deferredAnimationCreateDeferredAnimation;
                    GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit13 = new GraphicsLayerBlockForEnterExit() { // from class: c03
                        @Override // androidx.compose.animation.GraphicsLayerBlockForEnterExit
                        public final nl3 init() {
                            return EnterExitTransitionKt.createGraphicsLayerBlock$lambda$2$0(deferredAnimation, deferredAnimation2, transition11, enterTransition11, exitTransition11, deferredAnimation11);
                        }
                    };
                    composer2.updateRememberedValue(graphicsLayerBlockForEnterExit13);
                    objRememberedValue = graphicsLayerBlockForEnterExit13;
                }
                GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit14 = (GraphicsLayerBlockForEnterExit) objRememberedValue;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                return graphicsLayerBlockForEnterExit14;
            }
            transition2 = transition;
            if ((i & 6) != 4) {
                z3 = false;
            }
            zChangedInstance = zChangedInstance5 | z3 | composer2.changedInstance(deferredAnimationCreateDeferredAnimation);
            objRememberedValue = composer2.rememberedValue();
            if (zChangedInstance) {
                final EnterTransition enterTransition12 = enterTransition2;
                final ExitTransition exitTransition12 = exitTransition2;
                final Transition transition12 = transition2;
                final Transition.DeferredAnimation deferredAnimation12 = deferredAnimationCreateDeferredAnimation;
                GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit15 = new GraphicsLayerBlockForEnterExit() { // from class: c03
                    @Override // androidx.compose.animation.GraphicsLayerBlockForEnterExit
                    public final nl3 init() {
                        return EnterExitTransitionKt.createGraphicsLayerBlock$lambda$2$0(deferredAnimation, deferredAnimation2, transition12, enterTransition12, exitTransition12, deferredAnimation12);
                    }
                };
                composer2.updateRememberedValue(graphicsLayerBlockForEnterExit15);
                objRememberedValue = graphicsLayerBlockForEnterExit15;
            } else {
                final EnterTransition enterTransition13 = enterTransition2;
                final ExitTransition exitTransition13 = exitTransition2;
                final Transition transition13 = transition2;
                final Transition.DeferredAnimation deferredAnimation13 = deferredAnimationCreateDeferredAnimation;
                GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit16 = new GraphicsLayerBlockForEnterExit() { // from class: c03
                    @Override // androidx.compose.animation.GraphicsLayerBlockForEnterExit
                    public final nl3 init() {
                        return EnterExitTransitionKt.createGraphicsLayerBlock$lambda$2$0(deferredAnimation, deferredAnimation2, transition13, enterTransition13, exitTransition13, deferredAnimation13);
                    }
                };
                composer2.updateRememberedValue(graphicsLayerBlockForEnterExit16);
                objRememberedValue = graphicsLayerBlockForEnterExit16;
            }
            GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit17 = (GraphicsLayerBlockForEnterExit) objRememberedValue;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            return graphicsLayerBlockForEnterExit17;
        }
        exitTransition2 = exitTransition;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
            z2 = true;
        } else {
            z2 = false;
        }
        boolean zChangedInstance6 = z7 | z2 | composer2.changedInstance(deferredAnimation2);
        if (((i & 14) ^ 6) > 4) {
            transition2 = transition;
            if (!composer2.changed(transition2)) {
            }
            zChangedInstance = zChangedInstance6 | z3 | composer2.changedInstance(deferredAnimationCreateDeferredAnimation);
            objRememberedValue = composer2.rememberedValue();
            if (zChangedInstance) {
                final EnterTransition enterTransition14 = enterTransition2;
                final ExitTransition exitTransition14 = exitTransition2;
                final Transition transition14 = transition2;
                final Transition.DeferredAnimation deferredAnimation14 = deferredAnimationCreateDeferredAnimation;
                GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit18 = new GraphicsLayerBlockForEnterExit() { // from class: c03
                    @Override // androidx.compose.animation.GraphicsLayerBlockForEnterExit
                    public final nl3 init() {
                        return EnterExitTransitionKt.createGraphicsLayerBlock$lambda$2$0(deferredAnimation, deferredAnimation2, transition14, enterTransition14, exitTransition14, deferredAnimation14);
                    }
                };
                composer2.updateRememberedValue(graphicsLayerBlockForEnterExit18);
                objRememberedValue = graphicsLayerBlockForEnterExit18;
            } else {
                final EnterTransition enterTransition15 = enterTransition2;
                final ExitTransition exitTransition15 = exitTransition2;
                final Transition transition15 = transition2;
                final Transition.DeferredAnimation deferredAnimation15 = deferredAnimationCreateDeferredAnimation;
                GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit19 = new GraphicsLayerBlockForEnterExit() { // from class: c03
                    @Override // androidx.compose.animation.GraphicsLayerBlockForEnterExit
                    public final nl3 init() {
                        return EnterExitTransitionKt.createGraphicsLayerBlock$lambda$2$0(deferredAnimation, deferredAnimation2, transition15, enterTransition15, exitTransition15, deferredAnimation15);
                    }
                };
                composer2.updateRememberedValue(graphicsLayerBlockForEnterExit19);
                objRememberedValue = graphicsLayerBlockForEnterExit19;
            }
            GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit110 = (GraphicsLayerBlockForEnterExit) objRememberedValue;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            return graphicsLayerBlockForEnterExit110;
        }
        transition2 = transition;
        if ((i & 6) != 4) {
            z3 = false;
        }
        zChangedInstance = zChangedInstance6 | z3 | composer2.changedInstance(deferredAnimationCreateDeferredAnimation);
        objRememberedValue = composer2.rememberedValue();
        if (zChangedInstance) {
            final EnterTransition enterTransition16 = enterTransition2;
            final ExitTransition exitTransition16 = exitTransition2;
            final Transition transition16 = transition2;
            final Transition.DeferredAnimation deferredAnimation16 = deferredAnimationCreateDeferredAnimation;
            GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit111 = new GraphicsLayerBlockForEnterExit() { // from class: c03
                @Override // androidx.compose.animation.GraphicsLayerBlockForEnterExit
                public final nl3 init() {
                    return EnterExitTransitionKt.createGraphicsLayerBlock$lambda$2$0(deferredAnimation, deferredAnimation2, transition16, enterTransition16, exitTransition16, deferredAnimation16);
                }
            };
            composer2.updateRememberedValue(graphicsLayerBlockForEnterExit111);
            objRememberedValue = graphicsLayerBlockForEnterExit111;
        } else {
            final EnterTransition enterTransition17 = enterTransition2;
            final ExitTransition exitTransition17 = exitTransition2;
            final Transition transition17 = transition2;
            final Transition.DeferredAnimation deferredAnimation17 = deferredAnimationCreateDeferredAnimation;
            GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit112 = new GraphicsLayerBlockForEnterExit() { // from class: c03
                @Override // androidx.compose.animation.GraphicsLayerBlockForEnterExit
                public final nl3 init() {
                    return EnterExitTransitionKt.createGraphicsLayerBlock$lambda$2$0(deferredAnimation, deferredAnimation2, transition17, enterTransition17, exitTransition17, deferredAnimation17);
                }
            };
            composer2.updateRememberedValue(graphicsLayerBlockForEnterExit112);
            objRememberedValue = graphicsLayerBlockForEnterExit112;
        }
        GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit113 = (GraphicsLayerBlockForEnterExit) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return graphicsLayerBlockForEnterExit113;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x004b  */
    public static final nl3 createGraphicsLayerBlock$lambda$2$0(Transition.DeferredAnimation deferredAnimation, Transition.DeferredAnimation deferredAnimation2, Transition transition, EnterTransition enterTransition, ExitTransition exitTransition, Transition.DeferredAnimation deferredAnimation3) {
        TransformOrigin transformOriginM6632boximpl;
        State stateAnimate = deferredAnimation != null ? deferredAnimation.animate(new EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1(enterTransition, exitTransition), new EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2(enterTransition, exitTransition)) : null;
        State stateAnimate2 = deferredAnimation2 != null ? deferredAnimation2.animate(new EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$1(enterTransition, exitTransition), new EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$2(enterTransition, exitTransition)) : null;
        if (transition.getCurrentState() == EnterExitState.PreEnter) {
            Scale scale = enterTransition.getData$animation().getScale();
            if (scale == null && (scale = exitTransition.getData$animation().getScale()) == null) {
                transformOriginM6632boximpl = null;
            } else {
                transformOriginM6632boximpl = TransformOrigin.m6632boximpl(scale.m1146getTransformOriginSzJe1aQ());
            }
        } else {
            Scale scale2 = exitTransition.getData$animation().getScale();
            if (scale2 == null && (scale2 = enterTransition.getData$animation().getScale()) == null) {
                transformOriginM6632boximpl = null;
            } else {
                transformOriginM6632boximpl = TransformOrigin.m6632boximpl(scale2.m1146getTransformOriginSzJe1aQ());
            }
        }
        return new EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1(stateAnimate, stateAnimate2, deferredAnimation3 != null ? deferredAnimation3.animate(EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$1.INSTANCE, new EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2(transformOriginM6632boximpl, enterTransition, exitTransition)) : null);
    }

    public static final Modifier createModifier(Transition<EnterExitState> transition, EnterTransition enterTransition, ExitTransition exitTransition, boolean z, ll3<Boolean> ll3Var, String str, Composer composer, int i, int i2) {
        ll3<Boolean> ll3Var2;
        EnterTransition enterTransition2;
        ExitTransition exitTransition2;
        Transition.DeferredAnimation deferredAnimation;
        Transition.DeferredAnimation deferredAnimation2;
        Transition.DeferredAnimation deferredAnimation3;
        ChangeSize changeSize;
        ColorSpace colorSpaceM6236getColorSpaceimpl;
        Transition<EnterExitState> transition2;
        Modifier veilModifierElement;
        boolean z2 = true;
        boolean z3 = (i2 & 4) != 0 ? true : z;
        if ((i2 & 8) != 0) {
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = EnterExitTransitionKt$createModifier$1$1.INSTANCE;
                composer.updateRememberedValue(objRememberedValue);
            }
            ll3Var2 = (ll3) objRememberedValue;
        } else {
            ll3Var2 = ll3Var;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1899614022, i, -1, "androidx.compose.animation.createModifier (EnterExitTransition.kt:933)");
        }
        if (z3) {
            composer.startReplaceGroup(-167965831);
            EnterTransition enterTransitionTrackActiveEnter = trackActiveEnter(transition, enterTransition, composer, i & 126);
            composer.endReplaceGroup();
            enterTransition2 = enterTransitionTrackActiveEnter;
        } else {
            composer.startReplaceGroup(-167964673);
            composer.endReplaceGroup();
            enterTransition2 = enterTransition;
        }
        if (z3) {
            composer.startReplaceGroup(-167962954);
            ExitTransition exitTransitionTrackActiveExit = trackActiveExit(transition, exitTransition, composer, (i & 14) | ((i >> 3) & 112));
            composer.endReplaceGroup();
            exitTransition2 = exitTransitionTrackActiveExit;
        } else {
            composer.startReplaceGroup(-167961890);
            composer.endReplaceGroup();
            exitTransition2 = exitTransition;
        }
        boolean z4 = (enterTransition2.getData$animation().getVeil() == null && exitTransition2.getData$animation().getVeil() == null) ? false : true;
        boolean z5 = (enterTransition2.getData$animation().getSlide() == null && exitTransition2.getData$animation().getSlide() == null) ? false : true;
        boolean z6 = (enterTransition2.getData$animation().getChangeSize() == null && exitTransition2.getData$animation().getChangeSize() == null) ? false : true;
        if (z5) {
            composer.startReplaceGroup(-911488127);
            TwoWayConverter<IntOffset, AnimationVector2D> vectorConverter = VectorConvertersKt.getVectorConverter(IntOffset.Companion);
            Object objRememberedValue2 = composer.rememberedValue();
            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = str + " slide";
                composer.updateRememberedValue(objRememberedValue2);
            }
            Transition.DeferredAnimation deferredAnimationCreateDeferredAnimation = androidx.compose.animation.core.TransitionKt.createDeferredAnimation(transition, vectorConverter, (String) objRememberedValue2, composer, (i & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
            composer.endReplaceGroup();
            deferredAnimation = deferredAnimationCreateDeferredAnimation;
        } else {
            composer.startReplaceGroup(-911382324);
            composer.endReplaceGroup();
            deferredAnimation = null;
        }
        if (z6) {
            composer.startReplaceGroup(-911290533);
            TwoWayConverter<IntSize, AnimationVector2D> vectorConverter2 = VectorConvertersKt.getVectorConverter(IntSize.Companion);
            Object objRememberedValue3 = composer.rememberedValue();
            if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                objRememberedValue3 = str + " shrink/expand";
                composer.updateRememberedValue(objRememberedValue3);
            }
            Transition.DeferredAnimation deferredAnimationCreateDeferredAnimation2 = androidx.compose.animation.core.TransitionKt.createDeferredAnimation(transition, vectorConverter2, (String) objRememberedValue3, composer, (i & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
            composer.endReplaceGroup();
            deferredAnimation2 = deferredAnimationCreateDeferredAnimation2;
        } else {
            composer.startReplaceGroup(-911179709);
            composer.endReplaceGroup();
            deferredAnimation2 = null;
        }
        if (z6) {
            composer.startReplaceGroup(-911106083);
            TwoWayConverter<IntOffset, AnimationVector2D> vectorConverter3 = VectorConvertersKt.getVectorConverter(IntOffset.Companion);
            Object objRememberedValue4 = composer.rememberedValue();
            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                objRememberedValue4 = str + " InterruptionHandlingOffset";
                composer.updateRememberedValue(objRememberedValue4);
            }
            Transition.DeferredAnimation deferredAnimationCreateDeferredAnimation3 = androidx.compose.animation.core.TransitionKt.createDeferredAnimation(transition, vectorConverter3, (String) objRememberedValue4, composer, (i & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
            composer.endReplaceGroup();
            deferredAnimation3 = deferredAnimationCreateDeferredAnimation3;
        } else {
            composer.startReplaceGroup(-910935677);
            composer.endReplaceGroup();
            deferredAnimation3 = null;
        }
        ChangeSize changeSize2 = enterTransition2.getData$animation().getChangeSize();
        boolean z7 = ((changeSize2 == null || changeSize2.getClip()) && ((changeSize = exitTransition2.getData$animation().getChangeSize()) == null || changeSize.getClip()) && z6) ? false : true;
        Veil veil = enterTransition2.getData$animation().getVeil();
        if (veil == null || (colorSpaceM6236getColorSpaceimpl = Color.m6236getColorSpaceimpl(veil.m1185getInitialColor0d7_KjU())) == null) {
            Veil veil2 = enterTransition2.getData$animation().getVeil();
            if (veil2 != null) {
                colorSpaceM6236getColorSpaceimpl = Color.m6236getColorSpaceimpl(veil2.m1186getTargetColor0d7_KjU());
            } else {
                Veil veil3 = exitTransition2.getData$animation().getVeil();
                colorSpaceM6236getColorSpaceimpl = veil3 != null ? Color.m6236getColorSpaceimpl(veil3.m1185getInitialColor0d7_KjU()) : null;
                if (colorSpaceM6236getColorSpaceimpl == null) {
                    Veil veil4 = exitTransition2.getData$animation().getVeil();
                    ColorSpace colorSpaceM6236getColorSpaceimpl2 = veil4 != null ? Color.m6236getColorSpaceimpl(veil4.m1186getTargetColor0d7_KjU()) : null;
                    colorSpaceM6236getColorSpaceimpl = colorSpaceM6236getColorSpaceimpl2 == null ? ColorSpaces.INSTANCE.getSrgb() : colorSpaceM6236getColorSpaceimpl2;
                }
            }
        }
        if (z4) {
            composer.startReplaceGroup(-910409203);
            TwoWayConverter<Color, AnimationVector4D> twoWayConverterInvoke = ColorVectorConverterKt.getVectorConverter(Color.Companion).invoke(colorSpaceM6236getColorSpaceimpl);
            Object objRememberedValue5 = composer.rememberedValue();
            if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                objRememberedValue5 = str + " veil";
                composer.updateRememberedValue(objRememberedValue5);
            }
            transition2 = transition;
            veilModifierElement = new VeilModifierElement(transition2, androidx.compose.animation.core.TransitionKt.createDeferredAnimation(transition2, twoWayConverterInvoke, (String) objRememberedValue5, composer, (i & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0), enterTransition2, exitTransition2);
            composer.endReplaceGroup();
        } else {
            transition2 = transition;
            composer.startReplaceGroup(-910130296);
            composer.endReplaceGroup();
            veilModifierElement = Modifier.Companion;
        }
        Modifier modifier = veilModifierElement;
        Veil veil5 = enterTransition2.getData$animation().getVeil();
        boolean matchParentSize = (veil5 == null && (veil5 = exitTransition2.getData$animation().getVeil()) == null) ? false : veil5.getMatchParentSize();
        EnterTransition enterTransition3 = enterTransition2;
        ExitTransition exitTransition3 = exitTransition2;
        GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExitCreateGraphicsLayerBlock = createGraphicsLayerBlock(transition2, enterTransition3, exitTransition3, str, composer, (i & 14) | ((i >> 6) & 7168));
        Modifier modifier2 = matchParentSize ? modifier : Modifier.Companion;
        Modifier.Companion companion = Modifier.Companion;
        boolean zChanged = composer.changed(z7);
        if ((((57344 & i) ^ 24576) <= 16384 || !composer.changed(ll3Var2)) && (i & 24576) != 16384) {
            z2 = false;
        }
        boolean z8 = zChanged | z2;
        Object objRememberedValue6 = composer.rememberedValue();
        if (z8 || objRememberedValue6 == Composer.Companion.getEmpty()) {
            objRememberedValue6 = new EnterExitTransitionKt$createModifier$2$1(z7, ll3Var2);
            composer.updateRememberedValue(objRememberedValue6);
        }
        Modifier modifierThen = modifier2.then(GraphicsLayerModifierKt.graphicsLayer(companion, (nl3) objRememberedValue6)).then(new EnterExitTransitionElement(transition, deferredAnimation2, deferredAnimation3, deferredAnimation, enterTransition3, exitTransition3, ll3Var2, graphicsLayerBlockForEnterExitCreateGraphicsLayerBlock));
        if (matchParentSize) {
            modifier = companion;
        }
        Modifier modifierThen2 = modifierThen.then(modifier);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return modifierThen2;
    }

    public static final EnterTransition expandHorizontally(FiniteAnimationSpec<IntSize> finiteAnimationSpec, Alignment.Horizontal horizontal, boolean z, nl3<? super Integer, Integer> nl3Var) {
        return expandIn(finiteAnimationSpec, toAlignment(horizontal), z, new AnonymousClass2(nl3Var));
    }

    public static /* synthetic */ EnterTransition expandHorizontally$default(FiniteAnimationSpec finiteAnimationSpec, Alignment.Horizontal horizontal, boolean z, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntSize.m9205boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 1, null);
        }
        if ((i & 2) != 0) {
            horizontal = Alignment.Companion.getEnd();
        }
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            nl3Var = AnonymousClass1.INSTANCE;
        }
        return expandHorizontally(finiteAnimationSpec, horizontal, z, nl3Var);
    }

    public static final EnterTransition expandIn(FiniteAnimationSpec<IntSize> finiteAnimationSpec, Alignment alignment, boolean z, nl3<? super IntSize, IntSize> nl3Var) {
        return new EnterTransitionImpl(new TransitionData(null, null, new ChangeSize(alignment, nl3Var, finiteAnimationSpec, z), null, null, false, null, 123, null));
    }

    public static /* synthetic */ EnterTransition expandIn$default(FiniteAnimationSpec finiteAnimationSpec, Alignment alignment, boolean z, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntSize.m9205boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 1, null);
        }
        if ((i & 2) != 0) {
            alignment = Alignment.Companion.getBottomEnd();
        }
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            nl3Var = C04311.INSTANCE;
        }
        return expandIn(finiteAnimationSpec, alignment, z, nl3Var);
    }

    public static final EnterTransition expandVertically(FiniteAnimationSpec<IntSize> finiteAnimationSpec, Alignment.Vertical vertical, boolean z, nl3<? super Integer, Integer> nl3Var) {
        return expandIn(finiteAnimationSpec, toAlignment(vertical), z, new C04332(nl3Var));
    }

    public static /* synthetic */ EnterTransition expandVertically$default(FiniteAnimationSpec finiteAnimationSpec, Alignment.Vertical vertical, boolean z, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntSize.m9205boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 1, null);
        }
        if ((i & 2) != 0) {
            vertical = Alignment.Companion.getBottom();
        }
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            nl3Var = C04321.INSTANCE;
        }
        return expandVertically(finiteAnimationSpec, vertical, z, nl3Var);
    }

    public static final EnterTransition fadeIn(FiniteAnimationSpec<Float> finiteAnimationSpec, float f) {
        return new EnterTransitionImpl(new TransitionData(new Fade(f, finiteAnimationSpec), null, null, null, null, false, null, 126, null));
    }

    public static /* synthetic */ EnterTransition fadeIn$default(FiniteAnimationSpec finiteAnimationSpec, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null);
        }
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        return fadeIn(finiteAnimationSpec, f);
    }

    public static final ExitTransition fadeOut(FiniteAnimationSpec<Float> finiteAnimationSpec, float f) {
        return new ExitTransitionImpl(new TransitionData(new Fade(f, finiteAnimationSpec), null, null, null, null, false, null, 126, null));
    }

    public static /* synthetic */ ExitTransition fadeOut$default(FiniteAnimationSpec finiteAnimationSpec, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null);
        }
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        return fadeOut(finiteAnimationSpec, f);
    }

    public static final <T extends TransitionEffect> T get(EnterTransition enterTransition, TransitionEffectKey<T> transitionEffectKey) {
        TransitionEffect transitionEffect = enterTransition.getData$animation().getEffectsMap().get(transitionEffectKey);
        if (transitionEffect instanceof TransitionEffect) {
            return (T) transitionEffect;
        }
        return null;
    }

    /* JADX INFO: renamed from: scaleIn-L8ZKh-E, reason: not valid java name */
    public static final EnterTransition m1091scaleInL8ZKhE(FiniteAnimationSpec<Float> finiteAnimationSpec, float f, long j) {
        return new EnterTransitionImpl(new TransitionData(null, null, null, new Scale(f, j, finiteAnimationSpec, null), null, false, null, 119, null));
    }

    /* JADX INFO: renamed from: scaleIn-L8ZKh-E$default, reason: not valid java name */
    public static /* synthetic */ EnterTransition m1092scaleInL8ZKhE$default(FiniteAnimationSpec finiteAnimationSpec, float f, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null);
        }
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        if ((i & 4) != 0) {
            j = TransformOrigin.Companion.m6645getCenterSzJe1aQ();
        }
        return m1091scaleInL8ZKhE(finiteAnimationSpec, f, j);
    }

    /* JADX INFO: renamed from: scaleOut-L8ZKh-E, reason: not valid java name */
    public static final ExitTransition m1093scaleOutL8ZKhE(FiniteAnimationSpec<Float> finiteAnimationSpec, float f, long j) {
        return new ExitTransitionImpl(new TransitionData(null, null, null, new Scale(f, j, finiteAnimationSpec, null), null, false, null, 119, null));
    }

    /* JADX INFO: renamed from: scaleOut-L8ZKh-E$default, reason: not valid java name */
    public static /* synthetic */ ExitTransition m1094scaleOutL8ZKhE$default(FiniteAnimationSpec finiteAnimationSpec, float f, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null);
        }
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        if ((i & 4) != 0) {
            j = TransformOrigin.Companion.m6645getCenterSzJe1aQ();
        }
        return m1093scaleOutL8ZKhE(finiteAnimationSpec, f, j);
    }

    public static final ExitTransition shrinkHorizontally(FiniteAnimationSpec<IntSize> finiteAnimationSpec, Alignment.Horizontal horizontal, boolean z, nl3<? super Integer, Integer> nl3Var) {
        return shrinkOut(finiteAnimationSpec, toAlignment(horizontal), z, new C04352(nl3Var));
    }

    public static /* synthetic */ ExitTransition shrinkHorizontally$default(FiniteAnimationSpec finiteAnimationSpec, Alignment.Horizontal horizontal, boolean z, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntSize.m9205boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 1, null);
        }
        if ((i & 2) != 0) {
            horizontal = Alignment.Companion.getEnd();
        }
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            nl3Var = C04341.INSTANCE;
        }
        return shrinkHorizontally(finiteAnimationSpec, horizontal, z, nl3Var);
    }

    public static final ExitTransition shrinkOut(FiniteAnimationSpec<IntSize> finiteAnimationSpec, Alignment alignment, boolean z, nl3<? super IntSize, IntSize> nl3Var) {
        return new ExitTransitionImpl(new TransitionData(null, null, new ChangeSize(alignment, nl3Var, finiteAnimationSpec, z), null, null, false, null, 123, null));
    }

    public static /* synthetic */ ExitTransition shrinkOut$default(FiniteAnimationSpec finiteAnimationSpec, Alignment alignment, boolean z, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntSize.m9205boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 1, null);
        }
        if ((i & 2) != 0) {
            alignment = Alignment.Companion.getBottomEnd();
        }
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            nl3Var = C04361.INSTANCE;
        }
        return shrinkOut(finiteAnimationSpec, alignment, z, nl3Var);
    }

    public static final ExitTransition shrinkVertically(FiniteAnimationSpec<IntSize> finiteAnimationSpec, Alignment.Vertical vertical, boolean z, nl3<? super Integer, Integer> nl3Var) {
        return shrinkOut(finiteAnimationSpec, toAlignment(vertical), z, new C04382(nl3Var));
    }

    public static /* synthetic */ ExitTransition shrinkVertically$default(FiniteAnimationSpec finiteAnimationSpec, Alignment.Vertical vertical, boolean z, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntSize.m9205boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 1, null);
        }
        if ((i & 2) != 0) {
            vertical = Alignment.Companion.getBottom();
        }
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            nl3Var = C04371.INSTANCE;
        }
        return shrinkVertically(finiteAnimationSpec, vertical, z, nl3Var);
    }

    public static final EnterTransition slideIn(FiniteAnimationSpec<IntOffset> finiteAnimationSpec, nl3<? super IntSize, IntOffset> nl3Var) {
        return new EnterTransitionImpl(new TransitionData(null, new Slide(nl3Var, finiteAnimationSpec), null, null, null, false, null, GapComposerKt.nodeKey, null));
    }

    public static /* synthetic */ EnterTransition slideIn$default(FiniteAnimationSpec finiteAnimationSpec, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntOffset.m9161boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 1, null);
        }
        return slideIn(finiteAnimationSpec, nl3Var);
    }

    public static final EnterTransition slideInHorizontally(FiniteAnimationSpec<IntOffset> finiteAnimationSpec, nl3<? super Integer, Integer> nl3Var) {
        return slideIn(finiteAnimationSpec, new C04402(nl3Var));
    }

    public static /* synthetic */ EnterTransition slideInHorizontally$default(FiniteAnimationSpec finiteAnimationSpec, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntOffset.m9161boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 1, null);
        }
        if ((i & 2) != 0) {
            nl3Var = C04391.INSTANCE;
        }
        return slideInHorizontally(finiteAnimationSpec, nl3Var);
    }

    public static final EnterTransition slideInVertically(FiniteAnimationSpec<IntOffset> finiteAnimationSpec, nl3<? super Integer, Integer> nl3Var) {
        return slideIn(finiteAnimationSpec, new C04422(nl3Var));
    }

    public static /* synthetic */ EnterTransition slideInVertically$default(FiniteAnimationSpec finiteAnimationSpec, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntOffset.m9161boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 1, null);
        }
        if ((i & 2) != 0) {
            nl3Var = C04411.INSTANCE;
        }
        return slideInVertically(finiteAnimationSpec, nl3Var);
    }

    public static final ExitTransition slideOut(FiniteAnimationSpec<IntOffset> finiteAnimationSpec, nl3<? super IntSize, IntOffset> nl3Var) {
        return new ExitTransitionImpl(new TransitionData(null, new Slide(nl3Var, finiteAnimationSpec), null, null, null, false, null, GapComposerKt.nodeKey, null));
    }

    public static /* synthetic */ ExitTransition slideOut$default(FiniteAnimationSpec finiteAnimationSpec, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntOffset.m9161boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 1, null);
        }
        return slideOut(finiteAnimationSpec, nl3Var);
    }

    public static final ExitTransition slideOutHorizontally(FiniteAnimationSpec<IntOffset> finiteAnimationSpec, nl3<? super Integer, Integer> nl3Var) {
        return slideOut(finiteAnimationSpec, new C04442(nl3Var));
    }

    public static /* synthetic */ ExitTransition slideOutHorizontally$default(FiniteAnimationSpec finiteAnimationSpec, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntOffset.m9161boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 1, null);
        }
        if ((i & 2) != 0) {
            nl3Var = C04431.INSTANCE;
        }
        return slideOutHorizontally(finiteAnimationSpec, nl3Var);
    }

    public static final ExitTransition slideOutVertically(FiniteAnimationSpec<IntOffset> finiteAnimationSpec, nl3<? super Integer, Integer> nl3Var) {
        return slideOut(finiteAnimationSpec, new C04462(nl3Var));
    }

    public static /* synthetic */ ExitTransition slideOutVertically$default(FiniteAnimationSpec finiteAnimationSpec, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntOffset.m9161boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 1, null);
        }
        if ((i & 2) != 0) {
            nl3Var = C04451.INSTANCE;
        }
        return slideOutVertically(finiteAnimationSpec, nl3Var);
    }

    private static final Alignment toAlignment(Alignment.Horizontal horizontal) {
        Alignment.Companion companion = Alignment.Companion;
        if (aa4.e(horizontal, companion.getStart())) {
            return companion.getCenterStart();
        }
        return aa4.e(horizontal, companion.getEnd()) ? companion.getCenterEnd() : companion.getCenter();
    }

    public static final EnterTransition trackActiveEnter(Transition<EnterExitState> transition, EnterTransition enterTransition, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(21614502, i, -1, "androidx.compose.animation.trackActiveEnter (EnterExitTransition.kt:1004)");
        }
        boolean z = (((i & 14) ^ 6) > 4 && composer.changed(transition)) || (i & 6) == 4;
        Object objRememberedValue = composer.rememberedValue();
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(enterTransition, null, 2, null);
            composer.updateRememberedValue(objRememberedValue);
        }
        MutableState mutableState = (MutableState) objRememberedValue;
        if (transition.getCurrentState() == transition.getTargetState() && transition.getCurrentState() == EnterExitState.Visible) {
            if (transition.isSeeking()) {
                mutableState.setValue(enterTransition);
            } else {
                mutableState.setValue(EnterTransition.Companion.getNone());
            }
        } else if (transition.getTargetState() == EnterExitState.Visible) {
            mutableState.setValue(trackActiveEnter$lambda$1(mutableState).plus(enterTransition));
        }
        EnterTransition enterTransitionTrackActiveEnter$lambda$1 = trackActiveEnter$lambda$1(mutableState);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return enterTransitionTrackActiveEnter$lambda$1;
    }

    private static final EnterTransition trackActiveEnter$lambda$1(MutableState<EnterTransition> mutableState) {
        return mutableState.getValue();
    }

    public static final ExitTransition trackActiveExit(Transition<EnterExitState> transition, ExitTransition exitTransition, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1363864804, i, -1, "androidx.compose.animation.trackActiveExit (EnterExitTransition.kt:1024)");
        }
        boolean z = (((i & 14) ^ 6) > 4 && composer.changed(transition)) || (i & 6) == 4;
        Object objRememberedValue = composer.rememberedValue();
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(exitTransition, null, 2, null);
            composer.updateRememberedValue(objRememberedValue);
        }
        MutableState mutableState = (MutableState) objRememberedValue;
        if (transition.getCurrentState() == transition.getTargetState() && transition.getCurrentState() == EnterExitState.Visible) {
            if (transition.isSeeking()) {
                mutableState.setValue(exitTransition);
            } else {
                mutableState.setValue(ExitTransition.Companion.getNone());
            }
        } else if (transition.getTargetState() != EnterExitState.Visible) {
            mutableState.setValue(trackActiveExit$lambda$1(mutableState).plus(exitTransition));
        }
        ExitTransition exitTransitionTrackActiveExit$lambda$1 = trackActiveExit$lambda$1(mutableState);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return exitTransitionTrackActiveExit$lambda$1;
    }

    private static final ExitTransition trackActiveExit$lambda$1(MutableState<ExitTransition> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: renamed from: unveilIn-bw27NRU, reason: not valid java name */
    public static final EnterTransition m1095unveilInbw27NRU(FiniteAnimationSpec<Color> finiteAnimationSpec, long j, boolean z) {
        return new EnterTransitionImpl(new TransitionData(null, null, null, null, new Veil(j, Color.m6231copywmQWz5c$default(j, 0.0f, 0.0f, 0.0f, 0.0f, 14, null), finiteAnimationSpec, z, null), false, null, 111, null));
    }

    /* JADX INFO: renamed from: unveilIn-bw27NRU$default, reason: not valid java name */
    public static /* synthetic */ EnterTransition m1096unveilInbw27NRU$default(FiniteAnimationSpec finiteAnimationSpec, long j, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null);
        }
        if ((i & 2) != 0) {
            j = Color.m6231copywmQWz5c$default(Color.Companion.m6258getBlack0d7_KjU(), 0.5f, 0.0f, 0.0f, 0.0f, 14, null);
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return m1095unveilInbw27NRU(finiteAnimationSpec, j, z);
    }

    /* JADX INFO: renamed from: veilOut-bw27NRU, reason: not valid java name */
    public static final ExitTransition m1097veilOutbw27NRU(FiniteAnimationSpec<Color> finiteAnimationSpec, long j, boolean z) {
        return new ExitTransitionImpl(new TransitionData(null, null, null, null, new Veil(Color.m6231copywmQWz5c$default(j, 0.0f, 0.0f, 0.0f, 0.0f, 14, null), j, finiteAnimationSpec, z, null), false, null, 111, null));
    }

    /* JADX INFO: renamed from: veilOut-bw27NRU$default, reason: not valid java name */
    public static /* synthetic */ ExitTransition m1098veilOutbw27NRU$default(FiniteAnimationSpec finiteAnimationSpec, long j, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null);
        }
        if ((i & 2) != 0) {
            j = Color.m6231copywmQWz5c$default(Color.Companion.m6258getBlack0d7_KjU(), 0.5f, 0.0f, 0.0f, 0.0f, 14, null);
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return m1097veilOutbw27NRU(finiteAnimationSpec, j, z);
    }

    public static final EnterTransition withEffect(EnterTransition enterTransition, TransitionEffect transitionEffect) {
        Map mapSingletonMap = Collections.singletonMap(transitionEffect.getKey$animation(), transitionEffect);
        mapSingletonMap.getClass();
        return new EnterTransitionImpl(new TransitionData(null, null, null, null, null, false, mapSingletonMap, 63, null));
    }

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$expandHorizontally$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<Integer, Integer> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final Integer invoke(int i) {
            return 0;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$expandVertically$1, reason: invalid class name and case insensitive filesystem */
    public static final class C04321 extends gh4 implements nl3<Integer, Integer> {
        public static final C04321 INSTANCE = new C04321();

        public C04321() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final Integer invoke(int i) {
            return 0;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$shrinkHorizontally$1, reason: invalid class name and case insensitive filesystem */
    public static final class C04341 extends gh4 implements nl3<Integer, Integer> {
        public static final C04341 INSTANCE = new C04341();

        public C04341() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final Integer invoke(int i) {
            return 0;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$shrinkVertically$1, reason: invalid class name and case insensitive filesystem */
    public static final class C04371 extends gh4 implements nl3<Integer, Integer> {
        public static final C04371 INSTANCE = new C04371();

        public C04371() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final Integer invoke(int i) {
            return 0;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$slideInHorizontally$1, reason: invalid class name and case insensitive filesystem */
    public static final class C04391 extends gh4 implements nl3<Integer, Integer> {
        public static final C04391 INSTANCE = new C04391();

        public C04391() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final Integer invoke(int i) {
            return Integer.valueOf((-i) / 2);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$slideInVertically$1, reason: invalid class name and case insensitive filesystem */
    public static final class C04411 extends gh4 implements nl3<Integer, Integer> {
        public static final C04411 INSTANCE = new C04411();

        public C04411() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final Integer invoke(int i) {
            return Integer.valueOf((-i) / 2);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$slideOutHorizontally$1, reason: invalid class name and case insensitive filesystem */
    public static final class C04431 extends gh4 implements nl3<Integer, Integer> {
        public static final C04431 INSTANCE = new C04431();

        public C04431() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final Integer invoke(int i) {
            return Integer.valueOf((-i) / 2);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.EnterExitTransitionKt$slideOutVertically$1, reason: invalid class name and case insensitive filesystem */
    public static final class C04451 extends gh4 implements nl3<Integer, Integer> {
        public static final C04451 INSTANCE = new C04451();

        public C04451() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final Integer invoke(int i) {
            return Integer.valueOf((-i) / 2);
        }
    }

    public static final <T extends TransitionEffect> T get(ExitTransition exitTransition, TransitionEffectKey<T> transitionEffectKey) {
        TransitionEffect transitionEffect = exitTransition.getData$animation().getEffectsMap().get(transitionEffectKey);
        if (transitionEffect instanceof TransitionEffect) {
            return (T) transitionEffect;
        }
        return null;
    }

    public static final ExitTransition withEffect(ExitTransition exitTransition, TransitionEffect transitionEffect) {
        Map mapSingletonMap = Collections.singletonMap(transitionEffect.getKey$animation(), transitionEffect);
        mapSingletonMap.getClass();
        return new ExitTransitionImpl(new TransitionData(null, null, null, null, null, false, mapSingletonMap, 63, null));
    }

    private static final Alignment toAlignment(Alignment.Vertical vertical) {
        Alignment.Companion companion = Alignment.Companion;
        if (aa4.e(vertical, companion.getTop())) {
            return companion.getTopCenter();
        }
        return aa4.e(vertical, companion.getBottom()) ? companion.getBottomCenter() : companion.getCenter();
    }
}
