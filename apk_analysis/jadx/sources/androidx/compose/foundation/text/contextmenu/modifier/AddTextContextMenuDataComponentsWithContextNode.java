package androidx.compose.foundation.text.contextmenu.modifier;

import android.content.Context;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import defpackage.bm3;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class AddTextContextMenuDataComponentsWithContextNode extends DelegatingNode implements CompositionLocalConsumerModifierNode {
    private bm3<? super TextContextMenuBuilderScope, ? super Context, j59> builder;

    public AddTextContextMenuDataComponentsWithContextNode(bm3<? super TextContextMenuBuilderScope, ? super Context, j59> bm3Var) {
        this.builder = bm3Var;
        delegate(new AddTextContextMenuDataComponentsNode(new nl3() { // from class: androidx.compose.foundation.text.contextmenu.modifier.a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return AddTextContextMenuDataComponentsWithContextNode._init_$lambda$0(this.b, (TextContextMenuBuilderScope) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$0(AddTextContextMenuDataComponentsWithContextNode addTextContextMenuDataComponentsWithContextNode, TextContextMenuBuilderScope textContextMenuBuilderScope) {
        addTextContextMenuDataComponentsWithContextNode.builder.invoke(textContextMenuBuilderScope, CompositionLocalConsumerModifierNodeKt.currentValueOf(addTextContextMenuDataComponentsWithContextNode, AndroidCompositionLocals_androidKt.getLocalContext()));
        return j59.a;
    }

    public final bm3<TextContextMenuBuilderScope, Context, j59> getBuilder() {
        return this.builder;
    }

    public final void setBuilder(bm3<? super TextContextMenuBuilderScope, ? super Context, j59> bm3Var) {
        this.builder = bm3Var;
    }
}
