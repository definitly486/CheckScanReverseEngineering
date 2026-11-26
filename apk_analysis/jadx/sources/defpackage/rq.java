package defpackage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.SweepGradient;

/* JADX INFO: loaded from: classes4.dex */
public abstract class rq extends ka1 {
    public float p;
    public float q;

    @Override // defpackage.ka1
    public final void a() {
        SweepGradient sweepGradient;
        pq7 pq7Var = this.b;
        int i = pq7Var.b;
        if (Color.alpha(i) != 0) {
            int i2 = this.k;
            if (i2 < 360) {
                sweepGradient = new SweepGradient(this.h.centerX(), this.h.centerY(), new int[]{pq7Var.a, i}, new float[]{0.0f, 1.0f});
                Matrix matrix = new Matrix();
                matrix.preRotate(this.j - ((360.0f - this.k) / 2.0f), this.h.centerX(), this.h.centerY());
                sweepGradient.setLocalMatrix(matrix);
            } else {
                sweepGradient = new SweepGradient(this.h.centerX(), this.h.centerY(), new int[]{i, pq7Var.a, i}, new float[]{0.0f, (i2 / 360.0f) * 0.5f, 1.0f});
            }
            this.l.setShader(sweepGradient);
        }
    }

    @Override // defpackage.ka1
    public boolean c(Canvas canvas, RectF rectF) {
        float f;
        float f2;
        if (super.c(canvas, rectF)) {
            return true;
        }
        float f3 = this.d;
        float f4 = this.e;
        pq7 pq7Var = this.b;
        float f5 = pq7Var.d;
        float f6 = this.g;
        float f7 = f3 - 0.0f;
        float f8 = f4 - 0.0f;
        float f9 = f5 - 0.0f;
        if (Math.abs(f7 - f8) < 0.01d) {
            f = f7 / f9;
        } else {
            id2.b bVar = this.c;
            if (bVar == id2.b.EVENT_HIDE || bVar == id2.b.EVENT_SHOW || bVar == id2.b.EVENT_COLOR_CHANGE) {
                f6 = 1.0f;
            }
            if (Math.abs(f8) < 0.01d) {
                f = ((f7 - (f6 * f7)) * (f7 / f9)) / f7;
            } else {
                f = ((((f8 - f7) * f6) + f7) * (f8 / f9)) / f8;
            }
        }
        float f10 = f * this.k;
        float fAbs = Math.abs(f10);
        pq7.b bVar2 = pq7Var.h;
        pq7.b bVar3 = pq7.b.STYLE_PIE;
        Paint paint = this.l;
        if (bVar2 == bVar3) {
            f2 = 0.0f;
        } else {
            paint.getStrokeCap();
            Paint.Cap cap = Paint.Cap.ROUND;
            f2 = 0.1f;
        }
        if (fAbs < f2) {
            if (pq7Var.h == bVar3) {
                f10 = 0.0f;
            } else {
                paint.getStrokeCap();
                Paint.Cap cap2 = Paint.Cap.ROUND;
                f10 = 0.1f;
            }
        }
        this.q = f10;
        this.p = this.j;
        return f10 == 0.0f;
    }
}
