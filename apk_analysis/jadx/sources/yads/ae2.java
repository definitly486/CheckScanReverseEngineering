package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ae2 {
    public final List a;
    public final as2 b;
    public final as2 c;

    static {
        zd2 zd2Var = zd2.ON_CONDITION;
    }

    public ae2(List list, as2 as2Var, as2 as2Var2) {
        this.a = list;
        this.b = as2Var;
        this.c = as2Var2;
    }

    public final boolean a(ae2 ae2Var, fs2 fs2Var, fs2 fs2Var2) {
        if (ae2Var == null) {
            return false;
        }
        List list = this.a;
        List list2 = ae2Var.a;
        if (list.size() == list2.size()) {
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    u96.o();
                    throw null;
                }
                if (((xr0) obj).a((xr0) list2.get(i), fs2Var, fs2Var2)) {
                    i = i2;
                }
            }
            if (((Boolean) this.b.a(fs2Var)).booleanValue() == ((Boolean) ae2Var.b.a(fs2Var2)).booleanValue() && this.c.a(fs2Var) == ae2Var.c.a(fs2Var2)) {
                return true;
            }
        }
        return false;
    }
}
