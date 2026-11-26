package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.ui.unit.IntOffset;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class EnterExitTransitionModifierNode$measure$offsetDelta$1 extends gh4 implements nl3<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntOffset>> {
    public static final EnterExitTransitionModifierNode$measure$offsetDelta$1 INSTANCE = new EnterExitTransitionModifierNode$measure$offsetDelta$1();

    public EnterExitTransitionModifierNode$measure$offsetDelta$1() {
        super(1);
    }

    @Override // defpackage.nl3
    public final FiniteAnimationSpec<IntOffset> invoke(Transition.Segment<EnterExitState> segment) {
        return EnterExitTransitionKt.DefaultOffsetAnimationSpec;
    }
}
