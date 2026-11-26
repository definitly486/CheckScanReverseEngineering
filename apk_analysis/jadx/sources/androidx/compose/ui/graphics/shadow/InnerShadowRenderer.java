package androidx.compose.ui.graphics.shadow;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.BrushKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.CompositeShaderBrush;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.ShaderKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.DpOffset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class InnerShadowRenderer extends ShadowRenderer {
    public static final int $stable = 8;
    private CompositeShaderBrush compositeShader;
    private float[] matrix;
    private final Paint paint;
    private final Shadow shadow;
    private ShaderBrush shadowMask;

    public InnerShadowRenderer(Shadow shadow, Outline outline) {
        super(outline);
        this.shadow = shadow;
        this.paint = AndroidPaint_androidKt.Paint();
    }

    /* JADX INFO: renamed from: createInnerPathShadowBrush-LjSzlW0, reason: not valid java name */
    private final ShaderBrush m6946createInnerPathShadowBrushLjSzlW0(long j, Path path, float f, float f2, float f3, float f4) {
        ImageBitmap imageBitmapM6468ImageBitmapx__hDU$default;
        int iCeil = (int) Math.ceil(Float.intBitsToFloat((int) (j >> 32)));
        int iCeil2 = (int) Math.ceil(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        if (f2 > 0.0f) {
            Rect bounds = path.getBounds();
            float right = bounds.getRight() - bounds.getLeft();
            float bottom = bounds.getBottom() - bounds.getTop();
            imageBitmapM6468ImageBitmapx__hDU$default = ImageBitmapKt.m6468ImageBitmapx__hDU$default((int) Math.ceil(right), (int) Math.ceil(bottom), ImageBitmapConfig.Companion.m6462getAlpha8_sVssgQ(), false, null, 24, null);
            Canvas Canvas = CanvasKt.Canvas(imageBitmapM6468ImageBitmapx__hDU$default);
            Canvas.drawPath(path, this.paint);
            Canvas.m6204clipRectN_I0leg$default(Canvas, 0.0f, 0.0f, right, bottom, 0, 16, null);
            Paint paintM6941configureShadowFoewPVk$default = BlurKt.m6941configureShadowFoewPVk$default(this.paint, 0L, BlendMode.Companion.m6145getClear0nO6VwU(), null, PaintingStyle.Companion.m6514getStrokeTiuSbCo(), 5, null);
            paintM6941configureShadowFoewPVk$default.setStrokeWidth(2.0f * f2);
            j59 j59Var = j59.a;
            Canvas.drawPath(path, paintM6941configureShadowFoewPVk$default);
        } else {
            imageBitmapM6468ImageBitmapx__hDU$default = null;
        }
        int iCeil3 = ((int) Math.ceil(f)) * 2;
        ImageBitmap imageBitmapM6468ImageBitmapx__hDU$default2 = ImageBitmapKt.m6468ImageBitmapx__hDU$default(iCeil + iCeil3, iCeil2 + iCeil3, ImageBitmapConfig.Companion.m6462getAlpha8_sVssgQ(), false, null, 24, null);
        Canvas Canvas2 = CanvasKt.Canvas(imageBitmapM6468ImageBitmapx__hDU$default2);
        if (imageBitmapM6468ImageBitmapx__hDU$default != null) {
            Canvas2.drawRect(0.0f, 0.0f, imageBitmapM6468ImageBitmapx__hDU$default2.getWidth(), imageBitmapM6468ImageBitmapx__hDU$default2.getHeight(), BlurKt.m6941configureShadowFoewPVk$default(this.paint, 0L, 0, null, 0, 15, null));
            Canvas2.mo6085drawImaged4ec7I(imageBitmapM6468ImageBitmapx__hDU$default, Offset.m5979constructorimpl((MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(f4))) | (((long) Float.floatToRawIntBits(f3)) << 32)), BlurKt.m6941configureShadowFoewPVk$default(this.paint, 0L, BlendMode.Companion.m6173getXor0nO6VwU(), f > 0.0f ? Blur_androidKt.BlurFilter(f) : null, 0, 9, null));
            return BrushKt.ShaderBrush(ShaderKt.m6565ImageShaderF49vj9s$default(imageBitmapM6468ImageBitmapx__hDU$default2, 0, 0, 6, null));
        }
        Canvas2.save();
        Canvas2.translate(f3, f4);
        Canvas2.drawPath(path, BlurKt.m6941configureShadowFoewPVk$default(this.paint, 0L, 0, f > 0.0f ? Blur_androidKt.BlurFilter(f) : null, 0, 11, null));
        Canvas2.restore();
        Canvas2.drawRect(0.0f, 0.0f, imageBitmapM6468ImageBitmapx__hDU$default2.getWidth(), imageBitmapM6468ImageBitmapx__hDU$default2.getHeight(), BlurKt.m6941configureShadowFoewPVk$default(this.paint, 0L, BlendMode.Companion.m6173getXor0nO6VwU(), null, 0, 13, null));
        return BrushKt.ShaderBrush(ShaderKt.m6565ImageShaderF49vj9s$default(imageBitmapM6468ImageBitmapx__hDU$default2, 0, 0, 6, null));
    }

    /* JADX INFO: renamed from: createInnerShadowBrush-u1Psq-8, reason: not valid java name */
    private final ShaderBrush m6947createInnerShadowBrushu1Psq8(long j, float f, float f2, float f3, float f4, long j2) {
        int i = (int) (j >> 32);
        int iCeil = (int) Math.ceil(Float.intBitsToFloat(i));
        int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        ImageBitmap imageBitmapM6468ImageBitmapx__hDU$default = ImageBitmapKt.m6468ImageBitmapx__hDU$default(iCeil, (int) Math.ceil(Float.intBitsToFloat(i2)), ImageBitmapConfig.Companion.m6462getAlpha8_sVssgQ(), false, null, 24, null);
        Canvas Canvas = CanvasKt.Canvas(imageBitmapM6468ImageBitmapx__hDU$default);
        float f5 = f3 + f2;
        float f6 = f4 + f2;
        Canvas.drawRoundRect(f5, f6, Math.max(f5, (Float.intBitsToFloat(i) + f3) - f2), Math.max(f6, (Float.intBitsToFloat(i2) + f4) - f2), Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), BlurKt.m6941configureShadowFoewPVk$default(this.paint, 0L, 0, f > 0.0f ? Blur_androidKt.BlurFilter(f) : null, 0, 11, null));
        Canvas.drawRect(0.0f, 0.0f, imageBitmapM6468ImageBitmapx__hDU$default.getWidth(), imageBitmapM6468ImageBitmapx__hDU$default.getHeight(), BlurKt.m6941configureShadowFoewPVk$default(this.paint, 0L, BlendMode.Companion.m6173getXor0nO6VwU(), null, 0, 13, null));
        return BrushKt.ShaderBrush(ShaderKt.m6565ImageShaderF49vj9s$default(imageBitmapM6468ImageBitmapx__hDU$default, 0, 0, 6, null));
    }

    private final CompositeShaderBrush obtainCompositeBrush(ShaderBrush shaderBrush, Brush brush) {
        CompositeShaderBrush compositeShaderBrush = this.compositeShader;
        if (compositeShaderBrush != null && aa4.e(compositeShaderBrush.getSrcBrush(), brush)) {
            return compositeShaderBrush;
        }
        CompositeShaderBrush compositeShaderBrush2 = new CompositeShaderBrush(BrushKt.toShaderBrush(shaderBrush), BrushKt.toShaderBrush(brush), BlendMode.Companion.m6170getSrcIn0nO6VwU(), null);
        this.compositeShader = compositeShaderBrush2;
        return compositeShaderBrush2;
    }

    /* JADX INFO: renamed from: obtainMatrix-sQKQjiQ, reason: not valid java name */
    private final float[] m6948obtainMatrixsQKQjiQ() {
        float[] fArr = this.matrix;
        if (fArr != null) {
            return fArr;
        }
        float[] fArrM6476constructorimpl$default = Matrix.m6476constructorimpl$default(null, 1, null);
        this.matrix = fArrM6476constructorimpl$default;
        return fArrM6476constructorimpl$default;
    }

    @Override // androidx.compose.ui.graphics.shadow.ShadowRenderer
    /* JADX INFO: renamed from: buildShadow-_SMYjrA */
    public void mo6944buildShadow_SMYjrA(DrawScope drawScope, long j, long j2, Path path) {
        float fMo1434toPx0680j_4 = drawScope.mo1434toPx0680j_4(this.shadow.m6952getRadiusD9Ej5fM());
        float fMo1434toPx0680j_5 = drawScope.mo1434toPx0680j_4(this.shadow.m6953getSpreadD9Ej5fM());
        float fMo1434toPx0680j_6 = drawScope.mo1434toPx0680j_4(DpOffset.m9103getXD9Ej5fM(this.shadow.m6951getOffsetRKDOV3M()));
        float fMo1434toPx0680j_7 = drawScope.mo1434toPx0680j_4(DpOffset.m9105getYD9Ej5fM(this.shadow.m6951getOffsetRKDOV3M()));
        this.shadowMask = path != null ? m6946createInnerPathShadowBrushLjSzlW0(j, path, fMo1434toPx0680j_4, fMo1434toPx0680j_5, fMo1434toPx0680j_6, fMo1434toPx0680j_7) : m6947createInnerShadowBrushu1Psq8(j, fMo1434toPx0680j_4, fMo1434toPx0680j_5, fMo1434toPx0680j_6, fMo1434toPx0680j_7, j2);
    }

    @Override // androidx.compose.ui.graphics.shadow.ShadowRenderer
    /* JADX INFO: renamed from: onDrawShadow-MLmccfk */
    public void mo6945onDrawShadowMLmccfk(DrawScope drawScope, long j, long j2, Path path, float f, ColorFilter colorFilter, Brush brush, int i) {
        ShaderBrush shaderBrushObtainCompositeBrush = this.shadowMask;
        if (shaderBrushObtainCompositeBrush != null) {
            if (this.shadow.getBrush() instanceof ShaderBrush) {
                shaderBrushObtainCompositeBrush = obtainCompositeBrush(shaderBrushObtainCompositeBrush, this.shadow.getBrush());
            }
            ShaderBrush shaderBrush = shaderBrushObtainCompositeBrush;
            if (path != null) {
                DrawScope.m6795drawPathGBMwjPU$default(drawScope, path, shaderBrush, f, null, colorFilter, i, 8, null);
            } else if (CornerRadius.m5946equalsimpl0(j2, CornerRadius.Companion.m5959getZerokKHJgLs())) {
                DrawScope.m6799drawRectAsUm42w$default(drawScope, shaderBrush, 0L, 0L, f, null, colorFilter, i, 22, null);
            } else {
                DrawScope.m6801drawRoundRectZuiqVtQ$default(drawScope, shaderBrush, 0L, 0L, j2, f, null, colorFilter, this.shadow.m6949getBlendMode0nO6VwU(), 38, null);
            }
        }
    }
}
