package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ru1 {
    public final boolean a(ru1 ru1Var, fs2 fs2Var, fs2 fs2Var2) {
        if (ru1Var == null) {
            return false;
        }
        if (this instanceof pu1) {
            su1 su1Var = ((pu1) this).a;
            Object objA = ru1Var.a();
            su1 su1Var2 = objA instanceof su1 ? (su1) objA : null;
            if (su1Var2 != null && su1Var.a.a(fs2Var) == su1Var2.a.a(fs2Var2)) {
                as2 as2Var = su1Var.b;
                Long l = as2Var != null ? (Long) as2Var.a(fs2Var) : null;
                as2 as2Var2 = su1Var2.b;
                if (defpackage.aa4.e(l, as2Var2 != null ? (Long) as2Var2.a(fs2Var2) : null)) {
                    return true;
                }
            }
        } else {
            if (!(this instanceof qu1)) {
                defpackage.me0.e();
                return false;
            }
            bv1 bv1Var = ((qu1) this).a;
            Object objA2 = ru1Var.a();
            bv1 bv1Var2 = objA2 instanceof bv1 ? (bv1) objA2 : null;
            if (bv1Var2 != null && ((Number) bv1Var.a.a(fs2Var)).doubleValue() == ((Number) bv1Var2.a.a(fs2Var2)).doubleValue()) {
                return true;
            }
        }
        return false;
    }

    public final Object a() {
        if (this instanceof pu1) {
            return ((pu1) this).a;
        }
        if (this instanceof qu1) {
            return ((qu1) this).a;
        }
        defpackage.me0.e();
        return null;
    }
}
