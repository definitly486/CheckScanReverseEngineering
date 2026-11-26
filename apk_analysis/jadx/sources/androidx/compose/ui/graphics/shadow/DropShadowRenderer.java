package androidx.compose.ui.graphics.shadow;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
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
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.ShaderKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class DropShadowRenderer extends ShadowRenderer {
    public static final int $stable = 8;
    private CompositeShaderBrush compositeShader;
    private final Paint paint;
    private final Shadow shadow;
    private ImageBitmap shadowBitmap;

    public DropShadowRenderer(Shadow shadow, Outline outline) {
        super(outline);
        this.shadow = shadow;
        this.paint = AndroidPaint_androidKt.Paint();
    }

    /* JADX INFO: renamed from: createOuterShadowBitmap-Cqks5Fs, reason: not valid java name */
    private final ImageBitmap m6942createOuterShadowBitmapCqks5Fs(long j, Path path, float f, float f2) {
        float f3 = (f2 * 2.0f) + (f * 2.0f);
        ImageBitmap imageBitmapM6468ImageBitmapx__hDU$default = ImageBitmapKt.m6468ImageBitmapx__hDU$default((int) Math.ceil(Float.intBitsToFloat((int) (j >> 32)) + f3), (int) Math.ceil(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + f3), ImageBitmapConfig.Companion.m6462getAlpha8_sVssgQ(), false, null, 24, null);
        Canvas Canvas = CanvasKt.Canvas(imageBitmapM6468ImageBitmapx__hDU$default);
        if (f2 <= 0.0f) {
            BlurKt.m6941configureShadowFoewPVk$default(this.paint, 0L, 0, f > 0.0f ? Blur_androidKt.BlurFilter(f) : null, 0, 11, null);
            Canvas.translate(f, f);
            Canvas.drawPath(path, this.paint);
            return imageBitmapM6468ImageBitmapx__hDU$default;
        }
        float f4 = f + f2;
        Canvas.translate(f4, f4);
        Canvas.drawPath(path, BlurKt.m6941configureShadowFoewPVk$default(this.paint, 0L, 0, f > 0.0f ? Blur_androidKt.BlurFilter(f) : null, 0, 11, null));
        Paint paintM6941configureShadowFoewPVk$default = BlurKt.m6941configureShadowFoewPVk$default(this.paint, 0L, 0, f > 0.0f ? Blur_androidKt.BlurFilter(f) : null, PaintingStyle.Companion.m6514getStrokeTiuSbCo(), 3, null);
        paintM6941configureShadowFoewPVk$default.setStrokeWidth(f2 * 2.0f);
        j59 j59Var = j59.a;
        Canvas.drawPath(path, paintM6941configureShadowFoewPVk$default);
        return imageBitmapM6468ImageBitmapx__hDU$default;
    }

    /* JADX INFO: renamed from: createOuterShadowBitmap-D_oqF2M, reason: not valid java name */
    private final ImageBitmap m6943createOuterShadowBitmapD_oqF2M(long j, float f, float f2, long j2) {
        float f3 = (2.0f * f2) + (f * 2.0f);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) + f3;
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + f3;
        ImageBitmap imageBitmapM6468ImageBitmapx__hDU$default = ImageBitmapKt.m6468ImageBitmapx__hDU$default((int) Math.ceil(fIntBitsToFloat), (int) Math.ceil(fIntBitsToFloat2), ImageBitmapConfig.Companion.m6462getAlpha8_sVssgQ(), false, null, 24, null);
        CanvasKt.Canvas(imageBitmapM6468ImageBitmapx__hDU$default).drawRoundRect(f, f, fIntBitsToFloat - f, fIntBitsToFloat2 - f, Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), BlurKt.m6941configureShadowFoewPVk$default(this.paint, 0L, 0, f > 0.0f ? Blur_androidKt.BlurFilter(f) : null, 0, 11, null));
        return imageBitmapM6468ImageBitmapx__hDU$default;
    }

    private final Brush obtainCompositeBrush(ImageBitmap imageBitmap, Brush brush) {
        CompositeShaderBrush compositeShaderBrush = this.compositeShader;
        if (compositeShaderBrush != null && aa4.e(compositeShaderBrush.getSrcBrush(), brush)) {
            return compositeShaderBrush;
        }
        Brush.Companion companion = Brush.Companion;
        ShaderBrush ShaderBrush = BrushKt.ShaderBrush(ShaderKt.m6565ImageShaderF49vj9s$default(imageBitmap, 0, 0, 6, null));
        if (brush instanceof ShaderBrush) {
            brush = BrushKt.ShaderBrush(((ShaderBrush) brush).mo6201createShaderuvyYCjk(Size.m6047constructorimpl((((long) Float.floatToRawIntBits(imageBitmap.getWidth())) << 32) | (((long) Float.floatToRawIntBits(imageBitmap.getHeight())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))));
        }
        Brush brushM6189composite7EN7VTw = companion.m6189composite7EN7VTw(ShaderBrush, brush, BlendMode.Companion.m6170getSrcIn0nO6VwU());
        brushM6189composite7EN7VTw.getClass();
        CompositeShaderBrush compositeShaderBrush2 = (CompositeShaderBrush) brushM6189composite7EN7VTw;
        this.compositeShader = compositeShaderBrush2;
        return compositeShaderBrush2;
    }

    @Override // androidx.compose.ui.graphics.shadow.ShadowRenderer
    /* JADX INFO: renamed from: buildShadow-_SMYjrA, reason: not valid java name */
    public void mo6944buildShadow_SMYjrA(DrawScope drawScope, long j, long j2, Path path) {
        DropShadowRenderer dropShadowRenderer;
        ImageBitmap imageBitmapM6943createOuterShadowBitmapD_oqF2M;
        float fMo1434toPx0680j_4 = drawScope.mo1434toPx0680j_4(this.shadow.m6952getRadiusD9Ej5fM());
        float fMo1434toPx0680j_5 = drawScope.mo1434toPx0680j_4(this.shadow.m6953getSpreadD9Ej5fM());
        if (path != null) {
            dropShadowRenderer = this;
            imageBitmapM6943createOuterShadowBitmapD_oqF2M = dropShadowRenderer.m6942createOuterShadowBitmapCqks5Fs(j, path, fMo1434toPx0680j_4, fMo1434toPx0680j_5);
        } else {
            dropShadowRenderer = this;
            imageBitmapM6943createOuterShadowBitmapD_oqF2M = m6943createOuterShadowBitmapD_oqF2M(j, fMo1434toPx0680j_4, fMo1434toPx0680j_5, j2);
        }
        dropShadowRenderer.shadowBitmap = imageBitmapM6943createOuterShadowBitmapD_oqF2M;
    }

    public final Shadow getShadow() {
        return this.shadow;
    }

    @Override // androidx.compose.ui.graphics.shadow.ShadowRenderer
    /* JADX INFO: renamed from: onDrawShadow-MLmccfk, reason: not valid java name */
    public void mo6945onDrawShadowMLmccfk(DrawScope drawScope, long j, long j2, Path path, float f, ColorFilter colorFilter, Brush brush, int i) {
        ImageBitmap imageBitmap = this.shadowBitmap;
        if (imageBitmap != null) {
            float f2 = -(drawScope.mo1434toPx0680j_4(this.shadow.m6953getSpreadD9Ej5fM()) + drawScope.mo1434toPx0680j_4(this.shadow.m6952getRadiusD9Ej5fM()));
            if (brush == null || colorFilter != null) {
                DrawScope.m6790drawImagegbVJVH8$default(drawScope, imageBitmap, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f2)) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(f2)))), f, null, colorFilter, i, 8, null);
                return;
            }
            Brush brushObtainCompositeBrush = obtainCompositeBrush(imageBitmap, brush);
            drawScope.getDrawContext().getTransform().translate(f2, f2);
            try {
                float width = imageBitmap.getWidth();
                DrawScope.m6799drawRectAsUm42w$default(drawScope, brushObtainCompositeBrush, 0L, Size.m6047constructorimpl((((long) Float.floatToRawIntBits(imageBitmap.getHeight())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(width) << 32)), f, null, null, i, 50, null);
            } finally {
                float f3 = -f2;
                drawScope.getDrawContext().getTransform().translate(f3, f3);
            }
        }
    }
}
