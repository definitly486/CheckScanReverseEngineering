package yads;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import android.text.style.ParagraphStyle;

/* JADX INFO: loaded from: classes6.dex */
public final class rs extends MetricAffectingSpan implements ParagraphStyle {
    public final int b;
    public final int c;

    public rs(int i, int i2) {
        this.b = i;
        this.c = i2;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        textPaint.baselineShift -= this.b;
    }

    @Override // android.text.style.MetricAffectingSpan
    public final void updateMeasureState(TextPaint textPaint) {
        if (this.c == 0) {
            textPaint.baselineShift -= this.b;
        }
    }
}
