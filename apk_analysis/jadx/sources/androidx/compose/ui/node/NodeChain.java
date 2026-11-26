package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.ModifierInfo;
import defpackage.aa4;
import defpackage.ag;
import defpackage.fg;
import defpackage.j59;
import defpackage.kx2;
import defpackage.nl3;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class NodeChain {
    public static final int $stable = 8;
    private MutableVector<Modifier.Element> buffer;
    private Differ cachedDiffer;
    private MutableVector<Modifier.Element> current;
    private Modifier.Node head;
    private final InnerNodeCoordinator innerCoordinator;
    private final LayoutNode layoutNode;
    private Logger logger;
    private NodeCoordinator outerCoordinator;
    private final NodeChain$sentinelHead$1 sentinelHead;
    private final MutableVector<Modifier> stack;
    private final Modifier.Node tail;

    public final class Differ implements DiffCallback {
        private MutableVector<Modifier.Element> after;
        private MutableVector<Modifier.Element> before;
        private Modifier.Node node;
        private int offset;
        private boolean shouldAttachOnInsert;

        public Differ(Modifier.Node node, int i, MutableVector<Modifier.Element> mutableVector, MutableVector<Modifier.Element> mutableVector2, boolean z) {
            this.node = node;
            this.offset = i;
            this.before = mutableVector;
            this.after = mutableVector2;
            this.shouldAttachOnInsert = z;
        }

        @Override // androidx.compose.ui.node.DiffCallback
        public boolean areItemsTheSame(int i, int i2) {
            MutableVector<Modifier.Element> mutableVector = this.before;
            int i3 = this.offset;
            return NodeChainKt.actionForModifiers(mutableVector.content[i + i3], this.after.content[i3 + i2]) != 0;
        }

        public final MutableVector<Modifier.Element> getAfter() {
            return this.after;
        }

        public final MutableVector<Modifier.Element> getBefore() {
            return this.before;
        }

        public final Modifier.Node getNode() {
            return this.node;
        }

        public final int getOffset() {
            return this.offset;
        }

        public final boolean getShouldAttachOnInsert() {
            return this.shouldAttachOnInsert;
        }

        @Override // androidx.compose.ui.node.DiffCallback
        public void insert(int i) {
            int i2 = this.offset + i;
            Modifier.Node node = this.node;
            this.node = NodeChain.this.createAndInsertNodeAsChild(this.after.content[i2], node);
            Logger logger = NodeChain.this.logger;
            if (logger != null) {
                logger.nodeInserted(i2, i2, this.after.content[i2], node, this.node);
            }
            boolean z = this.shouldAttachOnInsert;
            Modifier.Node node2 = this.node;
            if (!z) {
                node2.setInsertedNodeAwaitingAttachForInvalidation$ui(true);
                return;
            }
            Modifier.Node child$ui = node2.getChild$ui();
            child$ui.getClass();
            NodeCoordinator coordinator$ui = child$ui.getCoordinator$ui();
            coordinator$ui.getClass();
            LayoutModifierNode layoutModifierNodeAsLayoutModifierNode = DelegatableNodeKt.asLayoutModifierNode(this.node);
            if (layoutModifierNodeAsLayoutModifierNode != null) {
                LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = new LayoutModifierNodeCoordinator(NodeChain.this.getLayoutNode(), layoutModifierNodeAsLayoutModifierNode);
                this.node.updateCoordinator$ui(layoutModifierNodeCoordinator);
                NodeChain.this.propagateCoordinator(this.node, layoutModifierNodeCoordinator);
                layoutModifierNodeCoordinator.setWrappedBy$ui(coordinator$ui.getWrappedBy$ui());
                layoutModifierNodeCoordinator.setWrapped$ui(coordinator$ui);
                coordinator$ui.setWrappedBy$ui(layoutModifierNodeCoordinator);
            } else {
                this.node.updateCoordinator$ui(coordinator$ui);
            }
            this.node.markAsAttached$ui();
            this.node.runAttachLifecycle$ui();
            NodeKindKt.autoInvalidateInsertedNode(this.node);
        }

        @Override // androidx.compose.ui.node.DiffCallback
        public void remove(int i, int i2) {
            Modifier.Node child$ui = this.node.getChild$ui();
            child$ui.getClass();
            Logger logger = NodeChain.this.logger;
            if (logger != null) {
                MutableVector<Modifier.Element> mutableVector = this.before;
                logger.nodeRemoved(i2, mutableVector.content[this.offset + i2], child$ui);
            }
            if ((NodeKind.m8019constructorimpl(2) & child$ui.getKindSet$ui()) != 0) {
                NodeCoordinator coordinator$ui = child$ui.getCoordinator$ui();
                coordinator$ui.getClass();
                NodeCoordinator wrappedBy$ui = coordinator$ui.getWrappedBy$ui();
                NodeCoordinator wrapped$ui = coordinator$ui.getWrapped$ui();
                wrapped$ui.getClass();
                if (wrappedBy$ui != null) {
                    wrappedBy$ui.setWrapped$ui(wrapped$ui);
                }
                wrapped$ui.setWrappedBy$ui(wrappedBy$ui);
                NodeChain.this.propagateCoordinator(this.node, wrapped$ui);
            }
            this.node = NodeChain.this.detachAndRemoveNode(child$ui);
        }

        @Override // androidx.compose.ui.node.DiffCallback
        public void same(int i, int i2) {
            Modifier.Node child$ui = this.node.getChild$ui();
            child$ui.getClass();
            this.node = child$ui;
            MutableVector<Modifier.Element> mutableVector = this.before;
            int i3 = this.offset;
            Modifier.Element element = mutableVector.content[i3 + i];
            Modifier.Element element2 = this.after.content[i3 + i2];
            boolean zE = aa4.e(element, element2);
            NodeChain nodeChain = NodeChain.this;
            if (zE) {
                Logger logger = nodeChain.logger;
                if (logger != null) {
                    int i4 = this.offset;
                    logger.nodeReused(i4 + i, i4 + i2, element, element2, this.node);
                    return;
                }
                return;
            }
            nodeChain.updateNode(element, element2, this.node);
            Logger logger2 = NodeChain.this.logger;
            if (logger2 != null) {
                int i5 = this.offset;
                logger2.nodeUpdated(i5 + i, i5 + i2, element, element2, this.node);
            }
        }

        public final void setAfter(MutableVector<Modifier.Element> mutableVector) {
            this.after = mutableVector;
        }

        public final void setBefore(MutableVector<Modifier.Element> mutableVector) {
            this.before = mutableVector;
        }

        public final void setNode(Modifier.Node node) {
            this.node = node;
        }

        public final void setOffset(int i) {
            this.offset = i;
        }

        public final void setShouldAttachOnInsert(boolean z) {
            this.shouldAttachOnInsert = z;
        }
    }

    public interface Logger {
        void linearDiffAborted(int i, Modifier.Element element, Modifier.Element element2, Modifier.Node node);

        void nodeInserted(int i, int i2, Modifier.Element element, Modifier.Node node, Modifier.Node node2);

        void nodeRemoved(int i, Modifier.Element element, Modifier.Node node);

        void nodeReused(int i, int i2, Modifier.Element element, Modifier.Element element2, Modifier.Node node);

        void nodeUpdated(int i, int i2, Modifier.Element element, Modifier.Element element2, Modifier.Node node);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.Modifier$Node, androidx.compose.ui.node.NodeChain$sentinelHead$1] */
    public NodeChain(LayoutNode layoutNode) {
        this.layoutNode = layoutNode;
        ?? r0 = new Modifier.Node() { // from class: androidx.compose.ui.node.NodeChain$sentinelHead$1
            public String toString() {
                return "<Head>";
            }
        };
        r0.setAggregateChildKindSet$ui(-1);
        this.sentinelHead = r0;
        InnerNodeCoordinator innerNodeCoordinator = new InnerNodeCoordinator(layoutNode);
        this.innerCoordinator = innerNodeCoordinator;
        this.outerCoordinator = innerNodeCoordinator;
        TailModifierNode tail = innerNodeCoordinator.getTail();
        this.tail = tail;
        this.head = tail;
        this.stack = new MutableVector<>(new Modifier[16], 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Modifier.Node createAndInsertNodeAsChild(Modifier.Element element, Modifier.Node node) {
        Modifier.Node backwardsCompatNode;
        if (element instanceof ModifierNodeElement) {
            backwardsCompatNode = ((ModifierNodeElement) element).create();
            backwardsCompatNode.setKindSet$ui(NodeKindKt.calculateNodeKindSetFromIncludingDelegates(backwardsCompatNode));
        } else {
            backwardsCompatNode = new BackwardsCompatNode(element);
        }
        if (backwardsCompatNode.isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("A ModifierNodeElement cannot return an already attached node from create() ");
        }
        backwardsCompatNode.setInsertedNodeAwaitingAttachForInvalidation$ui(true);
        return insertChild(backwardsCompatNode, node);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Modifier.Node detachAndRemoveNode(Modifier.Node node) {
        if (node.isAttached()) {
            NodeKindKt.autoInvalidateRemovedNode(node);
            node.runDetachLifecycle$ui();
            node.markAsDetached$ui();
        }
        return removeNode(node);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getAggregateChildKindSet() {
        return this.head.getAggregateChildKindSet$ui();
    }

    private final Differ getDiffer(Modifier.Node node, int i, MutableVector<Modifier.Element> mutableVector, MutableVector<Modifier.Element> mutableVector2, boolean z) {
        Differ differ = this.cachedDiffer;
        if (differ == null) {
            Differ differ2 = new Differ(node, i, mutableVector, mutableVector2, z);
            this.cachedDiffer = differ2;
            return differ2;
        }
        differ.setNode(node);
        differ.setOffset(i);
        differ.setBefore(mutableVector);
        differ.setAfter(mutableVector2);
        differ.setShouldAttachOnInsert(z);
        return differ;
    }

    private final Modifier.Node insertChild(Modifier.Node node, Modifier.Node node2) {
        Modifier.Node child$ui = node2.getChild$ui();
        if (child$ui != null) {
            child$ui.setParent$ui(node);
            node.setChild$ui(child$ui);
        }
        node2.setChild$ui(node);
        node.setParent$ui(node2);
        return node;
    }

    private final Modifier.Node padChain() {
        if (!(this.head != this.sentinelHead)) {
            InlineClassHelperKt.throwIllegalStateException("padChain called on already padded chain");
        }
        Modifier.Node node = this.head;
        node.setParent$ui(this.sentinelHead);
        setChild$ui(node);
        return this.sentinelHead;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void propagateCoordinator(Modifier.Node node, NodeCoordinator nodeCoordinator) {
        for (Modifier.Node parent$ui = node.getParent$ui(); parent$ui != null; parent$ui = parent$ui.getParent$ui()) {
            if (parent$ui == this.sentinelHead) {
                LayoutNode parent$ui2 = this.layoutNode.getParent$ui();
                nodeCoordinator.setWrappedBy$ui(parent$ui2 != null ? parent$ui2.getInnerCoordinator$ui() : null);
                this.outerCoordinator = nodeCoordinator;
                return;
            } else {
                if ((NodeKind.m8019constructorimpl(2) & parent$ui.getKindSet$ui()) != 0) {
                    return;
                }
                parent$ui.updateCoordinator$ui(nodeCoordinator);
            }
        }
    }

    private final Modifier.Node removeNode(Modifier.Node node) {
        Modifier.Node child$ui = node.getChild$ui();
        Modifier.Node parent$ui = node.getParent$ui();
        if (child$ui != null) {
            child$ui.setParent$ui(parent$ui);
            node.setChild$ui(null);
        }
        if (parent$ui != null) {
            parent$ui.setChild$ui(child$ui);
            node.setParent$ui(null);
        }
        parent$ui.getClass();
        return parent$ui;
    }

    private final void structuralUpdate(int i, MutableVector<Modifier.Element> mutableVector, MutableVector<Modifier.Element> mutableVector2, Modifier.Node node, boolean z) {
        MyersDiffKt.executeDiff(mutableVector.getSize() - i, mutableVector2.getSize() - i, getDiffer(node, i, mutableVector, mutableVector2, z));
        syncAggregateChildKindSet();
    }

    private final void syncAggregateChildKindSet() {
        int kindSet$ui = 0;
        for (Modifier.Node parent$ui = this.tail.getParent$ui(); parent$ui != null && parent$ui != this.sentinelHead; parent$ui = parent$ui.getParent$ui()) {
            kindSet$ui |= parent$ui.getKindSet$ui();
            parent$ui.setAggregateChildKindSet$ui(kindSet$ui);
        }
    }

    private final Modifier.Node trimChain(Modifier.Node node) {
        if (!(node == this.sentinelHead)) {
            InlineClassHelperKt.throwIllegalStateException("trimChain called on already trimmed chain");
        }
        Modifier.Node child$ui = getChild$ui();
        if (child$ui == null) {
            child$ui = this.tail;
        }
        child$ui.setParent$ui(null);
        setChild$ui(null);
        setAggregateChildKindSet$ui(-1);
        updateCoordinator$ui(null);
        if (!(child$ui != this.sentinelHead)) {
            InlineClassHelperKt.throwIllegalStateException("trimChain did not update the head");
        }
        return child$ui;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateNode(Modifier.Element element, Modifier.Element element2, Modifier.Node node) {
        if ((element instanceof ModifierNodeElement) && (element2 instanceof ModifierNodeElement)) {
            NodeChainKt.updateUnsafe((ModifierNodeElement) element2, node);
            if (node.isAttached()) {
                NodeKindKt.autoInvalidateUpdatedNode(node);
                return;
            } else {
                node.setUpdatedNodeAwaitingAttachForInvalidation$ui(true);
                return;
            }
        }
        if (!(node instanceof BackwardsCompatNode)) {
            InlineClassHelperKt.throwIllegalStateException("Unknown Modifier.Node type");
            return;
        }
        ((BackwardsCompatNode) node).setElement(element2);
        if (node.isAttached()) {
            NodeKindKt.autoInvalidateUpdatedNode(node);
        } else {
            node.setUpdatedNodeAwaitingAttachForInvalidation$ui(true);
        }
    }

    /* JADX INFO: renamed from: firstFromHead-aLcG6gQ$ui, reason: not valid java name */
    public final <T> T m7978firstFromHeadaLcG6gQ$ui(int i, nl3<? super T, Boolean> nl3Var) {
        if ((getAggregateChildKindSet() & i) != 0) {
            for (Modifier.Node head$ui = getHead$ui(); head$ui != null; head$ui = head$ui.getChild$ui()) {
                if ((head$ui.getKindSet$ui() & i) != 0) {
                    aa4.i();
                    throw null;
                }
                if ((head$ui.getAggregateChildKindSet$ui() & i) == 0) {
                    break;
                }
            }
        }
        return null;
    }

    public final Modifier.Node getHead$ui() {
        return this.head;
    }

    public final InnerNodeCoordinator getInnerCoordinator$ui() {
        return this.innerCoordinator;
    }

    public final LayoutNode getLayoutNode() {
        return this.layoutNode;
    }

    public final List<ModifierInfo> getModifierInfo() {
        MutableVector<Modifier.Element> mutableVector = this.current;
        if (mutableVector == null) {
            return kx2.b;
        }
        int i = 0;
        MutableVector mutableVector2 = new MutableVector(new ModifierInfo[mutableVector.getSize()], 0);
        Modifier.Node head$ui = getHead$ui();
        while (head$ui != null && head$ui != getTail$ui()) {
            NodeCoordinator coordinator$ui = head$ui.getCoordinator$ui();
            OwnedLayer ownedLayer = null;
            if (coordinator$ui == null) {
                fg.c("getModifierInfo called on node with no coordinator");
                return null;
            }
            OwnedLayer layer = coordinator$ui.getLayer();
            OwnedLayer layer2 = this.innerCoordinator.getLayer();
            Modifier.Node child$ui = head$ui.getChild$ui();
            if (child$ui == this.tail && head$ui.getCoordinator$ui() != child$ui.getCoordinator$ui()) {
                ownedLayer = layer2;
            }
            if (layer == null) {
                layer = ownedLayer;
            }
            mutableVector2.add(new ModifierInfo(mutableVector.content[i], coordinator$ui, layer));
            head$ui = head$ui.getChild$ui();
            i++;
        }
        return mutableVector2.asMutableList();
    }

    public final NodeCoordinator getOuterCoordinator$ui() {
        return this.outerCoordinator;
    }

    public final Modifier.Node getTail$ui() {
        return this.tail;
    }

    public final boolean has$ui(int i) {
        return (getAggregateChildKindSet() & i) != 0;
    }

    /* JADX INFO: renamed from: has-H91voCI$ui, reason: not valid java name */
    public final boolean m7979hasH91voCI$ui(int i) {
        return (getAggregateChildKindSet() & i) != 0;
    }

    /* JADX INFO: renamed from: head-H91voCI$ui, reason: not valid java name */
    public final <T> T m7980headH91voCI$ui(int i) {
        if ((getAggregateChildKindSet() & i) != 0) {
            for (Modifier.Node head$ui = getHead$ui(); head$ui != null; head$ui = head$ui.getChild$ui()) {
                if ((head$ui.getKindSet$ui() & i) != 0) {
                    aa4.i();
                    throw null;
                }
                if ((head$ui.getAggregateChildKindSet$ui() & i) == 0) {
                    break;
                }
            }
        }
        return null;
    }

    public final void headToTail$ui(int i, nl3<? super Modifier.Node, j59> nl3Var) {
        if ((getAggregateChildKindSet() & i) == 0) {
            return;
        }
        for (Modifier.Node head$ui = getHead$ui(); head$ui != null; head$ui = head$ui.getChild$ui()) {
            if ((head$ui.getKindSet$ui() & i) != 0) {
                nl3Var.invoke(head$ui);
            }
            if ((head$ui.getAggregateChildKindSet$ui() & i) == 0) {
                return;
            }
        }
    }

    /* JADX INFO: renamed from: headToTail-aLcG6gQ$ui, reason: not valid java name */
    public final <T> void m7981headToTailaLcG6gQ$ui(int i, nl3<? super T, j59> nl3Var) {
        if ((getAggregateChildKindSet() & i) != 0) {
            for (Modifier.Node head$ui = getHead$ui(); head$ui != null; head$ui = head$ui.getChild$ui()) {
                if ((head$ui.getKindSet$ui() & i) != 0) {
                    aa4.i();
                    throw null;
                }
                if ((head$ui.getAggregateChildKindSet$ui() & i) == 0) {
                    return;
                }
            }
        }
    }

    public final void headToTailExclusive$ui(nl3<? super Modifier.Node, j59> nl3Var) {
        for (Modifier.Node head$ui = getHead$ui(); head$ui != null && head$ui != getTail$ui(); head$ui = head$ui.getChild$ui()) {
            nl3Var.invoke(head$ui);
        }
    }

    public final boolean isUpdating$ui() {
        return getChild$ui() != null;
    }

    public final void markAsAttached() {
        for (Modifier.Node head$ui = getHead$ui(); head$ui != null; head$ui = head$ui.getChild$ui()) {
            head$ui.markAsAttached$ui();
        }
    }

    public final void markAsDetached$ui() {
        for (Modifier.Node tail$ui = getTail$ui(); tail$ui != null; tail$ui = tail$ui.getParent$ui()) {
            if (tail$ui.isAttached()) {
                tail$ui.markAsDetached$ui();
            }
        }
    }

    public final void resetState$ui() {
        for (Modifier.Node tail$ui = getTail$ui(); tail$ui != null; tail$ui = tail$ui.getParent$ui()) {
            if (tail$ui.isAttached()) {
                tail$ui.reset$ui();
            }
        }
        runDetachLifecycle$ui();
        markAsDetached$ui();
    }

    public final void runAttachLifecycle() {
        for (Modifier.Node head$ui = getHead$ui(); head$ui != null; head$ui = head$ui.getChild$ui()) {
            head$ui.runAttachLifecycle$ui();
            if (head$ui.getInsertedNodeAwaitingAttachForInvalidation$ui()) {
                NodeKindKt.autoInvalidateInsertedNode(head$ui);
            }
            if (head$ui.getUpdatedNodeAwaitingAttachForInvalidation$ui()) {
                NodeKindKt.autoInvalidateUpdatedNode(head$ui);
            }
            head$ui.setInsertedNodeAwaitingAttachForInvalidation$ui(false);
            head$ui.setUpdatedNodeAwaitingAttachForInvalidation$ui(false);
        }
    }

    public final void runDetachLifecycle$ui() {
        for (Modifier.Node tail$ui = getTail$ui(); tail$ui != null; tail$ui = tail$ui.getParent$ui()) {
            if (tail$ui.isAttached()) {
                tail$ui.runDetachLifecycle$ui();
            }
        }
    }

    public final void syncCoordinators() {
        NodeCoordinator layoutModifierNodeCoordinator;
        NodeCoordinator nodeCoordinator = this.innerCoordinator;
        for (Modifier.Node parent$ui = this.tail.getParent$ui(); parent$ui != null; parent$ui = parent$ui.getParent$ui()) {
            LayoutModifierNode layoutModifierNodeAsLayoutModifierNode = DelegatableNodeKt.asLayoutModifierNode(parent$ui);
            if (layoutModifierNodeAsLayoutModifierNode != null) {
                if (parent$ui.getCoordinator$ui() != null) {
                    NodeCoordinator coordinator$ui = parent$ui.getCoordinator$ui();
                    coordinator$ui.getClass();
                    layoutModifierNodeCoordinator = (LayoutModifierNodeCoordinator) coordinator$ui;
                    LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.getLayoutModifierNode();
                    layoutModifierNodeCoordinator.setLayoutModifierNode$ui(layoutModifierNodeAsLayoutModifierNode);
                    if (layoutModifierNode != parent$ui) {
                        layoutModifierNodeCoordinator.onLayoutModifierNodeChanged();
                    }
                } else {
                    layoutModifierNodeCoordinator = new LayoutModifierNodeCoordinator(this.layoutNode, layoutModifierNodeAsLayoutModifierNode);
                    parent$ui.updateCoordinator$ui(layoutModifierNodeCoordinator);
                }
                nodeCoordinator.setWrappedBy$ui(layoutModifierNodeCoordinator);
                layoutModifierNodeCoordinator.setWrapped$ui(nodeCoordinator);
                nodeCoordinator = layoutModifierNodeCoordinator;
            } else {
                parent$ui.updateCoordinator$ui(nodeCoordinator);
            }
        }
        LayoutNode parent$ui2 = this.layoutNode.getParent$ui();
        nodeCoordinator.setWrappedBy$ui(parent$ui2 != null ? parent$ui2.getInnerCoordinator$ui() : null);
        this.outerCoordinator = nodeCoordinator;
    }

    /* JADX INFO: renamed from: tail-H91voCI$ui, reason: not valid java name */
    public final <T> T m7982tailH91voCI$ui(int i) {
        if ((getAggregateChildKindSet() & i) != 0) {
            for (Modifier.Node tail$ui = getTail$ui(); tail$ui != null; tail$ui = tail$ui.getParent$ui()) {
                if ((tail$ui.getKindSet$ui() & i) != 0) {
                    aa4.i();
                    throw null;
                }
            }
        }
        return null;
    }

    public final void tailToHead$ui(int i, nl3<? super Modifier.Node, j59> nl3Var) {
        if ((getAggregateChildKindSet() & i) == 0) {
            return;
        }
        for (Modifier.Node tail$ui = getTail$ui(); tail$ui != null; tail$ui = tail$ui.getParent$ui()) {
            if ((tail$ui.getKindSet$ui() & i) != 0) {
                nl3Var.invoke(tail$ui);
            }
        }
    }

    /* JADX INFO: renamed from: tailToHead-aLcG6gQ$ui, reason: not valid java name */
    public final <T> void m7983tailToHeadaLcG6gQ$ui(int i, nl3<? super T, j59> nl3Var) {
        if ((getAggregateChildKindSet() & i) != 0) {
            for (Modifier.Node tail$ui = getTail$ui(); tail$ui != null; tail$ui = tail$ui.getParent$ui()) {
                if ((tail$ui.getKindSet$ui() & i) != 0) {
                    aa4.i();
                    throw null;
                }
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        if (this.head == this.tail) {
            sb.append("]");
        } else {
            for (Modifier.Node head$ui = getHead$ui(); head$ui != null && head$ui != getTail$ui(); head$ui = head$ui.getChild$ui()) {
                sb.append(String.valueOf(head$ui));
                if (head$ui.getChild$ui() == this.tail) {
                    sb.append("]");
                    break;
                }
                sb.append(StringUtils.COMMA);
            }
        }
        return sb.toString();
    }

    public final void updateFrom$ui(Modifier modifier) {
        MutableVector<Modifier.Element> mutableVector;
        Modifier.Node node;
        Modifier.Node parent$ui;
        Modifier.Node node2;
        Logger logger;
        Modifier.Node nodePadChain = padChain();
        MutableVector<Modifier.Element> mutableVector2 = this.current;
        boolean z = false;
        int size = mutableVector2 != null ? mutableVector2.getSize() : 0;
        MutableVector<Modifier.Element> mutableVector3 = this.buffer;
        if (mutableVector3 == null) {
            mutableVector3 = new MutableVector<>(new Modifier.Element[16], 0);
        }
        MutableVector<Modifier.Element> mutableVectorFillVector = NodeChainKt.fillVector(modifier, mutableVector3, this.stack);
        MutableVector<Modifier.Element> mutableVector4 = null;
        if (mutableVectorFillVector.getSize() == size) {
            int i = 0;
            Modifier.Node child$ui = nodePadChain.getChild$ui();
            while (true) {
                if (child$ui == null || i >= size) {
                    parent$ui = child$ui;
                    break;
                }
                if (mutableVector2 == null) {
                    throw ag.e("expected prior modifier list to be non-empty");
                }
                Modifier.Element element = mutableVector2.content[i];
                Modifier.Element element2 = mutableVectorFillVector.content[i];
                int iActionForModifiers = NodeChainKt.actionForModifiers(element, element2);
                if (iActionForModifiers == 0) {
                    Modifier.Node node3 = child$ui;
                    Logger logger2 = this.logger;
                    if (logger2 != null) {
                        logger2.linearDiffAborted(i, element, element2, node3);
                    }
                    parent$ui = node3.getParent$ui();
                    break;
                }
                if (iActionForModifiers != 1) {
                    if (iActionForModifiers == 2 && (logger = this.logger) != null) {
                        logger.nodeReused(i, i, element, element2, child$ui);
                    }
                    node2 = child$ui;
                } else {
                    node2 = child$ui;
                    updateNode(element, element2, node2);
                    Logger logger3 = this.logger;
                    if (logger3 != null) {
                        logger3.nodeUpdated(i, i, element, element2, node2);
                    }
                }
                child$ui = node2.getChild$ui();
                i++;
            }
            if (i >= size) {
                mutableVector = mutableVectorFillVector;
                node = nodePadChain;
            } else {
                if (mutableVector2 == null) {
                    throw ag.e("expected prior modifier list to be non-empty");
                }
                if (parent$ui == null) {
                    throw ag.e("structuralUpdate requires a non-null tail");
                }
                mutableVector = mutableVectorFillVector;
                structuralUpdate(i, mutableVector2, mutableVector, parent$ui, !this.layoutNode.getApplyingModifierOnAttach$ui());
                node = nodePadChain;
                z = true;
            }
        } else {
            if (this.layoutNode.getApplyingModifierOnAttach$ui() && size == 0) {
                int i2 = 0;
                Modifier.Node node4 = nodePadChain;
                while (i2 < mutableVectorFillVector.getSize()) {
                    Modifier.Element element3 = mutableVectorFillVector.content[i2];
                    Modifier.Node nodeCreateAndInsertNodeAsChild = createAndInsertNodeAsChild(element3, node4);
                    Logger logger4 = this.logger;
                    if (logger4 != null) {
                        logger4.nodeInserted(0, i2, element3, node4, nodeCreateAndInsertNodeAsChild);
                    }
                    i2++;
                    node4 = nodeCreateAndInsertNodeAsChild;
                }
                syncAggregateChildKindSet();
                mutableVector = mutableVectorFillVector;
                node = nodePadChain;
            } else if (mutableVectorFillVector.getSize() != 0) {
                if (mutableVector2 == null) {
                    mutableVector2 = new MutableVector<>(new Modifier.Element[16], 0);
                }
                mutableVector = mutableVectorFillVector;
                node = nodePadChain;
                structuralUpdate(0, mutableVector2, mutableVector, node, !this.layoutNode.getApplyingModifierOnAttach$ui());
            } else {
                if (mutableVector2 == null) {
                    throw ag.e("expected prior modifier list to be non-empty");
                }
                Modifier.Node child$ui2 = nodePadChain.getChild$ui();
                for (int i3 = 0; child$ui2 != null && i3 < mutableVector2.getSize(); i3++) {
                    Logger logger5 = this.logger;
                    if (logger5 != null) {
                        logger5.nodeRemoved(i3, mutableVector2.content[i3], child$ui2);
                    }
                    child$ui2 = detachAndRemoveNode(child$ui2).getChild$ui();
                }
                InnerNodeCoordinator innerNodeCoordinator = this.innerCoordinator;
                LayoutNode parent$ui2 = this.layoutNode.getParent$ui();
                innerNodeCoordinator.setWrappedBy$ui(parent$ui2 != null ? parent$ui2.getInnerCoordinator$ui() : null);
                this.outerCoordinator = this.innerCoordinator;
                mutableVector = mutableVectorFillVector;
                node = nodePadChain;
            }
            z = true;
        }
        this.current = mutableVector;
        if (mutableVector2 != null) {
            mutableVector2.clear();
            mutableVector4 = mutableVector2;
        }
        this.buffer = mutableVector4;
        this.head = trimChain(node);
        if (z) {
            syncCoordinators();
        }
    }

    public final void useLogger$ui(Logger logger) {
        this.logger = logger;
    }

    public final void tailToHead$ui(nl3<? super Modifier.Node, j59> nl3Var) {
        for (Modifier.Node tail$ui = getTail$ui(); tail$ui != null; tail$ui = tail$ui.getParent$ui()) {
            nl3Var.invoke(tail$ui);
        }
    }

    public final void headToTail$ui(nl3<? super Modifier.Node, j59> nl3Var) {
        for (Modifier.Node head$ui = getHead$ui(); head$ui != null; head$ui = head$ui.getChild$ui()) {
            nl3Var.invoke(head$ui);
        }
    }
}
