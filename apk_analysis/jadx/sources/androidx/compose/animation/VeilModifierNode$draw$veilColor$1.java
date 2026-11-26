package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.ui.graphics.Color;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class VeilModifierNode$draw$veilColor$1 extends gh4 implements nl3<Transition.Segment<EnterExitState>, FiniteAnimationSpec<Color>> {
    final /* synthetic */ VeilModifierNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VeilModifierNode$draw$veilColor$1(VeilModifierNode veilModifierNode) {
        super(1);
        this.this$0 = veilModifierNode;
    }

    @Override // defpackage.nl3
    public final FiniteAnimationSpec<Color> invoke(Transition.Segment<EnterExitState> segment) {
        FiniteAnimationSpec<Color> animationSpec;
        FiniteAnimationSpec<Color> animationSpec2;
        EnterExitState enterExitState = EnterExitState.PreEnter;
        EnterExitState enterExitState2 = EnterExitState.Visible;
        if (segment.isTransitioningTo(enterExitState, enterExitState2)) {
            Veil veil = this.this$0.getEnter().getData$animation().getVeil();
            return (veil == null || (animationSpec2 = veil.getAnimationSpec()) == null) ? EnterExitTransitionKt.DefaultColorAnimationSpec : animationSpec2;
        }
        if (!segment.isTransitioningTo(enterExitState2, EnterExitState.PostExit)) {
            return EnterExitTransitionKt.DefaultColorAnimationSpec;
        }
        Veil veil2 = this.this$0.getExit().getData$animation().getVeil();
        return (veil2 == null || (animationSpec = veil2.getAnimationSpec()) == null) ? EnterExitTransitionKt.DefaultColorAnimationSpec : animationSpec;
    }
}
