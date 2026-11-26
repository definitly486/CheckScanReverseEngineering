package yads;

import defpackage.id9;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class os2 {
    public final yf2 a;
    public final bt0 b;
    public final or5 c;

    public os2(yf2 yf2Var, bt0 bt0Var, or5 or5Var) {
        this.a = yf2Var;
        this.b = bt0Var;
        this.c = or5Var;
    }

    public final ms2 a(n32 n32Var, p41 p41Var, gs2 gs2Var, ao2 ao2Var) {
        d26 d26Var;
        b76 b76Var = new b76(gs2Var.e());
        List listO = p41Var.o();
        y13 y13VarA = gs2Var.a().a().a();
        y13VarA.getClass();
        a23 a23VarA = (a23) y13VarA;
        if (listO != null && !listO.isEmpty()) {
            a23VarA = a23VarA.a(x13.a(listO));
        }
        gs2 gs2Var2 = new gs2(defpackage.cg.d(gs2Var.c(), "/", n32Var.a()), gs2Var.d(), b76Var, new bp2(new yo2(b76Var, gs2Var.a().a().b(), a23VarA, gs2Var.a().a().c())), ao2Var);
        List listS = p41Var.s();
        if (listS != null) {
            Iterator it = listS.iterator();
            while (it.hasNext()) {
                c76.a(b76Var, (uf2) it.next(), gs2Var2, ao2Var);
            }
        }
        List listI = p41Var.i();
        if (listI == null || listI.isEmpty()) {
            d26Var = null;
        } else {
            d26Var = new d26(gs2Var2, ao2Var, this.b);
            d26Var.a(listI);
        }
        return new ms2(gs2Var2, d26Var);
    }

    public static final Object a(os2 os2Var, ao2 ao2Var, String str) throws IOException {
        kr5 kr5VarA = os2Var.c.a(str, ao2Var);
        if (kr5VarA != null) {
            return kr5VarA.b();
        }
        return null;
    }

    public final ms2 a(db1 db1Var, ao2 ao2Var, vb5 vb5Var) {
        d26 d26Var = null;
        b76 b76Var = new b76(null);
        zc4 zc4Var = this.a.e;
        zc4Var.a.a(b76Var.g);
        zc4Var.a.b.add(b76Var.h);
        b76Var.c.add(zc4Var);
        id9 id9Var = new id9(this, ao2Var);
        a23 a23Var = new a23(g23.a);
        List list = db1Var.a;
        if (list != null && !list.isEmpty()) {
            a23Var = a23Var.a(x13.a(list));
        }
        gs2 gs2Var = new gs2("", vb5Var, b76Var, new bp2(new yo2(b76Var, id9Var, a23Var, new ns2(ao2Var))), ao2Var, null);
        List list2 = db1Var.g;
        if (list2 != null) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                c76.a(b76Var, (uf2) it.next(), gs2Var, ao2Var);
            }
        }
        List list3 = db1Var.f;
        if (list3 != null && !list3.isEmpty()) {
            d26Var = new d26(gs2Var, ao2Var, this.b);
            d26Var.a(list3);
        }
        return new ms2(gs2Var, d26Var);
    }
}
