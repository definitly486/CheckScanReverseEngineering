package com.my.target;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import defpackage.l3a;

/* JADX INFO: loaded from: classes4.dex */
public class m extends zh {
    public int h;

    public m(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = -1;
        this.h = l3a.d(20, context);
    }

    @Override // com.my.target.zh, android.widget.ImageView, android.view.View
    public final void onMeasure(int i, int i2) {
        if (this.h >= 0) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
        } else {
            super.onMeasure(i, i2);
        }
    }

    public void setFixedHeight(int i) {
        this.h = i;
    }

    @Override // com.my.target.zh, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        int paddingTop;
        int width;
        int i = this.h;
        int height = 0;
        if (i >= 0) {
            paddingTop = (i - getPaddingTop()) - getPaddingBottom();
            if (paddingTop < 0) {
                paddingTop = 0;
            }
        } else {
            paddingTop = -1;
        }
        if (paddingTop >= 0) {
            if (bitmap != null) {
                width = bitmap.getWidth();
                height = bitmap.getHeight();
            } else {
                width = 0;
            }
            setMeasuredDimension(getPaddingRight() + getPaddingLeft() + ((int) (paddingTop * (height > 0 ? width / height : 0.0f))), this.h);
        }
        super.setImageBitmap(bitmap);
    }

    @Override // com.my.target.zh, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        int paddingTop;
        int intrinsicWidth;
        int i = this.h;
        int intrinsicHeight = 0;
        if (i >= 0) {
            paddingTop = (i - getPaddingTop()) - getPaddingBottom();
            if (paddingTop < 0) {
                paddingTop = 0;
            }
        } else {
            paddingTop = -1;
        }
        if (paddingTop >= 0) {
            if (drawable != null) {
                intrinsicWidth = drawable.getIntrinsicWidth();
                intrinsicHeight = drawable.getIntrinsicHeight();
            } else {
                intrinsicWidth = 0;
            }
            setMeasuredDimension(getPaddingRight() + getPaddingLeft() + ((int) (paddingTop * (intrinsicHeight > 0 ? intrinsicWidth / intrinsicHeight : 0.0f))), this.h);
        }
        super.setImageDrawable(drawable);
    }

    public m(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public m(Context context) {
        this(context, null);
    }
}
