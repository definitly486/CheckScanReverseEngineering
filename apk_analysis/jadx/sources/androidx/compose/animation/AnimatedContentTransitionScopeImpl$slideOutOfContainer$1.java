package androidx.compose.animation;

import androidx.compose.runtime.State;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class AnimatedContentTransitionScopeImpl$slideOutOfContainer$1 extends gh4 implements nl3<Integer, Integer> {
    final /* synthetic */ nl3<Integer, Integer> $targetOffset;
    final /* synthetic */ AnimatedContentTransitionScopeImpl<S> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AnimatedContentTransitionScopeImpl$slideOutOfContainer$1(AnimatedContentTransitionScopeImpl<S> animatedContentTransitionScopeImpl, nl3<? super Integer, Integer> nl3Var) {
        super(1);
        this.this$0 = animatedContentTransitionScopeImpl;
        this.$targetOffset = nl3Var;
    }

    public final Integer invoke(int i) {
        State state = (State) this.this$0.getTargetSizeMap$animation().get(this.this$0.getTransition$animation().getTargetState());
        long j = i;
        return this.$targetOffset.invoke(Integer.valueOf((-IntOffset.m9170getXimpl(this.this$0.m1065calculateOffsetemnUabE(IntSize.m9208constructorimpl((j & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (j << 32)), state != null ? ((IntSize) state.getValue()).m9217unboximpl() : IntSize.Companion.m9218getZeroYbymL2g()))) - i));
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
        return invoke(num.intValue());
    }
}
