package yads;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes6.dex */
public abstract class oe3 extends ie3 implements List, RandomAccess {
    public static final le3 c = new le3(k55.f, 0);

    public static oe3 a(Collection collection) {
        if (!(collection instanceof ie3)) {
            return a(collection.toArray());
        }
        oe3 oe3VarA = ((ie3) collection).a();
        if (!oe3VarA.e()) {
            return oe3VarA;
        }
        Object[] array = oe3VarA.toArray(ie3.b);
        return b(array.length, array);
    }

    public static k55 b(Object[] objArr) {
        return objArr.length == 0 ? k55.f : a((Object[]) objArr.clone());
    }

    public static ke3 f() {
        return new ke3();
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // yads.ie3, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof List) {
                List list = (List) obj;
                int size = size();
                if (size == list.size()) {
                    if (!(list instanceof RandomAccess)) {
                        Iterator it = iterator();
                        Iterator it2 = list.iterator();
                        while (it.hasNext()) {
                            if (it2.hasNext() && ep4.a(it.next(), it2.next())) {
                            }
                        }
                        return !it2.hasNext();
                    }
                    for (int i = 0; i < size; i++) {
                        if (ep4.a(get(i), list.get(i))) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = ~(~(get(i2).hashCode() + (i * 31)));
        }
        return i;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // yads.ie3, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // yads.ie3
    public Object writeReplace() {
        return new me3(toArray(ie3.b));
    }

    @Override // yads.ie3, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final i46 iterator() {
        return listIterator(0);
    }

    public static k55 b(int i, Object[] objArr) {
        if (i == 0) {
            return k55.f;
        }
        return new k55(i, objArr);
    }

    public static k55 a(Object... objArr) {
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            if (objArr[i] == null) {
                defpackage.o2.d(vx4.a(i, "at index "));
                return null;
            }
        }
        return b(objArr.length, objArr);
    }

    @Override // yads.ie3
    public final oe3 a() {
        return this;
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final le3 listIterator(int i) {
        wx4.b(i, size());
        if (isEmpty()) {
            return c;
        }
        return new le3(this, i);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public oe3 subList(int i, int i2) {
        wx4.a(i, i2, size());
        int i3 = i2 - i;
        if (i3 == size()) {
            return this;
        }
        if (i3 == 0) {
            return k55.f;
        }
        return new ne3(this, i, i3);
    }

    @Override // yads.ie3
    public int a(int i, Object[] objArr) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }
}
