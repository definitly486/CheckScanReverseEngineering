package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class h12 {
    public final as2 a;
    public final as2 b;

    static {
        g12 g12Var = g12.DP;
    }

    public h12(as2 as2Var, as2 as2Var2) {
        this.a = as2Var;
        this.b = as2Var2;
    }

    public final boolean a(h12 h12Var, fs2 fs2Var, fs2 fs2Var2) {
        return h12Var != null && this.a.a(fs2Var) == h12Var.a.a(fs2Var2) && ((Number) this.b.a(fs2Var)).longValue() == ((Number) h12Var.b.a(fs2Var2)).longValue();
    }
}
