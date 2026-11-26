package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class l42 {
    public final as2 a;
    public final s42 b;
    public final as2 c;
    public final as2 d;

    static {
        g12 g12Var = g12.DP;
    }

    public l42(as2 as2Var, s42 s42Var, as2 as2Var2, as2 as2Var3) {
        this.a = as2Var;
        this.b = s42Var;
        this.c = as2Var2;
        this.d = as2Var3;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0064  */
    public final boolean a(l42 l42Var, fs2 fs2Var, fs2 fs2Var2) {
        Object obj;
        Object obj2;
        if (l42Var != null && ((Number) this.a.a(fs2Var)).intValue() == ((Number) l42Var.a.a(fs2Var2)).intValue()) {
            s42 s42Var = this.b;
            s42 s42Var2 = l42Var.b;
            if (s42Var instanceof r42) {
                if (s42Var2 instanceof r42) {
                    obj2 = ((r42) s42Var2).a;
                } else {
                    if (!(s42Var2 instanceof q42)) {
                        defpackage.me0.e();
                        return false;
                    }
                    obj2 = ((q42) s42Var2).a;
                }
                if ((obj2 instanceof b52 ? (b52) obj2 : null) != null) {
                    if (this.c.a(fs2Var) != l42Var.c.a(fs2Var2) && ((Number) this.d.a(fs2Var)).doubleValue() == ((Number) l42Var.d.a(fs2Var2)).doubleValue()) {
                        return true;
                    }
                }
            } else if (s42Var instanceof q42) {
                if (s42Var2 instanceof r42) {
                    obj = ((r42) s42Var2).a;
                } else {
                    if (!(s42Var2 instanceof q42)) {
                        defpackage.me0.e();
                        return false;
                    }
                    obj = ((q42) s42Var2).a;
                }
                if ((obj instanceof t42 ? (t42) obj : null) != null) {
                    if (this.c.a(fs2Var) != l42Var.c.a(fs2Var2)) {
                    }
                }
            } else {
                defpackage.me0.e();
            }
        }
        return false;
    }
}
