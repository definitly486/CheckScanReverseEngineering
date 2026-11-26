package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ac1 {
    public final as2 a;
    public final as2 b;

    static {
        g12 g12Var = g12.DP;
    }

    public ac1(as2 as2Var, as2 as2Var2) {
        this.a = as2Var;
        this.b = as2Var2;
    }

    public final boolean a(ac1 ac1Var, fs2 fs2Var, fs2 fs2Var2) {
        return ac1Var != null && this.a.a(fs2Var) == ac1Var.a.a(fs2Var2) && ((Number) this.b.a(fs2Var)).doubleValue() == ((Number) ac1Var.b.a(fs2Var2)).doubleValue();
    }
}
