package androidx.compose.foundation.text.contextmenu.modifier;

import android.content.Context;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.bm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
final class AddTextContextMenuDataComponentsWithContextElement extends ModifierNodeElement<AddTextContextMenuDataComponentsWithContextNode> {
    private final bm3<TextContextMenuBuilderScope, Context, j59> builder;

    /* JADX WARN: Multi-variable type inference failed */
    public AddTextContextMenuDataComponentsWithContextElement(bm3<? super TextContextMenuBuilderScope, ? super Context, j59> bm3Var) {
        this.builder = bm3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public AddTextContextMenuDataComponentsWithContextNode create() {
        return new AddTextContextMenuDataComponentsWithContextNode(this.builder);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AddTextContextMenuDataComponentsWithContextElement) && this.builder == ((AddTextContextMenuDataComponentsWithContextElement) obj).builder;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.builder.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("addTextContextMenuDataComponentsWithResources");
        inspectorInfo.getProperties().set("builder", this.builder);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(AddTextContextMenuDataComponentsWithContextNode addTextContextMenuDataComponentsWithContextNode) {
        addTextContextMenuDataComponentsWithContextNode.setBuilder(this.builder);
    }
}
