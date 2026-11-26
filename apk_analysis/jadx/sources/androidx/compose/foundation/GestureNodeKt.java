package androidx.compose.foundation;

import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import defpackage.ah;
import defpackage.nl3;
import defpackage.vh0;

/* JADX INFO: loaded from: classes.dex */
public final class GestureNodeKt {
    public static final DelegatableNode gestureNode(GestureConnection gestureConnection) {
        return new GestureNode(gestureConnection);
    }

    public static final GestureConnection getParentGestureConnection(DelegatableNode delegatableNode) {
        TraversableNode traversableNodeFindNearestAncestor = TraversableNodeKt.findNearestAncestor(delegatableNode, GestureNode.TraverseKey);
        GestureNode gestureNode = traversableNodeFindNearestAncestor instanceof GestureNode ? (GestureNode) traversableNodeFindNearestAncestor : null;
        if (gestureNode != null) {
            return gestureNode.getGestureConnection();
        }
        return null;
    }

    public static final void traverseAncestorGestureConnections(DelegatableNode delegatableNode, nl3<? super GestureConnection, Boolean> nl3Var) {
        TraversableNodeKt.traverseAncestors(delegatableNode, GestureNode.TraverseKey, new vh0(nl3Var, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean traverseAncestorGestureConnections$lambda$0(nl3 nl3Var, TraversableNode traversableNode) {
        if (traversableNode instanceof GestureNode) {
            return ((Boolean) nl3Var.invoke(((GestureNode) traversableNode).getGestureConnection())).booleanValue();
        }
        ah.f("Node is not a GestureNode instance");
        return false;
    }
}
