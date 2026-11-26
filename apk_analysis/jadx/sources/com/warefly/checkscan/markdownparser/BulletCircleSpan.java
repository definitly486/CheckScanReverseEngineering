package com.warefly.checkscan.markdownparser;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.style.BulletSpan;

/* JADX INFO: loaded from: classes5.dex */
public final class BulletCircleSpan extends BulletSpan {
    @Override // android.text.style.BulletSpan, android.text.style.LeadingMarginSpan
    public final void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        canvas.getClass();
        paint.getClass();
        charSequence.getClass();
        int i8 = ((i5 - i3) / 2) + i3;
        if (z) {
            canvas.drawCircle(i + 0.0f, i8, 0.0f, paint);
        }
    }

    @Override // android.text.style.BulletSpan, android.text.style.LeadingMarginSpan
    public final int getLeadingMargin(boolean z) {
        return 0;
    }
}
