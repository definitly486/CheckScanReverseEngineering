package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class lp0 {
    public final t42 a;
    public final rp0 b;
    public final aa c;
    public final int d;
    public final hi0<x68<pz3>> e;
    public final hi0<x68<er6>> f;
    public final hi0<x68<en1>> g;
    public final ArrayList h;
    public final tq5<List<cs0>> i;

    public static final class a extends gh4 implements dm3<x68<pz3>, x68<er6>, x68<en1>, List<? extends cs0>> {
        public static final a f = new a(3);

        @Override // defpackage.dm3
        public final List<? extends cs0> invoke(x68<pz3> x68Var, x68<er6> x68Var2, x68<en1> x68Var3) {
            x68<pz3> x68Var4 = x68Var;
            x68<er6> x68Var5 = x68Var2;
            x68<en1> x68Var6 = x68Var3;
            x68Var4.getClass();
            x68Var5.getClass();
            x68Var6.getClass();
            List<pz3> list = x68Var4.a;
            List<er6> list2 = x68Var5.a;
            List<en1> list3 = x68Var6.a;
            ArrayList arrayList = new ArrayList();
            if (!list.isEmpty()) {
                arrayList.add(new wu7(list));
            }
            if (!list2.isEmpty()) {
                arrayList.add(new hv7("Промокоды и купоны"));
                if (list2.size() > 2) {
                    arrayList.addAll(list2.subList(0, 2));
                    arrayList.add(new av7(kv2.b(list2.size(), "Показать все (", ")")));
                } else {
                    arrayList.addAll(list2);
                }
            }
            List<en1> list4 = list3;
            if (!list4.isEmpty()) {
                arrayList.add(new hv7("Интернет-магазины"));
                arrayList.addAll(list4);
            }
            if (arrayList.isEmpty()) {
                List listI = u96.i(x68Var4, x68Var5, x68Var6);
                if ((listI instanceof Collection) && listI.isEmpty()) {
                    arrayList.add(new fv7(0));
                } else {
                    Iterator it = listI.iterator();
                    while (it.hasNext()) {
                        if (((x68) it.next()) instanceof x68.c) {
                        }
                    }
                    arrayList.add(new fv7(0));
                }
            }
            return arrayList;
        }
    }

    public lp0(t42 t42Var, rp0 rp0Var, aa aaVar, jf6 jf6Var) {
        this.a = t42Var;
        this.b = rp0Var;
        this.c = aaVar;
        this.d = jf6Var.O0();
        int i = 0;
        hi0<x68<pz3>> hi0VarI = hi0.i(new x68.c(i));
        this.e = hi0VarI;
        hi0<x68<er6>> hi0VarI2 = hi0.i(new x68.c(i));
        this.f = hi0VarI2;
        hi0<x68<en1>> hi0VarI3 = hi0.i(new x68.c(i));
        this.g = hi0VarI3;
        this.h = new ArrayList();
        tq5<List<cs0>> tq5VarC = tq5.c(new wr5[]{hi0VarI, hi0VarI2, hi0VarI3}, new rm3.b(new uo0(a.f)), gg3.b);
        tq5VarC.getClass();
        this.i = tq5VarC;
    }
}
