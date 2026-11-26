package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class DrawScope$record$1 extends gh4 implements nl3<DrawScope, j59> {
    final /* synthetic */ nl3<DrawScope, j59> $block;
    final /* synthetic */ DrawScope this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DrawScope$record$1(DrawScope drawScope, nl3<? super DrawScope, j59> nl3Var) {
        super(1);
        this.this$0 = drawScope;
        this.$block = nl3Var;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(DrawScope drawScope) {
        DrawScope drawScope2 = this.this$0;
        Density density = drawScope.getDrawContext().getDensity();
        LayoutDirection layoutDirection = drawScope.getDrawContext().getLayoutDirection();
        Canvas canvas = drawScope.getDrawContext().getCanvas();
        long jMo6727getSizeNHjbRc = drawScope.getDrawContext().mo6727getSizeNHjbRc();
        GraphicsLayer graphicsLayer = drawScope.getDrawContext().getGraphicsLayer();
        nl3<DrawScope, j59> nl3Var = this.$block;
        Density density2 = drawScope2.getDrawContext().getDensity();
        LayoutDirection layoutDirection2 = drawScope2.getDrawContext().getLayoutDirection();
        Canvas canvas2 = drawScope2.getDrawContext().getCanvas();
        long jMo6727getSizeNHjbRc2 = drawScope2.getDrawContext().mo6727getSizeNHjbRc();
        GraphicsLayer graphicsLayer2 = drawScope2.getDrawContext().getGraphicsLayer();
        DrawContext drawContext = drawScope2.getDrawContext();
        drawContext.setDensity(density);
        drawContext.setLayoutDirection(layoutDirection);
        drawContext.setCanvas(canvas);
        drawContext.mo6728setSizeuvyYCjk(jMo6727getSizeNHjbRc);
        drawContext.setGraphicsLayer(graphicsLayer);
        canvas.save();
        try {
            nl3Var.invoke(drawScope2);
        } finally {
            canvas.restore();
            DrawContext drawContext2 = drawScope2.getDrawContext();
            drawContext2.setDensity(density2);
            drawContext2.setLayoutDirection(layoutDirection2);
            drawContext2.setCanvas(canvas2);
            drawContext2.mo6728setSizeuvyYCjk(jMo6727getSizeNHjbRc2);
            drawContext2.setGraphicsLayer(graphicsLayer2);
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope) {
        invoke2(drawScope);
        return j59.a;
    }
}
