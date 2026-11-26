package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class f51 {
    public final as2 a;
    public final p91 b;
    public final as2 c;
    public final xz1 d;
    public final l42 e;

    public f51(as2 as2Var, p91 p91Var, as2 as2Var2, xz1 xz1Var, l42 l42Var) {
        this.a = as2Var;
        this.b = p91Var;
        this.c = as2Var2;
        this.d = xz1Var;
        this.e = l42Var;
    }

    public final boolean a(f51 f51Var, fs2 fs2Var, fs2 fs2Var2) {
        boolean zA;
        boolean zA2;
        boolean zA3;
        if (f51Var == null) {
            return false;
        }
        as2 as2Var = this.a;
        Long l = as2Var != null ? (Long) as2Var.a(fs2Var) : null;
        as2 as2Var2 = f51Var.a;
        if (defpackage.aa4.e(l, as2Var2 != null ? (Long) as2Var2.a(fs2Var2) : null)) {
            p91 p91Var = this.b;
            p91 p91Var2 = f51Var.b;
            if (p91Var != null) {
                zA = p91Var.a(p91Var2, fs2Var, fs2Var2);
            } else {
                zA = p91Var2 == null;
            }
            if (zA && ((Boolean) this.c.a(fs2Var)).booleanValue() == ((Boolean) f51Var.c.a(fs2Var2)).booleanValue()) {
                xz1 xz1Var = this.d;
                xz1 xz1Var2 = f51Var.d;
                if (xz1Var != null) {
                    zA2 = xz1Var.a(xz1Var2, fs2Var, fs2Var2);
                } else {
                    zA2 = xz1Var2 == null;
                }
                if (zA2) {
                    l42 l42Var = this.e;
                    l42 l42Var2 = f51Var.e;
                    if (l42Var != null) {
                        zA3 = l42Var.a(l42Var2, fs2Var, fs2Var2);
                    } else {
                        zA3 = l42Var2 == null;
                    }
                    if (zA3) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
