package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class nc1 {
    public final List a;
    public final List b;

    public nc1(List list, List list2) {
        this.a = list;
        this.b = list2;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004a  */
    /* JADX WARN: Code duplicated, block: B:34:0x0063  */
    /* JADX WARN: Code duplicated, block: B:36:0x006b  */
    /* JADX WARN: Code duplicated, block: B:39:0x007a A[LOOP:1: B:32:0x005d->B:39:0x007a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:42:0x0080 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x0082 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:50:0x007c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x0084 A[SYNTHETIC] */
    public final boolean a(nc1 nc1Var, fs2 fs2Var, fs2 fs2Var2) {
        List list;
        List list2;
        int i;
        int i2;
        if (nc1Var == null) {
            return false;
        }
        List list3 = this.a;
        List list4 = nc1Var.a;
        if (list3 != null) {
            if (list4 != null && list3.size() == list4.size()) {
                int i3 = 0;
                for (Object obj : list3) {
                    int i4 = i3 + 1;
                    if (i3 < 0) {
                        u96.o();
                        throw null;
                    }
                    if (((xr0) obj).a((xr0) list4.get(i3), fs2Var, fs2Var2)) {
                        i3 = i4;
                    }
                }
                list = this.b;
                list2 = nc1Var.b;
                if (list != null) {
                    if (list2 == null && list.size() == list2.size()) {
                        i = 0;
                        for (Object obj2 : list) {
                            i2 = i + 1;
                            if (i >= 0) {
                                u96.o();
                                throw null;
                            }
                            if (!((xr0) obj2).a((xr0) list2.get(i), fs2Var, fs2Var2)) {
                                i = i2;
                            }
                        }
                        return true;
                    }
                } else if (list2 == null) {
                    return true;
                }
            }
        } else if (list4 == null) {
            list = this.b;
            list2 = nc1Var.b;
            if (list != null) {
                if (list2 == null) {
                    return false;
                }
                i = 0;
                while (r7.hasNext()) {
                    i2 = i + 1;
                    if (i >= 0) {
                        u96.o();
                        throw null;
                    }
                    if (!((xr0) obj2).a((xr0) list2.get(i), fs2Var, fs2Var2)) {
                        i = i2;
                    }
                }
                return true;
            }
            if (list2 == null) {
                return true;
            }
        }
        return false;
    }
}
