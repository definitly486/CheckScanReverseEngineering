package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.node.DrawModifierNode;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class DrawWithContentModifier extends Modifier.Node implements DrawModifierNode {
    private nl3<? super ContentDrawScope, j59> onDraw;

    public DrawWithContentModifier(nl3<? super ContentDrawScope, j59> nl3Var) {
        this.onDraw = nl3Var;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        this.onDraw.invoke(contentDrawScope);
    }

    public final nl3<ContentDrawScope, j59> getOnDraw() {
        return this.onDraw;
    }

    public final void setOnDraw(nl3<? super ContentDrawScope, j59> nl3Var) {
        this.onDraw = nl3Var;
    }
}
