package com.my.target;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import defpackage.r01;

/* JADX INFO: loaded from: classes4.dex */
public class rh extends View {
    public static final Paint b;
    public static final Path c;

    static {
        Paint paint = new Paint();
        b = paint;
        c = new Path();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(-1);
    }

    public rh(Context context) {
        super(context);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float measuredHeight = getMeasuredHeight() / 2.0f;
        if (measuredHeight == 0.0f) {
            return;
        }
        Path path = c;
        path.reset();
        path.setFillType(Path.FillType.EVEN_ODD);
        float f = 0.45f * measuredHeight;
        double d = measuredHeight;
        float f2 = measuredHeight * 2.0f;
        path.moveTo((float) r01.a(0.0d, d, d), f2 - ((float) ((Math.cos(0.0d) * d) + d)));
        double d2 = f;
        double dA = r01.a(0.6283185307179586d, d2, d);
        double d3 = d;
        path.lineTo((float) dA, f2 - ((float) ((Math.cos(0.6283185307179586d) * d2) + d3)));
        for (int i = 1; i < 5; i++) {
            double d4 = ((double) i) * 1.2566370614359172d;
            path.lineTo((float) r01.a(d4, d3, d3), f2 - ((float) ((Math.cos(d4) * d3) + d3)));
            double d5 = d4 + 0.6283185307179586d;
            double d6 = d3;
            d3 = d6;
            path.lineTo((float) r01.a(d5, d2, d6), f2 - ((float) ((Math.cos(d5) * d2) + d3)));
        }
        path.close();
        canvas.drawPath(path, b);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int iMin = Math.min(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i));
        setMeasuredDimension(iMin, iMin);
    }

    public void setColor(int i) {
        b.setColor(i);
        invalidate();
    }
}
