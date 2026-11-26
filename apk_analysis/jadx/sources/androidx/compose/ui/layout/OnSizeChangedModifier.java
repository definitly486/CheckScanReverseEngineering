package androidx.compose.ui.layout;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.IntSize;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class OnSizeChangedModifier extends ModifierNodeElement<OnSizeChangedNode> {
    private final nl3<IntSize, j59> onSizeChanged;

    /* JADX WARN: Multi-variable type inference failed */
    public OnSizeChangedModifier(nl3<? super IntSize, j59> nl3Var) {
        this.onSizeChanged = nl3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public OnSizeChangedNode create() {
        return new OnSizeChangedNode(this.onSizeChanged);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof OnSizeChangedModifier) && this.onSizeChanged == ((OnSizeChangedModifier) obj).onSizeChanged;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.onSizeChanged.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("onSizeChanged");
        inspectorInfo.getProperties().set("onSizeChanged", this.onSizeChanged);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(OnSizeChangedNode onSizeChangedNode) {
        onSizeChangedNode.update(this.onSizeChanged);
    }
}
