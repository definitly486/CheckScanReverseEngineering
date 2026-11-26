package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class x72 {
    public final u72 a;
    public final as2 b;
    public final af1 c;
    public final as2 d;
    public final as2 e;
    public final as2 f;
    public final as2 g;
    public final as2 h;
    public final as2 i;
    public final af1 j;

    static {
        wr2.a(d82.CENTER);
        wr2.a(20L);
        wr2.a(w72.NORMAL);
        wr2.a(Boolean.FALSE);
        wr2.a(y41.SOURCE_IN);
        wr2.a(20L);
    }

    public x72(u72 u72Var, as2 as2Var, af1 af1Var, as2 as2Var2, as2 as2Var3, as2 as2Var4, as2 as2Var5, as2 as2Var6, as2 as2Var7, af1 af1Var2) {
        this.a = u72Var;
        this.b = as2Var;
        this.c = af1Var;
        this.d = as2Var2;
        this.e = as2Var3;
        this.f = as2Var4;
        this.g = as2Var5;
        this.h = as2Var6;
        this.i = as2Var7;
        this.j = af1Var2;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0036  */
    /* JADX WARN: Code duplicated, block: B:35:0x0096  */
    /* JADX WARN: Code duplicated, block: B:36:0x009d  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a2  */
    public final boolean a(x72 x72Var, fs2 fs2Var, fs2 fs2Var2) {
        as2 as2Var;
        Integer num;
        as2 as2Var2;
        if (x72Var == null) {
            return false;
        }
        u72 u72Var = this.a;
        u72 u72Var2 = x72Var.a;
        if (u72Var != null) {
            if (u72Var2 != null) {
                as2 as2Var3 = u72Var.a;
                String str = as2Var3 != null ? (String) as2Var3.a(fs2Var) : null;
                as2 as2Var4 = u72Var2.a;
                if (defpackage.aa4.e(str, as2Var4 != null ? (String) as2Var4.a(fs2Var2) : null) && u72Var.b == u72Var2.b) {
                    if (this.b.a(fs2Var) == x72Var.b.a(fs2Var2) && this.c.a(x72Var.c, fs2Var, fs2Var2) && this.d.a(fs2Var) == x72Var.d.a(fs2Var2) && ((Boolean) this.e.a(fs2Var)).booleanValue() == ((Boolean) x72Var.e.a(fs2Var2)).booleanValue() && ((Number) this.f.a(fs2Var)).longValue() == ((Number) x72Var.f.a(fs2Var2)).longValue()) {
                        as2Var = this.g;
                        if (as2Var != null) {
                            num = (Integer) as2Var.a(fs2Var);
                        } else {
                            num = null;
                        }
                        as2Var2 = x72Var.g;
                        if (!defpackage.aa4.e(num, as2Var2 != null ? (Integer) as2Var2.a(fs2Var2) : null) && this.h.a(fs2Var) == x72Var.h.a(fs2Var2) && defpackage.aa4.e(this.i.a(fs2Var), x72Var.i.a(fs2Var2)) && this.j.a(x72Var.j, fs2Var, fs2Var2)) {
                            return true;
                        }
                    }
                }
            }
        } else if (u72Var2 == null) {
            if (this.b.a(fs2Var) == x72Var.b.a(fs2Var2)) {
                as2Var = this.g;
                if (as2Var != null) {
                    num = (Integer) as2Var.a(fs2Var);
                } else {
                    num = null;
                }
                as2Var2 = x72Var.g;
                if (!defpackage.aa4.e(num, as2Var2 != null ? (Integer) as2Var2.a(fs2Var2) : null)) {
                }
            }
        }
        return false;
    }
}
