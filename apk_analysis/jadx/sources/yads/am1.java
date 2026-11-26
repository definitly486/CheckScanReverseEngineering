package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class am1 {
    public final boolean a(am1 am1Var, fs2 fs2Var, fs2 fs2Var2) {
        Object obj;
        Object obj2;
        if (am1Var == null) {
            return false;
        }
        if (this instanceof zl1) {
            qm1 qm1Var = ((zl1) this).a;
            if (am1Var instanceof zl1) {
                obj2 = ((zl1) am1Var).a;
            } else {
                if (!(am1Var instanceof yl1)) {
                    defpackage.me0.e();
                    return false;
                }
                obj2 = ((yl1) am1Var).a;
            }
            qm1 qm1Var2 = obj2 instanceof qm1 ? (qm1) obj2 : null;
            if (qm1Var2 != null && ((Boolean) qm1Var.a.a(fs2Var)).booleanValue() == ((Boolean) qm1Var2.a.a(fs2Var2)).booleanValue() && defpackage.aa4.e(qm1Var.b.a(fs2Var), qm1Var2.b.a(fs2Var2)) && defpackage.aa4.e(qm1Var.c.a(fs2Var), qm1Var2.c.a(fs2Var2)) && defpackage.aa4.e(qm1Var.d, qm1Var2.d)) {
                return true;
            }
        } else {
            if (!(this instanceof yl1)) {
                defpackage.me0.e();
                return false;
            }
            hm1 hm1Var = ((yl1) this).a;
            if (am1Var instanceof zl1) {
                obj = ((zl1) am1Var).a;
            } else {
                if (!(am1Var instanceof yl1)) {
                    defpackage.me0.e();
                    return false;
                }
                obj = ((yl1) am1Var).a;
            }
            hm1 hm1Var2 = obj instanceof hm1 ? (hm1) obj : null;
            if (hm1Var2 != null && ((Boolean) hm1Var.a.a(fs2Var)).booleanValue() == ((Boolean) hm1Var2.a.a(fs2Var2)).booleanValue() && ((Boolean) hm1Var.b.a(fs2Var)).booleanValue() == ((Boolean) hm1Var2.b.a(fs2Var2)).booleanValue() && defpackage.aa4.e(hm1Var.c.a(fs2Var), hm1Var2.c.a(fs2Var2)) && defpackage.aa4.e(hm1Var.d, hm1Var2.d)) {
                return true;
            }
        }
        return false;
    }
}
