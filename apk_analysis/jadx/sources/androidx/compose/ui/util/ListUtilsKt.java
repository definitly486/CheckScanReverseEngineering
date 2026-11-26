package androidx.compose.ui.util;

import androidx.collection.MutableScatterSet;
import defpackage.a07;
import defpackage.bm3;
import defpackage.hm;
import defpackage.j59;
import defpackage.kx2;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.qn1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
public final class ListUtilsKt {
    /* JADX WARN: Multi-variable type inference failed */
    private static final <T> void appendElement(Appendable appendable, T t, nl3<? super T, ? extends CharSequence> nl3Var) throws IOException {
        if (nl3Var != null) {
            appendable.append(nl3Var.invoke(t));
            return;
        }
        if (t == 0 ? true : t instanceof CharSequence) {
            appendable.append((CharSequence) t);
        } else if (t instanceof Character) {
            appendable.append(((Character) t).charValue());
        } else {
            appendable.append(t.toString());
        }
    }

    public static final <T> boolean fastAll(List<? extends T> list, nl3<? super T, Boolean> nl3Var) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!nl3Var.invoke(list.get(i)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static final <T> boolean fastAny(List<? extends T> list, nl3<? super T, Boolean> nl3Var) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (nl3Var.invoke(list.get(i)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public static final <T, K> List<T> fastDistinctBy(List<? extends T> list, nl3<? super T, ? extends K> nl3Var) {
        MutableScatterSet mutableScatterSet = new MutableScatterSet(list.size());
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            T t = list.get(i);
            if (mutableScatterSet.add(nl3Var.invoke(t))) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static final <T> List<T> fastFilter(List<? extends T> list, nl3<? super T, Boolean> nl3Var) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            T t = list.get(i);
            if (nl3Var.invoke(t).booleanValue()) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static final <T> List<T> fastFilterNotNull(List<? extends T> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            T t = list.get(i);
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static final <T, R> List<R> fastFilteredMap(List<? extends T> list, nl3<? super T, Boolean> nl3Var, nl3<? super T, ? extends R> nl3Var2) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            T t = list.get(i);
            if (nl3Var.invoke(t).booleanValue()) {
                arrayList.add(nl3Var2.invoke(t));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [T, java.lang.Object] */
    public static final <T> T fastFirst(List<? extends T> list, nl3<? super T, Boolean> nl3Var) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            T t = list.get(i);
            if (nl3Var.invoke(t).booleanValue()) {
                return t;
            }
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [T, java.lang.Object] */
    public static final <T> T fastFirstOrNull(List<? extends T> list, nl3<? super T, Boolean> nl3Var) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            T t = list.get(i);
            if (nl3Var.invoke(t).booleanValue()) {
                return t;
            }
        }
        return null;
    }

    public static final <T, R> List<R> fastFlatMap(List<? extends T> list, nl3<? super T, ? extends Iterable<? extends R>> nl3Var) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            nn1.s(nl3Var.invoke(list.get(i)), arrayList);
        }
        return arrayList;
    }

    public static final <T, R> R fastFold(List<? extends T> list, R r, bm3<? super R, ? super T, ? extends R> bm3Var) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            r = bm3Var.invoke(r, list.get(i));
        }
        return r;
    }

