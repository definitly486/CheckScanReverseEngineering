package androidx.compose.foundation.draganddrop;

import androidx.compose.ui.draganddrop.DragAndDropEvent;
import androidx.compose.ui.draganddrop.DragAndDropTarget;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.aa4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class DropTargetElement extends ModifierNodeElement<DragAndDropTargetNode> {
    private final nl3<DragAndDropEvent, Boolean> shouldStartDragAndDrop;
    private final DragAndDropTarget target;

    /* JADX WARN: Multi-variable type inference failed */
    public DropTargetElement(nl3<? super DragAndDropEvent, Boolean> nl3Var, DragAndDropTarget dragAndDropTarget) {
        this.shouldStartDragAndDrop = nl3Var;
        this.target = dragAndDropTarget;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public DragAndDropTargetNode create() {
        return new DragAndDropTargetNode(this.shouldStartDragAndDrop, this.target);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DropTargetElement)) {
            return false;
        }
        DropTargetElement dropTargetElement = (DropTargetElement) obj;
        return aa4.e(this.target, dropTargetElement.target) && this.shouldStartDragAndDrop == dropTargetElement.shouldStartDragAndDrop;
    }

    public final nl3<DragAndDropEvent, Boolean> getShouldStartDragAndDrop() {
        return this.shouldStartDragAndDrop;
    }

    public final DragAndDropTarget getTarget() {
        return this.target;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.shouldStartDragAndDrop.hashCode() + (this.target.hashCode() * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("dropTarget");
        inspectorInfo.getProperties().set(TypedValues.AttributesType.S_TARGET, this.target);
        inspectorInfo.getProperties().set("shouldStartDragAndDrop", this.shouldStartDragAndDrop);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(DragAndDropTargetNode dragAndDropTargetNode) {
        dragAndDropTargetNode.update(this.shouldStartDragAndDrop, this.target);
    }
}
