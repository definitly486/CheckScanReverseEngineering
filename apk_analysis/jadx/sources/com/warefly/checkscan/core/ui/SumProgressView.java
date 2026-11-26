package com.warefly.checkscan.core.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import defpackage.pl2;
import defpackage.w65;

/* JADX INFO: loaded from: classes5.dex */
public final class SumProgressView extends View {
    public final Paint b;
    public final Paint c;
    public final TextPaint d;
    public final TextPaint e;
    public final float f;
    public final float g;
    public final float h;
    public final RectF i;
    public final RectF j;
    public final float k;
    public float l;
    public float m;
    public final Rect n;
    public float o;
    public float p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SumProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        attributeSet.getClass();
        Paint paint = new Paint();
        paint.setColor(Color.parseColor("#EBF3FF"));
        paint.setStrokeWidth(5.0f);
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setAntiAlias(true);
        this.b = paint;
        Paint paint2 = new Paint();
        paint2.setColor(Color.parseColor("#3085FF"));
        paint2.setStrokeWidth(5.0f);
        paint2.setStyle(style);
        paint2.setAntiAlias(true);
        this.c = paint2;
        TextPaint textPaint = new TextPaint();
        textPaint.setColor(-1);
        textPaint.setTextSize(getResources().getDisplayMetrics().scaledDensity * 16.0f);
        textPaint.setAntiAlias(true);
        this.d = textPaint;
        TextPaint textPaint2 = new TextPaint();
        textPaint2.setColor(Color.parseColor("#3085FF"));
        textPaint2.setTextSize(16.0f * getResources().getDisplayMetrics().scaledDensity);
        textPaint2.setAntiAlias(true);
        this.e = textPaint2;
        this.f = pl2.e(8);
        this.g = pl2.e(8);
        this.h = pl2.e(8);
        this.i = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        this.j = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        this.k = 24.0f * getResources().getDisplayMetrics().scaledDensity;
        this.n = new Rect();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.getClass();
        super.onDraw(canvas);
        float f = this.m;
        float f2 = this.l;
        RectF rectF = this.i;
        rectF.set(0.0f, 0.0f, f2, f);
        Paint paint = this.b;
        float f3 = this.f;
        canvas.drawRoundRect(rectF, f3, f3, paint);
        String str = w65.b(this.p) + " ₽";
        float f4 = this.l;
        float f5 = this.g;
        TextPaint textPaint = this.e;
        float fMeasureText = (f4 - f5) - textPaint.measureText(str);
        float f6 = this.m;
        Rect rect = this.n;
        canvas.drawText(str, fMeasureText, (f6 + rect.height()) / 2.0f, textPaint);
        String str2 = w65.b(this.o) + " ₽";
        int length = str2.length() - 1;
        TextPaint textPaint2 = this.d;
        textPaint2.getTextBounds(str2, 0, length, rect);
        float fMeasureText2 = textPaint2.measureText(str2);
        float width = (this.o / this.p) * getWidth();
        float f7 = (f5 * 2.0f) + fMeasureText2;
        if (width < f7) {
            width = f7;
        }
        float f8 = this.m;
        RectF rectF2 = this.j;
        rectF2.set(0.0f, 0.0f, width, f8);
        canvas.drawRoundRect(rectF2, f3, f3, this.c);
        canvas.drawText(str2, (width - fMeasureText2) - f5, (this.m + rect.height()) / 2.0f, textPaint2);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        float f = (this.h * 2.0f) + this.k;
        this.m = f;
        setMeasuredDimension(i, w65.b(f));
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.l = i;
        this.d.getTextBounds("₽", 0, 1, this.n);
        this.m = i2;
    }

    public final void setCurrentProgress(int i) {
        float f = i;
        float f2 = this.p;
        if (f > f2) {
            f = f2;
        }
        this.o = f;
        invalidate();
    }

    public final void setMaxProgress(int i) {
        this.p = i;
    }
}
