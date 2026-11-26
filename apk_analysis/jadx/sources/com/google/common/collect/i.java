package com.google.common.collect;

import defpackage.cn1;
import defpackage.fg;
import defpackage.m96;
import defpackage.y69;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.Spliterators;

/* JADX INFO: loaded from: classes4.dex */
public abstract class i<E> extends AbstractCollection<E> implements Serializable {
    public static final Object[] b = new Object[0];

    public static abstract class a<E> extends b<E> {
        public Object[] a;
        public int b;
        public boolean c;

        public a(int i) {
            cn1.b(i, "initialCapacity");
            this.a = new Object[i];
            this.b = 0;
        }

        public final void c(Object obj) {
            obj.getClass();
            f(1);
            Object[] objArr = this.a;
            int i = this.b;
            this.b = i + 1;
            objArr[i] = obj;
        }

        public final void d(Object... objArr) {
            int length = objArr.length;
            m96.b(length, objArr);
            f(length);
            System.arraycopy(objArr, 0, this.a, this.b, length);
            this.b += length;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void e(Iterable iterable) {
            if (iterable instanceof Collection) {
                Collection collection = (Collection) iterable;
                f(collection.size());
                if (collection instanceof i) {
                    this.b = ((i) collection).b(this.b, this.a);
                    return;
                }
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
        }

        public final void f(int i) {
            Object[] objArr = this.a;
            int iB = b.b(objArr.length, this.b + i);
            if (iB > objArr.length || this.c) {
                this.a = Arrays.copyOf(this.a, iB);
                this.c = false;
            }
        }
    }

    public static abstract class b<E> {
        public static int b(int i, int i2) {
            if (i2 < 0) {
                fg.c("cannot store more than Integer.MAX_VALUE elements");
                return 0;
            }
            if (i2 <= i) {
                return i;
            }
            int iHighestOneBit = i + (i >> 1) + 1;
            if (iHighestOneBit < i2) {
                iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                return Integer.MAX_VALUE;
            }
            return iHighestOneBit;
        }

        public abstract b<E> a(E e);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public j<E> a() {
        if (isEmpty()) {
            j.b bVar = j.c;
            return w.f;
        }
        Object[] array = toArray(b);
        j.b bVar2 = j.c;
        return j.k(array.length, array);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    public int b(int i, Object[] objArr) {
        y69<E> it = iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(Object obj);

    public Object[] d() {
        return null;
    }

    public int f() {
        throw new UnsupportedOperationException();
    }

    public int g() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean i();

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public abstract y69<E> iterator();

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Spliterator<E> spliterator() {
        return Spliterators.spliterator(this, 1296);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        tArr.getClass();
        int size = size();
        if (tArr.length < size) {
            Object[] objArrD = d();
            if (objArrD != null) {
                return (T[]) Arrays.copyOfRange(objArrD, g(), f(), tArr.getClass());
            }
            if (tArr.length != 0) {
                tArr = (T[]) Arrays.copyOf(tArr, 0);
            }
            tArr = (T[]) Arrays.copyOf(tArr, size);
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        b(0, tArr);
        return tArr;
    }

    public Object writeReplace() {
        return new j.d(toArray(b));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(b);
    }
}
