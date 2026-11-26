package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.shadow.DropShadowPainter;
import androidx.compose.ui.graphics.shadow.Shadow;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.ObserverModifierNode;
import defpackage.aa4;

/* JADX INFO: loaded from: classes2.dex */
public final class SimpleDropShadowNode extends Modifier.Node implements DrawModifierNode, ObserverModifierNode {
    public static final int $stable = 8;
    private Shadow shadow;
    private DropShadowPainter shadowPainter;
    private Shape shape;

    public SimpleDropShadowNode(Shape shape, Shadow shadow) {
        this.shape = shape;
        this.shadow = shadow;
    }

    private final DropShadowPainter obtainPainter() {
        DropShadowPainter dropShadowPainter = this.shadowPainter;
        if (dropShadowPainter != null) {
            return dropShadowPainter;
        }
        DropShadowPainter dropShadowPainterCreateDropShadowPainter = DelegatableNodeKt.requireGraphicsContext(this).getShadowContext().createDropShadowPainter(this.shape, this.shadow);
        this.shadowPainter = dropShadowPainterCreateDropShadowPainter;
        return dropShadowPainterCreateDropShadowPainter;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        Painter.m6931drawx_KDEd0$default(obtainPainter(), contentDrawScope, contentDrawScope.mo6806getSizeNHjbRc(), 0.0f, null, 6, null);
        contentDrawScope.drawContent();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SimpleDropShadowNode)) {
            return false;
        }
        SimpleDropShadowNode simpleDropShadowNode = (SimpleDropShadowNode) obj;
        return aa4.e(this.shape, simpleDropShadowNode.shape) && aa4.e(this.shadow, simpleDropShadowNode.shadow);
    }

    public int hashCode() {
        return this.shadow.hashCode() + (this.shape.hashCode() * 31);
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public void onObservedReadsChanged() {
        this.shadowPainter = null;
        DrawModifierNodeKt.invalidateDraw(this);
    }

    public final void update(Shape shape, Shadow shadow) {
        if (!aa4.e(this.shape, shape) || !aa4.e(this.shadow, shadow)) {
            this.shadowPainter = null;
        }
        this.shape = shape;
        this.shadow = shadow;
    }
}
