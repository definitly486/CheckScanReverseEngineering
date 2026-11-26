package androidx.compose.animation;

import androidx.compose.ui.unit.IntOffset;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class EnterExitTransitionModifierNode$measure$slideOffset$1 extends gh4 implements nl3<EnterExitState, IntOffset> {
    final /* synthetic */ long $target;
    final /* synthetic */ EnterExitTransitionModifierNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnterExitTransitionModifierNode$measure$slideOffset$1(EnterExitTransitionModifierNode enterExitTransitionModifierNode, long j) {
        super(1);
        this.this$0 = enterExitTransitionModifierNode;
        this.$target = j;
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ IntOffset invoke(EnterExitState enterExitState) {
        return IntOffset.m9161boximpl(m1118invokeBjo55l4(enterExitState));
    }

    /* JADX INFO: renamed from: invoke-Bjo55l4, reason: not valid java name */
    public final long m1118invokeBjo55l4(EnterExitState enterExitState) {
        return this.this$0.m1114slideTargetValueByStateoFUgxo0(enterExitState, this.$target);
    }
}
