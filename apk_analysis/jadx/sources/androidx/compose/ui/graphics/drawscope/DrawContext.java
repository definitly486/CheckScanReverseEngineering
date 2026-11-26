package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;

/* JADX INFO: loaded from: classes2.dex */
public interface DrawContext {
    default Canvas getCanvas() {
        return EmptyCanvas.INSTANCE;
    }

    default Density getDensity() {
        return DrawContextKt.getDefaultDensity();
    }

    default GraphicsLayer getGraphicsLayer() {
        return null;
    }

    default LayoutDirection getLayoutDirection() {
        return LayoutDirection.Ltr;
    }

    /* JADX INFO: renamed from: getSize-NH-jbRc */
    long mo6727getSizeNHjbRc();

    DrawTransform getTransform();

    default void setCanvas(Canvas canvas) {
    }

    default void setDensity(Density density) {
    }

    default void setGraphicsLayer(GraphicsLayer graphicsLayer) {
    }

    default void setLayoutDirection(LayoutDirection layoutDirection) {
    }

    /* JADX INFO: renamed from: setSize-uvyYCjk */
    void mo6728setSizeuvyYCjk(long j);
}
