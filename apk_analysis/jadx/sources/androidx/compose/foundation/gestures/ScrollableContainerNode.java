package androidx.compose.foundation.gestures;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.TraversableNode;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class ScrollableContainerNode extends Modifier.Node implements TraversableNode {
    private boolean enabled;
    private final Object traverseKey = TraverseKey;
    public static final TraverseKey TraverseKey = new TraverseKey(null);
    public static final int $stable = 8;

    public ScrollableContainerNode(boolean z) {
        this.enabled = z;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public Object getTraverseKey() {
        return this.traverseKey;
    }

    public final void update(boolean z) {
        this.enabled = z;
    }

    public static final class TraverseKey {
        public /* synthetic */ TraverseKey(jh2 jh2Var) {
            this();
        }

        private TraverseKey() {
        }
    }
}
