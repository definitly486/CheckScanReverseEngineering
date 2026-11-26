package androidx.compose.foundation.layout;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.aa4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class DerivedWidthModifierElement extends ModifierNodeElement<DerivedWidthModifierNode> {
    private final WindowInsets insets;
    private final nl3<InspectorInfo, j59> inspectorInfo;
    private final WindowInsetsWidthCalculator widthCalc;

    /* JADX WARN: Multi-variable type inference failed */
    public DerivedWidthModifierElement(WindowInsets windowInsets, nl3<? super InspectorInfo, j59> nl3Var, WindowInsetsWidthCalculator windowInsetsWidthCalculator) {
        this.insets = windowInsets;
        this.inspectorInfo = nl3Var;
        this.widthCalc = windowInsetsWidthCalculator;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public DerivedWidthModifierNode create() {
        return new DerivedWidthModifierNode(this.insets, this.widthCalc);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DerivedWidthModifierElement)) {
            return false;
        }
        DerivedWidthModifierElement derivedWidthModifierElement = (DerivedWidthModifierElement) obj;
        return aa4.e(this.insets, derivedWidthModifierElement.insets) && this.widthCalc == derivedWidthModifierElement.widthCalc;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.widthCalc.hashCode() + (this.insets.hashCode() * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        this.inspectorInfo.invoke(inspectorInfo);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(DerivedWidthModifierNode derivedWidthModifierNode) {
        derivedWidthModifierNode.update(this.insets, this.widthCalc);
    }
}
