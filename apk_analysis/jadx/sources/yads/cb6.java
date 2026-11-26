package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class cb6 implements wb6 {
    public final e4 a;
    public final d9 b;
    public final xh4 c;

    public cb6(e4 e4Var, d9 d9Var) {
        xh4 xh4Var = new xh4();
        this.a = e4Var;
        this.b = d9Var;
        this.c = xh4Var;
    }

    @Override // yads.wb6
    public final h75 a() {
        d9 d9Var = this.b;
        vg4 vg4Var = (vg4) d9Var.t;
        if (vg4Var == null) {
            vg4Var = null;
        }
        h75 h75VarA = this.c.a(this.a, d9Var, vg4Var);
        h75VarA.b(c75.a, "adapter");
        h75VarA.b = this.b.i;
        return h75VarA;
    }
}
