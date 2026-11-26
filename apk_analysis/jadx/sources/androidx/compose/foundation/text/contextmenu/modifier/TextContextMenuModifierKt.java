package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import defpackage.ah;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ql2;
import defpackage.zh2;

/* JADX INFO: loaded from: classes.dex */
public final class TextContextMenuModifierKt {
    private static final boolean continueTraversal = true;
    private static final String wrongNodeTypeErrorMessage = "TextContextMenuDataNode.TraverseKey key must only be attached to instances of TextContextMenuDataNode.";

    public static final Modifier appendTextContextMenuComponents(Modifier modifier, nl3<? super TextContextMenuBuilderScope, j59> nl3Var) {
        return modifier.then(new AddTextContextMenuDataComponentsElement(nl3Var));
    }

    public static final TextContextMenuData collectTextContextMenuData(DelegatableNode delegatableNode) {
        TextContextMenuBuilderScope textContextMenuBuilderScope = new TextContextMenuBuilderScope();
        traverseTextContextMenuDataNodes(delegatableNode, new TextContextMenuModifierKt$collectTextContextMenuData$1$1(textContextMenuBuilderScope), new ql2(textContextMenuBuilderScope, 1));
        return textContextMenuBuilderScope.build$foundation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 collectTextContextMenuData$lambda$0$0(TextContextMenuBuilderScope textContextMenuBuilderScope, nl3 nl3Var) {
        nl3Var.invoke(textContextMenuBuilderScope);
        return j59.a;
    }

    public static final Modifier filterTextContextMenuComponents(Modifier modifier, nl3<? super TextContextMenuComponent, Boolean> nl3Var) {
        return modifier.then(new FilterTextContextMenuDataComponentsElement(nl3Var));
    }

    private static final void traverseTextContextMenuDataNodes(DelegatableNode delegatableNode, nl3<? super nl3<? super TextContextMenuComponent, Boolean>, j59> nl3Var, nl3<? super nl3<? super TextContextMenuBuilderScope, j59>, j59> nl3Var2) {
        TraversableNodeKt.traverseAncestors(delegatableNode, TextContextMenuDataTraverseKey.INSTANCE, new zh2(2, nl3Var2, nl3Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean traverseTextContextMenuDataNodes$lambda$0(nl3 nl3Var, nl3 nl3Var2, TraversableNode traversableNode) {
        if (traversableNode instanceof AddTextContextMenuDataComponentsNode) {
            nl3Var.invoke(((AddTextContextMenuDataComponentsNode) traversableNode).getBuilder());
            return true;
        }
        if (traversableNode instanceof FilterTextContextMenuDataComponentsNode) {
            nl3Var2.invoke(((FilterTextContextMenuDataComponentsNode) traversableNode).getFilter());
            return true;
        }
        ah.f(wrongNodeTypeErrorMessage);
        return false;
    }
}
