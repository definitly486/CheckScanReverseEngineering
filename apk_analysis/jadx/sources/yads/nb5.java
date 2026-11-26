package yads;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
public final class nb5 extends Drawable {
    public final mb5 a;
    public final Paint b;
    public final Paint c;
    public final float d;
    public final float e;
    public final float f;
    public final float g;
    public final RectF h;

    public nb5(mb5 mb5Var) {
        this.a = mb5Var;
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(mb5Var.c);
        this.b = paint;
        float f = mb5Var.d;
        this.f = f - (f >= mb5Var.b / 2.0f ? this.d : 0.0f);
        this.g = f - (f >= mb5Var.a / 2.0f ? this.d : 0.0f);
        RectF rectF = new RectF(0.0f, 0.0f, mb5Var.a, mb5Var.b);
        this.h = rectF;
        if (mb5Var.e == null || mb5Var.f == null) {
            this.c = null;
            this.d = 0.0f;
            this.e = 0.0f;
        } else {
            Paint paint2 = new Paint(1);
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setColor(mb5Var.e.intValue());
            paint2.setStrokeWidth(mb5Var.f.floatValue());
            this.c = paint2;
            this.d = mb5Var.f.floatValue() / 2.0f;
            this.e = 1.0f;
        }
        Rect rect = new Rect();
        rectF.roundOut(rect);
        setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        float f = this.e;
        Rect bounds = getBounds();
        this.h.set(bounds.left + f, bounds.top + f, bounds.right - f, bounds.bottom - f);
        canvas.drawRoundRect(this.h, this.f, this.g, this.b);
        Paint paint = this.c;
        if (paint != null) {
            float f2 = this.d;
            Rect bounds2 = getBounds();
            this.h.set(bounds2.left + f2, bounds2.top + f2, bounds2.right - f2, bounds2.bottom - f2);
            RectF rectF = this.h;
            float f3 = this.a.d;
            canvas.drawRoundRect(rectF, f3, f3, paint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.a.b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return (int) this.a.a;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
