package defpackage;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.style.LineHeightSpan;
import android.text.style.ReplacementSpan;

/* JADX INFO: loaded from: classes2.dex */
public final class y88 extends ReplacementSpan implements LineHeightSpan {
    public final int b;
    public final float c;

    public y88(int i) {
        float f = 3.0f * Resources.getSystem().getDisplayMetrics().density;
        this.b = i;
        this.c = f;
    }

    @Override // android.text.style.LineHeightSpan
    public final void chooseHeight(CharSequence charSequence, int i, int i2, int i3, int i4, Paint.FontMetricsInt fontMetricsInt) {
        charSequence.getClass();
        if (fontMetricsInt != null) {
            int i5 = fontMetricsInt.bottom;
            int i6 = fontMetricsInt.top;
            int i7 = (int) ((i5 - i6) * 0.02678572f * 2.0f);
            fontMetricsInt.top = i6 + i7;
            fontMetricsInt.ascent += i7;
            fontMetricsInt.descent += i7;
            fontMetricsInt.bottom = i5 + i7;
        }
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        canvas.getClass();
        charSequence.getClass();
        paint.getClass();
        paint.setColor(this.b);
        float f2 = i5 - i3;
        float f3 = 0.02678572f * f2;
        float fMeasureText = paint.measureText("__");
        float fMeasureText2 = paint.measureText(charSequence, i, i2);
        Float fValueOf = Float.valueOf(fMeasureText2);
        if (fMeasureText2 == paint.measureText("x2")) {
            fValueOf = null;
        }
        float fMax = (this.c * 2.0f) + Math.max(fValueOf != null ? fValueOf.floatValue() : fMeasureText, fMeasureText);
        float f4 = f2 / 2.0f;
        float f5 = f4 - f3;
        float f6 = i5;
        canvas.drawRoundRect(new RectF(f, (2.0f * f3) + i3, f + fMax, f6), f5, f5, paint);
        paint.setColor(-1);
        paint.setTextSize(paint.getTextSize() * 0.8f);
        canvas.drawText(charSequence, i, i2, ((fMax - paint.measureText(charSequence, i, i2)) / 2.0f) + f, ((f3 + f6) - f4) + (((paint.getFontMetrics().descent - paint.getFontMetrics().ascent) / 2.0f) - paint.getFontMetrics().descent), paint);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        paint.getClass();
        return (int) ((2.0f * this.c) + Math.max(paint.measureText(charSequence, i, i2), paint.measureText("__")));
    }
}
