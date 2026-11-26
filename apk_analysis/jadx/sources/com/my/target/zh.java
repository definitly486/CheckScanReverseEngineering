package com.my.target;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import defpackage.h14;

/* JADX INFO: loaded from: classes4.dex */
public class zh extends ImageView {
    public Bitmap b;
    public Drawable c;
    public int d;
    public int e;
    public int f;
    public int g;

    public zh(Context context) {
        super(context);
        setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        setAdjustViewBounds(true);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        int intrinsicWidth;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int intrinsicHeight = this.d;
        if (intrinsicHeight == 0 || (intrinsicWidth = this.e) == 0) {
            Bitmap bitmap = this.b;
            if (bitmap != null) {
                intrinsicWidth = bitmap.getWidth();
                intrinsicHeight = this.b.getHeight();
            } else {
                Drawable drawable = this.c;
                if (drawable == null) {
                    setMeasuredDimension(0, 0);
                    return;
                } else {
                    intrinsicWidth = drawable.getIntrinsicWidth();
                    intrinsicHeight = this.c.getIntrinsicHeight();
                }
            }
        }
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            super.onMeasure(i, i2);
            return;
        }
        float f = intrinsicWidth;
        float f2 = intrinsicHeight;
        float f3 = f / f2;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int i3 = this.g;
        if (i3 > 0) {
            size2 = Math.min(i3, size2);
        }
        int i4 = this.f;
        if (i4 > 0) {
            size = Math.min(i4, size);
        }
        if (mode == 1073741824 && mode2 == 1073741824) {
            setMeasuredDimension(size, size2);
            return;
        }
        if (mode != 0 || mode2 != 0) {
            if (mode == 0) {
                intrinsicWidth = (int) (size2 * f3);
            } else {
                if (mode2 == 0) {
                    intrinsicHeight = (int) (size / f3);
                } else {
                    float f4 = size;
                    float f5 = f4 / f;
                    float f6 = size2;
                    if (Math.min(f5, f6 / f2) != f5 || f3 <= 0.0f) {
                        intrinsicWidth = (int) (f6 * f3);
                    } else {
                        intrinsicHeight = (int) (f4 / f3);
                    }
                }
                intrinsicWidth = size;
            }
            intrinsicHeight = size2;
        }
        setMeasuredDimension(intrinsicWidth, intrinsicHeight);
    }

    public void setImageBitmap(Bitmap bitmap, boolean z) {
        if (!z) {
            setImageBitmap(bitmap);
            return;
        }
        setAlpha(0.0f);
        setImageBitmap(bitmap);
        animate().alpha(1.0f).setDuration(300L);
    }

    public void setImageData(h14 h14Var) {
        if (h14Var == null) {
            this.d = 0;
            this.e = 0;
            setImageBitmap(null);
        } else {
            this.d = h14Var.c;
            this.e = h14Var.b;
            setImageBitmap((Bitmap) h14Var.d);
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.c = drawable;
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    public void setMaxHeight(int i) {
        this.g = i;
    }

    @Override // android.widget.ImageView
    public void setMaxWidth(int i) {
        this.f = i;
    }

    public void setPlaceholderDimensions(int i, int i2) {
        this.e = i;
        this.d = i2;
    }

    public zh(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        setAdjustViewBounds(true);
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.b = bitmap;
        super.setImageBitmap(bitmap);
    }
}
