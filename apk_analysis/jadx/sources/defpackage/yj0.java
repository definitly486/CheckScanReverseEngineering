package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.style.LeadingMarginSpan;

/* JADX INFO: loaded from: classes5.dex */
public final class yj0 implements LeadingMarginSpan {
    public final d15 b;
    public final Rect c = sq5.a;
    public final Paint d = sq5.c;

    public yj0(d15 d15Var) {
        this.b = d15Var;
    }

    @Override // android.text.style.LeadingMarginSpan
    public final void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        d15 d15Var = this.b;
        int i8 = d15Var.b;
        if (i8 == 0) {
            i8 = (int) ((d15Var.a * 0.25f) + 0.5f);
        }
        Paint paint2 = this.d;
        paint2.set(paint);
        d15Var.getClass();
        int iO = y14.o(paint2.getColor(), 25);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setColor(iO);
        int i9 = i2 * i8;
        int i10 = i + i9;
        int i11 = i9 + i10;
        int iMin = Math.min(i10, i11);
        int iMax = Math.max(i10, i11);
        Rect rect = this.c;
        rect.set(iMin, i3, iMax, i5);
        canvas.drawRect(rect, paint2);
    }

    @Override // android.text.style.LeadingMarginSpan
    public final int getLeadingMargin(boolean z) {
        return this.b.a;
    }
}
