package com.warefly.checkscan.core.ui.progressBar;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import com.warefly.checkscan.R;
import defpackage.b36;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.ll3;
import defpackage.pl2;
import defpackage.u96;
import defpackage.w65;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class HorizontalStepProgressbar extends View {
    public int b;
    public int c;
    public final ArrayList d;
    public final float e;
    public final int f;
    public final float g;
    public final fh8 h;
    public final fh8 i;
    public final fh8 j;
    public final fh8 k;

    public static final class a extends gh4 implements ll3<Paint> {
        public a() {
            super(0);
        }

        @Override // defpackage.ll3
        public final Paint invoke() {
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.FILL_AND_STROKE);
            paint.setColor(ContextCompat.getColor(HorizontalStepProgressbar.this.getContext(), R.color.light_blue));
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
            paint.setColor(ContextCompat.getColor(HorizontalStepProgressbar.this.getContext(), R.color.readilyBlue));
            paint.setAntiAlias(true);
            return paint;
        }
    }

    public static final class c extends gh4 implements ll3<TextPaint> {
        public final /* synthetic */ Context g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context) {
            super(0);
            this.g = context;
        }

        @Override // defpackage.ll3
        public final TextPaint invoke() {
            TextPaint textPaint = new TextPaint();
            textPaint.setTextSize(12.0f * Resources.getSystem().getDisplayMetrics().scaledDensity);
            textPaint.setAntiAlias(true);
            textPaint.setColor(ContextCompat.getColor(HorizontalStepProgressbar.this.getContext(), R.color.shuttleGray));
            textPaint.setTypeface(ResourcesCompat.getFont(this.g, R.font.roboto_reg));
            return textPaint;
        }
    }

    public static final class d extends gh4 implements ll3<TextPaint> {
        public final /* synthetic */ Context g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Context context) {
            super(0);
            this.g = context;
        }

        @Override // defpackage.ll3
        public final TextPaint invoke() {
            TextPaint textPaint = new TextPaint();
            textPaint.setTextSize(16.0f * Resources.getSystem().getDisplayMetrics().scaledDensity);
            textPaint.setAntiAlias(true);
            textPaint.setColor(ContextCompat.getColor(HorizontalStepProgressbar.this.getContext(), R.color.blueCharcoal));
            textPaint.setTypeface(ResourcesCompat.getFont(this.g, R.font.roboto_medium));
            return textPaint;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HorizontalStepProgressbar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        attributeSet.getClass();
        this.b = -1;
        this.c = 1;
        this.d = new ArrayList();
        new Rect();
        this.e = pl2.e(6);
        this.f = pl2.e(8);
        this.g = 20.0f;
        this.h = new fh8(new a());
        this.i = new fh8(new b());
        this.j = new fh8(new d(context));
        this.k = new fh8(new c(context));
    }

    private final int getDesireHeight() {
        Paint.FontMetrics fontMetrics = getTextPaint().getFontMetrics();
        float f = fontMetrics.descent - fontMetrics.ascent;
        Paint.FontMetrics fontMetrics2 = getSubTextPaint().getFontMetrics();
        return w65.b((this.e * 2.0f) + (fontMetrics2.descent - fontMetrics2.ascent) + f + this.f);
    }

    private final Paint getPaint() {
        return (Paint) this.h.getValue();
    }

    private final Paint getProgressPaint() {
        return (Paint) this.i.getValue();
    }

    private final TextPaint getSubTextPaint() {
        return (TextPaint) this.k.getValue();
    }

    private final TextPaint getTextPaint() {
        return (TextPaint) this.j.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        canvas.getClass();
        super.onDraw(canvas);
        float desireHeight = getDesireHeight();
        float f4 = this.e;
        float f5 = f4 * 2.0f;
        float width = getWidth();
        float desireHeight2 = getDesireHeight() - f4;
        float f6 = this.g;
        canvas.drawRoundRect(0.0f, desireHeight - f5, width, desireHeight2, f6, f6, getPaint());
        float width2 = getWidth() / this.b;
        float width3 = ((getWidth() / 100.0f) * this.c) - f4;
        float desireHeight3 = (getDesireHeight() - f4) - (f4 / 2.0f);
        int i = this.b;
        int i2 = 1;
        if (1 <= i) {
            while (true) {
                float f7 = (i2 * width2) - f4;
                canvas.drawCircle(f7, desireHeight3, f4, f7 > width3 ? getPaint() : getProgressPaint());
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        float desireHeight4 = (getDesireHeight() - (3.0f * f4)) - this.f;
        Paint.FontMetrics fontMetrics = getSubTextPaint().getFontMetrics();
        float f8 = desireHeight4 - (fontMetrics.descent - fontMetrics.ascent);
        int i3 = 0;
        for (Object obj : this.d) {
            int i4 = i3 + 1;
            if (i3 < 0) {
                u96.o();
                throw null;
            }
            b36 b36Var = (b36) obj;
            String str = (String) b36Var.b;
            String str2 = (String) b36Var.c;
            float fMeasureText = getTextPaint().measureText(str);
            float fMeasureText2 = getSubTextPaint().measureText(str2);
            if (fMeasureText > width2) {
                CharSequence charSequenceEllipsize = TextUtils.ellipsize(str, getTextPaint(), width2, TextUtils.TruncateAt.START);
                canvas.drawText(charSequenceEllipsize, 0, charSequenceEllipsize.length(), (i4 * width2) - getTextPaint().measureText(charSequenceEllipsize.toString()), f8, getTextPaint());
                f = f8;
            } else {
                f = f8;
                canvas.drawText(str, (i4 * width2) - fMeasureText, f, getTextPaint());
            }
            if (fMeasureText2 > width2) {
                CharSequence charSequenceEllipsize2 = TextUtils.ellipsize(str2, getSubTextPaint(), width2, TextUtils.TruncateAt.START);
                float f9 = desireHeight4;
                f3 = f;
                f2 = f9;
                canvas.drawText(charSequenceEllipsize2, 0, charSequenceEllipsize2.length(), (i4 * width2) - getSubTextPaint().measureText(charSequenceEllipsize2.toString()), f2, getSubTextPaint());
            } else {
                f2 = desireHeight4;
                f3 = f;
                canvas.drawText(str2, (i4 * width2) - fMeasureText2, f2, getSubTextPaint());
            }
            float f10 = f3;
            desireHeight4 = f2;
            f8 = f10;
            i3 = i4;
        }
        float desireHeight5 = getDesireHeight() - f5;
        float desireHeight6 = getDesireHeight() - f4;
        float f11 = this.g;
        canvas.drawRoundRect(0.0f, desireHeight5, width3, desireHeight6, f11, f11, getProgressPaint());
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(View.resolveSize(getPaddingEnd() + getPaddingStart() + getSuggestedMinimumWidth(), i), View.resolveSize(getDesireHeight(), i2));
    }

    public final void setCurrentProgress(int i) {
        if (i <= 1) {
            return;
        }
        if (i > 100) {
            i = 100;
        }
        this.c = i;
    }

    public final void setProgressColor(int i) {
        getProgressPaint().setColor(i);
    }

    public final void setTitles(List<b36<String, String>> list) {
        list.getClass();
        ArrayList arrayList = this.d;
        arrayList.clear();
        arrayList.addAll(list);
        this.b = list.size();
    }
}
