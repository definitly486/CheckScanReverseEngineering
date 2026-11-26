package androidx.compose.foundation.draganddrop;

import androidx.compose.ui.draganddrop.DragAndDropTransferData;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class DragAndDropSourceWithDefaultShadowElement extends ModifierNodeElement<DragSourceNodeWithDefaultPainter> {
    private bm3<? super DragAndDropStartDetectorScope, ? super e02<? super j59>, ? extends Object> detectDragStart;
    private nl3<? super Offset, DragAndDropTransferData> transferData;

    public DragAndDropSourceWithDefaultShadowElement(bm3<? super DragAndDropStartDetectorScope, ? super e02<? super j59>, ? extends Object> bm3Var, nl3<? super Offset, DragAndDropTransferData> nl3Var) {
        this.detectDragStart = bm3Var;
        this.transferData = nl3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public DragSourceNodeWithDefaultPainter create() {
        return new DragSourceNodeWithDefaultPainter(this.detectDragStart, this.transferData);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DragAndDropSourceWithDefaultShadowElement)) {
            return false;
        }
        DragAndDropSourceWithDefaultShadowElement dragAndDropSourceWithDefaultShadowElement = (DragAndDropSourceWithDefaultShadowElement) obj;
        return this.detectDragStart == dragAndDropSourceWithDefaultShadowElement.detectDragStart && this.transferData == dragAndDropSourceWithDefaultShadowElement.transferData;
    }

    public final bm3<DragAndDropStartDetectorScope, e02<? super j59>, Object> getDetectDragStart() {
        return this.detectDragStart;
    }

    public final nl3<Offset, DragAndDropTransferData> getTransferData() {
        return this.transferData;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.transferData.hashCode() + (this.detectDragStart.hashCode() * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("dragSourceWithDefaultPainter");
        inspectorInfo.getProperties().set("detectDragStart", this.detectDragStart);
        inspectorInfo.getProperties().set("transferData", this.transferData);
    }

    public final void setDetectDragStart(bm3<? super DragAndDropStartDetectorScope, ? super e02<? super j59>, ? extends Object> bm3Var) {
        this.detectDragStart = bm3Var;
    }

    public final void setTransferData(nl3<? super Offset, DragAndDropTransferData> nl3Var) {
        this.transferData = nl3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(DragSourceNodeWithDefaultPainter dragSourceNodeWithDefaultPainter) {
        dragSourceNodeWithDefaultPainter.setDetectDragStart(this.detectDragStart);
        dragSourceNodeWithDefaultPainter.setTransferData(this.transferData);
    }
}
