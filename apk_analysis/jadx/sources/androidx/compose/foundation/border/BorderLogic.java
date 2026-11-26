package androidx.compose.foundation.border;

import androidx.compose.foundation.border.BorderLogic;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathOperation;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.graphics.layer.CompositingStrategy;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerKt;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.me0;
import defpackage.n1;
import defpackage.nl3;
import defpackage.o07;
import defpackage.r07;

/* JADX INFO: loaded from: classes.dex */
public final class BorderLogic {
    public static final int $stable = 8;
    private Path borderPath;
    private ll3<Float> borderWidth;
    private nl3<? super DrawScope, j59> drawBorder;
    private Brush lastBrush;
    private Outline lastOutline;

    private final nl3<DrawScope, j59> createDrawGenericBorder(final Brush brush, final ll3<GraphicsLayer> ll3Var, final Outline.Generic generic) {
        final Rect bounds = generic.getPath().getBounds();
        final float minDimension = bounds.getMinDimension();
        final Path pathObtainPath = obtainPath();
        pathObtainPath.reset();
        Path.addRect$default(pathObtainPath, bounds, null, 2, null);
        pathObtainPath.mo6121opN5in7k0(pathObtainPath, generic.getPath(), PathOperation.Companion.m6538getDifferenceb3I0S0c());
        final long jM9208constructorimpl = IntSize.m9208constructorimpl((((long) ((int) Math.ceil(bounds.getBottom() - bounds.getTop()))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) ((int) Math.ceil(bounds.getRight() - bounds.getLeft()))) << 32));
        return new nl3() { // from class: ns0
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return BorderLogic.createDrawGenericBorder$lambda$1(this.b, minDimension, generic, brush, ll3Var, bounds, jM9208constructorimpl, pathObtainPath, (DrawScope) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 createDrawGenericBorder$lambda$1(BorderLogic borderLogic, float f, final Outline.Generic generic, final Brush brush, ll3 ll3Var, final Rect rect, long j, final Path path, DrawScope drawScope) {
        ll3<Float> ll3Var2 = borderLogic.borderWidth;
        ll3Var2.getClass();
        float fFloatValue = ll3Var2.invoke().floatValue();
        final float f2 = fFloatValue < 0.0f ? 0.0f : fFloatValue;
        if (2.0f * f2 > f) {
            DrawScope.m6795drawPathGBMwjPU$default(drawScope, generic.getPath(), brush, 0.0f, null, null, 0, 60, null);
        } else {
            GraphicsLayer graphicsLayer = (GraphicsLayer) ll3Var.invoke();
            graphicsLayer.m6903setCompositingStrategyWpw9cng(CompositingStrategy.Companion.m6888getOffscreenke2Ky5w());
            float left = rect.getLeft();
            float top = rect.getTop();
            drawScope.getDrawContext().getTransform().translate(left, top);
            try {
                drawScope.mo6807recordJVtK1S4(graphicsLayer, j, new nl3() { // from class: js0
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return BorderLogic.createDrawGenericBorder$lambda$1$0$0(rect, generic, brush, f2, path, (DrawScope) obj);
                    }
                });
                GraphicsLayerKt.drawLayer(drawScope, graphicsLayer);
            } finally {
                drawScope.getDrawContext().getTransform().translate(-left, -top);
            }
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 createDrawGenericBorder$lambda$1$0$0(Rect rect, Outline.Generic generic, Brush brush, float f, Path path, DrawScope drawScope) {
        float f2 = -rect.getLeft();
        float f3 = -rect.getTop();
        drawScope.getDrawContext().getTransform().translate(f2, f3);
        try {
            DrawScope.m6795drawPathGBMwjPU$default(drawScope, generic.getPath(), brush, 0.0f, new Stroke(f * 2.0f, 0.0f, 0, 0, null, 30, null), null, 0, 52, null);
            float fIntBitsToFloat = (Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32)) + 1.0f) / Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32));
            float fIntBitsToFloat2 = (Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + 1.0f) / Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            long jMo6805getCenterF1C5BW0 = drawScope.mo6805getCenterF1C5BW0();
            DrawContext drawContext = drawScope.getDrawContext();
            long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
            drawContext.getCanvas().save();
            try {
                drawContext.getTransform().mo6734scale0AR0LA0(fIntBitsToFloat, fIntBitsToFloat2, jMo6805getCenterF1C5BW0);
                DrawScope.m6795drawPathGBMwjPU$default(drawScope, path, brush, 0.0f, null, null, BlendMode.Companion.m6145getClear0nO6VwU(), 28, null);
                drawContext.getCanvas().restore();
                drawContext.mo6728setSizeuvyYCjk(jMo6727getSizeNHjbRc);
                drawScope.getDrawContext().getTransform().translate(-f2, -f3);
                return j59.a;
            } catch (Throwable th) {
                drawContext.getCanvas().restore();
                drawContext.mo6728setSizeuvyYCjk(jMo6727getSizeNHjbRc);
                throw th;
            }
        } catch (Throwable th2) {
            drawScope.getDrawContext().getTransform().translate(-f2, -f3);
            throw th2;
        }
    }

    private final nl3<DrawScope, j59> createDrawRectBorder(final Brush brush, Outline.Rectangle rectangle) {
        final Rect rect = rectangle.getRect();
        return new nl3() { // from class: ms0
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return BorderLogic.createDrawRectBorder$lambda$0(this.b, rect, brush, (DrawScope) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 createDrawRectBorder$lambda$0(BorderLogic borderLogic, Rect rect, Brush brush, DrawScope drawScope) {
        long jM5979constructorimpl;
        long jM6047constructorimpl;
        DrawStyle stroke;
        ll3<Float> ll3Var = borderLogic.borderWidth;
        ll3Var.getClass();
        float fFloatValue = ll3Var.invoke().floatValue();
        float f = fFloatValue < 0.0f ? 0.0f : fFloatValue;
        boolean z = f * 2.0f > rect.getMinDimension();
        if (z) {
            jM5979constructorimpl = rect.m6022getTopLeftF1C5BW0();
        } else {
            float f2 = f / 2.0f;
            float left = rect.getLeft() + f2;
            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(rect.getTop() + f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(left)) << 32));
        }
        long j = jM5979constructorimpl;
        if (z) {
            jM6047constructorimpl = rect.m6020getSizeNHjbRc();
        } else {
            float right = (rect.getRight() - rect.getLeft()) - f;
            jM6047constructorimpl = Size.m6047constructorimpl((MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits((rect.getBottom() - rect.getTop()) - f))) | (((long) Float.floatToRawIntBits(right)) << 32));
        }
        long j2 = jM6047constructorimpl;
        if (z) {
            stroke = Fill.INSTANCE;
        } else {
            stroke = new Stroke(f, 0.0f, 0, 0, null, 30, null);
        }
        DrawScope.m6799drawRectAsUm42w$default(drawScope, brush, j, j2, 0.0f, stroke, null, 0, 104, null);
        return j59.a;
    }

    private final nl3<DrawScope, j59> createDrawRoundRectBorder(final Brush brush, Outline.Rounded rounded) {
        final RoundRect roundRect = rounded.getRoundRect();
        if (RoundRectKt.isSimple(roundRect)) {
            return new nl3() { // from class: ks0
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return BorderLogic.createDrawRoundRectBorder$lambda$0(this.b, roundRect, brush, (DrawScope) obj);
                }
            };
        }
        final Path pathObtainPath = obtainPath();
        final o07 o07Var = new o07();
        o07Var.b = Float.NaN;
        final r07 r07Var = new r07();
        return new nl3() { // from class: ls0
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return BorderLogic.createDrawRoundRectBorder$lambda$1(this.b, roundRect, o07Var, r07Var, pathObtainPath, brush, (DrawScope) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 createDrawRoundRectBorder$lambda$0(BorderLogic borderLogic, RoundRect roundRect, Brush brush, DrawScope drawScope) {
        ll3<Float> ll3Var = borderLogic.borderWidth;
        ll3Var.getClass();
        float fFloatValue = ll3Var.invoke().floatValue();
        float f = fFloatValue < 0.0f ? 0.0f : fFloatValue;
        float f2 = f / 2.0f;
        boolean z = 2.0f * f > RoundRectKt.getMinDimension(roundRect);
        long jM6037getTopLeftCornerRadiuskKHJgLs = roundRect.m6037getTopLeftCornerRadiuskKHJgLs();
        Stroke stroke = new Stroke(f, 0.0f, 0, 0, null, 30, null);
        if (z) {
            float left = roundRect.getLeft();
            long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(roundRect.getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(left)) << 32));
            float width = roundRect.getWidth();
            DrawScope.m6801drawRoundRectZuiqVtQ$default(drawScope, brush, jM5979constructorimpl, Size.m6047constructorimpl((((long) Float.floatToRawIntBits(roundRect.getHeight())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(width)) << 32)), jM6037getTopLeftCornerRadiuskKHJgLs, 0.0f, null, null, 0, PsExtractor.VIDEO_STREAM_MASK, null);
        } else if (Float.intBitsToFloat((int) (jM6037getTopLeftCornerRadiuskKHJgLs >> 32)) < f2) {
            float left2 = roundRect.getLeft() + f;
            float top = roundRect.getTop() + f;
            float right = roundRect.getRight() - f;
            float bottom = roundRect.getBottom() - f;
            int iM6220getDifferencertfAjoo = ClipOp.Companion.m6220getDifferencertfAjoo();
            DrawContext drawContext = drawScope.getDrawContext();
            long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
            drawContext.getCanvas().save();
            try {
                drawContext.getTransform().mo6730clipRectN_I0leg(left2, top, right, bottom, iM6220getDifferencertfAjoo);
                long jM5979constructorimpl2 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(roundRect.getLeft())) << 32) | (((long) Float.floatToRawIntBits(roundRect.getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                float width2 = roundRect.getWidth();
                DrawScope.m6801drawRoundRectZuiqVtQ$default(drawScope, brush, jM5979constructorimpl2, Size.m6047constructorimpl((MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(roundRect.getHeight()))) | (((long) Float.floatToRawIntBits(width2)) << 32)), jM6037getTopLeftCornerRadiuskKHJgLs, 0.0f, null, null, 0, PsExtractor.VIDEO_STREAM_MASK, null);
            } finally {
                n1.a(drawContext, jMo6727getSizeNHjbRc);
            }
        } else {
            long jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(roundRect.getLeft() + f2)) << 32) | (((long) Float.floatToRawIntBits(roundRect.getTop() + f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            float width3 = roundRect.getWidth() - f;
            DrawScope.m6801drawRoundRectZuiqVtQ$default(drawScope, brush, jM5979constructorimpl3, Size.m6047constructorimpl((((long) Float.floatToRawIntBits(roundRect.getHeight() - f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(width3)) << 32)), BorderLogicKt.m1383shrinkKibmq7A(jM6037getTopLeftCornerRadiuskKHJgLs, f2), 0.0f, stroke, null, 0, 208, null);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r10v1, types: [T, androidx.compose.ui.graphics.Path] */
    public static final j59 createDrawRoundRectBorder$lambda$1(BorderLogic borderLogic, RoundRect roundRect, o07 o07Var, r07 r07Var, Path path, Brush brush, DrawScope drawScope) {
        ll3<Float> ll3Var = borderLogic.borderWidth;
        ll3Var.getClass();
        float fFloatValue = ll3Var.invoke().floatValue();
        if (fFloatValue < 0.0f) {
            fFloatValue = 0.0f;
        }
        boolean z = 2.0f * fFloatValue > RoundRectKt.getMinDimension(roundRect);
        if (o07Var.b != fFloatValue) {
            r07Var.b = BorderLogicKt.createRoundRectPath(path, roundRect, fFloatValue, z);
            o07Var.b = fFloatValue;
        }
        T t = r07Var.b;
        t.getClass();
        DrawScope.m6795drawPathGBMwjPU$default(drawScope, (Path) t, brush, 0.0f, null, null, 0, 60, null);
        return j59.a;
    }

    private final Path obtainPath() {
        Path path = this.borderPath;
        if (path != null) {
            return path;
        }
        Path Path = AndroidPath_androidKt.Path();
        this.borderPath = Path;
        return Path;
    }

    private final float strokeWidthPx() {
        ll3<Float> ll3Var = this.borderWidth;
        ll3Var.getClass();
        float fFloatValue = ll3Var.invoke().floatValue();
        if (fFloatValue < 0.0f) {
            return 0.0f;
        }
        return fFloatValue;
    }

    /* JADX INFO: renamed from: drawBorder-2gY9BTk$foundation, reason: not valid java name */
    public final void m1381drawBorder2gY9BTk$foundation(DrawScope drawScope, ll3<Float> ll3Var, Brush brush, ll3<GraphicsLayer> ll3Var2, Outline outline, long j) {
        nl3<DrawScope, j59> nl3VarCreateDrawRectBorder;
        this.borderWidth = ll3Var;
        if (!aa4.e(brush, this.lastBrush) || !aa4.e(outline, this.lastOutline) || this.drawBorder == null) {
            this.lastBrush = brush;
            this.lastOutline = outline;
            if (outline instanceof Outline.Generic) {
                nl3VarCreateDrawRectBorder = createDrawGenericBorder(brush, ll3Var2, (Outline.Generic) outline);
            } else if (outline instanceof Outline.Rounded) {
                nl3VarCreateDrawRectBorder = createDrawRoundRectBorder(brush, (Outline.Rounded) outline);
            } else {
                if (!(outline instanceof Outline.Rectangle)) {
                    me0.e();
                    return;
                }
                nl3VarCreateDrawRectBorder = createDrawRectBorder(brush, (Outline.Rectangle) outline);
            }
            this.drawBorder = nl3VarCreateDrawRectBorder;
        }
        if (Offset.m5984equalsimpl0(j, Offset.Companion.m6003getZeroF1C5BW0())) {
            nl3<? super DrawScope, j59> nl3Var = this.drawBorder;
            nl3Var.getClass();
            nl3Var.invoke(drawScope);
            return;
        }
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j));
        drawScope.getDrawContext().getTransform().translate(fIntBitsToFloat, fIntBitsToFloat2);
        try {
            nl3<? super DrawScope, j59> nl3Var2 = this.drawBorder;
            nl3Var2.getClass();
            nl3Var2.invoke(drawScope);
        } finally {
            drawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat, -fIntBitsToFloat2);
        }
    }
}
