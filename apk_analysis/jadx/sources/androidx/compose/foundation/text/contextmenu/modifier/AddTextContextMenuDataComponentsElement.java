package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class AddTextContextMenuDataComponentsElement extends ModifierNodeElement<AddTextContextMenuDataComponentsNode> {
    private final nl3<TextContextMenuBuilderScope, j59> builder;

    /* JADX WARN: Multi-variable type inference failed */
    public AddTextContextMenuDataComponentsElement(nl3<? super TextContextMenuBuilderScope, j59> nl3Var) {
        this.builder = nl3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public AddTextContextMenuDataComponentsNode create() {
        return new AddTextContextMenuDataComponentsNode(this.builder);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AddTextContextMenuDataComponentsElement) && this.builder == ((AddTextContextMenuDataComponentsElement) obj).builder;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.builder.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("addTextContextMenuDataComponents");
        inspectorInfo.getProperties().set("builder", this.builder);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(AddTextContextMenuDataComponentsNode addTextContextMenuDataComponentsNode) {
        addTextContextMenuDataComponentsNode.setBuilder(this.builder);
    }
}
