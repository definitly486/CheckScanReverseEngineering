package androidx.compose.foundation.layout;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.aa4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class UnionInsetsConsumingModifierElement extends ModifierNodeElement<UnionInsetsConsumingModifierNode> {
    private final WindowInsets insets;
    private final nl3<InspectorInfo, j59> inspectorInfo;

    /* JADX WARN: Multi-variable type inference failed */
    public UnionInsetsConsumingModifierElement(WindowInsets windowInsets, nl3<? super InspectorInfo, j59> nl3Var) {
        this.insets = windowInsets;
        this.inspectorInfo = nl3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public UnionInsetsConsumingModifierNode create() {
        return new UnionInsetsConsumingModifierNode(this.insets);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UnionInsetsConsumingModifierElement) {
            return aa4.e(((UnionInsetsConsumingModifierElement) obj).insets, this.insets);
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.insets.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        this.inspectorInfo.invoke(inspectorInfo);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(UnionInsetsConsumingModifierNode unionInsetsConsumingModifierNode) {
        unionInsetsConsumingModifierNode.update(this.insets);
    }
}
