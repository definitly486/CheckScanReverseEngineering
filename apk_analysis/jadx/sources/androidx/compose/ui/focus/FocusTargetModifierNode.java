package androidx.compose.ui.focus;

import androidx.compose.ui.node.DelegatableNode;
import defpackage.n1;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public interface FocusTargetModifierNode extends DelegatableNode {
    /* JADX INFO: renamed from: requestFocus-3ESFkO8$default, reason: not valid java name */
    static /* synthetic */ boolean m5894requestFocus3ESFkO8$default(FocusTargetModifierNode focusTargetModifierNode, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: requestFocus-3ESFkO8");
            return false;
        }
        if ((i2 & 1) != 0) {
            i = FocusDirection.Companion.m5867getEnterdhqQ8s();
        }
        return focusTargetModifierNode.mo5896requestFocus3ESFkO8(i);
    }

    FocusState getFocusState();

    /* JADX INFO: renamed from: getFocusability-LCbbffg, reason: not valid java name */
    int mo5895getFocusabilityLCbbffg();

    @ul2
    /* synthetic */ boolean requestFocus();

    /* JADX INFO: renamed from: requestFocus-3ESFkO8, reason: not valid java name */
    boolean mo5896requestFocus3ESFkO8(int i);

    /* JADX INFO: renamed from: setFocusability-josRg5g, reason: not valid java name */
    void mo5897setFocusabilityjosRg5g(int i);
}
