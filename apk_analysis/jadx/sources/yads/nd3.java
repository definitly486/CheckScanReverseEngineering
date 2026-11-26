package yads;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;

/* JADX INFO: loaded from: classes6.dex */
public final class nd3 extends px4 {
    public final int b;
    public final int c;
    public final int d;
    public final iw5 e;
    public final ld3 f;
    public BitmapDrawable g = null;
    public final RectF h = new RectF();

    public nd3(int i, int i2, int i3, iw5 iw5Var, ld3 ld3Var) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = iw5Var;
        this.f = ld3Var;
    }

    @Override // yads.px4
    public final int a(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        Rect bounds;
        Rect bounds2;
        if (fontMetricsInt == null || this.d > 0) {
            return this.b;
        }
        int iB = defpackage.w65.b(paint.ascent());
        int iB2 = defpackage.w65.b(paint.descent());
        BitmapDrawable bitmapDrawable = this.g;
        int iHeight = (bitmapDrawable == null || (bounds2 = bitmapDrawable.getBounds()) == null) ? this.c : bounds2.height();
        int iOrdinal = this.e.ordinal();
        if (iOrdinal == 0) {
            iB2 = iB + iHeight;
        } else if (iOrdinal == 1) {
            iB2 = ((iB + iB2) + iHeight) / 2;
        } else if (iOrdinal == 2) {
            iB2 = 0;
        } else if (iOrdinal != 3) {
            defpackage.me0.e();
            return 0;
        }
        int i3 = iB2 - iHeight;
        int i4 = fontMetricsInt.top;
        int i5 = fontMetricsInt.ascent;
        int i6 = fontMetricsInt.bottom - fontMetricsInt.descent;
        fontMetricsInt.ascent = Math.min(i3, i5);
        int iMax = Math.max(iB2, fontMetricsInt.descent);
        fontMetricsInt.descent = iMax;
        fontMetricsInt.top = fontMetricsInt.ascent + (i4 - i5);
        fontMetricsInt.bottom = iMax + i6;
        BitmapDrawable bitmapDrawable2 = this.g;
        return (bitmapDrawable2 == null || (bounds = bitmapDrawable2.getBounds()) == null) ? this.b : bounds.width();
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        BitmapDrawable bitmapDrawable = this.g;
        if (bitmapDrawable == null) {
            return;
        }
        canvas.save();
        int iHeight = bitmapDrawable.getBounds().height();
        int iOrdinal = this.e.ordinal();
        if (iOrdinal == 0) {
            i4 = i3 + iHeight;
        } else if (iOrdinal == 1) {
            i4 = ((i3 + i5) + iHeight) / 2;
        } else if (iOrdinal != 2) {
            if (iOrdinal != 3) {
                defpackage.me0.e();
                return;
            }
            i4 = i5;
        }
        float f2 = i4 - iHeight;
        this.h.set(bitmapDrawable.getBounds());
        this.h.offset(f, f2);
        canvas.translate(f, f2);
        bitmapDrawable.draw(canvas);
        canvas.restore();
    }
}
