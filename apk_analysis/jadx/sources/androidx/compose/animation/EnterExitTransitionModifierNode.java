package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.me0;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class EnterExitTransitionModifierNode extends LayoutModifierNodeWithPassThroughIntrinsics {
    private Alignment currentAlignment;
    private EnterTransition enter;
    private ExitTransition exit;
    private GraphicsLayerBlockForEnterExit graphicsLayerBlock;
    private ll3<Boolean> isEnabled;
    private boolean lookaheadConstraintsAvailable;
    private Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> offsetAnimation;
    private Transition<EnterExitState>.DeferredAnimation<IntSize, AnimationVector2D> sizeAnimation;
    private Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> slideAnimation;
    private Transition<EnterExitState> transition;
    private long lookaheadSize = AnimationModifierKt.getInvalidSize();
    private long lookaheadConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null);
    private final nl3<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntSize>> sizeTransitionSpec = new EnterExitTransitionModifierNode$sizeTransitionSpec$1(this);
    private final nl3<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntOffset>> slideSpec = new EnterExitTransitionModifierNode$slideSpec$1(this);

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EnterExitState.values().length];
            try {
                iArr[EnterExitState.Visible.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnterExitState.PreEnter.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnterExitState.PostExit.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public EnterExitTransitionModifierNode(Transition<EnterExitState> transition, Transition<EnterExitState>.DeferredAnimation<IntSize, AnimationVector2D> deferredAnimation, Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> deferredAnimation2, Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> deferredAnimation3, EnterTransition enterTransition, ExitTransition exitTransition, ll3<Boolean> ll3Var, GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit) {
        this.transition = transition;
        this.sizeAnimation = deferredAnimation;
        this.offsetAnimation = deferredAnimation2;
        this.slideAnimation = deferredAnimation3;
        this.enter = enterTransition;
        this.exit = exitTransition;
        this.isEnabled = ll3Var;
        this.graphicsLayerBlock = graphicsLayerBlockForEnterExit;
    }

    /* JADX INFO: renamed from: setLookaheadConstraints-BRTryo0, reason: not valid java name */
    private final void m1112setLookaheadConstraintsBRTryo0(long j) {
        this.lookaheadConstraintsAvailable = true;
        this.lookaheadConstraints = j;
    }

    public final Alignment getAlignment() {
        Alignment alignment;
        Alignment alignment2;
        if (this.transition.getSegment().isTransitioningTo(EnterExitState.PreEnter, EnterExitState.Visible)) {
            ChangeSize changeSize = this.enter.getData$animation().getChangeSize();
            if (changeSize != null && (alignment2 = changeSize.getAlignment()) != null) {
                return alignment2;
            }
            ChangeSize changeSize2 = this.exit.getData$animation().getChangeSize();
            if (changeSize2 != null) {
                return changeSize2.getAlignment();
            }
            return null;
        }
        ChangeSize changeSize3 = this.exit.getData$animation().getChangeSize();
        if (changeSize3 != null && (alignment = changeSize3.getAlignment()) != null) {
            return alignment;
        }
        ChangeSize changeSize4 = this.enter.getData$animation().getChangeSize();
        if (changeSize4 != null) {
            return changeSize4.getAlignment();
        }
        return null;
    }

    public final Alignment getCurrentAlignment() {
        return this.currentAlignment;
    }

    public final EnterTransition getEnter() {
        return this.enter;
    }

    public final ExitTransition getExit() {
        return this.exit;
    }

    public final GraphicsLayerBlockForEnterExit getGraphicsLayerBlock() {
        return this.graphicsLayerBlock;
    }

    public final Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> getOffsetAnimation() {
        return this.offsetAnimation;
    }

    public final Transition<EnterExitState>.DeferredAnimation<IntSize, AnimationVector2D> getSizeAnimation() {
        return this.sizeAnimation;
    }

    public final nl3<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntSize>> getSizeTransitionSpec() {
        return this.sizeTransitionSpec;
    }

    public final Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> getSlideAnimation() {
        return this.slideAnimation;
    }

    public final nl3<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntOffset>> getSlideSpec() {
        return this.slideSpec;
    }

    public final Transition<EnterExitState> getTransition() {
        return this.transition;
    }

    public final ll3<Boolean> isEnabled() {
        return this.isEnabled;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        State<IntOffset> stateAnimate;
        State<IntOffset> stateAnimate2;
        if (this.transition.getCurrentState() == this.transition.getTargetState()) {
            this.currentAlignment = null;
        } else if (this.currentAlignment == null) {
            Alignment alignment = getAlignment();
            if (alignment == null) {
                alignment = Alignment.Companion.getTopStart();
            }
            this.currentAlignment = alignment;
        }
        if (measureScope.isLookingAhead()) {
            Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
            long jM9208constructorimpl = IntSize.m9208constructorimpl((((long) placeableMo7702measureBRTryo0.getWidth()) << 32) | (((long) placeableMo7702measureBRTryo0.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            this.lookaheadSize = jM9208constructorimpl;
            m1112setLookaheadConstraintsBRTryo0(j);
            return MeasureScope.layout$default(measureScope, (int) (jM9208constructorimpl >> 32), (int) (jM9208constructorimpl & MuxerUtil.UNSIGNED_INT_MAX_VALUE), null, new EnterExitTransitionModifierNode$measure$1(placeableMo7702measureBRTryo0), 4, null);
        }
        if (!this.isEnabled.invoke().booleanValue()) {
            Placeable placeableMo7702measureBRTryo1 = measurable.mo7702measureBRTryo0(j);
            return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo1.getWidth(), placeableMo7702measureBRTryo1.getHeight(), null, new EnterExitTransitionModifierNode$measure$3$1(placeableMo7702measureBRTryo1), 4, null);
        }
        nl3<GraphicsLayerScope, j59> nl3VarInit = this.graphicsLayerBlock.init();
        Placeable placeableMo7702measureBRTryo2 = measurable.mo7702measureBRTryo0(j);
        long jM9208constructorimpl2 = IntSize.m9208constructorimpl((((long) placeableMo7702measureBRTryo2.getWidth()) << 32) | (((long) placeableMo7702measureBRTryo2.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        long j2 = AnimationModifierKt.m1077isValidozmzZPI(this.lookaheadSize) ? this.lookaheadSize : jM9208constructorimpl2;
        Transition<EnterExitState>.DeferredAnimation<IntSize, AnimationVector2D> deferredAnimation = this.sizeAnimation;
        State<IntSize> stateAnimate3 = deferredAnimation != null ? deferredAnimation.animate(this.sizeTransitionSpec, new EnterExitTransitionModifierNode$measure$animSize$1(this, j2)) : null;
        if (stateAnimate3 != null) {
            jM9208constructorimpl2 = stateAnimate3.getValue().m9217unboximpl();
        }
        long jM9009constrain4WqzIAM = ConstraintsKt.m9009constrain4WqzIAM(j, jM9208constructorimpl2);
        Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> deferredAnimation2 = this.offsetAnimation;
        long jM9181getZeronOccac = (deferredAnimation2 == null || (stateAnimate2 = deferredAnimation2.animate(EnterExitTransitionModifierNode$measure$offsetDelta$1.INSTANCE, new EnterExitTransitionModifierNode$measure$offsetDelta$2(this, j2))) == null) ? IntOffset.Companion.m9181getZeronOccac() : stateAnimate2.getValue().m9179unboximpl();
        Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> deferredAnimation3 = this.slideAnimation;
        long jM9181getZeronOccac2 = (deferredAnimation3 == null || (stateAnimate = deferredAnimation3.animate(this.slideSpec, new EnterExitTransitionModifierNode$measure$slideOffset$1(this, j2))) == null) ? IntOffset.Companion.m9181getZeronOccac() : stateAnimate.getValue().m9179unboximpl();
        Alignment alignment2 = this.currentAlignment;
        return MeasureScope.layout$default(measureScope, (int) (jM9009constrain4WqzIAM >> 32), (int) (jM9009constrain4WqzIAM & MuxerUtil.UNSIGNED_INT_MAX_VALUE), null, new EnterExitTransitionModifierNode$measure$2(placeableMo7702measureBRTryo2, IntOffset.m9174plusqkQi6aY(alignment2 != null ? alignment2.mo5655alignKFBX0sM(j2, jM9009constrain4WqzIAM, LayoutDirection.Ltr) : IntOffset.Companion.m9181getZeronOccac(), jM9181getZeronOccac2), jM9181getZeronOccac, nl3VarInit), 4, null);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        super.onAttach();
        this.lookaheadConstraintsAvailable = false;
        this.lookaheadSize = AnimationModifierKt.getInvalidSize();
    }

    public final void setCurrentAlignment(Alignment alignment) {
        this.currentAlignment = alignment;
    }

    public final void setEnabled(ll3<Boolean> ll3Var) {
        this.isEnabled = ll3Var;
    }

    public final void setEnter(EnterTransition enterTransition) {
        this.enter = enterTransition;
    }

    public final void setExit(ExitTransition exitTransition) {
        this.exit = exitTransition;
    }

    public final void setGraphicsLayerBlock(GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit) {
        this.graphicsLayerBlock = graphicsLayerBlockForEnterExit;
    }

    public final void setOffsetAnimation(Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> deferredAnimation) {
        this.offsetAnimation = deferredAnimation;
    }

    public final void setSizeAnimation(Transition<EnterExitState>.DeferredAnimation<IntSize, AnimationVector2D> deferredAnimation) {
        this.sizeAnimation = deferredAnimation;
    }

    public final void setSlideAnimation(Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> deferredAnimation) {
        this.slideAnimation = deferredAnimation;
    }

    public final void setTransition(Transition<EnterExitState> transition) {
        this.transition = transition;
    }

    /* JADX INFO: renamed from: sizeByState-Uzc_VyU, reason: not valid java name */
    public final long m1113sizeByStateUzc_VyU(EnterExitState enterExitState, long j) {
        nl3<IntSize, IntSize> size;
        nl3<IntSize, IntSize> size2;
        int i = WhenMappings.$EnumSwitchMapping$0[enterExitState.ordinal()];
        if (i != 1) {
            if (i == 2) {
                ChangeSize changeSize = this.enter.getData$animation().getChangeSize();
                if (changeSize != null && (size = changeSize.getSize()) != null) {
                    return size.invoke(IntSize.m9205boximpl(j)).m9217unboximpl();
                }
            } else {
                if (i != 3) {
                    me0.e();
                    return 0L;
                }
                ChangeSize changeSize2 = this.exit.getData$animation().getChangeSize();
                if (changeSize2 != null && (size2 = changeSize2.getSize()) != null) {
                    return size2.invoke(IntSize.m9205boximpl(j)).m9217unboximpl();
                }
            }
        }
        return j;
    }

    /* JADX INFO: renamed from: slideTargetValueByState-oFUgxo0, reason: not valid java name */
    public final long m1114slideTargetValueByStateoFUgxo0(EnterExitState enterExitState, long j) {
        nl3<IntSize, IntOffset> slideOffset;
        nl3<IntSize, IntOffset> slideOffset2;
        Slide slide = this.enter.getData$animation().getSlide();
        long jM9181getZeronOccac = (slide == null || (slideOffset2 = slide.getSlideOffset()) == null) ? IntOffset.Companion.m9181getZeronOccac() : slideOffset2.invoke(IntSize.m9205boximpl(j)).m9179unboximpl();
        Slide slide2 = this.exit.getData$animation().getSlide();
        long jM9181getZeronOccac2 = (slide2 == null || (slideOffset = slide2.getSlideOffset()) == null) ? IntOffset.Companion.m9181getZeronOccac() : slideOffset.invoke(IntSize.m9205boximpl(j)).m9179unboximpl();
        int i = WhenMappings.$EnumSwitchMapping$0[enterExitState.ordinal()];
        if (i == 1) {
            return IntOffset.Companion.m9181getZeronOccac();
        }
        if (i == 2) {
            return jM9181getZeronOccac;
        }
        if (i == 3) {
            return jM9181getZeronOccac2;
        }
        me0.e();
        return 0L;
    }

    /* JADX INFO: renamed from: targetOffsetByState-oFUgxo0, reason: not valid java name */
    public final long m1115targetOffsetByStateoFUgxo0(EnterExitState enterExitState, long j) {
        int i;
        if (this.currentAlignment != null && getAlignment() != null && !aa4.e(this.currentAlignment, getAlignment()) && (i = WhenMappings.$EnumSwitchMapping$0[enterExitState.ordinal()]) != 1 && i != 2) {
            if (i != 3) {
                me0.e();
                return 0L;
            }
            ChangeSize changeSize = this.exit.getData$animation().getChangeSize();
            if (changeSize == null) {
                return IntOffset.Companion.m9181getZeronOccac();
            }
            long jM9217unboximpl = changeSize.getSize().invoke(IntSize.m9205boximpl(j)).m9217unboximpl();
            Alignment alignment = getAlignment();
            alignment.getClass();
            LayoutDirection layoutDirection = LayoutDirection.Ltr;
            long jMo5655alignKFBX0sM = alignment.mo5655alignKFBX0sM(j, jM9217unboximpl, layoutDirection);
            Alignment alignment2 = this.currentAlignment;
            alignment2.getClass();
            return IntOffset.m9173minusqkQi6aY(jMo5655alignKFBX0sM, alignment2.mo5655alignKFBX0sM(j, jM9217unboximpl, layoutDirection));
        }
        return IntOffset.Companion.m9181getZeronOccac();
    }
}
