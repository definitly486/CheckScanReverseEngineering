package androidx.compose.ui.graphics.layer;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.media3.muxer.MuxerUtil;
import defpackage.me0;

/* JADX INFO: loaded from: classes2.dex */
public final class GraphicsLayerKt {
    public static final float DefaultCameraDistance = 8.0f;

    public static final void drawLayer(DrawScope drawScope, GraphicsLayer graphicsLayer) {
        graphicsLayer.draw$ui_graphics(drawScope.getDrawContext().getCanvas(), drawScope.getDrawContext().getGraphicsLayer());
    }

    public static final void setOutline(GraphicsLayer graphicsLayer, Outline outline) {
        if (outline instanceof Outline.Rectangle) {
            Outline.Rectangle rectangle = (Outline.Rectangle) outline;
            long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(rectangle.getRect().getLeft())) << 32) | (((long) Float.floatToRawIntBits(rectangle.getRect().getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            Rect rect = rectangle.getRect();
            float right = rect.getRight() - rect.getLeft();
            Rect rect2 = rectangle.getRect();
            graphicsLayer.m6905setRectOutlinetz77jQw(jM5979constructorimpl, Size.m6047constructorimpl((((long) Float.floatToRawIntBits(rect2.getBottom() - rect2.getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(right) << 32)));
            return;
        }
        if (outline instanceof Outline.Generic) {
            graphicsLayer.setPathOutline(((Outline.Generic) outline).getPath());
            return;
        }
        if (!(outline instanceof Outline.Rounded)) {
            me0.e();
            return;
        }
        Outline.Rounded rounded = (Outline.Rounded) outline;
        if (rounded.getRoundRectPath$ui_graphics() != null) {
            graphicsLayer.setPathOutline(rounded.getRoundRectPath$ui_graphics());
            return;
        }
        RoundRect roundRect = rounded.getRoundRect();
        long jM5979constructorimpl2 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(roundRect.getLeft())) << 32) | (((long) Float.floatToRawIntBits(roundRect.getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        float width = roundRect.getWidth();
        graphicsLayer.m6906setRoundRectOutlineTNW_H78(jM5979constructorimpl2, Size.m6047constructorimpl((((long) Float.floatToRawIntBits(roundRect.getHeight())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(width) << 32)), Float.intBitsToFloat((int) (roundRect.m6035getBottomLeftCornerRadiuskKHJgLs() >> 32)));
    }
}
