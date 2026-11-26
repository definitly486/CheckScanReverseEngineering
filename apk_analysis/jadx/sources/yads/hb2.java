package yads;

import defpackage.j59;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes6.dex */
public final class hb2 {
    public final ao2 a;
    public final LinkedHashMap b = new LinkedHashMap();
    public final LinkedHashSet c = new LinkedHashSet();

    public hb2(ao2 ao2Var) {
        this.a = ao2Var;
    }

    public final void a(vq0 vq0Var) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            sx5 sx5Var = (sx5) this.b.get((String) it.next());
            if (sx5Var != null && !defpackage.aa4.e(vq0Var, sx5Var.e)) {
                sx5Var.e = vq0Var;
                if (sx5Var.i) {
                    sx5Var.j.g();
                    sx5Var.i = false;
                }
            }
        }
    }

    public final void a(String str, String str2) {
        j59 j59Var = null;
        sx5 sx5Var = this.c.contains(str) ? (sx5) this.b.get(str) : null;
        if (sx5Var != null) {
            sx5Var.a(str2);
            j59Var = j59.a;
        }
        if (j59Var == null) {
            this.a.a((RuntimeException) new IllegalArgumentException(defpackage.me0.c("Timer with id '", str, "' does not exist!")));
        }
    }
}
