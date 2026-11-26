package yads;

import defpackage.j59;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class kh4 implements fm4 {
    public final sd4 a;
    public dh4 b;

    public kh4(sd4 sd4Var) {
        this.a = sd4Var;
    }

    @Override // yads.fm4
    public final void a(dh4 dh4Var, g00 g00Var) {
        this.b = dh4Var;
        bb bbVar = new bb(dh4Var, g00Var, this.a.f);
        Iterator it = this.a.b.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ak akVar = (ak) it.next();
            bk bkVarA = dh4Var.a(akVar);
            bk bkVar = bkVarA != null ? bkVarA : null;
            if (bkVar != null) {
                bkVar.c(akVar.c);
                bkVar.a(akVar, bbVar);
            }
        }
        e55 e55Var = dh4Var.d.e;
        defpackage.ze4 ze4Var = qh4.g[4];
        List list = (List) e55Var.a.get();
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                bk bkVar2 = (bk) dh4Var.e.get(((yb0) it2.next()).a);
                if (bkVar2 == null) {
                    bkVar2 = null;
                }
                if (bkVar2 != null) {
                    bkVar2.c(j59.a);
                }
            }
        }
    }

    @Override // yads.fm4
    public final void a(dh4 dh4Var) {
        dh4Var.a();
    }

    @Override // yads.fm4
    public final void a() {
        dh4 dh4Var = this.b;
        if (dh4Var != null) {
            for (ak akVar : this.a.b) {
                bk bkVarA = dh4Var.a(akVar);
                if (bkVarA instanceof dn0) {
                    ((dn0) bkVarA).b(akVar.c);
                }
            }
        }
    }
}