    public static final <T> void fastForEach(List<? extends T> list, nl3<? super T, j59> nl3Var) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            nl3Var.invoke(list.get(i));
        }
    }

    public static final <T> void fastForEachIndexed(List<? extends T> list, bm3<? super Integer, ? super T, j59> bm3Var) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            bm3Var.invoke(Integer.valueOf(i), list.get(i));
        }
    }

    public static final <T> void fastForEachReversed(List<? extends T> list, nl3<? super T, j59> nl3Var) {
        int size = list.size() - 1;
        if (size < 0) {
            return;
        }
        while (true) {
            int i = size - 1;
            nl3Var.invoke(list.get(size));
            if (i < 0) {
                return;
            } else {
                size = i;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T, A extends Appendable> A fastJoinTo(List<? extends T> list, A a, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, nl3<? super T, ? extends CharSequence> nl3Var) throws IOException {
        a.append(charSequence2);
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            T t = list.get(i3);
            i2++;
            if (i2 > 1) {
                a.append(charSequence);
            }
            if (i >= 0 && i2 > i) {
                break;
            }
            appendElement(a, t, nl3Var);
        }
        if (i >= 0 && i2 > i) {
            a.append(charSequence4);
        }
        a.append(charSequence3);
        return a;
    }

    public static final <T> String fastJoinToString(List<? extends T> list, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, nl3<? super T, ? extends CharSequence> nl3Var) {
        return ((StringBuilder) fastJoinTo(list, new StringBuilder(), charSequence, charSequence2, charSequence3, i, charSequence4, nl3Var)).toString();
    }

    public static /* synthetic */ String fastJoinToString$default(List list, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, nl3 nl3Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        if ((i2 & 2) != 0) {
            charSequence2 = "";
        }
        if ((i2 & 4) != 0) {
            charSequence3 = "";
        }
        if ((i2 & 8) != 0) {
            i = -1;
        }
        if ((i2 & 16) != 0) {
            charSequence4 = "...";
        }
        if ((i2 & 32) != 0) {
            nl3Var = null;
        }
        CharSequence charSequence5 = charSequence4;
        nl3 nl3Var2 = nl3Var;
        return fastJoinToString(list, charSequence, charSequence2, charSequence3, i, charSequence5, nl3Var2);
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
    public static final <T> T fastLastOrNull(List<? extends T> list, nl3<? super T, Boolean> nl3Var) {
        int size = list.size() - 1;
        if (size < 0) {
            return null;
        }
        while (true) {
            int i = size - 1;
            T t = list.get(size);
            if (nl3Var.invoke(t).booleanValue()) {
                return t;
            }
            if (i < 0) {
                return null;
            }
            size = i;
        }
    }

    public static final <T, R> List<R> fastMap(List<? extends T> list, nl3<? super T, ? extends R> nl3Var) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(nl3Var.invoke(list.get(i)));
        }
        return arrayList;
    }

    public static final <T, R> List<R> fastMapIndexed(List<? extends T> list, bm3<? super Integer, ? super T, ? extends R> bm3Var) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(bm3Var.invoke(Integer.valueOf(i), list.get(i)));
        }
        return arrayList;
    }

    public static final <T, R> List<R> fastMapIndexedNotNull(List<? extends T> list, bm3<? super Integer, ? super T, ? extends R> bm3Var) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            R rInvoke = bm3Var.invoke(Integer.valueOf(i), list.get(i));
            if (rInvoke != null) {
                arrayList.add(rInvoke);
            }
        }
        return arrayList;
    }

    public static final <T, R> List<R> fastMapNotNull(List<? extends T> list, nl3<? super T, ? extends R> nl3Var) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            R rInvoke = nl3Var.invoke(list.get(i));
            if (rInvoke != null) {
                arrayList.add(rInvoke);
            }
        }
        return arrayList;
    }

    public static final <T, R, C extends Collection<? super R>> C fastMapTo(List<? extends T> list, C c, nl3<? super T, ? extends R> nl3Var) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            c.add(nl3Var.invoke(list.get(i)));
        }
        return c;
    }

    public static final <T, R extends Comparable<? super R>> T fastMaxBy(List<? extends T> list, nl3<? super T, ? extends R> nl3Var) {
        if (list.isEmpty()) {
            return null;
        }
        T t = list.get(0);
        R rInvoke = nl3Var.invoke(t);
        int i = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                T t2 = list.get(i);
                R rInvoke2 = nl3Var.invoke(t2);
                if (rInvoke.compareTo(rInvoke2) < 0) {
                    t = t2;
                    rInvoke = rInvoke2;
                }
                if (i == size) {
                    break;
                }
                i++;
            }
        }
        return (T) t;
    }

    public static final <T, R extends Comparable<? super R>> R fastMaxOfOrDefault(List<? extends T> list, R r, nl3<? super T, ? extends R> nl3Var) {
        if (list.isEmpty()) {
            return r;
        }
        R rInvoke = nl3Var.invoke(list.get(0));
        int i = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                R rInvoke2 = nl3Var.invoke(list.get(i));
                if (rInvoke2.compareTo(rInvoke) > 0) {
                    rInvoke = rInvoke2;
                }
                if (i == size) {
                    break;
                }
                i++;
            }
        }
        return rInvoke;
    }

    public static final <T, R extends Comparable<? super R>> R fastMaxOfOrNull(List<? extends T> list, nl3<? super T, ? extends R> nl3Var) {
        if (list.isEmpty()) {
            return null;
        }
        R rInvoke = nl3Var.invoke(list.get(0));
        int i = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                R rInvoke2 = nl3Var.invoke(list.get(i));
                if (rInvoke2.compareTo(rInvoke) > 0) {
                    rInvoke = rInvoke2;
                }
                if (i == size) {
                    break;
                }
                i++;
            }
        }
        return rInvoke;
    }

    public static final <T, R extends Comparable<? super R>> T fastMinByOrNull(List<? extends T> list, nl3<? super T, ? extends R> nl3Var) {
        if (list.isEmpty()) {
            return null;
        }
        T t = list.get(0);
        R rInvoke = nl3Var.invoke(t);
        int i = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                T t2 = list.get(i);
                R rInvoke2 = nl3Var.invoke(t2);
                if (rInvoke.compareTo(rInvoke2) > 0) {
                    t = t2;
                    rInvoke = rInvoke2;
                }
                if (i == size) {
                    break;
                }
                i++;
            }
        }
        return (T) t;
    }

    public static final <S, T extends S> S fastReduce(List<? extends T> list, bm3<? super S, ? super T, ? extends S> bm3Var) {
        if (list.isEmpty()) {
            throwUnsupportedOperationException("Empty collection can't be reduced.");
        }
        S sInvoke = (Object) qn1.T(list);
        int i = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                sInvoke = bm3Var.invoke(sInvoke, list.get(i));
                if (i == size) {
                    break;
                }
                i++;
            }
        }
        return sInvoke;
    }

    public static final <T> int fastSumBy(List<? extends T> list, nl3<? super T, Integer> nl3Var) {
        int size = list.size();
        int iIntValue = 0;
        for (int i = 0; i < size; i++) {
            iIntValue += nl3Var.invoke(list.get(i)).intValue();
        }
        return iIntValue;
    }

    public static final <T, R, V> List<V> fastZip(List<? extends T> list, List<? extends R> list2, bm3<? super T, ? super R, ? extends V> bm3Var) {
        int iMin = Math.min(list.size(), list2.size());
        ArrayList arrayList = new ArrayList(iMin);
        for (int i = 0; i < iMin; i++) {
            arrayList.add(bm3Var.invoke(list.get(i), list2.get(i)));
        }
        return arrayList;
    }

    public static final <T, R> List<R> fastZipWithNext(List<? extends T> list, bm3<? super T, ? super T, ? extends R> bm3Var) {
        if (list.size() <= 1) {
            return kx2.b;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        a07 a07Var = list.get(0);
        int size = list.size() - 1;
        while (i < size) {
            i++;
            T t = list.get(i);
            arrayList.add(bm3Var.invoke(a07Var, t));
            a07Var = t;
        }
        return arrayList;
    }

    public static final Void throwNoSuchElementException(String str) {
        throw new NoSuchElementException(str);
    }

    public static final void throwUnsupportedOperationException(String str) {
        throw new UnsupportedOperationException(str);
    }
}
