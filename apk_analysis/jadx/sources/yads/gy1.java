package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class gy1 {
    public static final af1 f = new af1(wr2.a(5L));
    public static final af1 g = new af1(wr2.a(10L));
    public static final af1 h = new af1(wr2.a(10L));
    public final as2 a;
    public final af1 b;
    public final af1 c;
    public final af1 d;
    public final l42 e;

    public gy1(as2 as2Var, af1 af1Var, af1 af1Var2, af1 af1Var3, l42 l42Var) {
        this.a = as2Var;
        this.b = af1Var;
        this.c = af1Var2;
        this.d = af1Var3;
        this.e = l42Var;
    }

    public final boolean a(gy1 gy1Var, fs2 fs2Var, fs2 fs2Var2) {
        boolean zA;
        if (gy1Var == null) {
            return false;
        }
        as2 as2Var = this.a;
        Integer num = as2Var != null ? (Integer) as2Var.a(fs2Var) : null;
        as2 as2Var2 = gy1Var.a;
        if (defpackage.aa4.e(num, as2Var2 != null ? (Integer) as2Var2.a(fs2Var2) : null) && this.b.a(gy1Var.b, fs2Var, fs2Var2) && this.c.a(gy1Var.c, fs2Var, fs2Var2) && this.d.a(gy1Var.d, fs2Var, fs2Var2)) {
            l42 l42Var = this.e;
            l42 l42Var2 = gy1Var.e;
            if (l42Var != null) {
                zA = l42Var.a(l42Var2, fs2Var, fs2Var2);
            } else {
                zA = l42Var2 == null;
            }
            if (zA) {
                return true;
            }
        }
        return false;
    }
}
