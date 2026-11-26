package androidx.compose.foundation.layout;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class ConsumedInsetsModifierElement extends ModifierNodeElement<ConsumedInsetsModifierNode> {
    private final nl3<WindowInsets, j59> block;
    private final nl3<InspectorInfo, j59> inspectorInfo;

    /* JADX WARN: Multi-variable type inference failed */
    public ConsumedInsetsModifierElement(nl3<? super WindowInsets, j59> nl3Var, nl3<? super InspectorInfo, j59> nl3Var2) {
        this.block = nl3Var;
        this.inspectorInfo = nl3Var2;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public ConsumedInsetsModifierNode create() {
        return new ConsumedInsetsModifierNode(this.block);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ConsumedInsetsModifierElement) && ((ConsumedInsetsModifierElement) obj).block == this.block;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.block.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        this.inspectorInfo.invoke(inspectorInfo);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(ConsumedInsetsModifierNode consumedInsetsModifierNode) {
        consumedInsetsModifierNode.update(this.block);
    }
}
