package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class j71 {
    public final as2 a;
    public final String b;
    public final List c;

    public j71(as2 as2Var, String str, List list) {
        this.a = as2Var;
        this.b = str;
        this.c = list;
    }

    public final boolean a(j71 j71Var, fs2 fs2Var, fs2 fs2Var2) {
        if (j71Var != null && defpackage.aa4.e(this.a.a(fs2Var), j71Var.a.a(fs2Var2)) && defpackage.aa4.e(this.b, j71Var.b)) {
            List list = this.c;
            List list2 = j71Var.c;
            if (list.size() == list2.size()) {
                int i = 0;
                for (Object obj : list) {
                    int i2 = i + 1;
                    if (i < 0) {
                        u96.o();
                        throw null;
                    }
                    i71 i71Var = (i71) list2.get(i);
                    i71 i71Var2 = (i71) obj;
                    if (i71Var == null) {
                        i71Var2.getClass();
                    } else if (i71Var2.a.a(i71Var.a, fs2Var, fs2Var2)) {
                        as2 as2Var = i71Var2.b;
                        String str = as2Var != null ? (String) as2Var.a(fs2Var) : null;
                        as2 as2Var2 = i71Var.b;
                        if (defpackage.aa4.e(str, as2Var2 != null ? (String) as2Var2.a(fs2Var2) : null) && ((Boolean) i71Var2.c.a(fs2Var)).booleanValue() == ((Boolean) i71Var.c.a(fs2Var2)).booleanValue()) {
                            i = i2;
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }
}
