package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class ip3 extends s03 {
    public final p25 G;

    public ip3(Context context, bf5 bf5Var, p5 p5Var, u03 u03Var, n8 n8Var) {
        t5 t5Var = new t5();
        e4 e4Var = new e4(n70.INTERSTITIAL);
        ah4 ah4Var = new ah4(e4Var);
        gp3 gp3Var = new gp3(context, bf5Var);
        p25 p25Var = new p25(context, e4Var, bf5Var, t5Var, new op3(context, u03Var));
        super(context, e4Var, bf5Var, p25Var, t5Var, gp3Var, ah4Var);
        this.G = p25Var;
        e4Var.e = n8Var;
        p25Var.e = new hp3(p5Var, this);
        q8 q8Var = new q8(e4Var);
        v5 v5Var = p25Var.c;
        v5Var.e = q8Var;
        v5Var.f = ah4Var;
    }

    public final void a(d80 d80Var) {
        p25 p25Var = this.G;
        p25Var.d = d80Var;
        p25Var.c.a(d80Var);
    }

    @Override // yads.s03
    public final o03 a(p03 p03Var) {
        return p03Var.a(this, this.x);
    }
}
