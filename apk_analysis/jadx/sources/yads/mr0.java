package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class mr0 {
    public final as2 a;
    public final as2 b;
    public final as2 c;
    public final as2 d;
    public final as2 e;
    public final as2 f;
    public final lr0 g;

    static {
        jr0 jr0Var = jr0.DEFAULT;
        kr0 kr0Var = lr0.c;
    }

    public mr0(as2 as2Var, as2 as2Var2, as2 as2Var3, as2 as2Var4, as2 as2Var5, as2 as2Var6, lr0 lr0Var) {
        this.a = as2Var;
        this.b = as2Var2;
        this.c = as2Var3;
        this.d = as2Var4;
        this.e = as2Var5;
        this.f = as2Var6;
        this.g = lr0Var;
    }

    public final boolean a(mr0 mr0Var, fs2 fs2Var, fs2 fs2Var2) {
        if (mr0Var == null) {
            return false;
        }
        as2 as2Var = this.a;
        String str = as2Var != null ? (String) as2Var.a(fs2Var) : null;
        as2 as2Var2 = mr0Var.a;
        if (defpackage.aa4.e(str, as2Var2 != null ? (String) as2Var2.a(fs2Var2) : null)) {
            as2 as2Var3 = this.b;
            String str2 = as2Var3 != null ? (String) as2Var3.a(fs2Var) : null;
            as2 as2Var4 = mr0Var.b;
            if (defpackage.aa4.e(str2, as2Var4 != null ? (String) as2Var4.a(fs2Var2) : null)) {
                as2 as2Var5 = this.c;
                Boolean bool = as2Var5 != null ? (Boolean) as2Var5.a(fs2Var) : null;
                as2 as2Var6 = mr0Var.c;
                if (defpackage.aa4.e(bool, as2Var6 != null ? (Boolean) as2Var6.a(fs2Var2) : null) && this.d.a(fs2Var) == mr0Var.d.a(fs2Var2) && ((Boolean) this.e.a(fs2Var)).booleanValue() == ((Boolean) mr0Var.e.a(fs2Var2)).booleanValue()) {
                    as2 as2Var7 = this.f;
                    String str3 = as2Var7 != null ? (String) as2Var7.a(fs2Var) : null;
                    as2 as2Var8 = mr0Var.f;
                    if (defpackage.aa4.e(str3, as2Var8 != null ? (String) as2Var8.a(fs2Var2) : null) && this.g == mr0Var.g) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
