package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class tc1 {
    public final g02 a;

    public tc1(g02 g02Var) {
        this.a = g02Var;
    }

    public final boolean a(tc1 tc1Var, fs2 fs2Var, fs2 fs2Var2) {
        boolean zA;
        if (tc1Var == null) {
            return false;
        }
        g02 g02Var = this.a;
        g02 g02Var2 = tc1Var.a;
        if (g02Var2 == null) {
            g02Var2 = null;
        }
        if (g02Var2 == null) {
            g02Var.getClass();
        } else if (((Number) g02Var.a.a(fs2Var)).intValue() == ((Number) g02Var2.a.a(fs2Var2)).intValue() && g02Var.b.a(g02Var2.b, fs2Var, fs2Var2)) {
            l42 l42Var = g02Var.c;
            l42 l42Var2 = g02Var2.c;
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
