package androidx.compose.foundation;

import androidx.compose.foundation.BorderModifierNode;
import androidx.compose.ui.draw.CacheDrawModifierNode;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathOperation;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.me0;
import defpackage.n1;
import defpackage.nl3;
import defpackage.ps0;
import defpackage.qs0;
import defpackage.r07;
import defpackage.ss0;

/* JADX INFO: loaded from: classes.dex */
public final class BorderModifierNode extends DelegatingNode implements SemanticsModifierNode {
    public static final int $stable = 8;
    private BorderCache borderCache;
    private Brush brush;
    private final CacheDrawModifierNode drawWithCacheModifierNode;
    private final boolean isImportantForBounds;
    private Shape shape;
    private final boolean shouldAutoInvalidate;
    private float width;

    private BorderModifierNode(float f, Brush brush, Shape shape) {
        this.width = f;
        this.brush = brush;
        this.shape = shape;
        this.drawWithCacheModifierNode = (CacheDrawModifierNode) delegate(DrawModifierKt.CacheDrawModifierNode(new ss0(this, 0)));
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00fb  */
    /* JADX WARN: Type inference failed for: r11v4, types: [T, androidx.compose.ui.graphics.ImageBitmap] */
    private final DrawResult drawGenericBorder(CacheDrawScope cacheDrawScope, Brush brush, Outline.Generic generic, boolean z, float f) throws Throwable {
        ImageBitmapConfig.Companion companion;
        int iM6463getArgb8888_sVssgQ;
        ColorFilter colorFilterM6273tintxETnrds$default;
        boolean z2;
        r07 r07Var;
        Canvas canvas;
        float f2;
        float f3;
        DrawContext drawContext;
        long j;
        int i = 0;
        if (z) {
            return cacheDrawScope.onDrawWithContent(new qs0(i, generic, brush));
        }
        if (brush instanceof SolidColor) {
            companion = ImageBitmapConfig.Companion;
            iM6463getArgb8888_sVssgQ = companion.m6462getAlpha8_sVssgQ();
            colorFilterM6273tintxETnrds$default = ColorFilter.Companion.m6273tintxETnrds$default(ColorFilter.Companion, Color.m6231copywmQWz5c$default(((SolidColor) brush).m6588getValue0d7_KjU(), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), 0, 2, null);
        } else {
            companion = ImageBitmapConfig.Companion;
            iM6463getArgb8888_sVssgQ = companion.m6463getArgb8888_sVssgQ();
            colorFilterM6273tintxETnrds$default = null;
        }
        int i2 = iM6463getArgb8888_sVssgQ;
        final Rect bounds = generic.getPath().getBounds();
        BorderCache borderCache = this.borderCache;
        if (borderCache == null) {
            borderCache = new BorderCache(null, null, null, null, 15, null);
            this.borderCache = borderCache;
        }
        Path pathObtainPath = borderCache.obtainPath();
        pathObtainPath.reset();
        Path.addRect$default(pathObtainPath, bounds, null, 2, null);
        pathObtainPath.mo6121opN5in7k0(pathObtainPath, generic.getPath(), PathOperation.Companion.m6538getDifferenceb3I0S0c());
        r07 r07Var2 = new r07();
        final long jM9208constructorimpl = IntSize.m9208constructorimpl((((long) ((int) Math.ceil(bounds.getRight() - bounds.getLeft()))) << 32) | (((long) ((int) Math.ceil(bounds.getBottom() - bounds.getTop()))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        BorderCache borderCache2 = this.borderCache;
        borderCache2.getClass();
        ImageBitmap imageBitmapM6468ImageBitmapx__hDU$default = borderCache2.imageBitmap;
        Canvas canvas2 = borderCache2.canvas;
        ImageBitmapConfig imageBitmapConfigM6455boximpl = imageBitmapM6468ImageBitmapx__hDU$default != null ? ImageBitmapConfig.m6455boximpl(imageBitmapM6468ImageBitmapx__hDU$default.mo6096getConfig_sVssgQ()) : null;
        if (imageBitmapConfigM6455boximpl == null ? false : ImageBitmapConfig.m6458equalsimpl0(imageBitmapConfigM6455boximpl.m6461unboximpl(), companion.m6463getArgb8888_sVssgQ())) {
            z2 = true;
        } else {
            if (ImageBitmapConfig.m6457equalsimpl(i2, imageBitmapM6468ImageBitmapx__hDU$default != null ? ImageBitmapConfig.m6455boximpl(imageBitmapM6468ImageBitmapx__hDU$default.mo6096getConfig_sVssgQ()) : null)) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        if (imageBitmapM6468ImageBitmapx__hDU$default == null || canvas2 == null || Float.intBitsToFloat((int) (cacheDrawScope.m5767getSizeNHjbRc() >> 32)) > imageBitmapM6468ImageBitmapx__hDU$default.getWidth() || Float.intBitsToFloat((int) (cacheDrawScope.m5767getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) > imageBitmapM6468ImageBitmapx__hDU$default.getHeight() || !z2) {
            r07Var = r07Var2;
            imageBitmapM6468ImageBitmapx__hDU$default = ImageBitmapKt.m6468ImageBitmapx__hDU$default((int) (jM9208constructorimpl >> 32), (int) (jM9208constructorimpl & MuxerUtil.UNSIGNED_INT_MAX_VALUE), i2, false, null, 24, null);
            borderCache2.imageBitmap = imageBitmapM6468ImageBitmapx__hDU$default;
            Canvas Canvas = androidx.compose.ui.graphics.CanvasKt.Canvas(imageBitmapM6468ImageBitmapx__hDU$default);
            borderCache2.canvas = Canvas;
            canvas = Canvas;
        } else {
            canvas = canvas2;
            r07Var = r07Var2;
        }
        ?? r11 = imageBitmapM6468ImageBitmapx__hDU$default;
        CanvasDrawScope canvasDrawScope = borderCache2.canvasDrawScope;
        if (canvasDrawScope == null) {
            canvasDrawScope = new CanvasDrawScope();
            borderCache2.canvasDrawScope = canvasDrawScope;
        }
        long jM9225toSizeozmzZPI = IntSizeKt.m9225toSizeozmzZPI(jM9208constructorimpl);
        LayoutDirection layoutDirection = cacheDrawScope.getLayoutDirection();
        CanvasDrawScope.DrawParams drawParams = canvasDrawScope.getDrawParams();
        Density densityComponent1 = drawParams.component1();
        LayoutDirection layoutDirectionComponent2 = drawParams.component2();
        Canvas canvasComponent3 = drawParams.component3();
        long jM6723component4NHjbRc = drawParams.m6723component4NHjbRc();
        CanvasDrawScope.DrawParams drawParams2 = canvasDrawScope.getDrawParams();
        drawParams2.setDensity(cacheDrawScope);
        drawParams2.setLayoutDirection(layoutDirection);
        drawParams2.setCanvas(canvas);
        drawParams2.m6726setSizeuvyYCjk(jM9225toSizeozmzZPI);
        canvas.save();
        long jM6258getBlack0d7_KjU = Color.Companion.m6258getBlack0d7_KjU();
        BlendMode.Companion companion2 = BlendMode.Companion;
        DrawScope.m6800drawRectnJ9OG0$default(canvasDrawScope, jM6258getBlack0d7_KjU, 0L, jM9225toSizeozmzZPI, 0.0f, null, null, companion2.m6145getClear0nO6VwU(), 58, null);
        float f4 = -bounds.getLeft();
        float f5 = -bounds.getTop();
        canvasDrawScope.getDrawContext().getTransform().translate(f4, f5);
        try {
            final r07 r07Var3 = r07Var;
            Canvas canvas3 = canvas;
            f3 = f5;
            final ColorFilter colorFilter = colorFilterM6273tintxETnrds$default;
            f2 = f4;
            try {
                DrawScope.m6795drawPathGBMwjPU$default(canvasDrawScope, generic.getPath(), brush, 0.0f, new Stroke(2.0f * f, 0.0f, 0, 0, null, 30, null), null, 0, 52, null);
                float fIntBitsToFloat = (Float.intBitsToFloat((int) (canvasDrawScope.mo6806getSizeNHjbRc() >> 32)) + 1.0f) / Float.intBitsToFloat((int) (canvasDrawScope.mo6806getSizeNHjbRc() >> 32));
                float fIntBitsToFloat2 = (Float.intBitsToFloat((int) (canvasDrawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + 1.0f) / Float.intBitsToFloat((int) (canvasDrawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                long jMo6805getCenterF1C5BW0 = canvasDrawScope.mo6805getCenterF1C5BW0();
                DrawContext drawContext2 = canvasDrawScope.getDrawContext();
                long jMo6727getSizeNHjbRc = drawContext2.mo6727getSizeNHjbRc();
                drawContext2.getCanvas().save();
                try {
                    drawContext2.getTransform().mo6734scale0AR0LA0(fIntBitsToFloat, fIntBitsToFloat2, jMo6805getCenterF1C5BW0);
                    j = jMo6727getSizeNHjbRc;
                    try {
                        DrawScope.m6795drawPathGBMwjPU$default(canvasDrawScope, pathObtainPath, brush, 0.0f, null, null, companion2.m6145getClear0nO6VwU(), 28, null);
                        drawContext2.getCanvas().restore();
                        drawContext2.mo6728setSizeuvyYCjk(j);
                        canvasDrawScope.getDrawContext().getTransform().translate(-f2, -f3);
                        canvas3.restore();
                        CanvasDrawScope.DrawParams drawParams3 = canvasDrawScope.getDrawParams();
                        drawParams3.setDensity(densityComponent1);
                        drawParams3.setLayoutDirection(layoutDirectionComponent2);
                        drawParams3.setCanvas(canvasComponent3);
                        drawParams3.m6726setSizeuvyYCjk(jM6723component4NHjbRc);
                        r11.prepareToDraw();
                        r07Var3.b = r11;
                        return cacheDrawScope.onDrawWithContent(new nl3() { // from class: rs0
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return BorderModifierNode.drawGenericBorder$lambda$3(bounds, r07Var3, jM9208constructorimpl, colorFilter, (ContentDrawScope) obj);
                            }
                        });
                    } catch (Throwable th) {
                        th = th;
                        drawContext = drawContext2;
                        drawContext.getCanvas().restore();
                        drawContext.mo6728setSizeuvyYCjk(j);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    drawContext = drawContext2;
                    j = jMo6727getSizeNHjbRc;
                }
            } catch (Throwable th3) {
                th = th3;
                canvasDrawScope.getDrawContext().getTransform().translate(-f2, -f3);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            f2 = f4;
            f3 = f5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 drawGenericBorder$lambda$0(Outline.Generic generic, Brush brush, ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        DrawScope.m6795drawPathGBMwjPU$default(contentDrawScope, generic.getPath(), brush, 0.0f, null, null, 0, 60, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 drawGenericBorder$lambda$3(Rect rect, r07 r07Var, long j, ColorFilter colorFilter, ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        float left = rect.getLeft();
        float top = rect.getTop();
        contentDrawScope.getDrawContext().getTransform().translate(left, top);
        try {
            DrawScope.m6789drawImageAZ2fEMs$default(contentDrawScope, (ImageBitmap) r07Var.b, 0L, j, 0L, 0L, 0.0f, null, colorFilter, 0, 0, 890, null);
            return j59.a;
        } finally {
            contentDrawScope.getDrawContext().getTransform().translate(-left, -top);
        }
    }

    /* JADX INFO: renamed from: drawRoundRectBorder-JqoCqck, reason: not valid java name */
    private final DrawResult m1305drawRoundRectBorderJqoCqck(CacheDrawScope cacheDrawScope, final Brush brush, Outline.Rounded rounded, final long j, final long j2, final boolean z, final float f) {
        if (RoundRectKt.isSimple(rounded.getRoundRect())) {
            final long jM6037getTopLeftCornerRadiuskKHJgLs = rounded.getRoundRect().m6037getTopLeftCornerRadiuskKHJgLs();
            final float f2 = f / 2.0f;
            final Stroke stroke = new Stroke(f, 0.0f, 0, 0, null, 30, null);
            return cacheDrawScope.onDrawWithContent(new nl3() { // from class: os0
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return BorderModifierNode.drawRoundRectBorder_JqoCqck$lambda$0(z, brush, jM6037getTopLeftCornerRadiuskKHJgLs, f2, f, j, j2, stroke, (ContentDrawScope) obj);
                }
            });
        }
        BorderCache borderCache = this.borderCache;
        if (borderCache == null) {
            BorderCache borderCache2 = new BorderCache(null, null, null, null, 15, null);
            this.borderCache = borderCache2;
            borderCache = borderCache2;
        }
        return cacheDrawScope.onDrawWithContent(new ps0(0, BorderKt.createRoundRectPath(borderCache.obtainPath(), rounded.getRoundRect(), f, z), brush));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 drawRoundRectBorder_JqoCqck$lambda$0(boolean z, Brush brush, long j, float f, float f2, long j2, long j3, Stroke stroke, ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        if (z) {
            DrawScope.m6801drawRoundRectZuiqVtQ$default(contentDrawScope, brush, 0L, 0L, j, 0.0f, null, null, 0, 246, null);
        } else if (Float.intBitsToFloat((int) (j >> 32)) < f) {
            float fIntBitsToFloat = Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() >> 32)) - f2;
            float fIntBitsToFloat2 = Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - f2;
            int iM6220getDifferencertfAjoo = ClipOp.Companion.m6220getDifferencertfAjoo();
            DrawContext drawContext = contentDrawScope.getDrawContext();
            long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
            drawContext.getCanvas().save();
            try {
                drawContext.getTransform().mo6730clipRectN_I0leg(f2, f2, fIntBitsToFloat, fIntBitsToFloat2, iM6220getDifferencertfAjoo);
                DrawScope.m6801drawRoundRectZuiqVtQ$default(contentDrawScope, brush, 0L, 0L, j, 0.0f, null, null, 0, 246, null);
            } finally {
                n1.a(drawContext, jMo6727getSizeNHjbRc);
            }
        } else {
            DrawScope.m6801drawRoundRectZuiqVtQ$default(contentDrawScope, brush, j2, j3, BorderKt.m1304shrinkKibmq7A(j, f), 0.0f, stroke, null, 0, 208, null);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 drawRoundRectBorder_JqoCqck$lambda$1(Path path, Brush brush, ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        DrawScope.m6795drawPathGBMwjPU$default(contentDrawScope, path, brush, 0.0f, null, null, 0, 60, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DrawResult drawWithCacheModifierNode$lambda$0(BorderModifierNode borderModifierNode, CacheDrawScope cacheDrawScope) {
        if (cacheDrawScope.mo1434toPx0680j_4(borderModifierNode.width) < 0.0f || Size.m6055getMinDimensionimpl(cacheDrawScope.m5767getSizeNHjbRc()) <= 0.0f) {
            return BorderKt.drawContentWithoutBorder(cacheDrawScope);
        }
        float fMin = Math.min(Dp.m9047equalsimpl0(borderModifierNode.width, Dp.Companion.m9060getHairlineD9Ej5fM()) ? 1.0f : (float) Math.ceil(cacheDrawScope.mo1434toPx0680j_4(borderModifierNode.width)), (float) Math.ceil(Size.m6055getMinDimensionimpl(cacheDrawScope.m5767getSizeNHjbRc()) / 2.0f));
        float f = fMin / 2.0f;
        long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(f)) << 32));
        long jM6047constructorimpl = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (cacheDrawScope.m5767getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - fMin)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (cacheDrawScope.m5767getSizeNHjbRc() >> 32)) - fMin)) << 32));
        boolean z = 2.0f * fMin > Size.m6055getMinDimensionimpl(cacheDrawScope.m5767getSizeNHjbRc());
        Outline outlineMo1345createOutlinePq9zytI = borderModifierNode.shape.mo1345createOutlinePq9zytI(cacheDrawScope.m5767getSizeNHjbRc(), cacheDrawScope.getLayoutDirection(), cacheDrawScope);
        if (outlineMo1345createOutlinePq9zytI instanceof Outline.Generic) {
            return borderModifierNode.drawGenericBorder(cacheDrawScope, borderModifierNode.brush, (Outline.Generic) outlineMo1345createOutlinePq9zytI, z, fMin);
        }
        if (outlineMo1345createOutlinePq9zytI instanceof Outline.Rounded) {
            return borderModifierNode.m1305drawRoundRectBorderJqoCqck(cacheDrawScope, borderModifierNode.brush, (Outline.Rounded) outlineMo1345createOutlinePq9zytI, jM5979constructorimpl, jM6047constructorimpl, z, fMin);
        }
        if (outlineMo1345createOutlinePq9zytI instanceof Outline.Rectangle) {
            return BorderKt.m1303drawRectBorderNsqcLGU(cacheDrawScope, borderModifierNode.brush, jM5979constructorimpl, jM6047constructorimpl, z, fMin);
        }
        me0.e();
        return null;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setShape(semanticsPropertyReceiver, this.shape);
    }

    public final Brush getBrush() {
        return this.brush;
    }

    public final Shape getShape() {
        return this.shape;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    /* JADX INFO: renamed from: getWidth-D9Ej5fM, reason: not valid java name */
    public final float m1306getWidthD9Ej5fM() {
        return this.width;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public boolean isImportantForBounds() {
        return this.isImportantForBounds;
    }

    public final void setBrush(Brush brush) {
        if (aa4.e(this.brush, brush)) {
            return;
        }
        this.brush = brush;
        this.drawWithCacheModifierNode.invalidateDrawCache();
    }

    public final void setShape(Shape shape) {
        if (aa4.e(this.shape, shape)) {
            return;
        }
        this.shape = shape;
        this.drawWithCacheModifierNode.invalidateDrawCache();
        SemanticsModifierNodeKt.invalidateSemantics(this);
    }

    /* JADX INFO: renamed from: setWidth-0680j_4, reason: not valid java name */
    public final void m1307setWidth0680j_4(float f) {
        if (Dp.m9047equalsimpl0(this.width, f)) {
            return;
        }
        this.width = f;
        this.drawWithCacheModifierNode.invalidateDrawCache();
    }

    public /* synthetic */ BorderModifierNode(float f, Brush brush, Shape shape, jh2 jh2Var) {
        this(f, brush, shape);
    }
}
