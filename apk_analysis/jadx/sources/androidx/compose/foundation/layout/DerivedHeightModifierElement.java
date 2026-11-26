package androidx.compose.foundation.layout;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.aa4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class DerivedHeightModifierElement extends ModifierNodeElement<DerivedHeightModifierNode> {
    private final WindowInsetsHeightCalculator heightCalc;
    private final WindowInsets insets;
    private final nl3<InspectorInfo, j59> inspectorInfo;

    /* JADX WARN: Multi-variable type inference failed */
    public DerivedHeightModifierElement(WindowInsets windowInsets, nl3<? super InspectorInfo, j59> nl3Var, WindowInsetsHeightCalculator windowInsetsHeightCalculator) {
        this.insets = windowInsets;
        this.inspectorInfo = nl3Var;
        this.heightCalc = windowInsetsHeightCalculator;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public DerivedHeightModifierNode create() {
        return new DerivedHeightModifierNode(this.insets, this.heightCalc);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DerivedHeightModifierElement)) {
            return false;
        }
        DerivedHeightModifierElement derivedHeightModifierElement = (DerivedHeightModifierElement) obj;
        return aa4.e(this.insets, derivedHeightModifierElement.insets) && this.heightCalc == derivedHeightModifierElement.heightCalc;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.heightCalc.hashCode() + (this.insets.hashCode() * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        this.inspectorInfo.invoke(inspectorInfo);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(DerivedHeightModifierNode derivedHeightModifierNode) {
        derivedHeightModifierNode.update(this.insets, this.heightCalc);
    }
}
