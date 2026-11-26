package defpackage;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes5.dex */
public class nn1 extends mn1 {
    public static void A(Iterable iterable, Collection collection) {
        collection.getClass();
        iterable.getClass();
        collection.removeAll(v(iterable));
    }

    public static void B(Collection collection, zo7 zo7Var) {
        collection.getClass();
        zo7Var.getClass();
        List listQ = jp7.q(zo7Var);
        if (listQ.isEmpty()) {
            return;
        }
        collection.removeAll(listQ);
    }

    public static void C(Collection collection, Object[] objArr) {
        collection.getClass();
        objArr.getClass();
        if (objArr.length == 0) {
            return;
        }
        List listAsList = Arrays.asList(objArr);
        listAsList.getClass();
        collection.removeAll(listAsList);
    }

    public static Object D(List list) {
        list.getClass();
        if (!list.isEmpty()) {
            return list.remove(0);
        }
        ag.g("List is empty.");
        return null;
    }

    public static Object E(List list) {
        list.getClass();
        if (!list.isEmpty()) {
            return list.remove(list.size() - 1);
        }
        ag.g("List is empty.");
        return null;
    }

    public static Object F(AbstractList abstractList) {
        if (abstractList.isEmpty()) {
            return null;
        }
        return abstractList.remove(abstractList.size() - 1);
    }

    public static final int G(int i, List list) {
        if (i >= 0 && i <= list.size() - 1) {
            return (list.size() - 1) - i;
        }
        StringBuilder sbC = n7.c(i, "Element index ", " must be in range [");
        sbC.append(new y74(0, list.size() - 1, 1));
        sbC.append("].");
        throw new IndexOutOfBoundsException(sbC.toString());
    }

    public static final int H(int i, List list) {
        if (i >= 0 && i <= list.size()) {
            return list.size() - i;
        }
        StringBuilder sbC = n7.c(i, "Position index ", " must be in range [");
        sbC.append(new y74(0, list.size(), 1));
        sbC.append("].");
        throw new IndexOutOfBoundsException(sbC.toString());
    }

    public static void I(List list) {
        if (list.size() > 1) {
            Collections.sort(list);
        }
    }

    public static void J(Comparator comparator, List list) {
        list.getClass();
        comparator.getClass();
        if (list.size() > 1) {
            Collections.sort(list, comparator);
        }
    }

    public static void s(Iterable iterable, Collection collection) {
        collection.getClass();
        iterable.getClass();
        if (iterable instanceof Collection) {
            collection.addAll((Collection) iterable);
            return;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            collection.add(it.next());
        }
    }

    public static void t(Collection collection, zo7 zo7Var) {
        collection.getClass();
        zo7Var.getClass();
        Iterator it = zo7Var.iterator();
        while (it.hasNext()) {
            collection.add(it.next());
        }
    }

    public static void u(Collection collection, Object[] objArr) {
        collection.getClass();
        objArr.getClass();
        List listAsList = Arrays.asList(objArr);
        listAsList.getClass();
        collection.addAll(listAsList);
    }

    public static final Collection v(Iterable iterable) {
        iterable.getClass();
        return iterable instanceof Collection ? (Collection) iterable : qn1.t0(iterable);
    }

    public static final boolean w(Iterable iterable, nl3 nl3Var, boolean z) {
        Iterator it = iterable.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            if (((Boolean) nl3Var.invoke(it.next())).booleanValue() == z) {
                it.remove();
                z2 = true;
            }
        }
        return z2;
    }

    public static ArrayList x(Iterable iterable, Class cls) {
        iterable.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (cls.isInstance(obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static void y(nl3 nl3Var, List list) {
        int size;
        list.getClass();
        nl3Var.getClass();
        if (!(list instanceof RandomAccess)) {
            if ((list instanceof re4) && !(list instanceof se4)) {
                v39.g(list, "kotlin.collections.MutableIterable");
                throw null;
            }
            try {
                w(list, nl3Var, true);
                return;
            } catch (ClassCastException e) {
                aa4.h(e, v39.class.getName());
                throw e;
            }
        }
        int size2 = list.size() - 1;
        int i = 0;
        if (size2 >= 0) {
            int i2 = 0;
            while (true) {
                Object obj = list.get(i);
                if (!((Boolean) nl3Var.invoke(obj)).booleanValue()) {
                    if (i2 != i) {
                        list.set(i2, obj);
                    }
                    i2++;
                }
                if (i == size2) {
                    break;
                } else {
                    i++;
                }
            }
            i = i2;
        }
        if (i >= list.size() || i > (size = list.size() - 1)) {
            return;
        }
        while (true) {
            list.remove(size);
            if (size == i) {
                return;
            } else {
                size--;
            }
        }
    }

    public static void z(Iterable iterable, nl3 nl3Var) {
        iterable.getClass();
        nl3Var.getClass();
        w(iterable, nl3Var, true);
    }
}
