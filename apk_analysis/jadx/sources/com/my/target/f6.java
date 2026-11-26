package com.my.target;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LightingColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import defpackage.l3a;

/* JADX INFO: loaded from: classes4.dex */
public class f6 extends View {
    public final Rect b;
    public final Paint c;
    public final LightingColorFilter d;
    public final float e;
    public final int f;
    public Bitmap g;
    public int h;
    public int i;

    public f6(Context context) {
        super(context);
        Paint paint = new Paint();
        this.c = paint;
        paint.setFilterBitmap(true);
        this.e = l3a.a.a;
        this.f = l3a.d(10, context);
        this.b = new Rect();
        this.d = new LightingColorFilter(-3355444, 1);
    }

    public final void a(Bitmap bitmap, boolean z) {
        this.g = bitmap;
        if (bitmap == null) {
            this.i = 0;
            this.h = 0;
        } else if (z) {
            float f = this.e;
            float f2 = f > 1.0f ? 2.0f : 1.0f;
            this.i = (int) ((bitmap.getHeight() / f2) * f);
            this.h = (int) ((this.g.getWidth() / f2) * f);
        } else {
            this.h = bitmap.getWidth();
            this.i = this.g.getHeight();
        }
        int i = this.h;
        int i2 = this.f * 2;
        setMeasuredDimension(i + i2, this.i + i2);
        requestLayout();
    }

    public int getPadding() {
        return this.f;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Bitmap bitmap = this.g;
        if (bitmap != null) {
            Rect rect = this.b;
            int i = this.f;
            rect.left = i;
            rect.top = i;
            rect.right = this.h + i;
            rect.bottom = this.i + i;
            canvas.drawBitmap(bitmap, (Rect) null, rect, this.c);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        Paint paint = this.c;
        if (action == 0) {
            paint.setColorFilter(this.d);
            invalidate();
            return true;
        }
        if (action != 1) {
            if (action != 3) {
                return super.onTouchEvent(motionEvent);
            }
        } else if (motionEvent.getX() >= 0.0f && motionEvent.getX() <= getMeasuredWidth() && motionEvent.getY() >= 0.0f && motionEvent.getY() <= getMeasuredHeight()) {
            performClick();
        }
        paint.setColorFilter(null);
        invalidate();
        return true;
    }
}
