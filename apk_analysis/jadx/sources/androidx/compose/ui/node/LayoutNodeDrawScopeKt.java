package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutNodeDrawScopeKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier.Node nextDrawNode(DelegatableNode delegatableNode) {
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(4);
        int iM8019constructorimpl2 = NodeKind.m8019constructorimpl(2);
        Modifier.Node child$ui = delegatableNode.getNode().getChild$ui();
        if (child$ui == null || (child$ui.getAggregateChildKindSet$ui() & iM8019constructorimpl) == 0) {
            return null;
        }
        while (child$ui != null && (child$ui.getKindSet$ui() & iM8019constructorimpl2) == 0) {
            if ((child$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                return child$ui;
            }
            child$ui = child$ui.getChild$ui();
        }
        return null;
    }
}
