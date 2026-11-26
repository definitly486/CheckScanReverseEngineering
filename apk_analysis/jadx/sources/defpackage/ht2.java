package defpackage;

import android.graphics.Color;
import android.graphics.Matrix;

/* JADX INFO: loaded from: classes3.dex */
public final class ht2 implements ld0.a {
    public final nd0 a;
    public final nd0 b;
    public final tn1 c;
    public final tc3 d;
    public final tc3 e;
    public final tc3 f;
    public final tc3 g;
    public Matrix h;

    public class a extends by4<Float> {
        public final /* synthetic */ by4 c;

        public a(by4 by4Var) {
            this.c = by4Var;
        }

        @Override // defpackage.by4
        public final Float a(rx4<Float> rx4Var) {
            Float f = (Float) this.c.b;
            if (f == null) {
                return null;
            }
            return Float.valueOf(f.floatValue() * 2.55f);
        }
    }

    public ht2(nd0 nd0Var, nd0 nd0Var2, ft2 ft2Var) {
        this.b = nd0Var;
        this.a = nd0Var2;
        ld0<?, ?> ld0VarA = ft2Var.a.a();
        this.c = (tn1) ld0VarA;
        ld0VarA.a(this);
        nd0Var2.c(ld0VarA);
        tc3 tc3VarA = ft2Var.b.a();
        this.d = tc3VarA;
        tc3VarA.a(this);
        nd0Var2.c(tc3VarA);
        tc3 tc3VarA2 = ft2Var.c.a();
        this.e = tc3VarA2;
        tc3VarA2.a(this);
        nd0Var2.c(tc3VarA2);
        tc3 tc3VarA3 = ft2Var.d.a();
        this.f = tc3VarA3;
        tc3VarA3.a(this);
        nd0Var2.c(tc3VarA3);
        tc3 tc3VarA4 = ft2Var.e.a();
        this.g = tc3VarA4;
        tc3VarA4.a(this);
        nd0Var2.c(tc3VarA4);
    }

    public final et2 a(Matrix matrix, int i) {
        float fM = this.e.m() * 0.017453292f;
        float fFloatValue = this.f.f().floatValue();
        double d = fM;
        float fSin = ((float) Math.sin(d)) * fFloatValue;
        float fCos = ((float) Math.cos(d + 3.141592653589793d)) * fFloatValue;
        float fFloatValue2 = this.g.f().floatValue();
        int iIntValue = this.c.f().intValue();
        int iArgb = Color.argb(Math.round((this.d.f().floatValue() * i) / 255.0f), Color.red(iIntValue), Color.green(iIntValue), Color.blue(iIntValue));
        et2 et2Var = new et2();
        et2Var.a = fFloatValue2 * 0.33f;
        et2Var.b = fSin;
        et2Var.c = fCos;
        et2Var.d = iArgb;
        et2Var.e = null;
        et2Var.c(matrix);
        if (this.h == null) {
            this.h = new Matrix();
        }
        this.a.w.e().invert(this.h);
        et2Var.c(this.h);
        return et2Var;
    }

    public final void b(by4<Float> by4Var) {
        this.d.k(new a(by4Var));
    }

    @Override // ld0.a
    public final void e() {
        this.b.e();
    }
}
