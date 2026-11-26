package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.style.StyleModifierKt;
import androidx.compose.foundation.style.StyleOuterNode;
import androidx.compose.foundation.text.modifiers.TextStyleProviderNodeKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.text.TextStyle;
import defpackage.nl3;
import defpackage.r07;

/* JADX INFO: loaded from: classes.dex */
public final class TextStyleProviderNodeKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: inheritedTextStyle-Bh5OqGs, reason: not valid java name */
    public static final TextStyle m2959inheritedTextStyleBh5OqGs(DelegatableNode delegatableNode, final int i, final TextStyle textStyle) {
        final r07 r07Var = new r07();
        r07Var.b = textStyle;
        TraversableNodeKt.traverseAncestors(delegatableNode, StyleModifierKt.OuterNodeKey, new nl3() { // from class: xs8
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Boolean.valueOf(TextStyleProviderNodeKt.inheritedTextStyle_Bh5OqGs$lambda$0(r07Var, i, textStyle, (TraversableNode) obj));
            }
        });
        return (TextStyle) r07Var.b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, androidx.compose.ui.text.TextStyle] */
    public static final boolean inheritedTextStyle_Bh5OqGs$lambda$0(r07 r07Var, int i, TextStyle textStyle, TraversableNode traversableNode) {
        if (!(traversableNode instanceof StyleOuterNode)) {
            return true;
        }
        r07Var.b = ((StyleOuterNode) traversableNode).mo2442computeInheritedTextStyleBLjeIk(i, textStyle);
        return false;
    }
}
