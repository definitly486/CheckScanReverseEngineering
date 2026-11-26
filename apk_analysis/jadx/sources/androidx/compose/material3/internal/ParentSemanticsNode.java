package androidx.compose.material3.internal;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ParentSemanticsNode extends Modifier.Node implements TraversableNode, SemanticsModifierNode {
    public static final int $stable = 8;
    private nl3<? super SemanticsPropertyReceiver, j59> properties;
    private boolean semanticsConsumed;
    private final Object traverseKey = ParentSemanticsNodeKey.INSTANCE;

    public ParentSemanticsNode(nl3<? super SemanticsPropertyReceiver, j59> nl3Var) {
        this.properties = nl3Var;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (this.semanticsConsumed) {
            return;
        }
        this.properties.invoke(semanticsPropertyReceiver);
    }

    public final nl3<SemanticsPropertyReceiver, j59> getProperties() {
        return this.properties;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public boolean getShouldMergeDescendantSemantics() {
        return true;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public Object getTraverseKey() {
        return this.traverseKey;
    }

    public final void obtainSemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        this.semanticsConsumed = true;
        this.properties.invoke(semanticsPropertyReceiver);
        SemanticsModifierNodeKt.invalidateSemantics(this);
    }

    public final void releaseSemantics() {
        this.semanticsConsumed = false;
        SemanticsModifierNodeKt.invalidateSemantics(this);
    }

    public final void setProperties(nl3<? super SemanticsPropertyReceiver, j59> nl3Var) {
        this.properties = nl3Var;
    }
}
