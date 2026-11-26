package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.ui.unit.IntSize;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class EnterExitTransitionModifierNode$sizeTransitionSpec$1 extends gh4 implements nl3<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntSize>> {
    final /* synthetic */ EnterExitTransitionModifierNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnterExitTransitionModifierNode$sizeTransitionSpec$1(EnterExitTransitionModifierNode enterExitTransitionModifierNode) {
        super(1);
        this.this$0 = enterExitTransitionModifierNode;
    }

    @Override // defpackage.nl3
    public final FiniteAnimationSpec<IntSize> invoke(Transition.Segment<EnterExitState> segment) {
        EnterExitState enterExitState = EnterExitState.PreEnter;
        EnterExitState enterExitState2 = EnterExitState.Visible;
        FiniteAnimationSpec<IntSize> animationSpec = null;
        if (segment.isTransitioningTo(enterExitState, enterExitState2)) {
            ChangeSize changeSize = this.this$0.getEnter().getData$animation().getChangeSize();
            if (changeSize != null) {
                animationSpec = changeSize.getAnimationSpec();
            }
        } else if (segment.isTransitioningTo(enterExitState2, EnterExitState.PostExit)) {
            ChangeSize changeSize2 = this.this$0.getExit().getData$animation().getChangeSize();
            if (changeSize2 != null) {
                animationSpec = changeSize2.getAnimationSpec();
            }
        } else {
            animationSpec = EnterExitTransitionKt.DefaultSizeAnimationSpec;
        }
        return animationSpec == null ? EnterExitTransitionKt.DefaultSizeAnimationSpec : animationSpec;
    }
}
