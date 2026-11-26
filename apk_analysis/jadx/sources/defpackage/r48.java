package defpackage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes3.dex */
public final class r48 extends nd0 {
    public final RectF D;
    public final ch4 E;
    public final float[] F;
    public final Path G;
    public final xk4 H;
    public ac9 I;
    public ac9 J;

    public r48(ox4 ox4Var, xk4 xk4Var) {
        super(ox4Var, xk4Var);
        this.D = new RectF();
        ch4 ch4Var = new ch4();
        this.E = ch4Var;
        this.F = new float[8];
        this.G = new Path();
        this.H = xk4Var;
        ch4Var.setAlpha(0);
        ch4Var.setStyle(Paint.Style.FILL);
        ch4Var.setColor(xk4Var.l);
    }

    @Override // defpackage.nd0, defpackage.xs2
    public final void b(RectF rectF, Matrix matrix, boolean z) {
        super.b(rectF, matrix, z);
        xk4 xk4Var = this.H;
        float f = xk4Var.j;
        float f2 = xk4Var.k;
        RectF rectF2 = this.D;
        rectF2.set(0.0f, 0.0f, f, f2);
        this.n.mapRect(rectF2);
        rectF.set(rectF2);
    }

    @Override // defpackage.nd0, defpackage.of4
    public final void i(by4 by4Var, Object obj) {
        super.i(by4Var, obj);
        if (obj == vx4.I) {
            this.I = new ac9(by4Var, null);
        } else if (obj == 1) {
            this.J = new ac9(by4Var, null);
        }
    }

    @Override // defpackage.nd0
    public final void l(Canvas canvas, Matrix matrix, int i, et2 et2Var) {
        xk4 xk4Var = this.H;
        int iAlpha = Color.alpha(xk4Var.l);
        if (iAlpha == 0) {
            return;
        }
        ac9 ac9Var = this.J;
        Integer num = ac9Var == null ? null : (Integer) ac9Var.f();
        ch4 ch4Var = this.E;
        if (num != null) {
            ch4Var.setColor(num.intValue());
        } else {
            ch4Var.setColor(xk4Var.l);
        }
        ld0<Integer, Integer> ld0Var = this.w.p;
        int iIntValue = (int) ((((iAlpha / 255.0f) * (ld0Var == null ? 100 : ld0Var.f().intValue())) / 100.0f) * (i / 255.0f) * 255.0f);
        ch4Var.setAlpha(iIntValue);
        if (et2Var == null || Color.alpha(et2Var.d) <= 0) {
            ch4Var.clearShadowLayer();
        } else {
            ch4Var.setShadowLayer(Math.max(et2Var.a, Float.MIN_VALUE), et2Var.b, et2Var.c, et2Var.d);
        }
        ac9 ac9Var2 = this.I;
        if (ac9Var2 != null) {
            ch4Var.setColorFilter((ColorFilter) ac9Var2.f());
        }
        if (iIntValue > 0) {
            float[] fArr = this.F;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            float f = xk4Var.j;
            fArr[2] = f;
            fArr[3] = 0.0f;
            fArr[4] = f;
            float f2 = xk4Var.k;
            fArr[5] = f2;
            fArr[6] = 0.0f;
            fArr[7] = f2;
            matrix.mapPoints(fArr);
            Path path = this.G;
            path.reset();
            path.moveTo(fArr[0], fArr[1]);
            path.lineTo(fArr[2], fArr[3]);
            path.lineTo(fArr[4], fArr[5]);
            path.lineTo(fArr[6], fArr[7]);
            path.lineTo(fArr[0], fArr[1]);
            path.close();
            canvas.drawPath(path, ch4Var);
        }
    }
}
