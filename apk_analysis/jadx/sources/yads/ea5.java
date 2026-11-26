package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class ea5 extends s03 {
    public final r25 G;
    public final v95 H;

    public ea5(Context context, bf5 bf5Var, p5 p5Var, u03 u03Var, n8 n8Var) {
        e4 e4Var = new e4(n70.REWARDED);
        t5 t5Var = new t5();
        ah4 ah4Var = new ah4(e4Var);
        ca5 ca5Var = new ca5(context, bf5Var);
        r25 r25Var = new r25(context, e4Var, bf5Var, t5Var, new ka5(context, u03Var));
        v95 v95Var = new v95();
        super(context, e4Var, bf5Var, r25Var, t5Var, ca5Var, ah4Var);
        this.G = r25Var;
        this.H = v95Var;
        e4Var.e = n8Var;
        r25Var.f = new da5(p5Var, this);
        q8 q8Var = new q8(e4Var);
        v5 v5Var = r25Var.c;
        v5Var.e = q8Var;
        v5Var.f = ah4Var;
    }

    @Override // yads.s03, yads.pp
    public final void a(d9 d9Var) {
        t95 t95Var = d9Var.r;
        this.H.getClass();
        if (t95Var == null || (!t95Var.b ? t95Var.c != null : t95Var.d != null)) {
            b(o8.c);
        } else {
            super.a(d9Var);
        }
    }

    public final void a(w80 w80Var) {
        r25 r25Var = this.G;
        r25Var.e = w80Var;
        r25Var.c.a(w80Var);
    }

    @Override // yads.s03
    public final o03 a(p03 p03Var) {
        return p03Var.a(this, this.x);
    }
}
