package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class TextPainter {
    public static final int $stable = 0;
    public static final TextPainter INSTANCE = new TextPainter();

    private TextPainter() {
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:54:? A[SYNTHETIC] */
    public final void paint(Canvas canvas, TextLayoutResult textLayoutResult) {
        Canvas canvas2;
        Throwable th;
        Canvas canvas3;
        float alpha;
        boolean z = textLayoutResult.getHasVisualOverflow() && !TextOverflow.m8968equalsimpl0(textLayoutResult.getLayoutInput().m8458getOverflowgIe3tQ8(), TextOverflow.Companion.m8981getVisiblegIe3tQ8());
        if (z) {
            float fM8462getSizeYbymL2g = (int) (textLayoutResult.m8462getSizeYbymL2g() >> 32);
            Rect rectM6027Recttz77jQw = RectKt.m6027Recttz77jQw(Offset.Companion.m6003getZeroF1C5BW0(), Size.m6047constructorimpl((((long) Float.floatToRawIntBits((int) (textLayoutResult.m8462getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fM8462getSizeYbymL2g)) << 32)));
            canvas.save();
            canvas2 = null;
            Canvas.m6205clipRectmtrdDE$default(canvas, rectM6027Recttz77jQw, 0, 2, null);
        }
        SpanStyle spanStyle$ui_text = textLayoutResult.getLayoutInput().getStyle().getSpanStyle$ui_text();
        TextDecoration textDecoration = spanStyle$ui_text.getTextDecoration();
        if (textDecoration == null) {
            textDecoration = TextDecoration.Companion.getNone();
        }
        TextDecoration textDecoration2 = textDecoration;
        Shadow shadow = spanStyle$ui_text.getShadow();
        if (shadow == null) {
            shadow = Shadow.Companion.getNone();
        }
        Shadow shadow2 = shadow;
        DrawStyle drawStyle = spanStyle$ui_text.getDrawStyle();
        if (drawStyle == null) {
            drawStyle = Fill.INSTANCE;
        }
        DrawStyle drawStyle2 = drawStyle;
        try {
            Brush brush = spanStyle$ui_text.getBrush();
            try {
                if (brush != null) {
                    if (spanStyle$ui_text.getTextForegroundStyle$ui_text() != TextForegroundStyle.Unspecified.INSTANCE) {
                        try {
                            alpha = spanStyle$ui_text.getTextForegroundStyle$ui_text().getAlpha();
                        } catch (Throwable th2) {
                            th = th2;
                            canvas2 = canvas;
                            if (z) {
                                throw th;
                            }
                            canvas2.restore();
                            throw th;
                        }
                    } else {
                        alpha = 1.0f;
                    }
                    canvas3 = canvas;
                    MultiParagraph.m8350painthn5TExg$default(textLayoutResult.getMultiParagraph(), canvas3, brush, alpha, shadow2, textDecoration2, drawStyle2, 0, 64, null);
                } else {
                    canvas3 = canvas;
                    textLayoutResult.getMultiParagraph().m8355paintLG529CI(canvas3, (32 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : spanStyle$ui_text.getTextForegroundStyle$ui_text() != TextForegroundStyle.Unspecified.INSTANCE ? spanStyle$ui_text.getTextForegroundStyle$ui_text().mo8800getColor0d7_KjU() : Color.Companion.m6258getBlack0d7_KjU(), (32 & 4) != 0 ? null : shadow2, (32 & 8) != 0 ? null : textDecoration2, (32 & 16) == 0 ? drawStyle2 : null, (32 & 32) != 0 ? DrawScope.Companion.m6808getDefaultBlendMode0nO6VwU() : 0);
                }
                if (z) {
                    canvas3.restore();
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                if (z) {
                    throw th;
                }
                canvas2.restore();
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            canvas2 = canvas;
        }
    }
}
