package androidx.compose.animation;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class AnimatedContentTransitionScopeImpl$slideIntoContainer$4 extends gh4 implements nl3<Integer, Integer> {
    final /* synthetic */ nl3<Integer, Integer> $initialOffset;
    final /* synthetic */ AnimatedContentTransitionScopeImpl<S> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AnimatedContentTransitionScopeImpl$slideIntoContainer$4(nl3<? super Integer, Integer> nl3Var, AnimatedContentTransitionScopeImpl<S> animatedContentTransitionScopeImpl) {
        super(1);
        this.$initialOffset = nl3Var;
        this.this$0 = animatedContentTransitionScopeImpl;
    }

    public final Integer invoke(int i) {
        long j = i;
        return this.$initialOffset.invoke(Integer.valueOf((-IntOffset.m9171getYimpl(this.this$0.m1065calculateOffsetemnUabE(IntSize.m9208constructorimpl((j & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (j << 32)), this.this$0.m1066getCurrentSizeYbymL2g()))) - i));
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
        return invoke(num.intValue());
    }
}
