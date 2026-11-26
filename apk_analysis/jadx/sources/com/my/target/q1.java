package com.my.target;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.TextView;

/* JADX INFO: loaded from: classes4.dex */
public class q1 extends TextView {
    public final GradientDrawable b;
    public final int c;

    public q1(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.b = gradientDrawable;
        gradientDrawable.setStroke(0, -13421773);
        gradientDrawable.setColor(0);
        this.c = (int) TypedValue.applyDimension(1, 2.0f, context.getResources().getDisplayMetrics());
    }

    public final void a(int i, int i2) {
        GradientDrawable gradientDrawable = this.b;
        gradientDrawable.setStroke(1, i);
        gradientDrawable.setCornerRadius(i2);
        invalidate();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int paddingLeft = getPaddingLeft() - this.c;
        int paddingTop = getPaddingTop();
        int width = getWidth();
        int height = getHeight();
        GradientDrawable gradientDrawable = this.b;
        gradientDrawable.setBounds(paddingLeft, paddingTop, width, height);
        gradientDrawable.draw(canvas);
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension((this.c * 2) + getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.b.setColor(i);
        invalidate();
    }

    public q1(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public q1(Context context) {
        this(context, null);
    }
}
