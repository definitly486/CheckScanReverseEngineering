package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class bf4 implements Runnable {
    public final d9 b;
    public final vg4 c;
    public final of4 d;
    public final ye4 e;
    public final jd0 f;
    public final /* synthetic */ df4 g;

    public bf4(df4 df4Var, d9 d9Var, vg4 vg4Var, of4 of4Var, ye4 ye4Var) {
        e95 e95Var = new e95();
        this.g = df4Var;
        this.b = d9Var;
        this.c = vg4Var;
        this.d = of4Var;
        this.e = ye4Var;
        h75 h75VarB = e95Var.b(df4Var.b, d9Var);
        Context context = df4Var.e;
        bf5 bf5Var = df4Var.a;
        bf5Var.getClass();
        this.f = new jd0(re.a(context, new lm6(((do6) bf5Var).a)), h75VarB);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            vg4 vg4Var = this.c;
            if (vg4Var == null) {
                this.e.a(o8.c);
                return;
            }
            if (vg4Var.a.isEmpty()) {
                this.e.a(o8.h);
                return;
            }
            vg4 vg4Var2 = this.c;
            d9 d9Var = this.b;
            df4 df4Var = this.g;
            ee4 ee4Var = new ee4(df4Var.b, d9Var, vg4Var2);
            ye4 ye4Var = this.e;
            t5 t5Var = df4Var.c;
            af4 af4Var = new af4(this, ye4Var, t5Var);
            t5Var.a(s5.RESOURCES_LOADING, null);
            df4 df4Var2 = this.g;
            ck4 ck4Var = df4Var2.g;
            Context context = df4Var2.e;
            e4 e4Var = df4Var2.b;
            jd0 jd0Var = this.f;
            ye4 ye4Var2 = this.e;
            ck4Var.getClass();
            defpackage.av0.c(ck4Var.a, new dk4(ye4Var2), null, new bk4(context, ye4Var2, af4Var, ck4Var, e4Var, ee4Var, jd0Var, null), 2);
        } catch (Exception unused) {
            this.e.a(o8.c);
        }
    }
}
