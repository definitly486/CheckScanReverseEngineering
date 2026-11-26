package yads;

import defpackage.u96;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class j35 implements nb6 {
    public final jf6 a;
    public final List b = u96.k(new i35(gf6.FIRST_QUARTILE, 0.25f), new i35(gf6.MIDPOINT, 0.5f), new i35(gf6.THIRD_QUARTILE, 0.75f));

    public j35(jf6 jf6Var) {
        this.a = jf6Var;
    }

    @Override // yads.nb6
    public final void a(long j, long j2) {
        if (j != 0) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                i35 i35Var = (i35) it.next();
                if (i35Var.b * j <= j2) {
                    this.a.a.a(i35Var.a);
                    it.remove();
                }
            }
        }
    }
}
