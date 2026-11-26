package androidx.compose.ui.text.platform;

import android.graphics.Shader;
import android.text.TextPaint;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.platform.extensions.TextPaintExtensions_androidKt;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDrawStyleKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.ll3;
import defpackage.me0;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidTextPaint extends TextPaint {
    public static final int $stable = 8;
    private int backingBlendMode;
    private Paint backingComposePaint;
    private Brush brush;
    private Size brushSize;
    private DrawStyle drawStyle;
    private Color lastColor;
    private State<? extends Shader> shaderState;
    private Shadow shadow;
    private TextDecoration textDecoration;

    public AndroidTextPaint(int i, float f) {
        super(i);
        ((TextPaint) this).density = f;
        this.textDecoration = TextDecoration.Companion.getNone();
        this.backingBlendMode = DrawScope.Companion.m6808getDefaultBlendMode0nO6VwU();
        this.shadow = Shadow.Companion.getNone();
    }

    private final void clearShader() {
        this.shaderState = null;
        this.brush = null;
        this.brushSize = null;
        setShader(null);
    }

    public static /* synthetic */ void getBrush$ui_text$annotations() {
    }

    /* JADX INFO: renamed from: getBrushSize-VsRJwc0$ui_text$annotations, reason: not valid java name */
    public static /* synthetic */ void m8753getBrushSizeVsRJwc0$ui_text$annotations() {
    }

    private final Paint getComposePaint() {
        Paint paint = this.backingComposePaint;
        if (paint != null) {
            return paint;
        }
        Paint paintAsComposePaint = AndroidPaint_androidKt.asComposePaint(this);
        this.backingComposePaint = paintAsComposePaint;
        return paintAsComposePaint;
    }

    public static /* synthetic */ void getShadow$ui_text$annotations() {
    }

    /* JADX INFO: renamed from: setBrush-12SF9DM$default, reason: not valid java name */
    public static /* synthetic */ void m8754setBrush12SF9DM$default(AndroidTextPaint androidTextPaint, Brush brush, long j, float f, int i, Object obj) {
        if ((i & 4) != 0) {
            f = Float.NaN;
        }
        androidTextPaint.m8758setBrush12SF9DM(brush, j, f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Shader setBrush_12SF9DM$lambda$0(Brush brush, long j) {
        return ((ShaderBrush) brush).mo6201createShaderuvyYCjk(j);
    }

    /* JADX INFO: renamed from: getBlendMode-0nO6VwU, reason: not valid java name */
    public final int m8755getBlendMode0nO6VwU() {
        return this.backingBlendMode;
    }

    public final Brush getBrush$ui_text() {
        return this.brush;
    }

    /* JADX INFO: renamed from: getBrushSize-VsRJwc0$ui_text, reason: not valid java name */
    public final Size m8756getBrushSizeVsRJwc0$ui_text() {
        return this.brushSize;
    }

    public final State<Shader> getShaderState$ui_text() {
        return this.shaderState;
    }

    public final Shadow getShadow$ui_text() {
        return this.shadow;
    }

    /* JADX INFO: renamed from: setBlendMode-s9anfk8, reason: not valid java name */
    public final void m8757setBlendModes9anfk8(int i) {
        if (BlendMode.m6141equalsimpl0(i, this.backingBlendMode)) {
            return;
        }
        getComposePaint().mo6107setBlendModes9anfk8(i);
        this.backingBlendMode = i;
    }

    public final void setBrush$ui_text(Brush brush) {
        this.brush = brush;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0034  */
    /* JADX WARN: Code duplicated, block: B:20:0x003d  */
    /* JADX INFO: renamed from: setBrush-12SF9DM, reason: not valid java name */
    public final void m8758setBrush12SF9DM(final Brush brush, final long j, float f) {
        if (brush == null) {
            clearShader();
            return;
        }
        if (brush instanceof SolidColor) {
            m8760setColor8_81llA(TextDrawStyleKt.m8946modulateDxMtmZc(((SolidColor) brush).m6588getValue0d7_KjU(), f));
            return;
        }
        if (!(brush instanceof ShaderBrush)) {
            me0.e();
            return;
        }
        if (aa4.e(this.brush, brush)) {
            Size size = this.brushSize;
            if (!(size == null ? false : Size.m6052equalsimpl0(size.m6061unboximpl(), j))) {
                if (j != InlineClassHelperKt.UnspecifiedPackedFloats) {
                    this.brush = brush;
                    this.brushSize = Size.m6044boximpl(j);
                    this.shaderState = SnapshotStateKt.derivedStateOf(new ll3() { // from class: vk
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return AndroidTextPaint.setBrush_12SF9DM$lambda$0(brush, j);
                        }
                    });
                }
            }
        } else if (j != InlineClassHelperKt.UnspecifiedPackedFloats) {
            this.brush = brush;
            this.brushSize = Size.m6044boximpl(j);
            this.shaderState = SnapshotStateKt.derivedStateOf(new ll3() { // from class: vk
                @Override // defpackage.ll3
                public final Object invoke() {
                    return AndroidTextPaint.setBrush_12SF9DM$lambda$0(brush, j);
                }
            });
        }
        Paint composePaint = getComposePaint();
        State<? extends Shader> state = this.shaderState;
        composePaint.setShader(state != null ? state.getValue() : null);
        this.lastColor = null;
        AndroidTextPaint_androidKt.setAlpha(this, f);
    }

    /* JADX INFO: renamed from: setBrushSize-iaC8Vc4$ui_text, reason: not valid java name */
    public final void m8759setBrushSizeiaC8Vc4$ui_text(Size size) {
        this.brushSize = size;
    }

    /* JADX INFO: renamed from: setColor-8_81llA, reason: not valid java name */
    public final void m8760setColor8_81llA(long j) {
        Color color = this.lastColor;
        if ((color == null ? false : Color.m6233equalsimpl0(color.m6242unboximpl(), j)) || j == 16) {
            return;
        }
        this.lastColor = Color.m6222boximpl(j);
        setColor(ColorKt.m6286toArgb8_81llA(j));
        clearShader();
    }

    public final void setDrawStyle(DrawStyle drawStyle) {
        if (drawStyle == null || aa4.e(this.drawStyle, drawStyle)) {
            return;
        }
        this.drawStyle = drawStyle;
        if (drawStyle.equals(Fill.INSTANCE)) {
            setStyle(android.graphics.Paint.Style.FILL);
            return;
        }
        if (!(drawStyle instanceof Stroke)) {
            me0.e();
            return;
        }
        getComposePaint().mo6112setStylek9PVt8s(PaintingStyle.Companion.m6514getStrokeTiuSbCo());
        Stroke stroke = (Stroke) drawStyle;
        getComposePaint().setStrokeWidth(stroke.getWidth());
        getComposePaint().setStrokeMiterLimit(stroke.getMiter());
        getComposePaint().mo6111setStrokeJoinWw9F2mQ(stroke.m6876getJoinLxFBmk8());
        getComposePaint().mo6110setStrokeCapBeK7IIE(stroke.m6875getCapKaPHkGw());
        getComposePaint().setPathEffect(stroke.getPathEffect());
    }

    public final void setShaderState$ui_text(State<? extends Shader> state) {
        this.shaderState = state;
    }

    public final void setShadow(Shadow shadow) {
        if (shadow == null || aa4.e(this.shadow, shadow)) {
            return;
        }
        this.shadow = shadow;
        if (aa4.e(shadow, Shadow.Companion.getNone())) {
            clearShadowLayer();
        } else {
            setShadowLayer(TextPaintExtensions_androidKt.correctBlurRadius(this.shadow.getBlurRadius()), Float.intBitsToFloat((int) (this.shadow.m6577getOffsetF1C5BW0() >> 32)), Float.intBitsToFloat((int) (this.shadow.m6577getOffsetF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), ColorKt.m6286toArgb8_81llA(this.shadow.m6576getColor0d7_KjU()));
        }
    }

    public final void setShadow$ui_text(Shadow shadow) {
        this.shadow = shadow;
    }

    public final void setTextDecoration(TextDecoration textDecoration) {
        if (textDecoration == null || aa4.e(this.textDecoration, textDecoration)) {
            return;
        }
        this.textDecoration = textDecoration;
        TextDecoration.Companion companion = TextDecoration.Companion;
        setUnderlineText(textDecoration.contains(companion.getUnderline()));
        setStrikeThruText(this.textDecoration.contains(companion.getLineThrough()));
    }
}
