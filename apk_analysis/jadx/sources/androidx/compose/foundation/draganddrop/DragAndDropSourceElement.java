package androidx.compose.foundation.draganddrop;

import androidx.compose.ui.draganddrop.DragAndDropTransferData;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class DragAndDropSourceElement extends ModifierNodeElement<DragAndDropSourceNode> {
    private final bm3<DragAndDropStartDetectorScope, e02<? super j59>, Object> detectDragStart;
    private final nl3<DrawScope, j59> drawDragDecoration;
    private final nl3<Offset, DragAndDropTransferData> transferData;

    /* JADX WARN: Multi-variable type inference failed */
    public DragAndDropSourceElement(nl3<? super DrawScope, j59> nl3Var, bm3<? super DragAndDropStartDetectorScope, ? super e02<? super j59>, ? extends Object> bm3Var, nl3<? super Offset, DragAndDropTransferData> nl3Var2) {
        this.drawDragDecoration = nl3Var;
        this.detectDragStart = bm3Var;
        this.transferData = nl3Var2;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public DragAndDropSourceNode create() {
        return new DragAndDropSourceNode(this.drawDragDecoration, this.detectDragStart, this.transferData);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DragAndDropSourceElement)) {
            return false;
        }
        DragAndDropSourceElement dragAndDropSourceElement = (DragAndDropSourceElement) obj;
        return this.drawDragDecoration == dragAndDropSourceElement.drawDragDecoration && this.detectDragStart == dragAndDropSourceElement.detectDragStart && this.transferData == dragAndDropSourceElement.transferData;
    }

    public final bm3<DragAndDropStartDetectorScope, e02<? super j59>, Object> getDetectDragStart() {
        return this.detectDragStart;
    }

    public final nl3<DrawScope, j59> getDrawDragDecoration() {
        return this.drawDragDecoration;
    }

    public final nl3<Offset, DragAndDropTransferData> getTransferData() {
        return this.transferData;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.transferData.hashCode() + ((this.detectDragStart.hashCode() + (this.drawDragDecoration.hashCode() * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("dragSource");
        inspectorInfo.getProperties().set("drawDragDecoration", this.drawDragDecoration);
        inspectorInfo.getProperties().set("detectDragStart", this.detectDragStart);
        inspectorInfo.getProperties().set("transferData", this.transferData);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(DragAndDropSourceNode dragAndDropSourceNode) {
        dragAndDropSourceNode.setDrawDragDecoration(this.drawDragDecoration);
        dragAndDropSourceNode.setDetectDragStart(this.detectDragStart);
        dragAndDropSourceNode.setTransferData(this.transferData);
    }
}
