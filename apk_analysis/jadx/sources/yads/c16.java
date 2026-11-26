package yads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class c16 implements io4 {
    public final ze3 a;
    public final bf3 b;
    public boolean c;
    public int d;
    public boolean e;
    public boolean f;

    public c16(ze3 ze3Var, bf3 bf3Var) {
        this.a = ze3Var;
        this.b = bf3Var;
    }

    public final Map a(g66 g66Var) {
        defpackage.uz4 uz4Var = new defpackage.uz4();
        uz4Var.put("failure_tracked", Boolean.valueOf(this.e));
        if (!g66Var.a.isEmpty()) {
            List list = g66Var.a;
            ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((h66) it.next()).b);
            }
            uz4Var.put("warnings", arrayList);
        }
        return uz4Var.b();
    }

    @Override // yads.io4
    public final void invalidate() {
        this.c = false;
        this.d = 0;
        this.e = false;
        this.f = false;
    }

    @Override // yads.io4
    public final void a(dk5 dk5Var, g66 g66Var) {
        if (this.c) {
            return;
        }
        this.c = true;
        Map mapA = a(g66Var);
        ze3 ze3Var = this.a;
        e75 e75Var = this.b.b;
        h75 h75VarA = ze3Var.a();
        h75VarA.a.putAll(mapA);
        ze3Var.a(e75Var, h75VarA);
    }

    @Override // yads.io4
    public final void a(dk5 dk5Var, f66 f66Var) {
        int i = this.d + 1;
        this.d = i;
        if (i == 20) {
            this.e = true;
            ze3 ze3Var = this.a;
            ze3Var.a(this.b.c, ze3Var.a(f66Var));
        }
    }

    @Override // yads.io4
    public final void a(List list) {
        lo4 lo4Var = (lo4) defpackage.qn1.V(list);
        if (lo4Var == null) {
            return;
        }
        ze3 ze3Var = this.a;
        ze3Var.a(this.b.d, ze3Var.a(lo4Var.b));
    }

    @Override // yads.io4
    public final void a(dk5 dk5Var, List list, g66 g66Var) {
        if (this.f) {
            return;
        }
        this.f = true;
        Map mapA = a(g66Var);
        ze3 ze3Var = this.a;
        e75 e75Var = this.b.a;
        h75 h75VarA = ze3Var.a();
        h75VarA.a.putAll(mapA);
        ze3Var.a(e75Var, h75VarA);
    }

    @Override // yads.io4
    public final void a(d9 d9Var) {
        this.a.a = d9Var;
    }
}
