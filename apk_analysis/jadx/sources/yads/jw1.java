package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class jw1 {
    public final boolean a(jw1 jw1Var, fs2 fs2Var, fs2 fs2Var2) {
        Object obj;
        Object obj2;
        if (jw1Var == null) {
            return false;
        }
        if (this instanceof hw1) {
            uw1 uw1Var = ((hw1) this).a;
            if (jw1Var instanceof hw1) {
                obj2 = ((hw1) jw1Var).a;
            } else {
                if (!(jw1Var instanceof iw1)) {
                    defpackage.me0.e();
                    return false;
                }
                obj2 = ((iw1) jw1Var).a;
            }
            uw1 uw1Var2 = obj2 instanceof uw1 ? (uw1) obj2 : null;
            if (uw1Var2 != null && uw1Var.a.a(fs2Var) == uw1Var2.a.a(fs2Var2) && ((Number) uw1Var.b.a(fs2Var)).longValue() == ((Number) uw1Var2.b.a(fs2Var2)).longValue()) {
                return true;
            }
        } else {
            if (!(this instanceof iw1)) {
                defpackage.me0.e();
                return false;
            }
            nx1 nx1Var = ((iw1) this).a;
            if (jw1Var instanceof hw1) {
                obj = ((hw1) jw1Var).a;
            } else {
                if (!(jw1Var instanceof iw1)) {
                    defpackage.me0.e();
                    return false;
                }
                obj = ((iw1) jw1Var).a;
            }
            nx1 nx1Var2 = obj instanceof nx1 ? (nx1) obj : null;
            if (nx1Var2 != null && ((Number) nx1Var.a.a(fs2Var)).doubleValue() == ((Number) nx1Var2.a.a(fs2Var2)).doubleValue()) {
                return true;
            }
        }
        return false;
    }
}
