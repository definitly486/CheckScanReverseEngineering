package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
public final class ua4 {
    public static <T> T a(Iterable<T> iterable) {
        T next;
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (!list.isEmpty()) {
                return (T) xy.d(1, list);
            }
            qz0.e();
            return null;
        }
        if (iterable instanceof SortedSet) {
            return (T) ((SortedSet) iterable).last();
        }
        Iterator<T> it = iterable.iterator();
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static Object b(Iterable iterable) {
        Object next;
        if (iterable instanceof Collection) {
            if (((Collection) iterable).isEmpty()) {
                return null;
            }
            if (iterable instanceof List) {
                return xy.d(1, (List) iterable);
            }
            if (iterable instanceof SortedSet) {
                return ((SortedSet) iterable).last();
            }
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static <T> void c(List<T> list, bf6<? super T> bf6Var, int i, int i2) {
        for (int size = list.size() - 1; size > i2; size--) {
            if (bf6Var.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            list.remove(i3);
        }
    }
}
