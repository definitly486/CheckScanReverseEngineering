package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.TraversableNode;
import defpackage.jh2;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public final class GestureNode extends Modifier.Node implements TraversableNode, DelegatableNode {
    public static final TraverseKey TraverseKey = new TraverseKey(null);
    private final GestureConnection gestureConnection;

    public GestureNode(GestureConnection gestureConnection) {
        this.gestureConnection = gestureConnection;
    }

    public final GestureConnection getGestureConnection() {
        return this.gestureConnection;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public Object getTraverseKey() {
        return TraverseKey;
    }

    public static final class TraverseKey {
        public /* synthetic */ TraverseKey(jh2 jh2Var) {
            this();
        }

        private TraverseKey() {
        }
    }
}
