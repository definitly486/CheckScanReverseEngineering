package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class dp1 {
    public final as2 a;
    public final List b;
    public final ds2 c;

    public dp1(as2 as2Var, List list, ds2 ds2Var) {
        this.a = as2Var;
        this.b = list;
        this.c = ds2Var;
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:55:0x00e6 A[ORIG_RETURN, RETURN] */
    public final boolean a(dp1 dp1Var, fs2 fs2Var, fs2 fs2Var2) {
        ds2 ds2Var;
        List listA;
        List listA2;
        if (dp1Var != null && ((Number) this.a.a(fs2Var)).longValue() == ((Number) dp1Var.a.a(fs2Var2)).longValue()) {
            List list = this.b;
            List list2 = dp1Var.b;
            if (list != null) {
                if (list2 != null && list.size() == list2.size()) {
                    int i = 0;
                    for (Object obj : list) {
                        int i2 = i + 1;
                        if (i < 0) {
                            u96.o();
                            throw null;
                        }
                        cp1 cp1Var = (cp1) list2.get(i);
                        cp1 cp1Var2 = (cp1) obj;
                        if (cp1Var == null) {
                            cp1Var2.getClass();
                        } else if (((Number) cp1Var2.a.a(fs2Var)).intValue() == ((Number) cp1Var.a.a(fs2Var2)).intValue() && ((Number) cp1Var2.b.a(fs2Var)).doubleValue() == ((Number) cp1Var.b.a(fs2Var2)).doubleValue()) {
                            i = i2;
                        }
                    }
                    ds2Var = this.c;
                    if (ds2Var == null && (listA = ds2Var.a(fs2Var)) != null) {
                        ds2 ds2Var2 = dp1Var.c;
                        if (ds2Var2 != null && (listA2 = ds2Var2.a(fs2Var2)) != null && listA.size() == listA2.size()) {
                            int i3 = 0;
                            for (Object obj2 : listA) {
                                int i4 = i3 + 1;
                                if (i3 < 0) {
                                    u96.o();
                                    throw null;
                                }
                                if (((Number) obj2).intValue() == ((Number) listA2.get(i3)).intValue()) {
                                    i3 = i4;
                                }
                            }
                            return true;
                        }
                    } else if (dp1Var.c == null) {
                        return true;
                    }
                }
            } else if (list2 == null) {
                ds2Var = this.c;
                if (ds2Var == null) {
                    if (dp1Var.c == null) {
                        return true;
                    }
                } else if (dp1Var.c == null) {
                    return true;
                }
            }
        }
        return false;
    }
}
