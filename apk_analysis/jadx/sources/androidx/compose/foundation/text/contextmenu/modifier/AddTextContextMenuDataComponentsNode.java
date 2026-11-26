package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.TraversableNode;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class AddTextContextMenuDataComponentsNode extends Modifier.Node implements TraversableNode {
    public static final int $stable = 8;
    private nl3<? super TextContextMenuBuilderScope, j59> builder;

    public AddTextContextMenuDataComponentsNode(nl3<? super TextContextMenuBuilderScope, j59> nl3Var) {
        this.builder = nl3Var;
    }

    public final nl3<TextContextMenuBuilderScope, j59> getBuilder() {
        return this.builder;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public Object getTraverseKey() {
        return TextContextMenuDataTraverseKey.INSTANCE;
    }

    public final void setBuilder(nl3<? super TextContextMenuBuilderScope, j59> nl3Var) {
        this.builder = nl3Var;
    }
}
