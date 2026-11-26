package androidx.compose.ui.platform;

import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusTargetNode;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidComposeView$RootModifierNode$onKeyEvent$focusWasMovedOrCancelled$2 extends gh4 implements nl3<FocusTargetNode, Boolean> {
    final /* synthetic */ FocusDirection $focusDirection;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeView$RootModifierNode$onKeyEvent$focusWasMovedOrCancelled$2(FocusDirection focusDirection) {
        super(1);
        this.$focusDirection = focusDirection;
    }

    @Override // defpackage.nl3
    public final Boolean invoke(FocusTargetNode focusTargetNode) {
        return Boolean.valueOf(focusTargetNode.mo5896requestFocus3ESFkO8(this.$focusDirection.m5865unboximpl()));
    }
}
