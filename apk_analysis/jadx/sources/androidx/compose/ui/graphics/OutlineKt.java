package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.j59;
import defpackage.me0;

/* JADX INFO: loaded from: classes2.dex */
public final class OutlineKt {
    public static final void addOutline(Path path, Outline outline) {
        if (outline instanceof Outline.Rectangle) {
            Path.addRect$default(path, ((Outline.Rectangle) outline).getRect(), null, 2, null);
            return;
        }
        if (outline instanceof Outline.Rounded) {
            Path.addRoundRect$default(path, ((Outline.Rounded) outline).getRoundRect(), null, 2, null);
        } else if (outline instanceof Outline.Generic) {
            Path.m6516addPathUv8p0NA$default(path, ((Outline.Generic) outline).getPath(), 0L, 2, null);
        } else {
            me0.e();
        }
    }

    public static final void drawOutline(Canvas canvas, Outline outline, Paint paint) {
        if (outline instanceof Outline.Rectangle) {
            canvas.drawRect(((Outline.Rectangle) outline).getRect(), paint);
            return;
        }
        if (!(outline instanceof Outline.Rounded)) {
            if (outline instanceof Outline.Generic) {
                canvas.drawPath(((Outline.Generic) outline).getPath(), paint);
                return;
            } else {
                me0.e();
                return;
            }
        }
        Outline.Rounded rounded = (Outline.Rounded) outline;
        Path roundRectPath$ui_graphics = rounded.getRoundRectPath$ui_graphics();
        if (roundRectPath$ui_graphics != null) {
            canvas.drawPath(roundRectPath$ui_graphics, paint);
        } else {
            canvas.drawRoundRect(rounded.getRoundRect().getLeft(), rounded.getRoundRect().getTop(), rounded.getRoundRect().getRight(), rounded.getRoundRect().getBottom(), Float.intBitsToFloat((int) (rounded.getRoundRect().m6035getBottomLeftCornerRadiuskKHJgLs() >> 32)), Float.intBitsToFloat((int) (rounded.getRoundRect().m6035getBottomLeftCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), paint);
        }
    }

    /* JADX INFO: renamed from: drawOutline-hn5TExg, reason: not valid java name */
    public static final void m6502drawOutlinehn5TExg(DrawScope drawScope, Outline outline, Brush brush, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i) {
        if (outline instanceof Outline.Rectangle) {
            Rect rect = ((Outline.Rectangle) outline).getRect();
            drawScope.mo6718drawRectAsUm42w(brush, topLeft(rect), size(rect), f, drawStyle, colorFilter, i);
            return;
        }
        if (!(outline instanceof Outline.Rounded)) {
            if (outline instanceof Outline.Generic) {
                drawScope.mo6714drawPathGBMwjPU(((Outline.Generic) outline).getPath(), brush, f, drawStyle, colorFilter, i);
                return;
            } else {
                me0.e();
                return;
            }
        }
        Outline.Rounded rounded = (Outline.Rounded) outline;
        Path roundRectPath$ui_graphics = rounded.getRoundRectPath$ui_graphics();
        if (roundRectPath$ui_graphics != null) {
            drawScope.mo6714drawPathGBMwjPU(roundRectPath$ui_graphics, brush, f, drawStyle, colorFilter, i);
            return;
        }
        RoundRect roundRect = rounded.getRoundRect();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (roundRect.m6035getBottomLeftCornerRadiuskKHJgLs() >> 32));
        drawScope.mo6720drawRoundRectZuiqVtQ(brush, topLeft(roundRect), size(roundRect), CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32)), f, drawStyle, colorFilter, i);
    }

    /* JADX INFO: renamed from: drawOutline-hn5TExg$default, reason: not valid java name */
    public static /* synthetic */ void m6503drawOutlinehn5TExg$default(DrawScope drawScope, Outline outline, Brush brush, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            f = 1.0f;
        }
        float f2 = f;
        if ((i2 & 8) != 0) {
            drawStyle = Fill.INSTANCE;
        }
        DrawStyle drawStyle2 = drawStyle;
        if ((i2 & 16) != 0) {
            colorFilter = null;
        }
        ColorFilter colorFilter2 = colorFilter;
        if ((i2 & 32) != 0) {
            i = DrawScope.Companion.m6808getDefaultBlendMode0nO6VwU();
        }
        m6502drawOutlinehn5TExg(drawScope, outline, brush, f2, drawStyle2, colorFilter2, i);
    }

    /* JADX INFO: renamed from: drawOutline-wDX37Ww, reason: not valid java name */
    public static final void m6504drawOutlinewDX37Ww(DrawScope drawScope, Outline outline, long j, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i) {
        if (outline instanceof Outline.Rectangle) {
            Rect rect = ((Outline.Rectangle) outline).getRect();
            drawScope.mo6719drawRectnJ9OG0(j, topLeft(rect), size(rect), f, drawStyle, colorFilter, i);
            return;
        }
        if (!(outline instanceof Outline.Rounded)) {
            if (outline instanceof Outline.Generic) {
                drawScope.mo6715drawPathLG529CI(((Outline.Generic) outline).getPath(), j, f, drawStyle, colorFilter, i);
                return;
            } else {
                me0.e();
                return;
            }
        }
        Outline.Rounded rounded = (Outline.Rounded) outline;
        Path roundRectPath$ui_graphics = rounded.getRoundRectPath$ui_graphics();
        if (roundRectPath$ui_graphics != null) {
            drawScope.mo6715drawPathLG529CI(roundRectPath$ui_graphics, j, f, drawStyle, colorFilter, i);
            return;
        }
        RoundRect roundRect = rounded.getRoundRect();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (roundRect.m6035getBottomLeftCornerRadiuskKHJgLs() >> 32));
        drawScope.mo6721drawRoundRectuAw5IA(j, topLeft(roundRect), size(roundRect), CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32)), drawStyle, f, colorFilter, i);
    }

    /* JADX INFO: renamed from: drawOutline-wDX37Ww$default, reason: not valid java name */
    public static /* synthetic */ void m6505drawOutlinewDX37Ww$default(DrawScope drawScope, Outline outline, long j, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            f = 1.0f;
        }
        float f2 = f;
        if ((i2 & 8) != 0) {
            drawStyle = Fill.INSTANCE;
        }
        DrawStyle drawStyle2 = drawStyle;
        if ((i2 & 16) != 0) {
            colorFilter = null;
        }
        m6504drawOutlinewDX37Ww(drawScope, outline, j, f2, drawStyle2, colorFilter, (i2 & 32) != 0 ? DrawScope.Companion.m6808getDefaultBlendMode0nO6VwU() : i);
    }

    private static final void drawOutlineHelper(DrawScope drawScope, Outline outline, bm3<? super DrawScope, ? super Rect, j59> bm3Var, bm3<? super DrawScope, ? super RoundRect, j59> bm3Var2, bm3<? super DrawScope, ? super Path, j59> bm3Var3) {
        if (outline instanceof Outline.Rectangle) {
            bm3Var.invoke(drawScope, ((Outline.Rectangle) outline).getRect());
            return;
        }
        if (!(outline instanceof Outline.Rounded)) {
            if (outline instanceof Outline.Generic) {
                bm3Var3.invoke(drawScope, ((Outline.Generic) outline).getPath());
                return;
            } else {
                me0.e();
                return;
            }
        }
        Outline.Rounded rounded = (Outline.Rounded) outline;
        Path roundRectPath$ui_graphics = rounded.getRoundRectPath$ui_graphics();
        if (roundRectPath$ui_graphics != null) {
            bm3Var3.invoke(drawScope, roundRectPath$ui_graphics);
        } else {
            bm3Var2.invoke(drawScope, rounded.getRoundRect());
        }
    }

    private static final boolean hasSameCornerRadius(RoundRect roundRect) {
        return ((Float.intBitsToFloat((int) (roundRect.m6035getBottomLeftCornerRadiuskKHJgLs() >> 32)) > Float.intBitsToFloat((int) (roundRect.m6036getBottomRightCornerRadiuskKHJgLs() >> 32)) ? 1 : (Float.intBitsToFloat((int) (roundRect.m6035getBottomLeftCornerRadiuskKHJgLs() >> 32)) == Float.intBitsToFloat((int) (roundRect.m6036getBottomRightCornerRadiuskKHJgLs() >> 32)) ? 0 : -1)) == 0 && (Float.intBitsToFloat((int) (roundRect.m6036getBottomRightCornerRadiuskKHJgLs() >> 32)) > Float.intBitsToFloat((int) (roundRect.m6038getTopRightCornerRadiuskKHJgLs() >> 32)) ? 1 : (Float.intBitsToFloat((int) (roundRect.m6036getBottomRightCornerRadiuskKHJgLs() >> 32)) == Float.intBitsToFloat((int) (roundRect.m6038getTopRightCornerRadiuskKHJgLs() >> 32)) ? 0 : -1)) == 0 && (Float.intBitsToFloat((int) (roundRect.m6038getTopRightCornerRadiuskKHJgLs() >> 32)) > Float.intBitsToFloat((int) (roundRect.m6037getTopLeftCornerRadiuskKHJgLs() >> 32)) ? 1 : (Float.intBitsToFloat((int) (roundRect.m6038getTopRightCornerRadiuskKHJgLs() >> 32)) == Float.intBitsToFloat((int) (roundRect.m6037getTopLeftCornerRadiuskKHJgLs() >> 32)) ? 0 : -1)) == 0) && ((Float.intBitsToFloat((int) (roundRect.m6035getBottomLeftCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) > Float.intBitsToFloat((int) (roundRect.m6036getBottomRightCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) ? 1 : (Float.intBitsToFloat((int) (roundRect.m6035getBottomLeftCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) == Float.intBitsToFloat((int) (roundRect.m6036getBottomRightCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) ? 0 : -1)) == 0 && (Float.intBitsToFloat((int) (roundRect.m6036getBottomRightCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) > Float.intBitsToFloat((int) (roundRect.m6038getTopRightCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) ? 1 : (Float.intBitsToFloat((int) (roundRect.m6036getBottomRightCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) == Float.intBitsToFloat((int) (roundRect.m6038getTopRightCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) ? 0 : -1)) == 0 && (Float.intBitsToFloat((int) (roundRect.m6038getTopRightCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) > Float.intBitsToFloat((int) (roundRect.m6037getTopLeftCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) ? 1 : (Float.intBitsToFloat((int) (roundRect.m6038getTopRightCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) == Float.intBitsToFloat((int) (roundRect.m6037getTopLeftCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) ? 0 : -1)) == 0);
    }

    private static final long size(Rect rect) {
        float right = rect.getRight() - rect.getLeft();
        return Size.m6047constructorimpl((((long) Float.floatToRawIntBits(rect.getBottom() - rect.getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(right) << 32));
    }

    private static final long topLeft(Rect rect) {
        float left = rect.getLeft();
        float top = rect.getTop();
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(left)) << 32) | (((long) Float.floatToRawIntBits(top)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    private static final long topLeft(RoundRect roundRect) {
        float left = roundRect.getLeft();
        float top = roundRect.getTop();
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(left)) << 32) | (((long) Float.floatToRawIntBits(top)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    private static final long size(RoundRect roundRect) {
        float width = roundRect.getWidth();
        float height = roundRect.getHeight();
        return Size.m6047constructorimpl((((long) Float.floatToRawIntBits(width)) << 32) | (((long) Float.floatToRawIntBits(height)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }
}
