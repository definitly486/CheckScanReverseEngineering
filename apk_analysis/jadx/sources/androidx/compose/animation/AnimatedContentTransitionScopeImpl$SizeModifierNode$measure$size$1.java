package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.State;
import androidx.compose.ui.unit.IntSize;
import defpackage.aa4;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: Add missing generic type declarations: [S] */
/* JADX INFO: loaded from: classes.dex */
public final class AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$1<S> extends gh4 implements nl3<Transition.Segment<S>, FiniteAnimationSpec<IntSize>> {
    final /* synthetic */ long $currentSize;
    final /* synthetic */ AnimatedContentTransitionScopeImpl.SizeModifierNode<S> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$1(AnimatedContentTransitionScopeImpl.SizeModifierNode<S> sizeModifierNode, long j) {
        super(1);
        this.this$0 = sizeModifierNode;
        this.$currentSize = j;
    }

    @Override // defpackage.nl3
    public final FiniteAnimationSpec<IntSize> invoke(Transition.Segment<S> segment) {
        long jM9217unboximpl;
        FiniteAnimationSpec<IntSize> finiteAnimationSpecMo1170createAnimationSpecTemP2vQ;
        boolean zE = aa4.e(segment.getInitialState(), this.this$0.getScope().getInitialState());
        AnimatedContentTransitionScopeImpl.SizeModifierNode<S> sizeModifierNode = this.this$0;
        if (zE) {
            jM9217unboximpl = sizeModifierNode.m1072lastContinuousSizeOrDefaultmzRDjE0(this.$currentSize);
        } else {
            State<IntSize> state = sizeModifierNode.getScope().getTargetSizeMap$animation().get(segment.getInitialState());
            jM9217unboximpl = state != null ? state.getValue().m9217unboximpl() : IntSize.Companion.m9218getZeroYbymL2g();
        }
        State<IntSize> state2 = this.this$0.getScope().getTargetSizeMap$animation().get(segment.getTargetState());
        long jM9217unboximpl2 = state2 != null ? state2.getValue().m9217unboximpl() : IntSize.Companion.m9218getZeroYbymL2g();
        SizeTransform value = this.this$0.getSizeTransform().getValue();
        return (value == null || (finiteAnimationSpecMo1170createAnimationSpecTemP2vQ = value.mo1170createAnimationSpecTemP2vQ(jM9217unboximpl, jM9217unboximpl2)) == null) ? AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null) : finiteAnimationSpecMo1170createAnimationSpecTemP2vQ;
    }
}
