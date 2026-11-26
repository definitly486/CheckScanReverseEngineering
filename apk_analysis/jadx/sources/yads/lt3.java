package yads;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
public final class lt3 extends Drawable {
    public static final /* synthetic */ int e = 0;
    public final float a;
    public final y30 b;
    public final Paint c = new Paint();
    public final RectF d = new RectF();

    public lt3(float f, y30 y30Var) {
        this.a = f;
        this.b = y30Var;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        canvas.drawRect(this.d, this.c);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.c.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        Paint paint = this.c;
        float f = this.a;
        y30 y30Var = this.b;
        paint.setShader(kt3.a(f, y30Var.a, y30Var.b, rect.width(), rect.height()));
        this.d.set(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.c.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
