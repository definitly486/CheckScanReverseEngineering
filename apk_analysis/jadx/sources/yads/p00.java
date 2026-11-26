package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class p00 implements ua5 {
    public final t25 a;
    public final xg5 b;

    public p00(r00 r00Var, t25 t25Var) {
        xg5 xg5Var = new xg5(r00Var.b, r00Var.c);
        this.a = t25Var;
        this.b = xg5Var;
    }

    @Override // yads.ua5
    public final void a() {
        t25 t25Var = this.a;
        xg5 xg5Var = this.b;
        s25 s25Var = t25Var.a;
        if (s25Var != null) {
            s25Var.a(xg5Var);
        }
    }
}
