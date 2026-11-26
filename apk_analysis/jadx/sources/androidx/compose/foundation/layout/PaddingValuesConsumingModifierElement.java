package androidx.compose.foundation.layout;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.aa4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class PaddingValuesConsumingModifierElement extends ModifierNodeElement<PaddingValuesConsumingModifierNode> {
    private final nl3<InspectorInfo, j59> inspectorInfo;
    private final PaddingValues paddingValues;

    /* JADX WARN: Multi-variable type inference failed */
    public PaddingValuesConsumingModifierElement(PaddingValues paddingValues, nl3<? super InspectorInfo, j59> nl3Var) {
        this.paddingValues = paddingValues;
        this.inspectorInfo = nl3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public PaddingValuesConsumingModifierNode create() {
        return new PaddingValuesConsumingModifierNode(this.paddingValues);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PaddingValuesConsumingModifierElement) {
            return aa4.e(((PaddingValuesConsumingModifierElement) obj).paddingValues, this.paddingValues);
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.paddingValues.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        this.inspectorInfo.invoke(inspectorInfo);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(PaddingValuesConsumingModifierNode paddingValuesConsumingModifierNode) {
        paddingValuesConsumingModifierNode.update(this.paddingValues);
    }
}
