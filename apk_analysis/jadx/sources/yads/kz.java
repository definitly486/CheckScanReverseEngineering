package yads;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes6.dex */
public final class kz implements gl5 {
    public final cg3 a;
    public final Paint b = new Paint();
    public final RectF c = new RectF();

    public kz(cg3 cg3Var) {
        this.a = cg3Var;
    }

    @Override // yads.gl5
    public final void a(Canvas canvas, float f, float f2, yf3 yf3Var, int i, float f3, int i2) {
        yf3Var.getClass();
        wf3 wf3Var = (wf3) yf3Var;
        this.b.setColor(i);
        RectF rectF = this.c;
        float f4 = wf3Var.a;
        rectF.left = f - f4;
        rectF.top = f2 - f4;
        rectF.right = f + f4;
        rectF.bottom = f2 + f4;
        canvas.drawCircle(rectF.centerX(), this.c.centerY(), wf3Var.a, this.b);
    }

    @Override // yads.gl5
    public final void a(Canvas canvas, RectF rectF) {
        this.b.setColor(this.a.b.a());
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.b);
    }
}
