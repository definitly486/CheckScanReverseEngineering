package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class x51 extends gh4 implements nl3<b36<? extends List<? extends st6>, ? extends List<? extends Long>>, qq1> {
    public final /* synthetic */ d61 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x51(d61 d61Var) {
        super(1);
        this.f = d61Var;
    }

    @Override // defpackage.nl3
    public final qq1 invoke(b36<? extends List<? extends st6>, ? extends List<? extends Long>> b36Var) {
        b36<? extends List<? extends st6>, ? extends List<? extends Long>> b36Var2 = b36Var;
        zt6 zt6Var = this.f.b;
        b36Var2.getClass();
        A a = b36Var2.b;
        a.getClass();
        List list = (List) a;
        B b = b36Var2.c;
        b.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : (List) b) {
            long jLongValue = ((Number) obj).longValue();
            List list2 = list;
            ArrayList arrayList2 = new ArrayList(kn1.q(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList2.add(Long.valueOf(((st6) it.next()).e()));
            }
            if (!arrayList2.contains(Long.valueOf(jLongValue))) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList(kn1.q(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList3.add(zt6Var.b(((Number) it2.next()).longValue()));
        }
        List<st6> list3 = list;
        ArrayList arrayList4 = new ArrayList(kn1.q(list3, 10));
        for (st6 st6Var : list3) {
            arrayList4.add(zt6Var.g(new rt6(st6Var.e(), st6Var.k(), st6Var.a(), st6Var.c(), st6Var.d(), st6Var.j(), st6Var.i(), st6Var.f(), vt6.New)).c(zt6Var.h(new wt6(st6Var.e(), st6Var.h().c(), st6Var.h().b(), st6Var.h().a()))).c(zt6Var.f(new pt6(st6Var.e(), st6Var.b().b(), st6Var.b().a()))).c(zt6Var.e(new tt6(st6Var.e(), st6Var.g().c(), st6Var.g().b(), st6Var.g().a()))));
        }
        ArrayList arrayList5 = new ArrayList(arrayList4);
        arrayList5.addAll(arrayList3);
        return new up1(arrayList5);
    }
}
