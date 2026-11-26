package androidx.compose.ui.focus;

import defpackage.gh4;
import defpackage.nl3;
import defpackage.r07;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusOwnerImpl$moveFocus$focusSearchSuccess$1 extends gh4 implements nl3<FocusTargetNode, Boolean> {
    final /* synthetic */ int $focusDirection;
    final /* synthetic */ r07<Boolean> $requestFocusSuccess;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusOwnerImpl$moveFocus$focusSearchSuccess$1(r07<Boolean> r07Var, int i) {
        super(1);
        this.$requestFocusSuccess = r07Var;
        this.$focusDirection = i;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [T, java.lang.Boolean] */
    @Override // defpackage.nl3
    public final Boolean invoke(FocusTargetNode focusTargetNode) {
        this.$requestFocusSuccess.b = Boolean.valueOf(focusTargetNode.mo5896requestFocus3ESFkO8(this.$focusDirection));
        return this.$requestFocusSuccess.b;
    }
}
