package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.aa4;
import defpackage.aq5;
import defpackage.ln;
import defpackage.qn1;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class ArraySetKt {
    public static final int ARRAY_SET_BASE_SIZE = 4;

    public static final <E> void addAllInternal(ArraySet<E> arraySet, ArraySet<? extends E> arraySet2) {
        arraySet.getClass();
        arraySet2.getClass();
        int i = arraySet2.get_size$collection();
        arraySet.ensureCapacity(arraySet.get_size$collection() + i);
        if (arraySet.get_size$collection() != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                arraySet.add(arraySet2.valueAt(i2));
            }
        } else if (i > 0) {
            aq5.n(0, i, 6, arraySet2.getHashes$collection(), arraySet.getHashes$collection());
            aq5.q(arraySet2.getArray$collection(), arraySet.getArray$collection(), 0, 0, i, 6);
            if (arraySet.get_size$collection() == 0) {
                arraySet.set_size$collection(i);
            } else {
                ln.e();
            }
        }
    }

    public static final <E> boolean addInternal(ArraySet<E> arraySet, E e) {
        int i;
        int iIndexOf;
        arraySet.getClass();
        int i2 = arraySet.get_size$collection();
        if (e == null) {
            iIndexOf = indexOfNull(arraySet);
            i = 0;
        } else {
            int iHashCode = e.hashCode();
            i = iHashCode;
            iIndexOf = indexOf(arraySet, e, iHashCode);
        }
        if (iIndexOf >= 0) {
            return false;
        }
        int i3 = ~iIndexOf;
        if (i2 >= arraySet.getHashes$collection().length) {
            int i4 = 8;
            if (i2 >= 8) {
                i4 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i4 = 4;
            }
            int[] hashes$collection = arraySet.getHashes$collection();
            Object[] array$collection = arraySet.getArray$collection();
            allocArrays(arraySet, i4);
            if (i2 != arraySet.get_size$collection()) {
                ln.e();
                return false;
            }
            if (arraySet.getHashes$collection().length != 0) {
                aq5.n(0, hashes$collection.length, 6, hashes$collection, arraySet.getHashes$collection());
                aq5.q(array$collection, arraySet.getArray$collection(), 0, 0, array$collection.length, 6);
            }
        }
        if (i3 < i2) {
            int i5 = i3 + 1;
            aq5.h(i5, i3, i2, arraySet.getHashes$collection(), arraySet.getHashes$collection());
            aq5.m(arraySet.getArray$collection(), i5, arraySet.getArray$collection(), i3, i2);
        }
        if (i2 != arraySet.get_size$collection() || i3 >= arraySet.getHashes$collection().length) {
            ln.e();
            return false;
        }
        arraySet.getHashes$collection()[i3] = i;
        arraySet.getArray$collection()[i3] = e;
        arraySet.set_size$collection(arraySet.get_size$collection() + 1);
        return true;
    }

    public static final <E> void allocArrays(ArraySet<E> arraySet, int i) {
        arraySet.getClass();
        arraySet.setHashes$collection(new int[i]);
        arraySet.setArray$collection(new Object[i]);
    }

    public static final <T> ArraySet<T> arraySetOf(T... tArr) {
        tArr.getClass();
        ArraySet<T> arraySet = new ArraySet<>(tArr.length);
        for (T t : tArr) {
            arraySet.add(t);
        }
        return arraySet;
    }

    public static final <E> int binarySearchInternal(ArraySet<E> arraySet, int i) {
        arraySet.getClass();
        try {
            return ContainerHelpersKt.binarySearch(arraySet.getHashes$collection(), arraySet.get_size$collection(), i);
        } catch (IndexOutOfBoundsException unused) {
            ln.e();
            return 0;
        }
    }

    public static final <E> void clearInternal(ArraySet<E> arraySet) {
        arraySet.getClass();
        if (arraySet.get_size$collection() != 0) {
            arraySet.setHashes$collection(ContainerHelpersKt.EMPTY_INTS);
            arraySet.setArray$collection(ContainerHelpersKt.EMPTY_OBJECTS);
            arraySet.set_size$collection(0);
        }
        if (arraySet.get_size$collection() == 0) {
            return;
        }
        ln.e();
    }

    public static final <E> boolean containsAllInternal(ArraySet<E> arraySet, Collection<? extends E> collection) {
        arraySet.getClass();
        collection.getClass();
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            if (!arraySet.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static final <E> boolean containsInternal(ArraySet<E> arraySet, E e) {
        arraySet.getClass();
        return arraySet.indexOf(e) >= 0;
    }

    public static final <E> void ensureCapacityInternal(ArraySet<E> arraySet, int i) {
        arraySet.getClass();
        int i2 = arraySet.get_size$collection();
        if (arraySet.getHashes$collection().length < i) {
            int[] hashes$collection = arraySet.getHashes$collection();
            Object[] array$collection = arraySet.getArray$collection();
            allocArrays(arraySet, i);
            if (arraySet.get_size$collection() > 0) {
                aq5.n(0, arraySet.get_size$collection(), 6, hashes$collection, arraySet.getHashes$collection());
                aq5.q(array$collection, arraySet.getArray$collection(), 0, 0, arraySet.get_size$collection(), 6);
            }
        }
        if (arraySet.get_size$collection() == i2) {
            return;
        }
        ln.e();
    }

    public static final <E> boolean equalsInternal(ArraySet<E> arraySet, Object obj) {
        arraySet.getClass();
        if (arraySet == obj) {
            return true;
        }
        if (!(obj instanceof Set) || arraySet.size() != ((Set) obj).size()) {
            return false;
        }
        try {
            int i = arraySet.get_size$collection();
            for (int i2 = 0; i2 < i; i2++) {
                if (!((Set) obj).contains(arraySet.valueAt(i2))) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static final <E> int hashCodeInternal(ArraySet<E> arraySet) {
        arraySet.getClass();
        int[] hashes$collection = arraySet.getHashes$collection();
        int i = arraySet.get_size$collection();
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += hashes$collection[i3];
        }
        return i2;
    }

    public static final <E> int indexOf(ArraySet<E> arraySet, Object obj, int i) {
        arraySet.getClass();
        int i2 = arraySet.get_size$collection();
        if (i2 == 0) {
            return -1;
        }
        int iBinarySearchInternal = binarySearchInternal(arraySet, i);
        if (iBinarySearchInternal < 0 || aa4.e(obj, arraySet.getArray$collection()[iBinarySearchInternal])) {
            return iBinarySearchInternal;
        }
        int i3 = iBinarySearchInternal + 1;
        while (i3 < i2 && arraySet.getHashes$collection()[i3] == i) {
            if (aa4.e(obj, arraySet.getArray$collection()[i3])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iBinarySearchInternal - 1; i4 >= 0 && arraySet.getHashes$collection()[i4] == i; i4--) {
            if (aa4.e(obj, arraySet.getArray$collection()[i4])) {
                return i4;
            }
        }
        return ~i3;
    }

    public static final <E> int indexOfInternal(ArraySet<E> arraySet, Object obj) {
        arraySet.getClass();
        return obj == null ? indexOfNull(arraySet) : indexOf(arraySet, obj, obj.hashCode());
    }

    public static final <E> int indexOfNull(ArraySet<E> arraySet) {
        arraySet.getClass();
        return indexOf(arraySet, null, 0);
    }

    public static final <E> boolean isEmptyInternal(ArraySet<E> arraySet) {
        arraySet.getClass();
        return arraySet.get_size$collection() <= 0;
    }

    public static final <E> boolean removeAllInternal(ArraySet<E> arraySet, ArraySet<? extends E> arraySet2) {
        arraySet.getClass();
        arraySet2.getClass();
        int i = arraySet2.get_size$collection();
        int i2 = arraySet.get_size$collection();
        for (int i3 = 0; i3 < i; i3++) {
            arraySet.remove(arraySet2.valueAt(i3));
        }
        return i2 != arraySet.get_size$collection();
    }

    public static final <E> E removeAtInternal(ArraySet<E> arraySet, int i) {
        int i2;
        arraySet.getClass();
        int i3 = arraySet.get_size$collection();
        E e = (E) arraySet.getArray$collection()[i];
        if (i3 <= 1) {
            arraySet.clear();
            return e;
        }
        int i4 = i3 - 1;
        if (arraySet.getHashes$collection().length <= 8 || arraySet.get_size$collection() >= arraySet.getHashes$collection().length / 3) {
            if (i < i4) {
                int i5 = i + 1;
                aq5.h(i, i5, i3, arraySet.getHashes$collection(), arraySet.getHashes$collection());
                aq5.m(arraySet.getArray$collection(), i, arraySet.getArray$collection(), i5, i3);
            }
            arraySet.getArray$collection()[i4] = null;
        } else {
            int i6 = arraySet.get_size$collection() > 8 ? arraySet.get_size$collection() + (arraySet.get_size$collection() >> 1) : 8;
            int[] hashes$collection = arraySet.getHashes$collection();
            Object[] array$collection = arraySet.getArray$collection();
            allocArrays(arraySet, i6);
            if (i > 0) {
                aq5.n(0, i, 6, hashes$collection, arraySet.getHashes$collection());
                i2 = i;
                aq5.q(array$collection, arraySet.getArray$collection(), 0, 0, i2, 6);
            } else {
                i2 = i;
            }
            if (i2 < i4) {
                int i7 = i2 + 1;
                aq5.h(i2, i7, i3, hashes$collection, arraySet.getHashes$collection());
                aq5.m(array$collection, i2, arraySet.getArray$collection(), i7, i3);
            }
        }
        if (i3 == arraySet.get_size$collection()) {
            arraySet.set_size$collection(i4);
            return e;
        }
        ln.e();
        return null;
    }

    public static final <E> boolean removeInternal(ArraySet<E> arraySet, E e) {
        arraySet.getClass();
        int iIndexOf = arraySet.indexOf(e);
        if (iIndexOf < 0) {
            return false;
        }
        arraySet.removeAt(iIndexOf);
        return true;
    }

    public static final <E> boolean retainAllInternal(ArraySet<E> arraySet, Collection<? extends E> collection) {
        arraySet.getClass();
        collection.getClass();
        boolean z = false;
        for (int i = arraySet.get_size$collection() - 1; -1 < i; i--) {
            if (!qn1.M(collection, arraySet.getArray$collection()[i])) {
                arraySet.removeAt(i);
                z = true;
            }
        }
        return z;
    }

    public static final <E> String toStringInternal(ArraySet<E> arraySet) {
        arraySet.getClass();
        if (arraySet.isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(arraySet.get_size$collection() * 14);
        sb.append('{');
        int i = arraySet.get_size$collection();
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            E eValueAt = arraySet.valueAt(i2);
            if (eValueAt != arraySet) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public static final <E> E valueAtInternal(ArraySet<E> arraySet, int i) {
        arraySet.getClass();
        return (E) arraySet.getArray$collection()[i];
    }

    public static final <T> ArraySet<T> arraySetOf() {
        return new ArraySet<>(0, 1, null);
    }

    public static final <E> boolean removeAllInternal(ArraySet<E> arraySet, Collection<? extends E> collection) {
        arraySet.getClass();
        collection.getClass();
        Iterator<? extends E> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= arraySet.remove(it.next());
        }
        return zRemove;
    }

    public static final <E> boolean addAllInternal(ArraySet<E> arraySet, Collection<? extends E> collection) {
        arraySet.getClass();
        collection.getClass();
        arraySet.ensureCapacity(collection.size() + arraySet.get_size$collection());
        Iterator<? extends E> it = collection.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= arraySet.add(it.next());
        }
        return zAdd;
    }
}
