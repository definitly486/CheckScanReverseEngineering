package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.aq5;
import defpackage.jh2;
import defpackage.jr;
import defpackage.ln;
import defpackage.qn1;
import defpackage.se4;
import defpackage.ye4;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class ArraySet<E> implements Collection<E>, Set<E>, se4, ye4 {
    private int _size;
    private Object[] array;
    private int[] hashes;

    public final class ElementIterator extends IndexBasedArrayIterator<E> {
        public ElementIterator() {
            super(ArraySet.this.get_size$collection());
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public E elementAt(int i) {
            return ArraySet.this.valueAt(i);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public void removeAt(int i) {
            ArraySet.this.removeAt(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(E[] eArr) {
        this(0);
        if (eArr != null) {
            jr jrVar = new jr(eArr);
            while (jrVar.hasNext()) {
                add(jrVar.next());
            }
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e) {
        int i;
        int iIndexOf;
        int i2 = get_size$collection();
        if (e == null) {
            iIndexOf = ArraySetKt.indexOfNull(this);
            i = 0;
        } else {
            int iHashCode = e.hashCode();
            i = iHashCode;
            iIndexOf = ArraySetKt.indexOf(this, e, iHashCode);
        }
        if (iIndexOf >= 0) {
            return false;
        }
        int i3 = ~iIndexOf;
        if (i2 >= getHashes$collection().length) {
            int i4 = 8;
            if (i2 >= 8) {
                i4 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i4 = 4;
            }
            int[] hashes$collection = getHashes$collection();
            Object[] array$collection = getArray$collection();
            ArraySetKt.allocArrays(this, i4);
            if (i2 != get_size$collection()) {
                ln.e();
                return false;
            }
            if (getHashes$collection().length != 0) {
                aq5.n(0, hashes$collection.length, 6, hashes$collection, getHashes$collection());
                aq5.q(array$collection, getArray$collection(), 0, 0, array$collection.length, 6);
            }
        }
        if (i3 < i2) {
            int i5 = i3 + 1;
            aq5.h(i5, i3, i2, getHashes$collection(), getHashes$collection());
            aq5.m(getArray$collection(), i5, getArray$collection(), i3, i2);
        }
        if (i2 != get_size$collection() || i3 >= getHashes$collection().length) {
            ln.e();
            return false;
        }
        getHashes$collection()[i3] = i;
        getArray$collection()[i3] = e;
        set_size$collection(get_size$collection() + 1);
        return true;
    }

    public final void addAll(ArraySet<? extends E> arraySet) {
        arraySet.getClass();
        int i = arraySet.get_size$collection();
        ensureCapacity(get_size$collection() + i);
        if (get_size$collection() != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                add(arraySet.valueAt(i2));
            }
        } else if (i > 0) {
            aq5.n(0, i, 6, arraySet.getHashes$collection(), getHashes$collection());
            aq5.q(arraySet.getArray$collection(), getArray$collection(), 0, 0, i, 6);
            if (get_size$collection() == 0) {
                set_size$collection(i);
            } else {
                ln.e();
            }
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        if (get_size$collection() != 0) {
            setHashes$collection(ContainerHelpersKt.EMPTY_INTS);
            setArray$collection(ContainerHelpersKt.EMPTY_OBJECTS);
            set_size$collection(0);
        }
        if (get_size$collection() == 0) {
            return;
        }
        ln.e();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<? extends Object> collection) {
        collection.getClass();
        Iterator<? extends Object> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final void ensureCapacity(int i) {
        int i2 = get_size$collection();
        if (getHashes$collection().length < i) {
            int[] hashes$collection = getHashes$collection();
            Object[] array$collection = getArray$collection();
            ArraySetKt.allocArrays(this, i);
            if (get_size$collection() > 0) {
                aq5.n(0, get_size$collection(), 6, hashes$collection, getHashes$collection());
                aq5.q(array$collection, getArray$collection(), 0, 0, get_size$collection(), 6);
            }
        }
        if (get_size$collection() == i2) {
            return;
        }
        ln.e();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set) || size() != ((Set) obj).size()) {
            return false;
        }
        try {
            int i = get_size$collection();
            for (int i2 = 0; i2 < i; i2++) {
                if (!((Set) obj).contains(valueAt(i2))) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final Object[] getArray$collection() {
        return this.array;
    }

    public final int[] getHashes$collection() {
        return this.hashes;
    }

    public int getSize() {
        return this._size;
    }

    public final int get_size$collection() {
        return this._size;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] hashes$collection = getHashes$collection();
        int i = get_size$collection();
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += hashes$collection[i3];
        }
        return i2;
    }

    public final int indexOf(Object obj) {
        return obj == null ? ArraySetKt.indexOfNull(this) : ArraySetKt.indexOf(this, obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return get_size$collection() <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return new ElementIterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    public final boolean removeAll(ArraySet<? extends E> arraySet) {
        arraySet.getClass();
        int i = arraySet.get_size$collection();
        int i2 = get_size$collection();
        for (int i3 = 0; i3 < i; i3++) {
            remove(arraySet.valueAt(i3));
        }
        return i2 != get_size$collection();
    }

    public final E removeAt(int i) {
        int i2;
        int i3 = get_size$collection();
        E e = (E) getArray$collection()[i];
        if (i3 <= 1) {
            clear();
            return e;
        }
        int i4 = i3 - 1;
        if (getHashes$collection().length <= 8 || get_size$collection() >= getHashes$collection().length / 3) {
            if (i < i4) {
                int i5 = i + 1;
                aq5.h(i, i5, i3, getHashes$collection(), getHashes$collection());
                aq5.m(getArray$collection(), i, getArray$collection(), i5, i3);
            }
            getArray$collection()[i4] = null;
        } else {
            int i6 = get_size$collection() > 8 ? get_size$collection() + (get_size$collection() >> 1) : 8;
            int[] hashes$collection = getHashes$collection();
            Object[] array$collection = getArray$collection();
            ArraySetKt.allocArrays(this, i6);
            if (i > 0) {
                aq5.n(0, i, 6, hashes$collection, getHashes$collection());
                i2 = i;
                aq5.q(array$collection, getArray$collection(), 0, 0, i2, 6);
            } else {
                i2 = i;
            }
            if (i2 < i4) {
                int i7 = i2 + 1;
                aq5.h(i2, i7, i3, hashes$collection, getHashes$collection());
                aq5.m(array$collection, i2, getArray$collection(), i7, i3);
            }
        }
        if (i3 == get_size$collection()) {
            set_size$collection(i4);
            return e;
        }
        ln.e();
        return null;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<? extends Object> collection) {
        collection.getClass();
        boolean z = false;
        for (int i = get_size$collection() - 1; -1 < i; i--) {
            if (!qn1.M(collection, getArray$collection()[i])) {
                removeAt(i);
                z = true;
            }
        }
        return z;
    }

    public final void setArray$collection(Object[] objArr) {
        objArr.getClass();
        this.array = objArr;
    }

    public final void setHashes$collection(int[] iArr) {
        iArr.getClass();
        this.hashes = iArr;
    }

    public final void set_size$collection(int i) {
        this._size = i;
    }

    @Override // java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Collection, java.util.Set
    public final <T> T[] toArray(T[] tArr) {
        tArr.getClass();
        T[] tArr2 = (T[]) ArraySetJvmUtil.resizeForToArray(tArr, this._size);
        aq5.m(this.array, 0, tArr2, 0, this._size);
        return tArr2;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(get_size$collection() * 14);
        sb.append('{');
        int i = get_size$collection();
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            E eValueAt = valueAt(i2);
            if (eValueAt != this) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public final E valueAt(int i) {
        return (E) getArray$collection()[i];
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return aq5.r(0, this._size, this.array);
    }

    public ArraySet(int i) {
        this.hashes = ContainerHelpersKt.EMPTY_INTS;
        this.array = ContainerHelpersKt.EMPTY_OBJECTS;
        if (i > 0) {
            ArraySetKt.allocArrays(this, i);
        }
    }

    public /* synthetic */ ArraySet(int i, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 0 : i);
    }

    public ArraySet(ArraySet<? extends E> arraySet) {
        this(0);
        if (arraySet != null) {
            addAll((ArraySet) arraySet);
        }
    }

    public ArraySet(Collection<? extends E> collection) {
        this(0);
        if (collection != null) {
            addAll(collection);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<? extends Object> collection) {
        collection.getClass();
        Iterator<? extends Object> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    public ArraySet() {
        this(0, 1, null);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        collection.getClass();
        ensureCapacity(collection.size() + get_size$collection());
        Iterator<? extends E> it = collection.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }
}
