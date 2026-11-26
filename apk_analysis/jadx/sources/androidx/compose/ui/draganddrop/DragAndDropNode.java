package androidx.compose.ui.draganddrop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.unit.IntSize;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.n07;
import defpackage.nl3;
import defpackage.r07;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class DragAndDropNode extends Modifier.Node implements TraversableNode, DragAndDropModifierNode, DragAndDropSourceModifierNode, DragAndDropTargetModifierNode, DragAndDropTarget {
    private DragAndDropNode lastChildDragAndDropModifierNode;
    private final nl3<DragAndDropEvent, DragAndDropTarget> onDropTargetValidate;
    private bm3<? super DragAndDropStartTransferScope, ? super Offset, j59> onStartTransfer;
    private long size;
    private DragAndDropTarget thisDragAndDropTarget;
    private final Object traverseKey;
    private static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    /* JADX INFO: renamed from: androidx.compose.ui.draganddrop.DragAndDropNode$acceptDragAndDropTransfer$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<DragAndDropNode, TraversableNode.Companion.TraverseDescendantsAction> {
        final /* synthetic */ n07 $handled;
        final /* synthetic */ DragAndDropEvent $startEvent;
        final /* synthetic */ DragAndDropNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(DragAndDropEvent dragAndDropEvent, DragAndDropNode dragAndDropNode, n07 n07Var) {
            super(1);
            this.$startEvent = dragAndDropEvent;
            this.this$0 = dragAndDropNode;
            this.$handled = n07Var;
        }

        @Override // defpackage.nl3
        public final TraversableNode.Companion.TraverseDescendantsAction invoke(DragAndDropNode dragAndDropNode) {
            if (!dragAndDropNode.isAttached()) {
                return TraversableNode.Companion.TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
            }
            if (!(dragAndDropNode.thisDragAndDropTarget == null)) {
                InlineClassHelperKt.throwIllegalStateException("DragAndDropTarget self reference must be null at the start of a drag and drop session");
            }
            nl3 nl3Var = dragAndDropNode.onDropTargetValidate;
            dragAndDropNode.thisDragAndDropTarget = nl3Var != null ? (DragAndDropTarget) nl3Var.invoke(this.$startEvent) : null;
            boolean z = dragAndDropNode.thisDragAndDropTarget != null;
            if (z) {
                this.this$0.getDragAndDropManager().registerTargetInterest(dragAndDropNode);
            }
            n07 n07Var = this.$handled;
            n07Var.b = n07Var.b || z;
            return TraversableNode.Companion.TraverseDescendantsAction.ContinueTraversal;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.draganddrop.DragAndDropNode$onEnded$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06221 extends gh4 implements nl3<DragAndDropNode, TraversableNode.Companion.TraverseDescendantsAction> {
        final /* synthetic */ DragAndDropEvent $event;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06221(DragAndDropEvent dragAndDropEvent) {
            super(1);
            this.$event = dragAndDropEvent;
        }

        @Override // defpackage.nl3
        public final TraversableNode.Companion.TraverseDescendantsAction invoke(DragAndDropNode dragAndDropNode) {
            if (!dragAndDropNode.getNode().isAttached()) {
                return TraversableNode.Companion.TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
            }
            DragAndDropTarget dragAndDropTarget = dragAndDropNode.thisDragAndDropTarget;
            if (dragAndDropTarget != null) {
                dragAndDropTarget.onEnded(this.$event);
            }
            dragAndDropNode.thisDragAndDropTarget = null;
            dragAndDropNode.lastChildDragAndDropModifierNode = null;
            return TraversableNode.Companion.TraverseDescendantsAction.ContinueTraversal;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DragAndDropNode(bm3<? super DragAndDropStartTransferScope, ? super Offset, j59> bm3Var, nl3<? super DragAndDropEvent, ? extends DragAndDropTarget> nl3Var) {
        this.onStartTransfer = bm3Var;
        this.onDropTargetValidate = nl3Var;
        this.traverseKey = Companion.DragAndDropTraversableKey.INSTANCE;
        this.size = IntSize.Companion.m9218getZeroYbymL2g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DragAndDropManager getDragAndDropManager() {
        return DelegatableNodeKt.requireOwner(this).getDragAndDropManager();
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropModifierNode
    public boolean acceptDragAndDropTransfer(DragAndDropEvent dragAndDropEvent) {
        n07 n07Var = new n07();
        DragAndDropNodeKt.traverseSelfAndDescendants(this, new AnonymousClass1(dragAndDropEvent, this, n07Var));
        return n07Var.b;
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropModifierNode
    @ul2
    /* JADX INFO: renamed from: drag-12SF9DM */
    public void mo5738drag12SF9DM(DragAndDropTransferData dragAndDropTransferData, long j, nl3<? super DrawScope, j59> nl3Var) {
        if (!(this.onStartTransfer == null)) {
            InlineClassHelperKt.throwIllegalStateException("Check failed.");
        }
        this.onStartTransfer = new DragAndDropNode$drag$1(dragAndDropTransferData, j, nl3Var);
        getDragAndDropManager().mo5736requestDragAndDropTransferUv8p0NA(this, Offset.Companion.m6002getUnspecifiedF1C5BW0());
        this.onStartTransfer = null;
    }

    /* JADX INFO: renamed from: getSize-YbymL2g$ui, reason: not valid java name */
    public final long m5739getSizeYbymL2g$ui() {
        return this.size;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public Object getTraverseKey() {
        return this.traverseKey;
    }

    public final boolean hasEligibleDropTarget() {
        return (this.lastChildDragAndDropModifierNode == null && this.thisDragAndDropTarget == null) ? false : true;
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropSourceModifierNode
    public boolean isRequestDragAndDropTransferRequired() {
        return getDragAndDropManager().isRequestDragAndDropTransferRequired();
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public void onChanged(DragAndDropEvent dragAndDropEvent) {
        DragAndDropTarget dragAndDropTarget = this.thisDragAndDropTarget;
        if (dragAndDropTarget != null) {
            dragAndDropTarget.onChanged(dragAndDropEvent);
            return;
        }
        DragAndDropNode dragAndDropNode = this.lastChildDragAndDropModifierNode;
        if (dragAndDropNode != null) {
            dragAndDropNode.onChanged(dragAndDropEvent);
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        this.thisDragAndDropTarget = null;
        this.lastChildDragAndDropModifierNode = null;
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public boolean onDrop(DragAndDropEvent dragAndDropEvent) {
        DragAndDropNode dragAndDropNode = this.lastChildDragAndDropModifierNode;
        if (dragAndDropNode != null) {
            return dragAndDropNode.onDrop(dragAndDropEvent);
        }
        DragAndDropTarget dragAndDropTarget = this.thisDragAndDropTarget;
        if (dragAndDropTarget != null) {
            return dragAndDropTarget.onDrop(dragAndDropEvent);
        }
        return false;
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public void onEnded(DragAndDropEvent dragAndDropEvent) {
        DragAndDropNodeKt.traverseSelfAndDescendants(this, new C06221(dragAndDropEvent));
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public void onEntered(DragAndDropEvent dragAndDropEvent) {
        DragAndDropTarget dragAndDropTarget = this.thisDragAndDropTarget;
        if (dragAndDropTarget != null) {
            dragAndDropTarget.onEntered(dragAndDropEvent);
            return;
        }
        DragAndDropNode dragAndDropNode = this.lastChildDragAndDropModifierNode;
        if (dragAndDropNode != null) {
            dragAndDropNode.onEntered(dragAndDropEvent);
        }
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public void onExited(DragAndDropEvent dragAndDropEvent) {
        DragAndDropTarget dragAndDropTarget = this.thisDragAndDropTarget;
        if (dragAndDropTarget != null) {
            dragAndDropTarget.onExited(dragAndDropEvent);
        }
        DragAndDropNode dragAndDropNode = this.lastChildDragAndDropModifierNode;
        if (dragAndDropNode != null) {
            dragAndDropNode.onExited(dragAndDropEvent);
        }
        this.lastChildDragAndDropModifierNode = null;
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public void onMoved(DragAndDropEvent dragAndDropEvent) {
        TraversableNode traversableNode;
        DragAndDropNode dragAndDropNode;
        DragAndDropNode dragAndDropNode2 = this.lastChildDragAndDropModifierNode;
        if (dragAndDropNode2 == null || !DragAndDropNodeKt.m5745containsUv8p0NA(dragAndDropNode2, DragAndDrop_androidKt.getPositionInRoot(dragAndDropEvent))) {
            if (getNode().isAttached()) {
                r07 r07Var = new r07();
                TraversableNodeKt.traverseDescendants(this, new DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1(r07Var, this, dragAndDropEvent));
                traversableNode = (TraversableNode) r07Var.b;
            } else {
                traversableNode = null;
            }
            dragAndDropNode = (DragAndDropNode) traversableNode;
        } else {
            dragAndDropNode = dragAndDropNode2;
        }
        if (dragAndDropNode != null && dragAndDropNode2 == null) {
            DragAndDropNodeKt.dispatchEntered(dragAndDropNode, dragAndDropEvent);
            DragAndDropTarget dragAndDropTarget = this.thisDragAndDropTarget;
            if (dragAndDropTarget != null) {
                dragAndDropTarget.onExited(dragAndDropEvent);
            }
        } else if (dragAndDropNode == null && dragAndDropNode2 != null) {
            DragAndDropTarget dragAndDropTarget2 = this.thisDragAndDropTarget;
            if (dragAndDropTarget2 != null) {
                DragAndDropNodeKt.dispatchEntered(dragAndDropTarget2, dragAndDropEvent);
            }
            dragAndDropNode2.onExited(dragAndDropEvent);
        } else if (!aa4.e(dragAndDropNode, dragAndDropNode2)) {
            if (dragAndDropNode != null) {
                DragAndDropNodeKt.dispatchEntered(dragAndDropNode, dragAndDropEvent);
            }
            if (dragAndDropNode2 != null) {
                dragAndDropNode2.onExited(dragAndDropEvent);
            }
        } else if (dragAndDropNode != null) {
            dragAndDropNode.onMoved(dragAndDropEvent);
        } else {
            DragAndDropTarget dragAndDropTarget3 = this.thisDragAndDropTarget;
            if (dragAndDropTarget3 != null) {
                dragAndDropTarget3.onMoved(dragAndDropEvent);
            }
        }
        this.lastChildDragAndDropModifierNode = dragAndDropNode;
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode, androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* JADX INFO: renamed from: onRemeasured-ozmzZPI */
    public void mo1423onRemeasuredozmzZPI(long j) {
        this.size = j;
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public void onStarted(DragAndDropEvent dragAndDropEvent) {
        DragAndDropTarget dragAndDropTarget = this.thisDragAndDropTarget;
        if (dragAndDropTarget != null) {
            dragAndDropTarget.onStarted(dragAndDropEvent);
            return;
        }
        DragAndDropNode dragAndDropNode = this.lastChildDragAndDropModifierNode;
        if (dragAndDropNode != null) {
            dragAndDropNode.onStarted(dragAndDropEvent);
        }
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropSourceModifierNode
    /* JADX INFO: renamed from: requestDragAndDropTransfer-k-4lQ0M, reason: not valid java name */
    public void mo5740requestDragAndDropTransferk4lQ0M(long j) {
        if (!(this.onStartTransfer != null)) {
            InlineClassHelperKt.throwIllegalStateException("Check failed.");
        }
        getDragAndDropManager().mo5736requestDragAndDropTransferUv8p0NA(this, j);
    }

    /* JADX INFO: renamed from: setSize-ozmzZPI$ui, reason: not valid java name */
    public final void m5741setSizeozmzZPI$ui(long j) {
        this.size = j;
    }

    /* JADX INFO: renamed from: startDragAndDropTransfer-d-4ec7I, reason: not valid java name */
    public final void m5742startDragAndDropTransferd4ec7I(DragAndDropStartTransferScope dragAndDropStartTransferScope, long j, ll3<Boolean> ll3Var) {
        DragAndDropNodeKt.traverseSelfAndDescendants(this, new DragAndDropNode$startDragAndDropTransfer$1(j, DelegatableNodeKt.requireLayoutNode(this).getCoordinates(), dragAndDropStartTransferScope, ll3Var));
    }

    public static final class Companion {

        public static final class DragAndDropTraversableKey {
            public static final DragAndDropTraversableKey INSTANCE = new DragAndDropTraversableKey();

            private DragAndDropTraversableKey() {
            }
        }

        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DragAndDropNode() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ DragAndDropNode(bm3 bm3Var, nl3 nl3Var, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : bm3Var, (i & 2) != 0 ? null : nl3Var);
    }
}
