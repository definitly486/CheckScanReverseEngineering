package androidx.compose.ui.graphics.layer;

import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.gh4;
import defpackage.j59;
import defpackage.n1;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class GraphicsLayer$clipDrawBlock$1 extends gh4 implements nl3<DrawScope, j59> {
    final /* synthetic */ GraphicsLayer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GraphicsLayer$clipDrawBlock$1(GraphicsLayer graphicsLayer) {
        super(1);
        this.this$0 = graphicsLayer;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(DrawScope drawScope) {
        Path path = this.this$0.outlinePath;
        if (!this.this$0.usePathForClip || !this.this$0.getClip() || path == null) {
            this.this$0.drawWithChildTracking(drawScope);
            return;
        }
        GraphicsLayer graphicsLayer = this.this$0;
        int iM6221getIntersectrtfAjoo = ClipOp.Companion.m6221getIntersectrtfAjoo();
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6729clipPathmtrdDE(path, iM6221getIntersectrtfAjoo);
            graphicsLayer.drawWithChildTracking(drawScope);
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope) {
        invoke2(drawScope);
        return j59.a;
    }
}
