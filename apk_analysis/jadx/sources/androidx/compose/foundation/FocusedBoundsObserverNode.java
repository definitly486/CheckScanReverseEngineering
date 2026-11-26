package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class FocusedBoundsObserverNode extends Modifier.Node implements TraversableNode {
    private nl3<? super LayoutCoordinates, j59> onPositioned;
    private final Object traverseKey = TraverseKey;
    public static final TraverseKey TraverseKey = new TraverseKey(null);
    public static final int $stable = 8;

    public FocusedBoundsObserverNode(nl3<? super LayoutCoordinates, j59> nl3Var) {
        this.onPositioned = nl3Var;
    }

    public final nl3<LayoutCoordinates, j59> getOnPositioned() {
        return this.onPositioned;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public Object getTraverseKey() {
        return this.traverseKey;
    }

    public final void onFocusBoundsChanged(LayoutCoordinates layoutCoordinates) {
        this.onPositioned.invoke(layoutCoordinates);
        FocusedBoundsObserverNode focusedBoundsObserverNode = (FocusedBoundsObserverNode) TraversableNodeKt.findNearestAncestor(this);
        if (focusedBoundsObserverNode != null) {
            focusedBoundsObserverNode.onFocusBoundsChanged(layoutCoordinates);
        }
    }

    public final void setOnPositioned(nl3<? super LayoutCoordinates, j59> nl3Var) {
        this.onPositioned = nl3Var;
    }

    public static final class TraverseKey {
        public /* synthetic */ TraverseKey(jh2 jh2Var) {
            this();
        }

        private TraverseKey() {
        }
    }
}
