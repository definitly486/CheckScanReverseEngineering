package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class x91 {
    public final boolean a(x91 x91Var, fs2 fs2Var, fs2 fs2Var2) {
        Object obj;
        Object obj2;
        if (x91Var == null) {
            return false;
        }
        if (this instanceof w91) {
            if (x91Var instanceof w91) {
                obj2 = ((w91) x91Var).a;
            } else {
                if (!(x91Var instanceof v91)) {
                    defpackage.me0.e();
                    return false;
                }
                obj2 = ((v91) x91Var).a;
            }
            if ((obj2 instanceof sj1 ? (sj1) obj2 : null) != null) {
                return true;
            }
        } else {
            if (!(this instanceof v91)) {
                defpackage.me0.e();
                return false;
            }
            ie1 ie1Var = ((v91) this).a;
            if (x91Var instanceof w91) {
                obj = ((w91) x91Var).a;
            } else {
                if (!(x91Var instanceof v91)) {
                    defpackage.me0.e();
                    return false;
                }
                obj = ((v91) x91Var).a;
            }
            ie1 ie1Var2 = obj instanceof ie1 ? (ie1) obj : null;
            if (ie1Var2 != null && ((Number) ie1Var.a.a(fs2Var)).longValue() == ((Number) ie1Var2.a.a(fs2Var2)).longValue()) {
                return true;
            }
        }
        return false;
    }
}
