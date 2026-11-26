package androidx.compose.ui.focus;

import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusOwnerImpl$resetFocus$successfulReset$1 extends gh4 implements nl3<FocusTargetNode, Boolean> {
    final /* synthetic */ int $focusDirection;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusOwnerImpl$resetFocus$successfulReset$1(int i) {
        super(1);
        this.$focusDirection = i;
    }

    @Override // defpackage.nl3
    public final Boolean invoke(FocusTargetNode focusTargetNode) {
        return Boolean.valueOf(focusTargetNode.mo5896requestFocus3ESFkO8(this.$focusDirection));
    }
}
