package androidx.compose.foundation.layout;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;

/* JADX INFO: loaded from: classes.dex */
final class VisibilityElement extends ModifierNodeElement<VisibilityNode> {
    private final boolean visible;

    public VisibilityElement(boolean z) {
        this.visible = z;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public VisibilityNode create() {
        return new VisibilityNode(this.visible);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        VisibilityElement visibilityElement = obj instanceof VisibilityElement ? (VisibilityElement) obj : null;
        return visibilityElement != null && this.visible == visibilityElement.visible;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return Boolean.hashCode(this.visible);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("Visible");
        inspectorInfo.getProperties().set("Visible", Boolean.valueOf(this.visible));
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(VisibilityNode visibilityNode) {
        boolean zM2122getVisible = visibilityNode.m2122getVisible();
        boolean z = this.visible;
        if (zM2122getVisible != z) {
            visibilityNode.setVisible(z);
        }
    }
}
