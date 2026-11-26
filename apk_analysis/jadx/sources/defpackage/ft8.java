package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.style.LeadingMarginSpan;

/* JADX INFO: loaded from: classes5.dex */
public final class ft8 implements LeadingMarginSpan {
    public final d15 b;
    public final Rect c = sq5.a;
    public final Paint d = sq5.c;

    public ft8(d15 d15Var) {
        this.b = d15Var;
    }

    @Override // android.text.style.LeadingMarginSpan
    public final void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        int width;
        int iB = k.b(i5, i3, 2, i3);
        Paint paint2 = this.d;
        paint2.set(paint);
        d15 d15Var = this.b;
        d15Var.getClass();
        paint2.setColor(y14.o(paint2.getColor(), 25));
        paint2.setStyle(Paint.Style.FILL);
        int i8 = d15Var.f;
        if (i8 >= 0) {
            paint2.setStrokeWidth(i8);
        }
        int strokeWidth = (int) ((((int) (paint2.getStrokeWidth() + 0.5f)) / 2.0f) + 0.5f);
        if (i2 > 0) {
            width = canvas.getWidth();
        } else {
            width = i;
            i -= canvas.getWidth();
        }
        Rect rect = this.c;
        rect.set(i, iB - strokeWidth, width, iB + strokeWidth);
        canvas.drawRect(rect, paint2);
    }

    @Override // android.text.style.LeadingMarginSpan
    public final int getLeadingMargin(boolean z) {
        return 0;
    }
}
