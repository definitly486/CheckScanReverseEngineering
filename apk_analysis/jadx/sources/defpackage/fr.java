package defpackage;

import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class fr<E> extends d1<E> {
    public static final Object[] e = new Object[0];
    public int b;
    public Object[] c;
    public int d;

    public fr(int i) {
        Object[] objArr;
        if (i == 0) {
            objArr = e;
        } else {
            if (i <= 0) {
                fg.c(jh.b(i, "Illegal Capacity: "));
                throw null;
            }
            objArr = new Object[i];
        }
        this.c = objArr;
    }

    public final void a(int i, Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        int length = this.c.length;
        while (i < length && it.hasNext()) {
            this.c[i] = it.next();
            i++;
        }
        int i2 = this.b;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.c[i3] = it.next();
        }
        this.d = collection.size() + size();
    }

    @Override // defpackage.d1, java.util.AbstractList, java.util.List
    public final void add(int i, E e2) {
        u0.a aVar = u0.Companion;
        int size = size();
        aVar.getClass();
        u0.a.c(i, size);
        if (i == size()) {
            addLast(e2);
            return;
        }
        if (i == 0) {
            addFirst(e2);
            return;
        }
        o();
        b(size() + 1);
        int iN = n(this.b + i);
        if (i < ((size() + 1) >> 1)) {
            int iN2 = iN == 0 ? yr.N(this.c) : iN - 1;
            int i2 = this.b;
            int iN3 = i2 == 0 ? yr.N(this.c) : i2 - 1;
            int i3 = this.b;
            Object[] objArr = this.c;
            if (iN2 >= i3) {
                objArr[iN3] = objArr[i3];
                aq5.m(objArr, i3, objArr, i3 + 1, iN2 + 1);
            } else {
                aq5.m(objArr, i3 - 1, objArr, i3, objArr.length);
                Object[] objArr2 = this.c;
                objArr2[objArr2.length - 1] = objArr2[0];
                aq5.m(objArr2, 0, objArr2, 1, iN2 + 1);
            }
            this.c[iN2] = e2;
            this.b = iN3;
        } else {
            int iN4 = n(size() + this.b);
            Object[] objArr3 = this.c;
            if (iN < iN4) {
                aq5.m(objArr3, iN + 1, objArr3, iN, iN4);
            } else {
                aq5.m(objArr3, 1, objArr3, 0, iN4);
                Object[] objArr4 = this.c;
                objArr4[0] = objArr4[objArr4.length - 1];
                aq5.m(objArr4, iN + 1, objArr4, iN, objArr4.length - 1);
            }
            this.c[iN] = e2;
        }
        this.d = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends E> collection) {
        collection.getClass();
        u0.a aVar = u0.Companion;
        int size = size();
        aVar.getClass();
        u0.a.c(i, size);
        if (collection.isEmpty()) {
            return false;
        }
        if (i == size()) {
            return addAll(collection);
        }
        o();
        b(collection.size() + size());
        int iN = n(size() + this.b);
        int iN2 = n(this.b + i);
        int size2 = collection.size();
        if (i >= ((size() + 1) >> 1)) {
            int i2 = iN2 + size2;
            Object[] objArr = this.c;
            if (iN2 < iN) {
                int i3 = size2 + iN;
                if (i3 <= objArr.length) {
                    aq5.m(objArr, i2, objArr, iN2, iN);
                } else if (i2 >= objArr.length) {
                    aq5.m(objArr, i2 - objArr.length, objArr, iN2, iN);
                } else {
                    int length = iN - (i3 - objArr.length);
                    aq5.m(objArr, 0, objArr, length, iN);
                    Object[] objArr2 = this.c;
                    aq5.m(objArr2, i2, objArr2, iN2, length);
                }
            } else {
                aq5.m(objArr, size2, objArr, 0, iN);
                Object[] objArr3 = this.c;
                if (i2 >= objArr3.length) {
                    aq5.m(objArr3, i2 - objArr3.length, objArr3, iN2, objArr3.length);
                } else {
                    aq5.m(objArr3, 0, objArr3, objArr3.length - size2, objArr3.length);
                    Object[] objArr4 = this.c;
                    aq5.m(objArr4, i2, objArr4, iN2, objArr4.length - size2);
                }
            }
            a(iN2, collection);
            return true;
        }
        int i4 = this.b;
        int length2 = i4 - size2;
        Object[] objArr5 = this.c;
        if (iN2 < i4) {
            aq5.m(objArr5, length2, objArr5, i4, objArr5.length);
            Object[] objArr6 = this.c;
            if (size2 >= iN2) {
                aq5.m(objArr6, objArr6.length - size2, objArr6, 0, iN2);
            } else {
                aq5.m(objArr6, objArr6.length - size2, objArr6, 0, size2);
                Object[] objArr7 = this.c;
                aq5.m(objArr7, 0, objArr7, size2, iN2);
            }
        } else if (length2 >= 0) {
            aq5.m(objArr5, length2, objArr5, i4, iN2);
        } else {
            length2 += objArr5.length;
            int i5 = iN2 - i4;
            int length3 = objArr5.length - length2;
            if (length3 >= i5) {
                aq5.m(objArr5, length2, objArr5, i4, iN2);
            } else {
                aq5.m(objArr5, length2, objArr5, i4, i4 + length3);
                Object[] objArr8 = this.c;
                aq5.m(objArr8, 0, objArr8, this.b + length3, iN2);
            }
        }
        this.b = length2;
        a(k(iN2 - size2), collection);
        return true;
    }

    public final void addFirst(E e2) {
        o();
        b(size() + 1);
        int i = this.b;
        int iN = i == 0 ? yr.N(this.c) : i - 1;
        this.b = iN;
        this.c[iN] = e2;
        this.d = size() + 1;
    }

    public final void addLast(E e2) {
        o();
        b(size() + 1);
        this.c[n(size() + this.b)] = e2;
        this.d = size() + 1;
    }

    public final void b(int i) {
        if (i < 0) {
            ah.f("Deque is too big.");
            return;
        }
        Object[] objArr = this.c;
        if (i <= objArr.length) {
            return;
        }
        if (objArr == e) {
            if (i < 10) {
                i = 10;
            }
            this.c = new Object[i];
            return;
        }
        u0.a aVar = u0.Companion;
        int length = objArr.length;
        aVar.getClass();
        Object[] objArr2 = new Object[u0.a.e(length, i)];
        Object[] objArr3 = this.c;
        aq5.m(objArr3, 0, objArr2, this.b, objArr3.length);
        Object[] objArr4 = this.c;
        int length2 = objArr4.length;
        int i2 = this.b;
        aq5.m(objArr4, length2 - i2, objArr2, 0, i2);
        this.b = 0;
        this.c = objArr2;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        if (!isEmpty()) {
            o();
            m(this.b, n(size() + this.b));
        }
        this.b = 0;
        this.d = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final E d() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.c[this.b];
    }

    public final E first() {
        if (!isEmpty()) {
            return (E) this.c[this.b];
        }
        ag.g("ArrayDeque is empty.");
        return null;
    }

    public final int g(int i) {
        if (i == yr.N(this.c)) {
            return 0;
        }
        return i + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        u0.a aVar = u0.Companion;
        int size = size();
        aVar.getClass();
        u0.a.b(i, size);
        return (E) this.c[n(this.b + i)];
    }

    @Override // defpackage.d1
    public final int getSize() {
        return this.d;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i;
        int iN = n(size() + this.b);
        int length = this.b;
        if (length < iN) {
            while (length < iN) {
                if (aa4.e(obj, this.c[length])) {
                    i = this.b;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (isEmpty() || (length = this.b) < iN) {
            return -1;
        }
        int length2 = this.c.length;
        while (length < length2) {
            if (aa4.e(obj, this.c[length])) {
                i = this.b;
            } else {
                length++;
            }
        }
        for (int i2 = 0; i2 < iN; i2++) {
            if (aa4.e(obj, this.c[i2])) {
                length = i2 + this.c.length;
                i = this.b;
            }
        }
        return -1;
        return length - i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return size() == 0;
    }

    public final E j() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.c[n((size() - 1) + this.b)];
    }

    public final int k(int i) {
        return i < 0 ? i + this.c.length : i;
    }

    public final E last() {
        if (isEmpty()) {
            ag.g("ArrayDeque is empty.");
            return null;
        }
        return (E) this.c[n((size() - 1) + this.b)];
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        Object[] objArr;
        int iN;
        int i;
        int iN2 = n(size() + this.b);
        int i2 = this.b;
        if (i2 < iN2) {
            iN = iN2 - 1;
            if (i2 <= iN) {
                while (!aa4.e(obj, this.c[iN])) {
                    if (iN != i2) {
                        iN--;
                    }
                }
                i = this.b;
                return iN - i;
            }
            return -1;
        }
        if (!isEmpty() && this.b >= iN2) {
            do {
                iN2--;
                objArr = this.c;
                if (-1 >= iN2) {
                    iN = yr.N(objArr);
                    int i3 = this.b;
                    if (i3 <= iN) {
                        while (!aa4.e(obj, this.c[iN])) {
                            if (iN != i3) {
                                iN--;
                            }
                        }
                        i = this.b;
                    }
                }
                return iN - i;
            } while (!aa4.e(obj, objArr[iN2]));
            iN = iN2 + this.c.length;
            i = this.b;
            return iN - i;
        }
        return -1;
    }

    public final void m(int i, int i2) {
        Object[] objArr = this.c;
        if (i < i2) {
            aq5.t(null, objArr, i, i2);
        } else {
            aq5.t(null, objArr, i, objArr.length);
            aq5.t(null, this.c, 0, i2);
        }
    }

    public final int n(int i) {
        Object[] objArr = this.c;
        return i >= objArr.length ? i - objArr.length : i;
    }

    public final void o() {
        ((AbstractList) this).modCount++;
    }

    public final E p() {
        if (isEmpty()) {
            return null;
        }
        return removeFirst();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection<?> collection) {
        int iN;
        Object[] objArr;
        collection.getClass();
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.c.length != 0) {
            int iN2 = n(size() + this.b);
            int i = this.b;
            if (i < iN2) {
                iN = i;
                while (true) {
                    objArr = this.c;
                    if (i >= iN2) {
                        break;
                    }
                    Object obj = objArr[i];
                    if (collection.contains(obj)) {
                        z = true;
                    } else {
                        this.c[iN] = obj;
                        iN++;
                    }
                    i++;
                }
                aq5.t(null, objArr, iN, iN2);
            } else {
                int length = this.c.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr2 = this.c;
                    Object obj2 = objArr2[i];
                    objArr2[i] = null;
                    if (collection.contains(obj2)) {
                        z2 = true;
                    } else {
                        this.c[i2] = obj2;
                        i2++;
                    }
                    i++;
                }
                iN = n(i2);
                for (int i3 = 0; i3 < iN2; i3++) {
                    Object[] objArr3 = this.c;
                    Object obj3 = objArr3[i3];
                    objArr3[i3] = null;
                    if (collection.contains(obj3)) {
                        z2 = true;
                    } else {
                        this.c[iN] = obj3;
                        iN = g(iN);
                    }
                }
                z = z2;
            }
            if (z) {
                o();
                this.d = k(iN - this.b);
            }
        }
        return z;
    }

    @Override // defpackage.d1
    public final E removeAt(int i) {
        u0.a aVar = u0.Companion;
        int size = size();
        aVar.getClass();
        u0.a.b(i, size);
        if (i == size() - 1) {
            return removeLast();
        }
        if (i == 0) {
            return removeFirst();
        }
        o();
        int iN = n(this.b + i);
        E e2 = (E) this.c[iN];
        int size2 = size() >> 1;
        int i2 = this.b;
        if (i < size2) {
            Object[] objArr = this.c;
            if (iN >= i2) {
                aq5.m(objArr, i2 + 1, objArr, i2, iN);
            } else {
                aq5.m(objArr, 1, objArr, 0, iN);
                Object[] objArr2 = this.c;
                objArr2[0] = objArr2[objArr2.length - 1];
                int i3 = this.b;
                aq5.m(objArr2, i3 + 1, objArr2, i3, objArr2.length - 1);
            }
            Object[] objArr3 = this.c;
            int i4 = this.b;
            objArr3[i4] = null;
            this.b = g(i4);
        } else {
            int iN2 = n((size() - 1) + i2);
            Object[] objArr4 = this.c;
            if (iN <= iN2) {
                aq5.m(objArr4, iN, objArr4, iN + 1, iN2 + 1);
            } else {
                aq5.m(objArr4, iN, objArr4, iN + 1, objArr4.length);
                Object[] objArr5 = this.c;
                objArr5[objArr5.length - 1] = objArr5[0];
                aq5.m(objArr5, 0, objArr5, 1, iN2 + 1);
            }
            this.c[iN2] = null;
        }
        this.d = size() - 1;
        return e2;
    }

    public final E removeFirst() {
        if (isEmpty()) {
            ag.g("ArrayDeque is empty.");
            return null;
        }
        o();
        Object[] objArr = this.c;
        int i = this.b;
        E e2 = (E) objArr[i];
        objArr[i] = null;
        this.b = g(i);
        this.d = size() - 1;
        return e2;
    }

    public final E removeLast() {
        if (isEmpty()) {
            ag.g("ArrayDeque is empty.");
            return null;
        }
        o();
        int iN = n((size() - 1) + this.b);
        Object[] objArr = this.c;
        E e2 = (E) objArr[iN];
        objArr[iN] = null;
        this.d = size() - 1;
        return e2;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        u0.a aVar = u0.Companion;
        int size = size();
        aVar.getClass();
        u0.a.d(i, i2, size);
        int i3 = i2 - i;
        if (i3 == 0) {
            return;
        }
        if (i3 == size()) {
            clear();
            return;
        }
        if (i3 == 1) {
            removeAt(i);
            return;
        }
        o();
        int size2 = size() - i2;
        int i4 = this.b;
        if (i < size2) {
            int iN = n((i - 1) + i4);
            int iN2 = n(this.b + (i2 - 1));
            while (i > 0) {
                int i5 = iN + 1;
                int iMin = Math.min(i, Math.min(i5, iN2 + 1));
                Object[] objArr = this.c;
                int i6 = iN2 - iMin;
                int i7 = iN - iMin;
                aq5.m(objArr, i6 + 1, objArr, i7 + 1, i5);
                iN = k(i7);
                iN2 = k(i6);
                i -= iMin;
            }
            int iN3 = n(this.b + i3);
            m(this.b, iN3);
            this.b = iN3;
        } else {
            int iN4 = n(i4 + i2);
            int iN5 = n(this.b + i);
            int size3 = size();
            while (true) {
                size3 -= i2;
                if (size3 <= 0) {
                    break;
                }
                Object[] objArr2 = this.c;
                i2 = Math.min(size3, Math.min(objArr2.length - iN4, objArr2.length - iN5));
                Object[] objArr3 = this.c;
                int i8 = iN4 + i2;
                aq5.m(objArr3, iN5, objArr3, iN4, i8);
                iN4 = n(i8);
                iN5 = n(iN5 + i2);
            }
            int iN6 = n(size() + this.b);
            m(k(iN6 - i3), iN6);
        }
        this.d = size() - i3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection<?> collection) {
        int iN;
        Object[] objArr;
        collection.getClass();
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.c.length != 0) {
            int iN2 = n(size() + this.b);
            int i = this.b;
            if (i < iN2) {
                iN = i;
                while (true) {
                    objArr = this.c;
                    if (i >= iN2) {
                        break;
                    }
                    Object obj = objArr[i];
                    if (collection.contains(obj)) {
                        this.c[iN] = obj;
                        iN++;
                    } else {
                        z = true;
                    }
                    i++;
                }
                aq5.t(null, objArr, iN, iN2);
            } else {
                int length = this.c.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr2 = this.c;
                    Object obj2 = objArr2[i];
                    objArr2[i] = null;
                    if (collection.contains(obj2)) {
                        this.c[i2] = obj2;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i++;
                }
                iN = n(i2);
                for (int i3 = 0; i3 < iN2; i3++) {
                    Object[] objArr3 = this.c;
                    Object obj3 = objArr3[i3];
                    objArr3[i3] = null;
                    if (collection.contains(obj3)) {
                        this.c[iN] = obj3;
                        iN = g(iN);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                o();
                this.d = k(iN - this.b);
            }
        }
        return z;
    }

    @Override // defpackage.d1, java.util.AbstractList, java.util.List
    public final E set(int i, E e2) {
        u0.a aVar = u0.Companion;
        int size = size();
        aVar.getClass();
        u0.a.b(i, size);
        int iN = n(this.b + i);
        Object[] objArr = this.c;
        E e3 = (E) objArr[iN];
        objArr[iN] = e2;
        return e3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final <T> T[] toArray(T[] tArr) {
        tArr.getClass();
        if (tArr.length < size()) {
            Object objNewInstance = Array.newInstance(tArr.getClass().getComponentType(), size());
            objNewInstance.getClass();
            tArr = (T[]) ((Object[]) objNewInstance);
        }
        T[] tArr2 = tArr;
        int iN = n(size() + this.b);
        int i = this.b;
        if (i < iN) {
            aq5.q(this.c, tArr2, 0, i, iN, 2);
        } else if (!isEmpty()) {
            Object[] objArr = this.c;
            aq5.m(objArr, 0, tArr2, this.b, objArr.length);
            Object[] objArr2 = this.c;
            aq5.m(objArr2, objArr2.length - this.b, tArr2, 0, iN);
        }
        int size = size();
        if (size < tArr2.length) {
            tArr2[size] = null;
        }
        return tArr2;
    }

    public fr() {
        this.c = e;
    }

    public fr(Collection<? extends E> collection) {
        collection.getClass();
        Object[] array = collection.toArray(new Object[0]);
        this.c = array;
        this.d = array.length;
        if (array.length == 0) {
            this.c = e;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[size()]);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e2) {
        addLast(e2);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends E> collection) {
        collection.getClass();
        if (collection.isEmpty()) {
            return false;
        }
        o();
        b(collection.size() + size());
        a(n(size() + this.b), collection);
        return true;
    }
}
