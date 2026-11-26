package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.LeadingMarginSpan;
import android.text.style.MetricAffectingSpan;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class pv3 extends MetricAffectingSpan implements LeadingMarginSpan {
    public final d15 b;
    public final Rect c = sq5.a;
    public final Paint d = sq5.c;
    public final int e;

    public pv3(d15 d15Var, int i) {
        this.b = d15Var;
        this.e = i;
    }

    public final void a(TextPaint textPaint) {
        this.b.getClass();
        textPaint.setFakeBoldText(true);
        int i = this.e;
        float[] fArr = d15.g;
        if (6 >= i) {
            textPaint.setTextSize(textPaint.getTextSize() * fArr[i - 1]);
        } else {
            Locale locale = Locale.US;
            ah.f(c9.d(i, "Supplied heading level: ", " is invalid, where configured heading sizes are: `", Arrays.toString(fArr), "`"));
        }
    }

    @Override // android.text.style.LeadingMarginSpan
    public final void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        int width;
        int i8 = this.e;
        if ((i8 == 1 || i8 == 2) && (charSequence instanceof Spanned) && ((Spanned) charSequence).getSpanEnd(this) == i7) {
            Paint paint2 = this.d;
            paint2.set(paint);
            d15 d15Var = this.b;
            d15Var.getClass();
            paint2.setColor(y14.o(paint2.getColor(), 75));
            paint2.setStyle(Paint.Style.FILL);
            int i9 = d15Var.e;
            if (i9 >= 0) {
                paint2.setStrokeWidth(i9);
            }
            float strokeWidth = paint2.getStrokeWidth();
            if (strokeWidth > 0.0f) {
                int i10 = (int) ((i5 - strokeWidth) + 0.5f);
                if (i2 > 0) {
                    width = canvas.getWidth();
                } else {
                    width = i;
                    i -= canvas.getWidth();
                }
                Rect rect = this.c;
                rect.set(i, i10, width, i5);
                canvas.drawRect(rect, paint2);
            }
        }
    }

    @Override // android.text.style.LeadingMarginSpan
    public final int getLeadingMargin(boolean z) {
        return 0;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        a(textPaint);
    }

    @Override // android.text.style.MetricAffectingSpan
    public final void updateMeasureState(TextPaint textPaint) {
        a(textPaint);
    }
}
