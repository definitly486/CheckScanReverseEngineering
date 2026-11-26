package androidx.compose.animation;

import androidx.compose.ui.unit.IntSize;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class EnterExitTransitionModifierNode$measure$animSize$1 extends gh4 implements nl3<EnterExitState, IntSize> {
    final /* synthetic */ long $target;
    final /* synthetic */ EnterExitTransitionModifierNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnterExitTransitionModifierNode$measure$animSize$1(EnterExitTransitionModifierNode enterExitTransitionModifierNode, long j) {
        super(1);
        this.this$0 = enterExitTransitionModifierNode;
        this.$target = j;
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ IntSize invoke(EnterExitState enterExitState) {
        return IntSize.m9205boximpl(m1116invokeYEO4UFw(enterExitState));
    }

    /* JADX INFO: renamed from: invoke-YEO4UFw, reason: not valid java name */
    public final long m1116invokeYEO4UFw(EnterExitState enterExitState) {
        return this.this$0.m1113sizeByStateUzc_VyU(enterExitState, this.$target);
    }
}
