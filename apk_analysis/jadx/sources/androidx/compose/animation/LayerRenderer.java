package androidx.compose.animation;

import androidx.compose.ui.graphics.drawscope.DrawScope;

/* JADX INFO: loaded from: classes.dex */
public interface LayerRenderer {
    void drawInOverlay(DrawScope drawScope);

    SharedElementEntry getParentState();

    float getZIndex();
}
