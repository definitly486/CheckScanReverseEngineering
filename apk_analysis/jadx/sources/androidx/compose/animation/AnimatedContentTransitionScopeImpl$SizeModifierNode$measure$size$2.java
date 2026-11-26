package androidx.compose.animation;

import androidx.compose.runtime.State;
import androidx.compose.ui.unit.IntSize;
import defpackage.aa4;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: Add missing generic type declarations: [S] */
/* JADX INFO: loaded from: classes.dex */
public final class AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$2<S> extends gh4 implements nl3<S, IntSize> {
    final /* synthetic */ long $currentSize;
    final /* synthetic */ AnimatedContentTransitionScopeImpl.SizeModifierNode<S> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$2(AnimatedContentTransitionScopeImpl.SizeModifierNode<S> sizeModifierNode, long j) {
        super(1);
        this.this$0 = sizeModifierNode;
        this.$currentSize = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ IntSize invoke(Object obj) {
        return IntSize.m9205boximpl(m1074invokeYEO4UFw(obj));
    }

    /* JADX INFO: renamed from: invoke-YEO4UFw, reason: not valid java name */
    public final long m1074invokeYEO4UFw(S s) {
        boolean zE = aa4.e(s, this.this$0.getScope().getInitialState());
        AnimatedContentTransitionScopeImpl.SizeModifierNode<S> sizeModifierNode = this.this$0;
        if (zE) {
            return sizeModifierNode.m1072lastContinuousSizeOrDefaultmzRDjE0(this.$currentSize);
        }
        State<IntSize> state = sizeModifierNode.getScope().getTargetSizeMap$animation().get(s);
        return state != null ? state.getValue().m9217unboximpl() : IntSize.Companion.m9218getZeroYbymL2g();
    }
}
