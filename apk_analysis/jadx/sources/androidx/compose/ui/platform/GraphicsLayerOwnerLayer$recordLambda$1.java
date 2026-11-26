package androidx.compose.ui.platform;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class GraphicsLayerOwnerLayer$recordLambda$1 extends gh4 implements nl3<DrawScope, j59> {
    final /* synthetic */ GraphicsLayerOwnerLayer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GraphicsLayerOwnerLayer$recordLambda$1(GraphicsLayerOwnerLayer graphicsLayerOwnerLayer) {
        super(1);
        this.this$0 = graphicsLayerOwnerLayer;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(DrawScope drawScope) {
        GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = this.this$0;
        Canvas canvas = drawScope.getDrawContext().getCanvas();
        bm3 bm3Var = graphicsLayerOwnerLayer.drawBlock;
        if (bm3Var != null) {
            bm3Var.invoke(canvas, drawScope.getDrawContext().getGraphicsLayer());
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope) {
        invoke2(drawScope);
        return j59.a;
    }
}
