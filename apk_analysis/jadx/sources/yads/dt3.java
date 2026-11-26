package yads;

import android.graphics.Paint;
import android.text.Spanned;
import android.text.style.LineHeightSpan;
import defpackage.ta8;

/* JADX INFO: loaded from: classes2.dex */
public final class dt3 implements LineHeightSpan {
    public final int b;
    public final int c;
    public final int d;
    public boolean e;
    public int f = Integer.MAX_VALUE;
    public int g = Integer.MAX_VALUE;
    public int h = Integer.MAX_VALUE;
    public int i = Integer.MAX_VALUE;

    public dt3(int i, int i2, int i3) {
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    @Override // android.text.style.LineHeightSpan
    public final void chooseHeight(CharSequence charSequence, int i, int i2, int i3, int i4, Paint.FontMetricsInt fontMetricsInt) {
        int i5;
        int i6;
        int i7;
        Spanned spanned = charSequence instanceof Spanned ? (Spanned) charSequence : null;
        if (spanned == null) {
            return;
        }
        int spanStart = spanned.getSpanStart(this);
        if (i > spanned.getSpanEnd(this) || spanStart > i2) {
            return;
        }
        if (this.e) {
            fontMetricsInt.top = this.f;
            fontMetricsInt.ascent = this.g;
            fontMetricsInt.descent = this.h;
            fontMetricsInt.bottom = this.i;
        } else {
            this.e = true;
            this.f = fontMetricsInt.top;
            this.g = fontMetricsInt.ascent;
            this.h = fontMetricsInt.descent;
            this.i = fontMetricsInt.bottom;
        }
        Object[] spans = spanned.getSpans(i, i2, dt3.class);
        int iMax = this.c;
        for (Object obj : spans) {
            iMax = Math.max(iMax, ((dt3) obj).c);
        }
        if (iMax > 0) {
            int i8 = fontMetricsInt.descent;
            int i9 = fontMetricsInt.ascent;
            int i10 = i8 - i9;
            int i11 = fontMetricsInt.top - i9;
            int i12 = fontMetricsInt.bottom - i8;
            if (i10 >= 0) {
                int i13 = iMax - i10;
                if (i13 < 0) {
                    i6 = i9 - (i13 / 2);
                    if (i6 > 0) {
                        i6 = 0;
                    }
                    fontMetricsInt.ascent = i6;
                    i7 = iMax + i6;
                    if (i7 < 0) {
                        i7 = 0;
                    }
                    fontMetricsInt.descent = i7;
                } else {
                    int i14 = (i13 / 2) + i8;
                    if (i14 < 0) {
                        i14 = 0;
                    }
                    fontMetricsInt.descent = i14;
                    int i15 = i14 - iMax;
                    i6 = i15 > 0 ? 0 : i15;
                    fontMetricsInt.ascent = i6;
                    i7 = i14;
                }
                fontMetricsInt.top = i6 + i11;
                fontMetricsInt.bottom = i7 + i12;
            }
        }
        int i16 = this.d;
        if (i16 == spanStart && i <= i16 && i16 <= i2 && (i5 = this.b) > 0) {
            fontMetricsInt.top -= i5;
            fontMetricsInt.ascent -= i5;
        }
        if (ta8.D(charSequence.subSequence(i, i2).toString(), "\n", false)) {
            this.e = false;
        }
    }
}
