package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;

/* JADX INFO: loaded from: classes.dex */
final class OverscrollModifierNode extends DelegatingNode {
    private DelegatableNode overscrollNode;

    public OverscrollModifierNode(DelegatableNode delegatableNode) {
        this.overscrollNode = delegatableNode;
    }

    private final void attachIfNeeded() {
        DelegatableNode delegatableNodeDelegate;
        Modifier.Node node;
        DelegatableNode delegatableNode = this.overscrollNode;
        if (delegatableNode == null || (node = delegatableNode.getNode()) == null || node.isAttached()) {
            delegatableNodeDelegate = null;
        } else {
            DelegatableNode delegatableNode2 = this.overscrollNode;
            delegatableNode2.getClass();
            delegatableNodeDelegate = delegate(delegatableNode2);
        }
        this.overscrollNode = delegatableNodeDelegate;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        attachIfNeeded();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        DelegatableNode delegatableNode = this.overscrollNode;
        if (delegatableNode != null) {
            undelegate(delegatableNode);
        }
    }

    public final void update(DelegatableNode delegatableNode) {
        DelegatableNode delegatableNode2 = this.overscrollNode;
        if (delegatableNode2 != null) {
            undelegate(delegatableNode2);
        }
        this.overscrollNode = delegatableNode;
        attachIfNeeded();
    }
}
