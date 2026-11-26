package androidx.compose.foundation;

import androidx.compose.foundation.BorderKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathOperation;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.media3.muxer.MuxerUtil;
import defpackage.is0;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class BorderKt {
    public static final Modifier border(Modifier modifier, BorderStroke borderStroke, Shape shape) {
        return m1302borderziNgDLE(modifier, borderStroke.m1314getWidthD9Ej5fM(), borderStroke.getBrush(), shape);
    }

    public static /* synthetic */ Modifier border$default(Modifier modifier, BorderStroke borderStroke, Shape shape, int i, Object obj) {
        if ((i & 2) != 0) {
            shape = RectangleShapeKt.getRectangleShape();
        }
        return border(modifier, borderStroke, shape);
    }

    /* JADX INFO: renamed from: border-xT4_qwU, reason: not valid java name */
    public static final Modifier m1300borderxT4_qwU(Modifier modifier, float f, long j, Shape shape) {
        return m1302borderziNgDLE(modifier, f, new SolidColor(j, null), shape);
    }

    /* JADX INFO: renamed from: border-xT4_qwU$default, reason: not valid java name */
    public static /* synthetic */ Modifier m1301borderxT4_qwU$default(Modifier modifier, float f, long j, Shape shape, int i, Object obj) {
        if ((i & 4) != 0) {
            shape = RectangleShapeKt.getRectangleShape();
        }
        return m1300borderxT4_qwU(modifier, f, j, shape);
    }

    /* JADX INFO: renamed from: border-ziNgDLE, reason: not valid java name */
    public static final Modifier m1302borderziNgDLE(Modifier modifier, float f, Brush brush, Shape shape) {
        return modifier.then(new BorderModifierNodeElement(f, brush, shape, null));
    }

    private static final RoundRect createInsetRoundedRect(float f, RoundRect roundRect) {
        return new RoundRect(f, f, roundRect.getWidth() - f, roundRect.getHeight() - f, m1304shrinkKibmq7A(roundRect.m6037getTopLeftCornerRadiuskKHJgLs(), f), m1304shrinkKibmq7A(roundRect.m6038getTopRightCornerRadiuskKHJgLs(), f), m1304shrinkKibmq7A(roundRect.m6036getBottomRightCornerRadiuskKHJgLs(), f), m1304shrinkKibmq7A(roundRect.m6035getBottomLeftCornerRadiuskKHJgLs(), f), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Path createRoundRectPath(Path path, RoundRect roundRect, float f, boolean z) {
        path.reset();
        Path.addRoundRect$default(path, roundRect, null, 2, null);
        if (!z) {
            Path Path = AndroidPath_androidKt.Path();
            Path.addRoundRect$default(Path, createInsetRoundedRect(f, roundRect), null, 2, null);
            path.mo6121opN5in7k0(path, Path, PathOperation.Companion.m6538getDifferenceb3I0S0c());
        }
        return path;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DrawResult drawContentWithoutBorder(CacheDrawScope cacheDrawScope) {
        return cacheDrawScope.onDrawWithContent(new is0(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 drawContentWithoutBorder$lambda$0(ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: drawRectBorder-NsqcLGU, reason: not valid java name */
    public static final DrawResult m1303drawRectBorderNsqcLGU(CacheDrawScope cacheDrawScope, final Brush brush, long j, long j2, boolean z, float f) {
        final DrawStyle stroke;
        final long jM6003getZeroF1C5BW0 = z ? Offset.Companion.m6003getZeroF1C5BW0() : j;
        final long jM5767getSizeNHjbRc = z ? cacheDrawScope.m5767getSizeNHjbRc() : j2;
        if (z) {
            stroke = Fill.INSTANCE;
        } else {
            stroke = new Stroke(f, 0.0f, 0, 0, null, 30, null);
        }
        return cacheDrawScope.onDrawWithContent(new nl3() { // from class: hs0
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return BorderKt.drawRectBorder_NsqcLGU$lambda$0(brush, jM6003getZeroF1C5BW0, jM5767getSizeNHjbRc, stroke, (ContentDrawScope) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 drawRectBorder_NsqcLGU$lambda$0(Brush brush, long j, long j2, DrawStyle drawStyle, ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        DrawScope.m6799drawRectAsUm42w$default(contentDrawScope, brush, j, j2, 0.0f, drawStyle, null, 0, 104, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: shrink-Kibmq7A, reason: not valid java name */
    public static final long m1304shrinkKibmq7A(long j, float f) {
        float fMax = Math.max(0.0f, Float.intBitsToFloat((int) (j >> 32)) - f);
        float fMax2 = Math.max(0.0f, Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - f);
        return CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(fMax)) << 32) | (((long) Float.floatToRawIntBits(fMax2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }
}
