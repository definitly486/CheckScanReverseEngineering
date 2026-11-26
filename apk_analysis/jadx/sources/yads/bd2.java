package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class bd2 {
    public final ru1 a;
    public final ru1 b;
    public final as2 c;

    public bd2(ru1 ru1Var, ru1 ru1Var2, as2 as2Var) {
        this.a = ru1Var;
        this.b = ru1Var2;
        this.c = as2Var;
    }

    public final boolean a(bd2 bd2Var, fs2 fs2Var, fs2 fs2Var2) {
        if (bd2Var != null && this.a.a(bd2Var.a, fs2Var, fs2Var2) && this.b.a(bd2Var.b, fs2Var, fs2Var2)) {
            as2 as2Var = this.c;
            Double d = as2Var != null ? (Double) as2Var.a(fs2Var) : null;
            as2 as2Var2 = bd2Var.c;
            if (defpackage.aa4.b(d, as2Var2 != null ? (Double) as2Var2.a(fs2Var2) : null)) {
                return true;
            }
        }
        return false;
    }
}
