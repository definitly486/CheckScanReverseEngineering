package androidx.compose.foundation.draganddrop;

import androidx.compose.ui.draganddrop.DragAndDropEvent;
import androidx.compose.ui.draganddrop.DragAndDropNodeKt;
import androidx.compose.ui.draganddrop.DragAndDropTarget;
import androidx.compose.ui.draganddrop.DragAndDropTargetModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import defpackage.aa4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class DragAndDropTargetNode extends DelegatingNode {
    private DragAndDropTargetModifierNode dragAndDropNode;
    private nl3<? super DragAndDropEvent, Boolean> shouldStartDragAndDrop;
    private DragAndDropTarget target;

    public DragAndDropTargetNode(nl3<? super DragAndDropEvent, Boolean> nl3Var, DragAndDropTarget dragAndDropTarget) {
        this.shouldStartDragAndDrop = nl3Var;
        this.target = dragAndDropTarget;
    }

    private final void createAndAttachDragAndDropModifierNode() {
        this.dragAndDropNode = (DragAndDropTargetModifierNode) delegate(DragAndDropNodeKt.DragAndDropTargetModifierNode(new nl3() { // from class: androidx.compose.foundation.draganddrop.g
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Boolean.valueOf(DragAndDropTargetNode.createAndAttachDragAndDropModifierNode$lambda$0(this.b, (DragAndDropEvent) obj));
            }
        }, this.target));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean createAndAttachDragAndDropModifierNode$lambda$0(DragAndDropTargetNode dragAndDropTargetNode, DragAndDropEvent dragAndDropEvent) {
        return dragAndDropTargetNode.shouldStartDragAndDrop.invoke(dragAndDropEvent).booleanValue();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        createAndAttachDragAndDropModifierNode();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        DragAndDropTargetModifierNode dragAndDropTargetModifierNode = this.dragAndDropNode;
        dragAndDropTargetModifierNode.getClass();
        undelegate(dragAndDropTargetModifierNode);
    }

    public final void update(nl3<? super DragAndDropEvent, Boolean> nl3Var, DragAndDropTarget dragAndDropTarget) {
        this.shouldStartDragAndDrop = nl3Var;
        if (aa4.e(dragAndDropTarget, this.target)) {
            return;
        }
        DragAndDropTargetModifierNode dragAndDropTargetModifierNode = this.dragAndDropNode;
        if (dragAndDropTargetModifierNode != null) {
            undelegate(dragAndDropTargetModifierNode);
        }
        this.target = dragAndDropTarget;
        createAndAttachDragAndDropModifierNode();
    }
}
