package yads;

import android.content.Context;
import defpackage.jd8;
import defpackage.rm9;

/* JADX INFO: loaded from: classes6.dex */
public final class fk4 {
    public final fg5 a;
    public final df4 b;

    public fk4(Context context, e4 e4Var, t5 t5Var, bf5 bf5Var) {
        Context context2 = ((do6) bf5Var).a;
        j90 j90Var = new j90(mw.a(context2, context2));
        jd8 jd8VarB = rm9.b();
        defpackage.oi2 oi2Var = defpackage.qo2.a;
        defpackage.kz1 kz1VarA = defpackage.z22.a(o22.a.C0306a.d(jd8VarB, defpackage.sh2.c).plus(j90Var));
        Context applicationContext = context.getApplicationContext();
        fg5 fg5Var = new fg5(bf5Var);
        df4 df4Var = new df4(applicationContext, kz1VarA, e4Var, t5Var, bf5Var);
        this.a = fg5Var;
        this.b = df4Var;
        e4Var.f = hk4.AD;
    }

    public final void a(d9 d9Var, ek4 ek4Var, d95 d95Var) {
        vg4 vg4Var = (vg4) d9Var.t;
        if (vg4Var == null) {
            ek4Var.a(o8.c);
            d95Var.a();
            return;
        }
        d95Var.a(vg4Var);
        of4 of4VarA = this.a.a(d9Var);
        qi4 qi4Var = new qi4(ek4Var);
        df4 df4Var = this.b;
        defpackage.av0.c(df4Var.d, null, null, new cf4(df4Var, d9Var, vg4Var, of4VarA, qi4Var, null), 3);
    }
}
