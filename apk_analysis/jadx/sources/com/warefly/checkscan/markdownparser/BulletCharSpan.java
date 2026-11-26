package com.warefly.checkscan.markdownparser;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.BulletSpan;

/* JADX INFO: loaded from: classes5.dex */
public final class BulletCharSpan extends BulletSpan {
    @Override // android.text.style.BulletSpan, android.text.style.LeadingMarginSpan
    public final void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        canvas.getClass();
        paint.getClass();
        charSequence.getClass();
        if (((Spanned) charSequence).getSpanStart(this) + 1 == i6) {
            throw null;
        }
    }

    @Override // android.text.style.BulletSpan, android.text.style.LeadingMarginSpan
    public final int getLeadingMargin(boolean z) {
        return 0;
    }
}
