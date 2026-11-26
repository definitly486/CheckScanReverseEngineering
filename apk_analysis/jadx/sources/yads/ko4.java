package yads;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class ko4 implements tz2 {
    public final hc4 a;

    public ko4(hc4 hc4Var) {
        this.a = hc4Var;
    }

    @Override // yads.tz2
    public final void a() {
        hc4 hc4Var = this.a;
        synchronized (hc4Var) {
            try {
                hc4Var.p.size();
                hc4Var.b();
                ArrayList arrayList = new ArrayList();
                Iterator it = hc4Var.p.iterator();
                while (it.hasNext()) {
                    a16 a16Var = (a16) it.next();
                    i66 i66VarA = hc4Var.a(a16Var);
                    if (i66VarA instanceof g66) {
                        it.remove();
                        hc4Var.a(a16Var, (g66) i66VarA);
                    } else if (i66VarA instanceof f66) {
                        f66 f66Var = (f66) i66VarA;
                        hc4Var.d.a(a16Var.d, f66Var);
                        arrayList.add(new lo4(a16Var, f66Var));
                    }
                }
                hc4Var.d.a(arrayList);
                hc4Var.a();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
