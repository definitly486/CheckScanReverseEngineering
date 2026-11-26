package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class wd1 {
    public final boolean a(wd1 wd1Var, fs2 fs2Var, fs2 fs2Var2) {
        Object obj;
        Object obj2;
        if (wd1Var == null) {
            return false;
        }
        if (this instanceof ud1) {
            z41 z41Var = ((ud1) this).a;
            if (wd1Var instanceof ud1) {
                obj2 = ((ud1) wd1Var).a;
            } else {
                if (!(wd1Var instanceof vd1)) {
                    defpackage.me0.e();
                    return false;
                }
                obj2 = ((vd1) wd1Var).a;
            }
            z41 z41Var2 = obj2 instanceof z41 ? (z41) obj2 : null;
            if (z41Var2 != null && ((Number) z41Var.a.a(fs2Var)).longValue() == ((Number) z41Var2.a.a(fs2Var2)).longValue()) {
                return true;
            }
        } else {
            if (!(this instanceof vd1)) {
                defpackage.me0.e();
                return false;
            }
            if (wd1Var instanceof ud1) {
                obj = ((ud1) wd1Var).a;
            } else {
                if (!(wd1Var instanceof vd1)) {
                    defpackage.me0.e();
                    return false;
                }
                obj = ((vd1) wd1Var).a;
            }
            if ((obj instanceof ae1 ? (ae1) obj : null) != null) {
                return true;
            }
        }
        return false;
    }
}
