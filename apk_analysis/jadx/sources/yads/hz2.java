package yads;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import android.text.style.ParagraphStyle;

/* JADX INFO: loaded from: classes6.dex */
public final class hz2 extends MetricAffectingSpan implements ParagraphStyle {
    public final int b;
    public final int c;

    public hz2(int i, int i2) {
        this.b = i;
        this.c = i2;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        textPaint.setTextSize(this.b);
    }

    @Override // android.text.style.MetricAffectingSpan
    public final void updateMeasureState(TextPaint textPaint) {
        int i = this.c;
        if (i == 0) {
            textPaint.setTextSize(this.b);
            return;
        }
        float f = i;
        float textSize = textPaint.getTextSize();
        int i2 = this.b;
        if (f >= textSize) {
            textPaint.setTextScaleX(i2 / textPaint.getTextSize());
        } else {
            textPaint.setTextScaleX(i2 / this.c);
            textPaint.setTextSize(this.c);
        }
    }
}
