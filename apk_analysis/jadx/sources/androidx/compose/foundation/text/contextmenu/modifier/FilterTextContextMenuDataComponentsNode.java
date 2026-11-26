package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.TraversableNode;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class FilterTextContextMenuDataComponentsNode extends Modifier.Node implements TraversableNode {
    private nl3<? super TextContextMenuComponent, Boolean> filter;

    public FilterTextContextMenuDataComponentsNode(nl3<? super TextContextMenuComponent, Boolean> nl3Var) {
        this.filter = nl3Var;
    }

    public final nl3<TextContextMenuComponent, Boolean> getFilter() {
        return this.filter;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public Object getTraverseKey() {
        return TextContextMenuDataTraverseKey.INSTANCE;
    }

    public final void setFilter(nl3<? super TextContextMenuComponent, Boolean> nl3Var) {
        this.filter = nl3Var;
    }
}
