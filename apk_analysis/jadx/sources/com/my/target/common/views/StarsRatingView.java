package com.my.target.common.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import defpackage.pd6;
import defpackage.r01;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public class StarsRatingView extends View {
    public static final Paint g;
    public int b;
    public float c;
    public float d;
    public Bitmap e;
    public boolean f;

    static {
        Paint paint = new Paint();
        g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
    }

    public StarsRatingView(Context context) {
        super(context);
    }

    public final Path a(float f, int i, int i2) {
        Path path = new Path();
        path.setFillType(Path.FillType.EVEN_ODD);
        int i3 = 0;
        while (i3 < i2) {
            float f2 = i3;
            double d = (f2 * this.c) + (f2 * f * 2.0f) + i + f;
            double d2 = f;
            int i4 = i3;
            float f3 = f * 2.0f;
            path.moveTo((float) r01.a(0.0d, d2, d), f3 - ((float) ((Math.cos(0.0d) * d2) + d2)));
            double d3 = 0.45f * f;
            path.lineTo((float) r01.a(0.6283185307179586d, d3, d), f3 - ((float) ((Math.cos(0.6283185307179586d) * d3) + d2)));
            for (int i5 = 1; i5 < 5; i5++) {
                double d4 = 1.2566370614359172d * ((double) i5);
                path.lineTo((float) r01.a(d4, d2, d), f3 - ((float) ((Math.cos(d4) * d2) + d2)));
                double d5 = d4 + 0.6283185307179586d;
                path.lineTo((float) r01.a(d5, d3, d), f3 - ((float) ((Math.cos(d5) * d3) + d2)));
            }
            i3 = i4 + 1;
        }
        path.close();
        return path;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.d > 0.0f) {
            Bitmap bitmap = this.e;
            if (bitmap != null) {
                canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            } else {
                if (this.b <= 0 || this.f) {
                    return;
                }
                this.f = true;
                post(new pd6(this, 1));
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int size = this.b;
        if (size <= 0) {
            size = View.MeasureSpec.getSize(i2);
            this.b = size;
        }
        setMeasuredDimension((int) ((this.c * 4.0f) + (size * 5)), size);
    }

    public void setRating(float f) {
        setContentDescription(Float.toString(f));
        if (f > 5.0f || f < 0.0f) {
            y14.r(null, "StarsRatingView: Rating is out of bounds - " + f);
            this.d = 0.0f;
        } else {
            this.d = f;
        }
        invalidate();
    }

    public void setStarSize(int i) {
        this.b = i;
    }

    public void setStarsPadding(float f) {
        this.c = f;
    }
}
