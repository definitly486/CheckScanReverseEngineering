package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$1 extends gh4 implements nl3<Transition.Segment<EnterExitState>, FiniteAnimationSpec<Float>> {
    final /* synthetic */ EnterTransition $enter;
    final /* synthetic */ ExitTransition $exit;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$1(EnterTransition enterTransition, ExitTransition exitTransition) {
        super(1);
        this.$enter = enterTransition;
        this.$exit = exitTransition;
    }

    @Override // defpackage.nl3
    public final FiniteAnimationSpec<Float> invoke(Transition.Segment<EnterExitState> segment) {
        FiniteAnimationSpec<Float> animationSpec;
        FiniteAnimationSpec<Float> animationSpec2;
        EnterExitState enterExitState = EnterExitState.PreEnter;
        EnterExitState enterExitState2 = EnterExitState.Visible;
        if (segment.isTransitioningTo(enterExitState, enterExitState2)) {
            Scale scale = this.$enter.getData$animation().getScale();
            return (scale == null || (animationSpec2 = scale.getAnimationSpec()) == null) ? EnterExitTransitionKt.DefaultAlphaAndScaleSpring : animationSpec2;
        }
        if (!segment.isTransitioningTo(enterExitState2, EnterExitState.PostExit)) {
            return EnterExitTransitionKt.DefaultAlphaAndScaleSpring;
        }
        Scale scale2 = this.$exit.getData$animation().getScale();
        return (scale2 == null || (animationSpec = scale2.getAnimationSpec()) == null) ? EnterExitTransitionKt.DefaultAlphaAndScaleSpring : animationSpec;
    }
}
