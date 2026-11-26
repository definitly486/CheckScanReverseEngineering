package androidx.compose.foundation;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class ExcludeFromSystemGestureElement extends ModifierNodeElement<ExcludeFromSystemGestureNode> {
    private final nl3<LayoutCoordinates, Rect> exclusion;

    /* JADX WARN: Multi-variable type inference failed */
    public ExcludeFromSystemGestureElement(nl3<? super LayoutCoordinates, Rect> nl3Var) {
        this.exclusion = nl3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public ExcludeFromSystemGestureNode create() {
        return new ExcludeFromSystemGestureNode(this.exclusion);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        return (obj instanceof ExcludeFromSystemGestureElement) && this.exclusion == ((ExcludeFromSystemGestureElement) obj).exclusion;
    }

    public final nl3<LayoutCoordinates, Rect> getExclusion() {
        return this.exclusion;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        nl3<LayoutCoordinates, Rect> nl3Var = this.exclusion;
        if (nl3Var != null) {
            return nl3Var.hashCode();
        }
        return 0;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("systemGestureExclusion");
        if (this.exclusion != null) {
            inspectorInfo.getProperties().set("exclusion", this.exclusion);
        }
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(ExcludeFromSystemGestureNode excludeFromSystemGestureNode) {
        excludeFromSystemGestureNode.setRect(this.exclusion);
    }
}
