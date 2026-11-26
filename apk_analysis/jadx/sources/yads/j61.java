package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class j61 {
    public final boolean a(j61 j61Var, fs2 fs2Var, fs2 fs2Var2) {
        Object obj;
        Object obj2;
        if (j61Var == null) {
            return false;
        }
        if (this instanceof i61) {
            b61 b61Var = ((i61) this).a;
            if (j61Var instanceof i61) {
                obj2 = ((i61) j61Var).a;
            } else {
                if (!(j61Var instanceof h61)) {
                    defpackage.me0.e();
                    return false;
                }
                obj2 = ((h61) j61Var).a;
            }
            b61 b61Var2 = obj2 instanceof b61 ? (b61) obj2 : null;
            if (b61Var2 != null) {
                List list = b61Var.a;
                List list2 = b61Var2.a;
                if (list.size() == list2.size()) {
                    int i = 0;
                    for (Object obj3 : list) {
                        int i2 = i + 1;
                        if (i < 0) {
                            u96.o();
                            throw null;
                        }
                        if (((j61) obj3).a((j61) list2.get(i), fs2Var, fs2Var2)) {
                            i = i2;
                        }
                    }
                    return true;
                }
            }
        } else {
            if (!(this instanceof h61)) {
                defpackage.me0.e();
                return false;
            }
            v51 v51Var = ((h61) this).a;
            if (j61Var instanceof i61) {
                obj = ((i61) j61Var).a;
            } else {
                if (!(j61Var instanceof h61)) {
                    defpackage.me0.e();
                    return false;
                }
                obj = ((h61) j61Var).a;
            }
            v51 v51Var2 = obj instanceof v51 ? (v51) obj : null;
            if (v51Var2 != null && ((Number) v51Var.a.a(fs2Var)).longValue() == ((Number) v51Var2.a.a(fs2Var2)).longValue() && v51Var.b.a(fs2Var) == v51Var2.b.a(fs2Var2) && ((Number) v51Var.c.a(fs2Var)).longValue() == ((Number) v51Var2.c.a(fs2Var2)).longValue()) {
                return true;
            }
        }
        return false;
    }
}
