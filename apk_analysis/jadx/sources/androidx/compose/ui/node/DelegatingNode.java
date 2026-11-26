package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import defpackage.aa4;
import defpackage.ah;
import defpackage.j59;
import defpackage.nl3;
import defpackage.og;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DelegatingNode extends Modifier.Node {
    public static final int $stable = 8;
    private Modifier.Node delegate;
    private final int selfKindSet = NodeKindKt.calculateNodeKindSetFrom(this);

    public static /* synthetic */ void getSelfKindSet$ui$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    private final void updateNodeKindSet(int i, boolean z) {
        ?? parent$ui;
        Modifier.Node child$ui;
        int kindSet$ui = getKindSet$ui();
        setKindSet$ui(i);
        if (kindSet$ui != i) {
            if (DelegatableNodeKt.isDelegationRoot(this)) {
                setAggregateChildKindSet$ui(i);
            }
            if (isAttached()) {
                Modifier.Node node = getNode();
                while (parent$ui != 0) {
                    i |= parent$ui.getKindSet$ui();
                    parent$ui.setKindSet$ui(i);
                    if (parent$ui == node) {
                        break;
                    }
                    this = this;
                    parent$ui = parent$ui.getParent$ui();
                }
                if (z && parent$ui == node) {
                    i = NodeKindKt.calculateNodeKindSetFromIncludingDelegates(node);
                    node.setKindSet$ui(i);
                }
                int aggregateChildKindSet$ui = i | ((parent$ui == 0 || (child$ui = parent$ui.getChild$ui()) == null) ? 0 : child$ui.getAggregateChildKindSet$ui());
                for (?? parent$ui2 = parent$ui; parent$ui2 != 0; parent$ui2 = parent$ui2.getParent$ui()) {
                    aggregateChildKindSet$ui |= parent$ui2.getKindSet$ui();
                    parent$ui2.setAggregateChildKindSet$ui(aggregateChildKindSet$ui);
                }
            }
        }
    }

    private final void validateDelegateKindSet(int i, Modifier.Node node) {
        int kindSet$ui = getKindSet$ui();
        if ((i & NodeKind.m8019constructorimpl(2)) == 0 || (NodeKind.m8019constructorimpl(2) & kindSet$ui) == 0 || (this instanceof LayoutModifierNode)) {
            return;
        }
        InlineClassHelperKt.throwIllegalStateException("Delegating to multiple LayoutModifierNodes without the delegating node implementing LayoutModifierNode itself is not allowed.\nDelegating Node: " + this + "\nDelegate Node: " + node);
    }

    public final <T extends DelegatableNode> T delegate(T t) {
        Modifier.Node node = t.getNode();
        if (node != t) {
            Modifier.Node node2 = t instanceof Modifier.Node ? (Modifier.Node) t : null;
            Modifier.Node parent$ui = node2 != null ? node2.getParent$ui() : null;
            if (node == getNode() && aa4.e(parent$ui, this)) {
                return t;
            }
            ah.f("Cannot delegate to an already delegated node");
            return null;
        }
        if (node.isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("Cannot delegate to an already attached node");
        }
        node.setAsDelegateTo$ui(getNode());
        int kindSet$ui = getKindSet$ui();
        int iCalculateNodeKindSetFromIncludingDelegates = NodeKindKt.calculateNodeKindSetFromIncludingDelegates(node);
        node.setKindSet$ui(iCalculateNodeKindSetFromIncludingDelegates);
        validateDelegateKindSet(iCalculateNodeKindSetFromIncludingDelegates, node);
        node.setChild$ui(this.delegate);
        this.delegate = node;
        node.setParent$ui(this);
        updateNodeKindSet(getKindSet$ui() | iCalculateNodeKindSetFromIncludingDelegates, false);
        if (isAttached()) {
            if ((iCalculateNodeKindSetFromIncludingDelegates & NodeKind.m8019constructorimpl(2)) == 0 || (kindSet$ui & NodeKind.m8019constructorimpl(2)) != 0) {
                updateCoordinator$ui(getCoordinator$ui());
            } else {
                NodeChain nodes$ui = DelegatableNodeKt.requireLayoutNode(this).getNodes$ui();
                getNode().updateCoordinator$ui(null);
                nodes$ui.syncCoordinators();
            }
            node.markAsAttached$ui();
            node.runAttachLifecycle$ui();
            NodeKindKt.autoInvalidateInsertedNode(node);
        }
        return t;
    }

    public final <T extends DelegatableNode> T delegateUnprotected$ui(T t) {
        return (T) delegate(t);
    }

    public final void forEachImmediateDelegate$ui(nl3<? super Modifier.Node, j59> nl3Var) {
        for (Modifier.Node delegate$ui = getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
            nl3Var.invoke(delegate$ui);
        }
    }

    public final Modifier.Node getDelegate$ui() {
        return this.delegate;
    }

    public final int getSelfKindSet$ui() {
        return this.selfKindSet;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void markAsAttached$ui() {
        super.markAsAttached$ui();
        for (Modifier.Node delegate$ui = getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
            delegate$ui.updateCoordinator$ui(getCoordinator$ui());
            if (!delegate$ui.isAttached()) {
                delegate$ui.markAsAttached$ui();
            }
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void markAsDetached$ui() {
        for (Modifier.Node delegate$ui = getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
            delegate$ui.markAsDetached$ui();
        }
        super.markAsDetached$ui();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void reset$ui() {
        super.reset$ui();
        for (Modifier.Node delegate$ui = getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
            delegate$ui.reset$ui();
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void runAttachLifecycle$ui() {
        for (Modifier.Node delegate$ui = getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
            delegate$ui.runAttachLifecycle$ui();
        }
        super.runAttachLifecycle$ui();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void runDetachLifecycle$ui() {
        super.runDetachLifecycle$ui();
        for (Modifier.Node delegate$ui = getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
            delegate$ui.runDetachLifecycle$ui();
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void setAsDelegateTo$ui(Modifier.Node node) {
        super.setAsDelegateTo$ui(node);
        for (Modifier.Node delegate$ui = getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
            delegate$ui.setAsDelegateTo$ui(node);
        }
    }

    public final void setDelegate$ui(Modifier.Node node) {
        this.delegate = node;
    }

    public final void undelegate(DelegatableNode delegatableNode) {
        Modifier.Node node = null;
        for (Modifier.Node child$ui = this.delegate; child$ui != null; child$ui = child$ui.getChild$ui()) {
            if (child$ui == delegatableNode) {
                if (child$ui.isAttached()) {
                    NodeKindKt.autoInvalidateRemovedNode(child$ui);
                    child$ui.runDetachLifecycle$ui();
                    child$ui.markAsDetached$ui();
                }
                child$ui.setAsDelegateTo$ui(child$ui);
                child$ui.setAggregateChildKindSet$ui(0);
                if (node == null) {
                    this.delegate = child$ui.getChild$ui();
                } else {
                    node.setChild$ui(child$ui.getChild$ui());
                }
                child$ui.setChild$ui(null);
                child$ui.setParent$ui(null);
                int kindSet$ui = getKindSet$ui();
                int iCalculateNodeKindSetFromIncludingDelegates = NodeKindKt.calculateNodeKindSetFromIncludingDelegates(this);
                updateNodeKindSet(iCalculateNodeKindSetFromIncludingDelegates, true);
                if (isAttached() && (kindSet$ui & NodeKind.m8019constructorimpl(2)) != 0 && (NodeKind.m8019constructorimpl(2) & iCalculateNodeKindSetFromIncludingDelegates) == 0) {
                    NodeChain nodes$ui = DelegatableNodeKt.requireLayoutNode(this).getNodes$ui();
                    getNode().updateCoordinator$ui(null);
                    nodes$ui.syncCoordinators();
                    return;
                }
                return;
            }
            node = child$ui;
        }
        og.e(delegatableNode, "Could not find delegate: ");
    }

    public final void undelegateUnprotected$ui(DelegatableNode delegatableNode) {
        undelegate(delegatableNode);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void updateCoordinator$ui(NodeCoordinator nodeCoordinator) {
        super.updateCoordinator$ui(nodeCoordinator);
        for (Modifier.Node delegate$ui = getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
            delegate$ui.updateCoordinator$ui(nodeCoordinator);
        }
    }
}
