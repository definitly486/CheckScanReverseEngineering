package com.warefly.checkscan.core.ui.shadow;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import defpackage.ax6;

/* JADX INFO: loaded from: classes2.dex */
public final class ShadowLayout extends FrameLayout {
    public float b;
    public int c;
    public float d;
    public float e;
    public float f;
    public int g;
    public final Paint h;
    public final Paint i;
    public final Path j;
    public RectF k;
    public RectF l;
    public Bitmap m;
    public final Paint n;
    public int o;
    public int p;
    public int q;
    public int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShadowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.b = 16.0f;
        this.c = 687868705;
        this.d = 6.0f;
        this.g = -1;
        this.h = new Paint(1);
        this.i = new Paint(1);
        this.j = new Path();
        this.k = new RectF();
        this.l = new RectF();
        this.n = new Paint(3);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, ax6.d, 0, 0);
        try {
            setCornerRadius(typedArrayObtainStyledAttributes.getDimension(2, 16.0f));
            setShadowColor(typedArrayObtainStyledAttributes.getColor(1, 687868705));
            setShadowRadius(typedArrayObtainStyledAttributes.getDimension(5, 6.0f));
            setShadowDx(typedArrayObtainStyledAttributes.getDimension(3, 0.0f));
            setShadowDy(typedArrayObtainStyledAttributes.getDimension(4, 0.0f));
            setBgColor(typedArrayObtainStyledAttributes.getColor(0, -1));
            typedArrayObtainStyledAttributes.recycle();
            b();
            setWillNotDraw(false);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    private final int getShadowSpace() {
        return ((int) (Math.max(Math.abs(this.e), Math.abs(this.f)) + this.d)) + 4;
    }

    public final void a() {
        int shadowSpace = getShadowSpace();
        super.setPadding(this.o + shadowSpace, this.p + shadowSpace, this.q + shadowSpace, this.r + shadowSpace);
    }

    public final void b() {
        this.i.setColor(this.g);
        a();
        Bitmap bitmap = this.m;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.m = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        canvas.getClass();
        Bitmap bitmap = this.m;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.n);
        }
        RectF rectF = this.k;
        float f = this.b;
        canvas.drawRoundRect(rectF, f, f, this.i);
        int iSave = canvas.save();
        canvas.clipPath(this.j);
        try {
            super.dispatchDraw(canvas);
        } finally {
            canvas.restoreToCount(iSave);
        }
    }

    public final int getBgColor() {
        return this.g;
    }

    public final float getCornerRadius() {
        return this.b;
    }

    public final int getShadowColor() {
        return this.c;
    }

    public final float getShadowDx() {
        return this.e;
    }

    public final float getShadowDy() {
        return this.f;
    }

    public final float getShadowRadius() {
        return this.d;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Bitmap bitmap = this.m;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.m = null;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == 0 || i2 == 0) {
            return;
        }
        float shadowSpace = getShadowSpace();
        this.k = new RectF(shadowSpace, shadowSpace, i - shadowSpace, i2 - shadowSpace);
        RectF rectF = this.k;
        float f = rectF.left;
        float f2 = this.e;
        float f3 = rectF.top;
        float f4 = this.f;
        this.l = new RectF(f + f2, f3 + f4, rectF.right + f2, rectF.bottom + f4);
        Path path = this.j;
        path.reset();
        RectF rectF2 = this.k;
        float f5 = this.b;
        path.addRoundRect(rectF2, f5, f5, Path.Direction.CW);
        Bitmap bitmap = this.m;
        if (bitmap != null) {
            bitmap.recycle();
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        int i5 = this.c;
        Paint paint = this.h;
        paint.setColor(i5);
        float f6 = this.d;
        if (f6 < 1.0f) {
            f6 = 1.0f;
        }
        paint.setMaskFilter(new BlurMaskFilter(f6, BlurMaskFilter.Blur.NORMAL));
        RectF rectF3 = this.l;
        float f7 = this.b;
        canvas.drawRoundRect(rectF3, f7, f7, paint);
        this.m = bitmapCreateBitmap;
    }

    public final void setBgColor(int i) {
        this.g = i;
        this.i.setColor(i);
        invalidate();
    }

    public final void setCornerRadius(float f) {
        this.b = f;
        invalidate();
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.o = i;
        this.p = i2;
        this.q = i3;
        this.r = i4;
        a();
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        this.o = i;
        this.p = i2;
        this.q = i3;
        this.r = i4;
        a();
    }

    public final void setShadowColor(int i) {
        this.c = i;
        b();
        invalidate();
    }

    public final void setShadowDx(float f) {
        this.e = f;
        b();
        requestLayout();
    }

    public final void setShadowDy(float f) {
        this.f = f;
        b();
        requestLayout();
    }

    public final void setShadowRadius(float f) {
        this.d = f;
        b();
        requestLayout();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShadowLayout(Context context) {
        this(context, null);
        context.getClass();
    }
}
