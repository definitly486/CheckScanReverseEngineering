package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes5.dex */
public final class xs7 {
    public static final String[] a = {"input", "keygen", "object", "select", "textarea"};

    public static final a46 a(List list) {
        kx2 kx2Var = kx2.b;
        a46 a46Var = new a46(kx2Var, kx2Var);
        if (!list.isEmpty()) {
            ListIterator listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                a46Var = b((a46) listIterator.previous(), a46Var);
            }
        }
        return c(a46Var, kx2Var);
    }

    public static final a46 b(a46 a46Var, a46 a46Var2) {
        boolean zIsEmpty = a46Var.b.isEmpty();
        List<y36<Output>> list = a46Var.a;
        if (zIsEmpty) {
            return new a46(qn1.h0(a46Var2.a, list), a46Var2.b);
        }
        Iterable iterable = a46Var.b;
        ArrayList arrayList = new ArrayList(kn1.q(iterable, 10));
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(b((a46) it.next(), a46Var2));
        }
        return new a46(list, arrayList);
    }

    public static final a46 c(a46 a46Var, List list) {
        a46 a46Var2;
        List listH;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(list);
        Iterator it = a46Var.a.iterator();
        ArrayList arrayList3 = null;
        while (it.hasNext()) {
            y36 y36Var = (y36) it.next();
            if (y36Var instanceof hq5) {
                if (arrayList3 != null) {
                    arrayList3.addAll(((hq5) y36Var).a);
                } else {
                    arrayList3 = new ArrayList(((hq5) y36Var).a);
                }
            } else if (y36Var instanceof c59) {
                arrayList2.add(y36Var);
            } else {
                if (arrayList3 != null) {
                    arrayList.add(new hq5(arrayList3));
                    arrayList3 = null;
                }
                arrayList.add(y36Var);
            }
        }
        Iterable iterable = a46Var.b;
        ArrayList arrayList4 = new ArrayList();
        Iterator it2 = iterable.iterator();
        while (it2.hasNext()) {
            a46 a46VarC = c((a46) it2.next(), arrayList2);
            if (a46VarC.a.isEmpty()) {
                Collection collectionH = a46VarC.b;
                if (collectionH.isEmpty()) {
                    collectionH = u96.h(a46VarC);
                }
                listH = (List) collectionH;
            } else {
                listH = u96.h(a46VarC);
            }
            nn1.s(listH, arrayList4);
        }
        boolean zIsEmpty = arrayList4.isEmpty();
        List listH2 = arrayList4;
        if (zIsEmpty) {
            listH2 = u96.h(new a46(arrayList2, kx2.b));
        }
        List list2 = listH2;
        if (arrayList3 == null) {
            return new a46(arrayList, list2);
        }
        List<a46> list3 = list2;
        if (!(list3 instanceof Collection) || !list3.isEmpty()) {
            Iterator it3 = list3.iterator();
            while (it3.hasNext()) {
                y36 y36Var2 = (y36) qn1.V(((a46) it3.next()).a);
                if (y36Var2 != null && (y36Var2 instanceof hq5)) {
                    ArrayList arrayList5 = new ArrayList(kn1.q(list3, 10));
                    for (a46 a46Var3 : list3) {
                        List<y36<Output>> list4 = a46Var3.a;
                        List<a46<Output>> list5 = a46Var3.b;
                        y36 y36Var3 = (y36) qn1.V(list4);
                        if (y36Var3 instanceof hq5) {
                            a46Var2 = new a46(qn1.h0(qn1.O(list4, 1), u96.h(new hq5(qn1.h0(((hq5) y36Var3).a, arrayList3)))), list5);
                        } else if (y36Var3 == null) {
                            a46Var2 = new a46(u96.h(new hq5(arrayList3)), list5);
                        } else {
                            a46Var2 = new a46(qn1.h0(list4, u96.h(new hq5(arrayList3))), list5);
                        }
                        arrayList5.add(a46Var2);
                    }
                    return new a46(arrayList, arrayList5);
                }
            }
        }
        arrayList.add(new hq5(arrayList3));
        return new a46(arrayList, list2);
    }
}
