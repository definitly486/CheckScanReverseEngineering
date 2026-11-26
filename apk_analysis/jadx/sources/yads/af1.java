package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class af1 {
    public static final xr2 c = new xr2(g12.DP);
    public final as2 a;
    public final as2 b;

    public af1(xr2 xr2Var) {
        this.a = c;
        this.b = xr2Var;
    }

    public final boolean a(af1 af1Var, fs2 fs2Var, fs2 fs2Var2) {
        return af1Var != null && this.a.a(fs2Var) == af1Var.a.a(fs2Var2) && ((Number) this.b.a(fs2Var)).longValue() == ((Number) af1Var.b.a(fs2Var2)).longValue();
    }

    public af1(as2 as2Var, as2 as2Var2) {
        this.a = as2Var;
        this.b = as2Var2;
    }
}
