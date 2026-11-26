package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class p91 {
    public final as2 a;
    public final as2 b;
    public final as2 c;
    public final as2 d;

    public p91(as2 as2Var, as2 as2Var2, as2 as2Var3, as2 as2Var4) {
        this.a = as2Var;
        this.b = as2Var2;
        this.c = as2Var3;
        this.d = as2Var4;
    }

    public final boolean a(p91 p91Var, fs2 fs2Var, fs2 fs2Var2) {
        if (p91Var == null) {
            return false;
        }
        as2 as2Var = this.a;
        Long l = as2Var != null ? (Long) as2Var.a(fs2Var) : null;
        as2 as2Var2 = p91Var.a;
        if (defpackage.aa4.e(l, as2Var2 != null ? (Long) as2Var2.a(fs2Var2) : null)) {
            as2 as2Var3 = this.b;
            Long l2 = as2Var3 != null ? (Long) as2Var3.a(fs2Var) : null;
            as2 as2Var4 = p91Var.b;
            if (defpackage.aa4.e(l2, as2Var4 != null ? (Long) as2Var4.a(fs2Var2) : null)) {
                as2 as2Var5 = this.c;
                Long l3 = as2Var5 != null ? (Long) as2Var5.a(fs2Var) : null;
                as2 as2Var6 = p91Var.c;
                if (defpackage.aa4.e(l3, as2Var6 != null ? (Long) as2Var6.a(fs2Var2) : null)) {
                    as2 as2Var7 = this.d;
                    Long l4 = as2Var7 != null ? (Long) as2Var7.a(fs2Var) : null;
                    as2 as2Var8 = p91Var.d;
                    if (defpackage.aa4.e(l4, as2Var8 != null ? (Long) as2Var8.a(fs2Var2) : null)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
