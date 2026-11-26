package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.LeadingMarginSpan;

/* JADX INFO: loaded from: classes5.dex */
public final class e06 implements LeadingMarginSpan {
    public final d15 b;
    public final String c;
    public final Paint d = sq5.c;
    public int e;

    public e06(d15 d15Var, String str) {
        this.b = d15Var;
        this.c = str;
    }

    @Override // android.text.style.LeadingMarginSpan
    public final void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        int i8;
        if (z && (charSequence instanceof Spanned) && ((Spanned) charSequence).getSpanStart(this) == i6) {
            Paint paint2 = this.d;
            paint2.set(paint);
            d15 d15Var = this.b;
            d15Var.getClass();
            paint2.setColor(paint2.getColor());
            int i9 = d15Var.c;
            if (i9 != 0) {
                paint2.setStrokeWidth(i9);
            }
            String str = this.c;
            int iMeasureText = (int) (paint2.measureText(str) + 0.5f);
            int i10 = d15Var.a;
            if (iMeasureText > i10) {
                this.e = iMeasureText;
                i10 = iMeasureText;
            } else {
                this.e = 0;
            }
            if (i2 > 0) {
                i8 = ((i10 * i2) + i) - iMeasureText;
            } else {
                i8 = (i10 - iMeasureText) + (i2 * i10) + i;
            }
            canvas.drawText(str, i8, i4, paint2);
        }
    }

    @Override // android.text.style.LeadingMarginSpan
    public final int getLeadingMargin(boolean z) {
        return Math.max(this.e, this.b.a);
    }
}
