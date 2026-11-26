package androidx.compose.material3.internal;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.ii1;
import defpackage.j59;
import defpackage.ji1;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ChildSemanticsNode extends Modifier.Node implements SemanticsModifierNode {
    public static final int $stable = 8;
    private nl3<? super SemanticsPropertyReceiver, j59> properties;

    public ChildSemanticsNode(nl3<? super SemanticsPropertyReceiver, j59> nl3Var) {
        this.properties = nl3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$1(SemanticsPropertyReceiver semanticsPropertyReceiver, TraversableNode traversableNode) {
        traversableNode.getClass();
        ((ParentSemanticsNode) traversableNode).obtainSemantics(semanticsPropertyReceiver);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onDetach$lambda$2(TraversableNode traversableNode) {
        traversableNode.getClass();
        ((ParentSemanticsNode) traversableNode).releaseSemantics();
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        TraversableNodeKt.traverseAncestors(this, ParentSemanticsNodeKey.INSTANCE, new ii1(semanticsPropertyReceiver, 0));
        this.properties.invoke(semanticsPropertyReceiver);
    }

    public final nl3<SemanticsPropertyReceiver, j59> getProperties() {
        return this.properties;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        super.onDetach();
        TraversableNodeKt.traverseAncestors(this, ParentSemanticsNodeKey.INSTANCE, new ji1(0));
    }

    public final void setProperties(nl3<? super SemanticsPropertyReceiver, j59> nl3Var) {
        this.properties = nl3Var;
    }
}
