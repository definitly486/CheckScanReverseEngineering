package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.DrawModifierNode;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class DrawBackgroundModifier extends Modifier.Node implements DrawModifierNode {
    public static final int $stable = 8;
    private nl3<? super DrawScope, j59> onDraw;

    public DrawBackgroundModifier(nl3<? super DrawScope, j59> nl3Var) {
        this.onDraw = nl3Var;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        this.onDraw.invoke(contentDrawScope);
        contentDrawScope.drawContent();
    }

    public final nl3<DrawScope, j59> getOnDraw() {
        return this.onDraw;
    }

    public final void setOnDraw(nl3<? super DrawScope, j59> nl3Var) {
        this.onDraw = nl3Var;
    }
}
