package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;

/* JADX INFO: loaded from: classes3.dex */
public final class va8 extends ke0 {
    public final nd0 q;
    public final String r;
    public final boolean s;
    public final tn1 t;
    public ac9 u;

    /* JADX WARN: Illegal instructions before constructor call */
    public va8(ox4 ox4Var, nd0 nd0Var, ds7 ds7Var) {
        ds7.b bVar = ds7Var.g;
        bVar.getClass();
        int i = ds7.a.a[bVar.ordinal()];
        Paint.Cap cap = i != 1 ? i != 2 ? Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        ds7.c cVar = ds7Var.h;
        cVar.getClass();
        int i2 = ds7.a.b[cVar.ordinal()];
        super(ox4Var, nd0Var, cap, i2 != 1 ? i2 != 2 ? i2 != 3 ? null : Paint.Join.ROUND : Paint.Join.MITER : Paint.Join.BEVEL, ds7Var.i, ds7Var.e, ds7Var.f, ds7Var.c, ds7Var.b);
        this.q = nd0Var;
        this.r = ds7Var.a;
        this.s = ds7Var.j;
        ld0<Integer, Integer> ld0VarA = ds7Var.d.a();
        this.t = (tn1) ld0VarA;
        ld0VarA.a(this);
        nd0Var.c(ld0VarA);
    }

    @Override // defpackage.ke0, defpackage.xs2
    public final void d(Canvas canvas, Matrix matrix, int i, et2 et2Var) {
        if (this.s) {
            return;
        }
        tn1 tn1Var = this.t;
        int iM = tn1Var.m(tn1Var.b(), tn1Var.d());
        ch4 ch4Var = this.i;
        ch4Var.setColor(iM);
        ac9 ac9Var = this.u;
        if (ac9Var != null) {
            ch4Var.setColorFilter((ColorFilter) ac9Var.f());
        }
        super.d(canvas, matrix, i, et2Var);
    }

    @Override // defpackage.sx1
    public final String getName() {
        return this.r;
    }

    @Override // defpackage.ke0, defpackage.of4
    public final void i(by4 by4Var, Object obj) {
        super.i(by4Var, obj);
        PointF pointF = vx4.a;
        tn1 tn1Var = this.t;
        if (obj == 2) {
            tn1Var.k(by4Var);
            return;
        }
        if (obj == vx4.I) {
            ac9 ac9Var = this.u;
            nd0 nd0Var = this.q;
            if (ac9Var != null) {
                nd0Var.p(ac9Var);
            }
            ac9 ac9Var2 = new ac9(by4Var, null);
            this.u = ac9Var2;
            ac9Var2.a(this);
            nd0Var.c(tn1Var);
        }
    }
}
