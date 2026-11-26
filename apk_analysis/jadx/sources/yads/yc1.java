package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class yc1 {
    public static final xr2 h;
    public final as2 a;
    public final as2 b;
    public final as2 c;
    public final as2 d;
    public final as2 e;
    public final as2 f;
    public final as2 g;

    static {
        wr2.a(0L);
        wr2.a(0L);
        wr2.a(0L);
        wr2.a(0L);
        h = wr2.a(g12.DP);
    }

    public yc1(as2 as2Var, as2 as2Var2, as2 as2Var3, as2 as2Var4, as2 as2Var5, as2 as2Var6, as2 as2Var7) {
        this.a = as2Var;
        this.b = as2Var2;
        this.c = as2Var3;
        this.d = as2Var4;
        this.e = as2Var5;
        this.f = as2Var6;
        this.g = as2Var7;
    }

    public final boolean a(yc1 yc1Var, fs2 fs2Var, fs2 fs2Var2) {
        if (yc1Var != null && ((Number) this.a.a(fs2Var)).longValue() == ((Number) yc1Var.a.a(fs2Var2)).longValue()) {
            as2 as2Var = this.b;
            Long l = as2Var != null ? (Long) as2Var.a(fs2Var) : null;
            as2 as2Var2 = yc1Var.b;
            if (defpackage.aa4.e(l, as2Var2 != null ? (Long) as2Var2.a(fs2Var2) : null) && ((Number) this.c.a(fs2Var)).longValue() == ((Number) yc1Var.c.a(fs2Var2)).longValue() && ((Number) this.d.a(fs2Var)).longValue() == ((Number) yc1Var.d.a(fs2Var2)).longValue()) {
                as2 as2Var3 = this.e;
                Long l2 = as2Var3 != null ? (Long) as2Var3.a(fs2Var) : null;
                as2 as2Var4 = yc1Var.e;
                if (defpackage.aa4.e(l2, as2Var4 != null ? (Long) as2Var4.a(fs2Var2) : null) && ((Number) this.f.a(fs2Var)).longValue() == ((Number) yc1Var.f.a(fs2Var2)).longValue() && this.g.a(fs2Var) == yc1Var.g.a(fs2Var2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public /* synthetic */ yc1(xr2 xr2Var, xr2 xr2Var2, xr2 xr2Var3, xr2 xr2Var4) {
        this(xr2Var, null, xr2Var2, xr2Var3, null, xr2Var4, h);
    }
}
