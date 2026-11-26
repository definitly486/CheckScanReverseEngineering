package yads;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
public final class cw5 extends Drawable {
    public final dn5 a;
    public final bw5 b;
    public final RectF c = new RectF();

    public cw5(dn5 dn5Var) {
        this.a = dn5Var;
        this.b = new bw5(dn5Var);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        this.c.set(getBounds());
        bw5 bw5Var = this.b;
        float fCenterX = this.c.centerX();
        float fCenterY = this.c.centerY();
        String str = bw5Var.d;
        if (str != null) {
            float f = fCenterX - bw5Var.e;
            dn5 dn5Var = bw5Var.a;
            canvas.drawText(str, f + dn5Var.d, fCenterY + bw5Var.f + dn5Var.e, bw5Var.c);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        dn5 dn5Var = this.a;
        return (int) (Math.abs(dn5Var.e) + dn5Var.a);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return (int) (Math.abs(this.a.d) + this.c.width());
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
