package com.warefly.checkscan.core.ui.progressBar;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import defpackage.ax6;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nm4;
import defpackage.pl2;

/* JADX INFO: loaded from: classes.dex */
public final class ScaledProgressBar extends View {
    public final fh8 b;
    public final fh8 c;
    public int d;
    public Drawable e;
    public int f;
    public final float g;
    public final float h;
    public final float i;
    public final Rect j;

    public static final class a extends gh4 implements ll3<Paint> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final Paint invoke() {
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.FILL_AND_STROKE);
            paint.setAntiAlias(true);
            return paint;
        }
    }

    public static final class b extends gh4 implements ll3<Paint> {
        public static final b f = new b(0);

        @Override // defpackage.ll3
        public final Paint invoke() {
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.FILL_AND_STROKE);
            paint.setAntiAlias(true);
            return paint;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScaledProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, R.style.BaseScaleProgressBar);
        context.getClass();
        this.b = nm4.b(a.f);
        this.c = nm4.b(b.f);
        this.d = pl2.e(0);
        this.f = pl2.e(7);
        this.g = pl2.d(28.0f);
        this.h = pl2.d(24.0f);
        this.i = pl2.d(36.0f);
        this.j = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ax6.c, R.attr.scaledProgressBarStyle, R.style.BaseScaleProgressBar);
        typedArrayObtainStyledAttributes.getClass();
        this.d = typedArrayObtainStyledAttributes.getInt(4, 0);
        this.f = typedArrayObtainStyledAttributes.getInt(2, 7);
        this.g = typedArrayObtainStyledAttributes.getDimension(0, 28.0f);
        this.e = typedArrayObtainStyledAttributes.getDrawable(5);
        getProgressIndicatorPaint().setColor(typedArrayObtainStyledAttributes.getColor(3, ContextCompat.getColor(context, R.color.warning40)));
        getIndicatorPaint().setColor(typedArrayObtainStyledAttributes.getColor(1, ContextCompat.getColor(context, R.color.athensGrayButton)));
        typedArrayObtainStyledAttributes.recycle();
    }

    private final Paint getIndicatorPaint() {
        return (Paint) this.b.getValue();
    }

    private final Paint getProgressIndicatorPaint() {
        return (Paint) this.c.getValue();
    }

    private final int getScaleValue() {
        int i = this.d;
        int i2 = this.f;
        return i > i2 ? i2 : i;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Canvas canvas2;
        Paint indicatorPaint;
        Drawable drawable;
        canvas.getClass();
        super.onDraw(canvas);
        float width = (getWidth() - (pl2.d(16.0f) * 2.0f)) - (pl2.e(10) * 2.0f);
        int iE = pl2.e(11) + ((int) pl2.d(24.0f));
        float f = this.i;
        int iE2 = pl2.e(11) + ((int) f) + ((int) pl2.d(24.0f));
        float f2 = f / 2.0f;
        int iE3 = pl2.e(10) + ((int) ((pl2.d(16.0f) + ((width / (this.f - 1)) * (getScaleValue() - 1))) - f2));
        int iE4 = pl2.e(10) + ((int) (pl2.d(16.0f) + ((width / (this.f - 1)) * (getScaleValue() - 1)) + f2));
        float f3 = iE + iE2;
        float f4 = this.h;
        float f5 = (f3 - f4) / 2.0f;
        float f6 = (f3 + f4) / 2.0f;
        float fE = pl2.e(10);
        float width2 = getWidth() - pl2.e(10);
        float f7 = this.g;
        canvas.drawRoundRect(fE, f5, width2, f6, f7, f7, getIndicatorPaint());
        if (getScaleValue() > 1) {
            float f8 = this.g;
            canvas2 = canvas;
            canvas2.drawRoundRect(pl2.e(10), f5, (iE4 + iE3) / 2.0f, f6, f8, f8, getProgressIndicatorPaint());
        } else {
            canvas2 = canvas;
        }
        Drawable drawable2 = this.e;
        if (drawable2 != null) {
            Rect rect = this.j;
            rect.left = iE3;
            rect.right = iE4;
            rect.top = iE;
            rect.bottom = iE2;
            drawable2.setBounds(rect);
        }
        if (getScaleValue() != 0 && (drawable = this.e) != null) {
            drawable.draw(canvas2);
        }
        int i = this.f;
        if (1 > i) {
            return;
        }
        int i2 = 1;
        while (true) {
            float fD = pl2.d(16.0f) + ((width / (this.f - 1)) * (i2 - 1)) + pl2.e(10);
            String strValueOf = String.valueOf(i2);
            float fD2 = pl2.d(24.0f);
            if (i2 <= getScaleValue()) {
                indicatorPaint = getProgressIndicatorPaint();
                indicatorPaint.setTextSize(TypedValue.applyDimension(2, 16.0f, Resources.getSystem().getDisplayMetrics()));
                indicatorPaint.setTextAlign(Paint.Align.CENTER);
                j59 j59Var = j59.a;
            } else {
                indicatorPaint = getIndicatorPaint();
                indicatorPaint.setTextSize(TypedValue.applyDimension(2, 16.0f, Resources.getSystem().getDisplayMetrics()));
                indicatorPaint.setTextAlign(Paint.Align.CENTER);
                j59 j59Var2 = j59.a;
            }
            canvas2.drawText(strValueOf, fD, fD2, indicatorPaint);
            if (i2 == i) {
                return;
            } else {
                i2++;
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int iE = pl2.e(11) + ((int) this.i) + ((int) pl2.d(24.0f));
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            iE = Math.min(iE, size);
        } else if (mode == 1073741824) {
            iE = size;
        }
        setMeasuredDimension(i, iE);
    }

    public final void setMaxScaleValue(int i) {
        this.f = i;
    }

    public final void setScaleValue(int i) {
        this.d = i;
        invalidate();
    }

    public final void setThumb(int i) {
        this.e = ContextCompat.getDrawable(getContext(), i);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ScaledProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.scaledProgressBarStyle);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ScaledProgressBar(Context context) {
        this(context, null);
        context.getClass();
    }
}
