package com.warefly.checkscan.core.ui.progressBar;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class HorizontalProgressBarDefault extends View {
    public int b;
    public int c;
    public final float d;
    public final fh8 e;
    public final fh8 f;

    public static final class a extends gh4 implements ll3<Paint> {
        public a() {
            super(0);
        }

        @Override // defpackage.ll3
        public final Paint invoke() {
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.FILL_AND_STROKE);
            paint.setColor(ContextCompat.getColor(HorizontalProgressBarDefault.this.getContext(), R.color.light_blue));
            paint.setAntiAlias(true);
            return paint;
        }
    }

    public static final class b extends gh4 implements ll3<Paint> {
        public b() {
            super(0);
        }

        @Override // defpackage.ll3
        public final Paint invoke() {
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.FILL_AND_STROKE);
            paint.setColor(ContextCompat.getColor(HorizontalProgressBarDefault.this.getContext(), R.color.readilyBlue));
            paint.setAntiAlias(true);
            return paint;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HorizontalProgressBarDefault(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        attributeSet.getClass();
        this.b = 1;
        this.c = 100;
        this.d = 20.0f;
        this.e = new fh8(new a());
        this.f = new fh8(new b());
    }

    private final Paint getPaint() {
        return (Paint) this.e.getValue();
    }

    private final Paint getProgressPaint() {
        return (Paint) this.f.getValue();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.getClass();
        super.onDraw(canvas);
        float width = getWidth();
        float height = getHeight();
        float f = this.d;
        canvas.drawRoundRect(0.0f, 0.0f, width, height, f, f, getPaint());
        float width2 = (getWidth() / this.c) * this.b;
        float height2 = getHeight();
        float f2 = this.d;
        canvas.drawRoundRect(0.0f, 0.0f, width2, height2, f2, f2, getProgressPaint());
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(View.resolveSize(getPaddingEnd() + getPaddingStart() + getSuggestedMinimumWidth(), i), View.resolveSize(getPaddingBottom() + getPaddingTop() + getSuggestedMinimumHeight(), i2));
    }

    public final void setCurrentProgress(int i) {
        this.b = i;
        invalidate();
    }

    public final void setMaxProgress(int i) {
        this.c = i;
    }
}
