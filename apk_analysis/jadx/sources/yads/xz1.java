package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xz1 {
    public final as2 a;
    public final as2 b;
    public final as2 c;
    public final nv1 d;

    static {
        wr2.a(Double.valueOf(0.19d));
        wr2.a(2L);
        wr2.a(0);
    }

    public xz1(as2 as2Var, as2 as2Var2, as2 as2Var3, nv1 nv1Var) {
        this.a = as2Var;
        this.b = as2Var2;
        this.c = as2Var3;
        this.d = nv1Var;
    }

    public final boolean a(xz1 xz1Var, fs2 fs2Var, fs2 fs2Var2) {
        return xz1Var != null && ((Number) this.a.a(fs2Var)).doubleValue() == ((Number) xz1Var.a.a(fs2Var2)).doubleValue() && ((Number) this.b.a(fs2Var)).longValue() == ((Number) xz1Var.b.a(fs2Var2)).longValue() && ((Number) this.c.a(fs2Var)).intValue() == ((Number) xz1Var.c.a(fs2Var2)).intValue() && this.d.a(xz1Var.d, fs2Var, fs2Var2);
    }
}
