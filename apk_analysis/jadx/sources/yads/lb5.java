package yads;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes6.dex */
public final class lb5 implements gl5 {
    public final cg3 a;
    public final Paint b = new Paint(1);
    public final Paint c;
    public final RectF d;

    public lb5(cg3 cg3Var) {
        this.a = cg3Var;
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.STROKE);
        this.c = paint;
        this.d = new RectF();
    }

    @Override // yads.gl5
    public final void a(Canvas canvas, float f, float f2, yf3 yf3Var, int i, float f3, int i2) {
        yf3Var.getClass();
        xf3 xf3Var = (xf3) yf3Var;
        this.b.setColor(i);
        RectF rectF = this.d;
        float f4 = xf3Var.a / 2.0f;
        float f5 = f - f4;
        rectF.left = f5;
        float f6 = xf3Var.b / 2.0f;
        float f7 = f2 - f6;
        rectF.top = f7;
        float f8 = f4 + f;
        rectF.right = f8;
        float f9 = f6 + f2;
        rectF.bottom = f9;
        if (f3 > 0.0f) {
            float f10 = f3 / 2.0f;
            rectF.left = f5 + f10;
            rectF.top = f7 + f10;
            rectF.right = f8 - f10;
            rectF.bottom = f9 - f10;
        }
        float f11 = xf3Var.c;
        canvas.drawRoundRect(rectF, f11, f11, this.b);
        if (i2 == 0 || f3 == 0.0f) {
            return;
        }
        Paint paint = this.c;
        paint.setColor(i2);
        paint.setStrokeWidth(f3);
        RectF rectF2 = this.d;
        float f12 = xf3Var.c;
        canvas.drawRoundRect(rectF2, f12, f12, this.c);
    }

    @Override // yads.gl5
    public final void a(Canvas canvas, RectF rectF) {
        bg3 bg3Var = this.a.b;
        bg3Var.getClass();
        ag3 ag3Var = (ag3) bg3Var;
        xf3 xf3Var = ag3Var.b;
        this.b.setColor(this.a.b.a());
        float f = xf3Var.c;
        canvas.drawRoundRect(rectF, f, f, this.b);
        int i = ag3Var.d;
        if (i == 0 || ag3Var.c == 0.0f) {
            return;
        }
        Paint paint = this.c;
        paint.setColor(i);
        paint.setStrokeWidth(ag3Var.c);
        float f2 = xf3Var.c;
        canvas.drawRoundRect(rectF, f2, f2, this.c);
    }
}
