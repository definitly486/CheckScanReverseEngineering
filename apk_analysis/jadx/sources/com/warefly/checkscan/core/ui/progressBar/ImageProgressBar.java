package com.warefly.checkscan.core.ui.progressBar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import defpackage.ax6;
import defpackage.pl2;
import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class ImageProgressBar extends View {
    public final float b;
    public float c;
    public final float d;
    public final Drawable e;
    public final Paint f;
    public final Paint g;
    public final RectF h;
    public final Rect i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, R.style.BaseImageProgressBar);
        context.getClass();
        this.b = pl2.e(8);
        this.d = -270.0f;
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        paint.setStrokeCap(Paint.Cap.ROUND);
        this.f = paint;
        Paint paint2 = new Paint();
        paint2.setAntiAlias(true);
        paint2.setStyle(style);
        this.g = paint2;
        this.h = new RectF();
        this.i = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ax6.a, R.attr.imageProgressBarStyle, R.style.BaseImageProgressBar);
        typedArrayObtainStyledAttributes.getClass();
        float dimension = typedArrayObtainStyledAttributes.getDimension(2, pl2.e(8));
        this.b = dimension;
        this.c = typedArrayObtainStyledAttributes.getFloat(3, 0.0f);
        this.d = typedArrayObtainStyledAttributes.getFloat(5, -270.0f);
        this.e = typedArrayObtainStyledAttributes.getDrawable(1);
        paint.setColor(typedArrayObtainStyledAttributes.getColor(4, ContextCompat.getColor(context, R.color.readilyBlue)));
        paint.setStrokeWidth(dimension);
        paint2.setColor(typedArrayObtainStyledAttributes.getColor(0, ContextCompat.getColor(context, R.color.blueAlice)));
        paint2.setStrokeWidth(dimension);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.getClass();
        super.onDraw(canvas);
        float f = this.b;
        float width = getWidth() - (f / 2.0f);
        float height = getHeight() - (f / 2.0f);
        RectF rectF = this.h;
        rectF.set(f / 2.0f, f / 2.0f, width, height);
        canvas.drawArc(rectF, this.d, 360.0f, false, this.g);
        canvas.drawArc(rectF, this.d, (this.c / 100.0f) * 360.0f, false, this.f);
        int iB = (int) rg.b(getWidth(), 0.5f, getWidth(), 2.0f);
        Rect rect = this.i;
        rect.left = iB;
        rect.right = (int) (((getWidth() * 0.5f) + getWidth()) / 2.0f);
        rect.top = (int) rg.b(getHeight(), 0.55f, getHeight(), 2.0f);
        rect.bottom = (int) (((getHeight() * 0.55f) + getHeight()) / 2.0f);
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    public final void setProgress(float f) {
        this.c = f;
    }

    public final void setProgressColor(int i) {
        this.f.setColor(i);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImageProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.imageProgressBarStyle);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImageProgressBar(Context context) {
        this(context, null);
        context.getClass();
    }
}
