package yads;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
public final class mz extends Drawable {
    public final lz a;
    public final Paint b;
    public final Paint c;
    public final RectF d;

    public mz(lz lzVar) {
        Paint paint;
        this.a = lzVar;
        Paint paint2 = new Paint(1);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setColor(lzVar.b);
        this.b = paint2;
        if (lzVar.c == null || lzVar.d == null) {
            paint = null;
        } else {
            paint = new Paint(1);
            paint.setStyle(Paint.Style.STROKE);
            paint.setColor(lzVar.c.intValue());
            paint.setStrokeWidth(lzVar.d.floatValue());
        }
        this.c = paint;
        float f = lzVar.a * 2.0f;
        RectF rectF = new RectF(0.0f, 0.0f, f, f);
        this.d = rectF;
        Rect rect = new Rect();
        rectF.roundOut(rect);
        setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        this.b.setColor(this.a.b);
        this.d.set(getBounds());
        canvas.drawCircle(this.d.centerX(), this.d.centerY(), this.a.a, this.b);
        if (this.c != null) {
            canvas.drawCircle(this.d.centerX(), this.d.centerY(), this.a.a, this.c);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return ((int) this.a.a) * 2;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return ((int) this.a.a) * 2;
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
