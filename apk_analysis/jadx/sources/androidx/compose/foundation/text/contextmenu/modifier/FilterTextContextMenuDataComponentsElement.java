package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class FilterTextContextMenuDataComponentsElement extends ModifierNodeElement<FilterTextContextMenuDataComponentsNode> {
    private final nl3<TextContextMenuComponent, Boolean> filter;

    /* JADX WARN: Multi-variable type inference failed */
    public FilterTextContextMenuDataComponentsElement(nl3<? super TextContextMenuComponent, Boolean> nl3Var) {
        this.filter = nl3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public FilterTextContextMenuDataComponentsNode create() {
        return new FilterTextContextMenuDataComponentsNode(this.filter);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FilterTextContextMenuDataComponentsElement) && this.filter == ((FilterTextContextMenuDataComponentsElement) obj).filter;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.filter.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("filterTextContextMenuDataComponents");
        inspectorInfo.getProperties().set("filter", this.filter);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(FilterTextContextMenuDataComponentsNode filterTextContextMenuDataComponentsNode) {
        filterTextContextMenuDataComponentsNode.setFilter(this.filter);
    }
}
