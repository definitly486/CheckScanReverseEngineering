package com.my.target;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.SystemClock;
import android.view.View;
import defpackage.l3a;

/* JADX INFO: loaded from: classes4.dex */
public class gk extends View {
    public final Paint b;
    public final Paint c;
    public final Paint d;
    public final l3a e;
    public RectF f;
    public long g;
    public float h;
    public float i;
    public float j;
    public int k;

    public gk(Context context) {
        super(context);
        this.b = new Paint();
        this.c = new Paint();
        this.d = new Paint();
        this.f = new RectF();
        this.g = 0L;
        this.h = 0.0f;
        this.i = 0.0f;
        this.j = 230.0f;
        this.e = new l3a(context);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        boolean z;
        super.onDraw(canvas);
        canvas.drawOval(this.f, this.c);
        if (this.h != this.i) {
            this.h = Math.min(this.h + (((SystemClock.uptimeMillis() - this.g) / 1000.0f) * this.j), this.i);
            this.g = SystemClock.uptimeMillis();
            z = true;
        } else {
            z = false;
        }
        float f = this.h;
        if (isInEditMode()) {
            f = 360.0f;
        }
        canvas.drawArc(this.f, -90.0f, f, false, this.b);
        Paint paint = this.d;
        paint.setColor(-1);
        paint.setTextSize(this.e.b(12.0f));
        paint.setTextAlign(Paint.Align.CENTER);
        paint.setAntiAlias(true);
        canvas.drawText(String.valueOf(this.k), (int) this.f.centerX(), (int) (this.f.centerY() - ((paint.ascent() + paint.descent()) / 2.0f)), paint);
        if (z) {
            invalidate();
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        l3a l3aVar = this.e;
        int paddingRight = getPaddingRight() + getPaddingLeft() + l3aVar.b(28.0f);
        int paddingBottom = getPaddingBottom() + getPaddingTop() + l3aVar.b(28.0f);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            paddingRight = size;
        } else if (mode == Integer.MIN_VALUE) {
            paddingRight = Math.min(paddingRight, size);
        }
        if (mode2 == 1073741824 || mode == 1073741824) {
            paddingBottom = size2;
        } else if (mode2 == Integer.MIN_VALUE) {
            paddingBottom = Math.min(paddingBottom, size2);
        }
        setMeasuredDimension(paddingRight, paddingBottom);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        l3a l3aVar = this.e;
        this.f = new RectF(l3aVar.b(1.0f) + paddingLeft, l3aVar.b(1.0f) + paddingTop, (i - paddingRight) - l3aVar.b(1.0f), (i2 - paddingBottom) - l3aVar.b(1.0f));
        Paint paint = this.b;
        paint.setColor(-1);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(l3aVar.b(1.0f));
        Paint paint2 = this.c;
        paint2.setColor(-2013265920);
        paint2.setAntiAlias(true);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setStrokeWidth(l3aVar.b(4.0f));
        invalidate();
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            this.g = SystemClock.uptimeMillis();
        }
    }

    public void setDigit(int i) {
        this.k = i;
    }

    public void setMax(float f) {
        if (f > 0.0f) {
            this.j = 360.0f / f;
        }
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0006 A[PHI: r0
      0x0006: PHI (r0v6 float) = (r0v0 float), (r0v1 float) binds: [B:3:0x0004, B:6:0x000b] A[DONT_GENERATE, DONT_INLINE]] */
    public void setProgress(float f) {
        float f2 = 1.0f;
        if (f > 1.0f) {
            f = f2;
        } else {
            f2 = 0.0f;
            if (f < 0.0f) {
                f = f2;
            }
        }
        float f3 = this.i;
        if (f == f3) {
            return;
        }
        if (this.h == f3) {
            this.g = SystemClock.uptimeMillis();
        }
        this.i = Math.min(f * 360.0f, 360.0f);
        invalidate();
    }
}
