package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class dh extends s03 {
    public final n25 G;

    public dh(Context context, bf5 bf5Var, p5 p5Var, u03 u03Var, n8 n8Var) {
        t5 t5Var = new t5();
        e4 e4Var = new e4(n70.APPOPENAD);
        ah4 ah4Var = new ah4(e4Var);
        bh bhVar = new bh(context, bf5Var);
        n25 n25Var = new n25(context, e4Var, bf5Var, t5Var, u03Var);
        super(context, e4Var, bf5Var, n25Var, t5Var, bhVar, ah4Var);
        this.G = n25Var;
        e4Var.e = n8Var;
        n25Var.e = new ch(p5Var, this);
        n25Var.b.f = ah4Var;
        n25Var.b.e = new q8(e4Var);
    }

    public final void a(p70 p70Var) {
        n25 n25Var = this.G;
        n25Var.d = p70Var;
        n25Var.b.a(p70Var);
    }

    @Override // yads.s03
    public final o03 a(p03 p03Var) {
        return p03Var.a(this, this.x);
    }
}
