package androidx.compose.ui.node;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutNodeDrawScope$record$1 extends gh4 implements nl3<DrawScope, j59> {
    final /* synthetic */ nl3<DrawScope, j59> $block;
    final /* synthetic */ DrawModifierNode $currentDrawNode;
    final /* synthetic */ LayoutNodeDrawScope this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LayoutNodeDrawScope$record$1(LayoutNodeDrawScope layoutNodeDrawScope, DrawModifierNode drawModifierNode, nl3<? super DrawScope, j59> nl3Var) {
        super(1);
        this.this$0 = layoutNodeDrawScope;
        this.$currentDrawNode = drawModifierNode;
        this.$block = nl3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.compose.ui.node.DrawModifierNode] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.compose.ui.node.DrawModifierNode] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.compose.ui.graphics.drawscope.DrawContext] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(DrawScope drawScope) throws Throwable {
        ?? drawContext = this.this$0.drawNode;
        this.this$0.drawNode = this.$currentDrawNode;
        try {
            LayoutNodeDrawScope layoutNodeDrawScope = this.this$0;
            Density density = drawScope.getDrawContext().getDensity();
            LayoutDirection layoutDirection = drawScope.getDrawContext().getLayoutDirection();
            Canvas canvas = drawScope.getDrawContext().getCanvas();
            long jMo6727getSizeNHjbRc = drawScope.getDrawContext().mo6727getSizeNHjbRc();
            GraphicsLayer graphicsLayer = drawScope.getDrawContext().getGraphicsLayer();
            nl3<DrawScope, j59> nl3Var = this.$block;
            Density density2 = layoutNodeDrawScope.getDrawContext().getDensity();
            LayoutDirection layoutDirection2 = layoutNodeDrawScope.getDrawContext().getLayoutDirection();
            Canvas canvas2 = layoutNodeDrawScope.getDrawContext().getCanvas();
            long jMo6727getSizeNHjbRc2 = layoutNodeDrawScope.getDrawContext().mo6727getSizeNHjbRc();
            GraphicsLayer graphicsLayer2 = layoutNodeDrawScope.getDrawContext().getGraphicsLayer();
            try {
                drawContext = layoutNodeDrawScope.getDrawContext();
                drawContext.setDensity(density);
                drawContext.setLayoutDirection(layoutDirection);
                drawContext.setCanvas(canvas);
                drawContext.mo6728setSizeuvyYCjk(jMo6727getSizeNHjbRc);
                drawContext.setGraphicsLayer(graphicsLayer);
                canvas.save();
                try {
                    nl3Var.invoke(layoutNodeDrawScope);
                    canvas.restore();
                    DrawContext drawContext2 = layoutNodeDrawScope.getDrawContext();
                    drawContext2.setDensity(density2);
                    drawContext2.setLayoutDirection(layoutDirection2);
                    drawContext2.setCanvas(canvas2);
                    drawContext2.mo6728setSizeuvyYCjk(jMo6727getSizeNHjbRc2);
                    drawContext2.setGraphicsLayer(graphicsLayer2);
                    this.this$0.drawNode = drawContext;
                } catch (Throwable th) {
                    drawContext = drawContext;
                    canvas.restore();
                    DrawContext drawContext3 = layoutNodeDrawScope.getDrawContext();
                    drawContext3.setDensity(density2);
                    drawContext3.setLayoutDirection(layoutDirection2);
                    drawContext3.setCanvas(canvas2);
                    drawContext3.mo6728setSizeuvyYCjk(jMo6727getSizeNHjbRc2);
                    drawContext3.setGraphicsLayer(graphicsLayer2);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                drawContext = drawContext;
                this.this$0.drawNode = drawContext;
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            this.this$0.drawNode = drawContext;
            throw th;
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope) throws Throwable {
        invoke2(drawScope);
        return j59.a;
    }
}
