package androidx.compose.foundation.draganddrop;

import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerKt;
import defpackage.fg;
import defpackage.j59;
import defpackage.lk;
import defpackage.nx0;

/* JADX INFO: loaded from: classes.dex */
public final class CacheDrawScopeDragShadowCallback {
    public static final int $stable = 8;
    private GraphicsLayer graphicsLayer;

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 cachePicture$lambda$0$0$0(ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 cachePicture$lambda$0$1(CacheDrawScopeDragShadowCallback cacheDrawScopeDragShadowCallback, ContentDrawScope contentDrawScope) {
        GraphicsLayer graphicsLayer = cacheDrawScopeDragShadowCallback.graphicsLayer;
        graphicsLayer.getClass();
        GraphicsLayerKt.drawLayer(contentDrawScope, graphicsLayer);
        return j59.a;
    }

    public final DrawResult cachePicture(CacheDrawScope cacheDrawScope) {
        GraphicsLayer graphicsLayerObtainGraphicsLayer = cacheDrawScope.obtainGraphicsLayer();
        CacheDrawScope.m5766recordTdoYBX4$default(cacheDrawScope, graphicsLayerObtainGraphicsLayer, null, null, 0L, new nx0(0), 7, null);
        this.graphicsLayer = graphicsLayerObtainGraphicsLayer;
        return cacheDrawScope.onDrawWithContent(new lk(this, 1));
    }

    public final void drawDragShadow(DrawScope drawScope) {
        GraphicsLayer graphicsLayer = this.graphicsLayer;
        if (graphicsLayer != null) {
            GraphicsLayerKt.drawLayer(drawScope, graphicsLayer);
        } else {
            fg.c("No cached drag shadow. Check if the drag source node was rendered first");
        }
    }
}
