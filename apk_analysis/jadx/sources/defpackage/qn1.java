package defpackage;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class qn1 extends nn1 {
    public static pn1 K(Iterable iterable) {
        iterable.getClass();
        return new pn1(iterable);
    }

    public static ArrayList L(int i, ArrayList arrayList) {
        bt7.c(i, i);
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList((size / i) + (size % i == 0 ? 0 : 1));
        int i2 = 0;
        while (i2 >= 0 && i2 < size) {
            int i3 = size - i2;
            if (i <= i3) {
                i3 = i;
            }
            ArrayList arrayList3 = new ArrayList(i3);
            for (int i4 = 0; i4 < i3; i4++) {
                arrayList3.add(arrayList.get(i4 + i2));
            }
            arrayList2.add(arrayList3);
            i2 += i;
        }
        return arrayList2;
    }

    public static <T> boolean M(Iterable<? extends T> iterable, T t) {
        int iIndexOf;
        iterable.getClass();
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(t);
        }
        if (iterable instanceof List) {
            iIndexOf = ((List) iterable).indexOf(t);
        } else {
            int i = 0;
            for (T t2 : iterable) {
                if (i < 0) {
                    u96.o();
                    throw null;
                }
                if (aa4.e(t, t2)) {
                    iIndexOf = i;
                } else {
                    i++;
                }
            }
            iIndexOf = -1;
        }
        return iIndexOf >= 0;
    }

    public static <T> List<T> N(Iterable<? extends T> iterable) {
        iterable.getClass();
        return t0(x0(iterable));
    }

    public static <T> List<T> O(Iterable<? extends T> iterable, int i) {
        ArrayList arrayList;
        Object objB0;
        iterable.getClass();
        if (i < 0) {
            c9.f(kv2.b(i, "Requested element count ", " is less than zero."));
            return null;
        }
        if (i == 0) {
            return t0(iterable);
        }
        if (iterable instanceof Collection) {
            int size = ((Collection) iterable).size() - i;
            if (size <= 0) {
                return kx2.b;
            }
            if (size == 1) {
                if (iterable instanceof List) {
                    objB0 = b0((List) iterable);
                } else {
                    Iterator<? extends T> it = iterable.iterator();
                    if (!it.hasNext()) {
                        ag.g("Collection is empty.");
                        return null;
                    }
                    T next = it.next();
                    while (it.hasNext()) {
                        next = it.next();
                    }
                    objB0 = next;
                }
                return u96.h(objB0);
            }
            arrayList = new ArrayList(size);
            if (iterable instanceof List) {
                if (iterable instanceof RandomAccess) {
                    List list = (List) iterable;
                    int size2 = list.size();
                    while (i < size2) {
                        arrayList.add(list.get(i));
                        i++;
                    }
                } else {
                    ListIterator listIterator = ((List) iterable).listIterator(i);
                    while (listIterator.hasNext()) {
                        arrayList.add(listIterator.next());
                    }
                }
                return arrayList;
            }
        } else {
            arrayList = new ArrayList();
        }
        int i2 = 0;
        for (T t : iterable) {
            if (i2 >= i) {
                arrayList.add(t);
            } else {
                i2++;
            }
        }
        return u96.l(arrayList);
    }

    public static List P(List list) {
        list.getClass();
        List list2 = list;
        int size = list.size() - 1;
        if (size < 0) {
            size = 0;
        }
        return o0(list2, size);
    }

    public static Object Q(final int i, Collection collection) {
        boolean z = collection instanceof List;
        if (z) {
            return ((List) collection).get(i);
        }
        nl3 nl3Var = new nl3() { // from class: on1
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                ((Integer) obj).intValue();
                throw new IndexOutOfBoundsException(qz0.d("Collection doesn't contain element at index ", i, '.'));
            }
        };
        if (z) {
            List list = (List) collection;
            if (i >= 0 && i < list.size()) {
                return list.get(i);
            }
            nl3Var.invoke(Integer.valueOf(i));
            throw null;
        }
        if (i < 0) {
            nl3Var.invoke(Integer.valueOf(i));
            throw null;
        }
        int i2 = 0;
        for (Object obj : collection) {
            int i3 = i2 + 1;
            if (i == i2) {
                return obj;
            }
            i2 = i3;
        }
        nl3Var.invoke(Integer.valueOf(i));
        throw null;
    }

    public static ArrayList R(Iterable iterable) {
        iterable.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static <T> T S(Iterable<? extends T> iterable) {
        iterable.getClass();
        if (iterable instanceof List) {
            return (T) T((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        ag.g("Collection is empty.");
        return null;
    }

    public static <T> T T(List<? extends T> list) {
        list.getClass();
        if (!list.isEmpty()) {
            return list.get(0);
        }
        ag.g("List is empty.");
        return null;
    }

    public static <T> T U(Iterable<? extends T> iterable) {
        iterable.getClass();
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return (T) list.get(0);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static <T> T V(List<? extends T> list) {
        list.getClass();
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static Object W(int i, List list) {
        list.getClass();
        if (i < 0 || i >= list.size()) {
            return null;
        }
        return list.get(i);
    }

    public static LinkedHashSet X(Iterable iterable, Iterable iterable2) {
        iterable.getClass();
        iterable2.getClass();
        Collection collectionV = nn1.v(iterable2);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : iterable) {
            if (collectionV.contains(obj)) {
                linkedHashSet.add(obj);
            }
        }
        return linkedHashSet;
    }

    public static final void Y(Iterable iterable, StringBuilder sb, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, nl3 nl3Var) {
        iterable.getClass();
        charSequence2.getClass();
        sb.append(charSequence2);
        int i2 = 0;
        for (Object obj : iterable) {
            i2++;
            if (i2 > 1) {
                sb.append(charSequence);
            }
            if (i >= 0 && i2 > i) {
                break;
            } else {
                eg9.a(sb, obj, nl3Var);
            }
        }
        if (i >= 0 && i2 > i) {
            sb.append(charSequence4);
        }
        sb.append(charSequence3);
    }

    public static /* synthetic */ void Z(List list, StringBuilder sb, String str, nl3 nl3Var, int i) {
        CharSequence charSequence = (i & 4) != 0 ? "" : "Errors: ";
        if ((i & 64) != 0) {
            nl3Var = null;
        }
        Y(list, sb, str, charSequence, "", -1, "...", nl3Var);
    }

    public static String a0(Iterable iterable, CharSequence charSequence, String str, String str2, int i, nl3 nl3Var, int i2) {
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence2 = charSequence;
        String str3 = (i2 & 2) != 0 ? "" : str;
        String str4 = (i2 & 4) != 0 ? "" : str2;
        if ((i2 & 8) != 0) {
            i = -1;
        }
        int i3 = i;
        if ((i2 & 32) != 0) {
            nl3Var = null;
        }
        iterable.getClass();
        charSequence2.getClass();
        str3.getClass();
        StringBuilder sb = new StringBuilder();
        Y(iterable, sb, charSequence2, str3, str4, i3, "...", nl3Var);
        return sb.toString();
    }

    public static <T> T b0(List<? extends T> list) {
        list.getClass();
        if (!list.isEmpty()) {
            return (T) xy.d(1, list);
        }
        ag.g("List is empty.");
        return null;
    }

    public static <T> T c0(List<? extends T> list) {
        list.getClass();
        if (list.isEmpty()) {
            return null;
        }
        return (T) xy.d(1, list);
    }

    public static Comparable d0(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Comparable comparable = (Comparable) it.next();
        while (it.hasNext()) {
            Comparable comparable2 = (Comparable) it.next();
            if (comparable.compareTo(comparable2) < 0) {
                comparable = comparable2;
            }
        }
        return comparable;
    }

    public static Comparable e0(Collection collection) {
        collection.getClass();
        Iterator it = collection.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Comparable comparable = (Comparable) it.next();
        while (it.hasNext()) {
            Comparable comparable2 = (Comparable) it.next();
            if (comparable.compareTo(comparable2) > 0) {
                comparable = comparable2;
            }
        }
        return comparable;
    }

    public static ArrayList f0(Iterable iterable, Object obj) {
        iterable.getClass();
        ArrayList arrayList = new ArrayList(kn1.q(iterable, 10));
        boolean z = false;
        for (Object obj2 : iterable) {
            boolean z2 = true;
            if (!z && aa4.e(obj2, obj)) {
                z = true;
                z2 = false;
            }
            if (z2) {
                arrayList.add(obj2);
            }
        }
        return arrayList;
    }

    public static List g0(Iterable iterable, List list) {
        list.getClass();
        iterable.getClass();
        Collection collectionV = nn1.v(iterable);
        if (collectionV.isEmpty()) {
            return t0(list);
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!collectionV.contains(obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static ArrayList h0(Iterable iterable, Collection collection) {
        collection.getClass();
        iterable.getClass();
        if (!(iterable instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            nn1.s(iterable, arrayList);
            return arrayList;
        }
        Collection collection2 = (Collection) iterable;
        ArrayList arrayList2 = new ArrayList(collection2.size() + collection.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    public static ArrayList i0(Object obj, Collection collection) {
        collection.getClass();
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(obj);
        return arrayList;
    }

    public static <T> List<T> j0(Iterable<? extends T> iterable) {
        iterable.getClass();
        if ((iterable instanceof Collection) && ((Collection) iterable).size() <= 1) {
            return t0(iterable);
        }
        List<T> listW0 = w0(iterable);
        Collections.reverse(listW0);
        return listW0;
    }

    public static <T> T k0(List<? extends T> list) {
        list.getClass();
        int size = list.size();
        if (size == 0) {
            ag.g("List is empty.");
            return null;
        }
        if (size == 1) {
            return list.get(0);
        }
        fg.c("List has more than one element.");
        return null;
    }

    public static List l0(y74 y74Var, List list) {
        list.getClass();
        y74Var.getClass();
        return y74Var.isEmpty() ? kx2.b : t0(list.subList(y74Var.b, y74Var.c + 1));
    }

    public static <T extends Comparable<? super T>> List<T> m0(Iterable<? extends T> iterable) {
        iterable.getClass();
        if (!(iterable instanceof Collection)) {
            List<T> listW0 = w0(iterable);
            nn1.I(listW0);
            return listW0;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return t0(iterable);
        }
        Object[] array = collection.toArray(new Comparable[0]);
        Comparable[] comparableArr = (Comparable[]) array;
        comparableArr.getClass();
        if (comparableArr.length > 1) {
            Arrays.sort(comparableArr);
        }
        return aq5.b(array);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> List<T> n0(Iterable<? extends T> iterable, Comparator<? super T> comparator) {
        iterable.getClass();
        comparator.getClass();
        if (!(iterable instanceof Collection)) {
            List<T> listW0 = w0(iterable);
            nn1.J(comparator, listW0);
            return listW0;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return t0(iterable);
        }
        Object[] array = collection.toArray(new Object[0]);
        array.getClass();
        if (array.length > 1) {
            Arrays.sort(array, comparator);
        }
        List<T> listAsList = Arrays.asList(array);
        listAsList.getClass();
        return listAsList;
    }

    public static <T> List<T> o0(Iterable<? extends T> iterable, int i) {
        iterable.getClass();
        if (i < 0) {
            c9.f(kv2.b(i, "Requested element count ", " is less than zero."));
            return null;
        }
        if (i == 0) {
            return kx2.b;
        }
        if (iterable instanceof Collection) {
            if (i >= ((Collection) iterable).size()) {
                return t0(iterable);
            }
            if (i == 1) {
                return u96.h(S(iterable));
            }
        }
        ArrayList arrayList = new ArrayList(i);
        Iterator<? extends T> it = iterable.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            arrayList.add(it.next());
            i2++;
            if (i2 == i) {
                break;
            }
        }
        return u96.l(arrayList);
    }

    public static boolean[] p0(List list) {
        boolean[] zArr = new boolean[list.size()];
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            zArr[i] = ((Boolean) it.next()).booleanValue();
            i++;
        }
        return zArr;
    }

    public static final void q0(Iterable iterable, AbstractCollection abstractCollection) {
        iterable.getClass();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }

    public static float[] r0(List list) {
        float[] fArr = new float[list.size()];
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            fArr[i] = ((Number) it.next()).floatValue();
            i++;
        }
        return fArr;
    }

    public static int[] s0(Collection<Integer> collection) {
        collection.getClass();
        int[] iArr = new int[collection.size()];
        Iterator<Integer> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = it.next().intValue();
            i++;
        }
        return iArr;
    }

    public static <T> List<T> t0(Iterable<? extends T> iterable) {
        iterable.getClass();
        if (!(iterable instanceof Collection)) {
            return u96.l(w0(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return kx2.b;
        }
        if (size != 1) {
            return new ArrayList(collection);
        }
        return u96.h(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
    }

    public static long[] u0(Collection<Long> collection) {
        collection.getClass();
        long[] jArr = new long[collection.size()];
        Iterator<Long> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            jArr[i] = it.next().longValue();
            i++;
        }
        return jArr;
    }

    public static ArrayList v0(Collection collection) {
        collection.getClass();
        return new ArrayList(collection);
    }

    public static final <T> List<T> w0(Iterable<? extends T> iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return new ArrayList((Collection) iterable);
        }
        ArrayList arrayList = new ArrayList();
        q0(iterable, arrayList);
        return arrayList;
    }

    public static <T> Set<T> x0(Iterable<? extends T> iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return new LinkedHashSet((Collection) iterable);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        q0(iterable, linkedHashSet);
        return linkedHashSet;
    }

    public static <T> Set<T> y0(Iterable<? extends T> iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size != 0) {
                if (size == 1) {
                    return l1.f(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet(m05.b(collection.size()));
                q0(iterable, linkedHashSet);
                return linkedHashSet;
            }
        } else {
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            q0(iterable, linkedHashSet2);
            int size2 = linkedHashSet2.size();
            if (size2 != 0) {
                return size2 != 1 ? linkedHashSet2 : l1.f(linkedHashSet2.iterator().next());
            }
        }
        return ox2.b;
    }

    public static ArrayList z0(Iterable iterable, Iterable iterable2) {
        iterable.getClass();
        iterable2.getClass();
        Iterator it = iterable.iterator();
        Iterator it2 = iterable2.iterator();
        ArrayList arrayList = new ArrayList(Math.min(kn1.q(iterable, 10), kn1.q(iterable2, 10)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(new b36(it.next(), it2.next()));
        }
        return arrayList;
    }
}
