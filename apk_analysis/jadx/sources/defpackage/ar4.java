package defpackage;

import java.io.InvalidObjectException;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes5.dex */
public final class ar4<E> extends d1<E> implements RandomAccess, Serializable {
    public static final ar4 e;
    public E[] b;
    public int c;
    public boolean d;

    public static final class b<E> implements ListIterator<E>, re4 {
        public final ar4<E> b;
        public int c;
        public int d = -1;
        public int e;

        public b(ar4<E> ar4Var, int i) {
            this.b = ar4Var;
            this.c = i;
            this.e = ((AbstractList) ar4Var).modCount;
        }

        public final void a() {
            if (((AbstractList) this.b).modCount == this.e) {
                return;
            }
            ln.e();
        }

        @Override // java.util.ListIterator
        public final void add(E e) {
            a();
            int i = this.c;
            this.c = i + 1;
            ar4<E> ar4Var = this.b;
            ar4Var.add(i, e);
            this.d = -1;
            this.e = ((AbstractList) ar4Var).modCount;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.c < this.b.c;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.c > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final E next() {
            a();
            int i = this.c;
            ar4<E> ar4Var = this.b;
            if (i >= ar4Var.c) {
                qz0.e();
                return null;
            }
            this.c = i + 1;
            this.d = i;
            return ar4Var.b[i];
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.c;
        }

        @Override // java.util.ListIterator
        public final E previous() {
            a();
            int i = this.c;
            if (i <= 0) {
                qz0.e();
                return null;
            }
            int i2 = i - 1;
            this.c = i2;
            this.d = i2;
            return this.b.b[i2];
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.c - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            a();
            int i = this.d;
            if (i == -1) {
                ah.f("Call next() or previous() before removing element from the iterator.");
                return;
            }
            ar4<E> ar4Var = this.b;
            ar4Var.removeAt(i);
            this.c = this.d;
            this.d = -1;
            this.e = ((AbstractList) ar4Var).modCount;
        }

        @Override // java.util.ListIterator
        public final void set(E e) {
            a();
            int i = this.d;
            if (i != -1) {
                this.b.set(i, e);
            } else {
                ah.f("Call next() or previous() before replacing element from the iterator.");
            }
        }
    }

    static {
        ar4 ar4Var = new ar4(0);
        ar4Var.d = true;
        e = ar4Var;
    }

    public ar4(int i) {
        if (i >= 0) {
            this.b = (E[]) new Object[i];
        } else {
            fg.c("capacity must be non-negative.");
            throw null;
        }
    }

    private final Object writeReplace() throws NotSerializableException {
        if (this.d) {
            return new zp7(this, 0);
        }
        throw new NotSerializableException("The list cannot be serialized while it is being built.");
    }

    @Override // defpackage.d1, java.util.AbstractList, java.util.List
    public final void add(int i, E e2) {
        g();
        u0.a aVar = u0.Companion;
        int i2 = this.c;
        aVar.getClass();
        u0.a.c(i, i2);
        ((AbstractList) this).modCount++;
        j(i, 1);
        this.b[i] = e2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends E> collection) {
        collection.getClass();
        g();
        u0.a aVar = u0.Companion;
        int i2 = this.c;
        aVar.getClass();
        u0.a.c(i, i2);
        int size = collection.size();
        b(i, collection, size);
        return size > 0;
    }

    public final void b(int i, Collection<? extends E> collection, int i2) {
        ((AbstractList) this).modCount++;
        j(i, i2);
        Iterator<? extends E> it = collection.iterator();
        for (int i3 = 0; i3 < i2; i3++) {
            this.b[i + i3] = it.next();
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        g();
        m(0, this.c);
    }

    public final void d(int i, E e2) {
        ((AbstractList) this).modCount++;
        j(i, 1);
        this.b[i] = e2;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            E[] eArr = this.b;
            int i = this.c;
            if (i == list.size()) {
                for (int i2 = 0; i2 < i; i2++) {
                    if (aa4.e(eArr[i2], list.get(i2))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final void g() {
        if (this.d) {
            ud.d();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        u0.a aVar = u0.Companion;
        int i2 = this.c;
        aVar.getClass();
        u0.a.b(i, i2);
        return this.b[i];
    }

    @Override // defpackage.d1
    public final int getSize() {
        return this.c;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        E[] eArr = this.b;
        int i = this.c;
        int iHashCode = 1;
        for (int i2 = 0; i2 < i; i2++) {
            E e2 = eArr[i2];
            iHashCode = (iHashCode * 31) + (e2 != null ? e2.hashCode() : 0);
        }
        return iHashCode;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        for (int i = 0; i < this.c; i++) {
            if (aa4.e(this.b[i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.c == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<E> iterator() {
        return listIterator(0);
    }

    public final void j(int i, int i2) {
        int i3 = this.c + i2;
        if (i3 < 0) {
            vh.c();
            return;
        }
        E[] eArr = this.b;
        if (i3 > eArr.length) {
            u0.a aVar = u0.Companion;
            int length = eArr.length;
            aVar.getClass();
            int iE = u0.a.e(length, i3);
            E[] eArr2 = this.b;
            eArr2.getClass();
            eArr = (E[]) Arrays.copyOf(eArr2, iE);
            this.b = eArr;
        }
        aq5.m(eArr, i + i2, eArr, i, this.c);
        this.c += i2;
    }

    public final E k(int i) {
        ((AbstractList) this).modCount++;
        E[] eArr = this.b;
        E e2 = eArr[i];
        aq5.m(eArr, i, eArr, i + 1, this.c);
        E[] eArr2 = this.b;
        int i2 = this.c - 1;
        eArr2.getClass();
        eArr2[i2] = null;
        this.c--;
        return e2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        for (int i = this.c - 1; i >= 0; i--) {
            if (aa4.e(this.b[i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<E> listIterator(int i) {
        u0.a aVar = u0.Companion;
        int i2 = this.c;
        aVar.getClass();
        u0.a.c(i, i2);
        return new b(this, i);
    }

    public final void m(int i, int i2) {
        if (i2 > 0) {
            ((AbstractList) this).modCount++;
        }
        E[] eArr = this.b;
        aq5.m(eArr, i, eArr, i + i2, this.c);
        E[] eArr2 = this.b;
        int i3 = this.c;
        hn1.a(i3 - i2, i3, eArr2);
        this.c -= i2;
    }

    public final int n(int i, int i2, Collection<? extends E> collection, boolean z) {
        E[] eArr;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            eArr = this.b;
            if (i3 >= i2) {
                break;
            }
            int i5 = i + i3;
            if (collection.contains(eArr[i5]) == z) {
                E[] eArr2 = this.b;
                i3++;
                eArr2[i4 + i] = eArr2[i5];
                i4++;
            } else {
                i3++;
            }
        }
        int i6 = i2 - i4;
        aq5.m(eArr, i + i4, eArr, i2 + i, this.c);
        E[] eArr3 = this.b;
        int i7 = this.c;
        hn1.a(i7 - i6, i7, eArr3);
        if (i6 > 0) {
            ((AbstractList) this).modCount++;
        }
        this.c -= i6;
        return i6;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        g();
        int iIndexOf = indexOf(obj);
        if (iIndexOf >= 0) {
            removeAt(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection<?> collection) {
        collection.getClass();
        g();
        return n(0, this.c, collection, false) > 0;
    }

    @Override // defpackage.d1
    public final E removeAt(int i) {
        g();
        u0.a aVar = u0.Companion;
        int i2 = this.c;
        aVar.getClass();
        u0.a.b(i, i2);
        return k(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection<?> collection) {
        collection.getClass();
        g();
        return n(0, this.c, collection, true) > 0;
    }

    @Override // defpackage.d1, java.util.AbstractList, java.util.List
    public final E set(int i, E e2) {
        g();
        u0.a aVar = u0.Companion;
        int i2 = this.c;
        aVar.getClass();
        u0.a.b(i, i2);
        E[] eArr = this.b;
        E e3 = eArr[i];
        eArr[i] = e2;
        return e3;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List<E> subList(int i, int i2) {
        u0.a aVar = u0.Companion;
        int i3 = this.c;
        aVar.getClass();
        u0.a.d(i, i2, i3);
        return new a(this.b, i, i2 - i, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final <T> T[] toArray(T[] tArr) {
        tArr.getClass();
        int length = tArr.length;
        int i = this.c;
        E[] eArr = this.b;
        if (length < i) {
            T[] tArr2 = (T[]) Arrays.copyOfRange(eArr, 0, i, tArr.getClass());
            tArr2.getClass();
            return tArr2;
        }
        aq5.m(eArr, 0, tArr, 0, i);
        int i2 = this.c;
        if (i2 < tArr.length) {
            tArr[i2] = null;
        }
        return tArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return hn1.b(this.b, 0, this.c, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<E> listIterator() {
        return listIterator(0);
    }

    public static final class a<E> extends d1<E> implements RandomAccess, Serializable {
        public E[] b;
        public final int c;
        public int d;
        public final a<E> e;
        public final ar4<E> f;

        /* JADX INFO: renamed from: ar4$a$a, reason: collision with other inner class name */
        public static final class C0117a<E> implements ListIterator<E>, re4 {
            public final a<E> b;
            public int c;
            public int d = -1;
            public int e;

            public C0117a(a<E> aVar, int i) {
                this.b = aVar;
                this.c = i;
                this.e = ((AbstractList) aVar).modCount;
            }

            public final void a() {
                if (((AbstractList) this.b.f).modCount == this.e) {
                    return;
                }
                ln.e();
            }

            @Override // java.util.ListIterator
            public final void add(E e) {
                a();
                int i = this.c;
                this.c = i + 1;
                a<E> aVar = this.b;
                aVar.add(i, e);
                this.d = -1;
                this.e = ((AbstractList) aVar).modCount;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final boolean hasNext() {
                return this.c < this.b.d;
            }

            @Override // java.util.ListIterator
            public final boolean hasPrevious() {
                return this.c > 0;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final E next() {
                a();
                int i = this.c;
                a<E> aVar = this.b;
                if (i >= aVar.d) {
                    qz0.e();
                    return null;
                }
                this.c = i + 1;
                this.d = i;
                return aVar.b[aVar.c + i];
            }

            @Override // java.util.ListIterator
            public final int nextIndex() {
                return this.c;
            }

            @Override // java.util.ListIterator
            public final E previous() {
                a();
                int i = this.c;
                if (i <= 0) {
                    qz0.e();
                    return null;
                }
                int i2 = i - 1;
                this.c = i2;
                this.d = i2;
                a<E> aVar = this.b;
                return aVar.b[aVar.c + i2];
            }

            @Override // java.util.ListIterator
            public final int previousIndex() {
                return this.c - 1;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final void remove() {
                a();
                int i = this.d;
                if (i == -1) {
                    ah.f("Call next() or previous() before removing element from the iterator.");
                    return;
                }
                a<E> aVar = this.b;
                aVar.removeAt(i);
                this.c = this.d;
                this.d = -1;
                this.e = ((AbstractList) aVar).modCount;
            }

            @Override // java.util.ListIterator
            public final void set(E e) {
                a();
                int i = this.d;
                if (i != -1) {
                    this.b.set(i, e);
                } else {
                    ah.f("Call next() or previous() before replacing element from the iterator.");
                }
            }
        }

        public a(E[] eArr, int i, int i2, a<E> aVar, ar4<E> ar4Var) {
            eArr.getClass();
            ar4Var.getClass();
            this.b = eArr;
            this.c = i;
            this.d = i2;
            this.e = aVar;
            this.f = ar4Var;
            ((AbstractList) this).modCount = ((AbstractList) ar4Var).modCount;
        }

        private final void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
            throw new InvalidObjectException("Deserialization is supported via proxy only");
        }

        private final Object writeReplace() throws NotSerializableException {
            if (this.f.d) {
                return new zp7(this, 0);
            }
            throw new NotSerializableException("The list cannot be serialized while it is being built.");
        }

        @Override // defpackage.d1, java.util.AbstractList, java.util.List
        public final void add(int i, E e) {
            j();
            g();
            u0.a aVar = u0.Companion;
            int i2 = this.d;
            aVar.getClass();
            u0.a.c(i, i2);
            d(this.c + i, e);
        }

        @Override // java.util.AbstractList, java.util.List
        public final boolean addAll(int i, Collection<? extends E> collection) {
            collection.getClass();
            j();
            g();
            u0.a aVar = u0.Companion;
            int i2 = this.d;
            aVar.getClass();
            u0.a.c(i, i2);
            int size = collection.size();
            b(this.c + i, collection, size);
            return size > 0;
        }

        public final void b(int i, Collection<? extends E> collection, int i2) {
            ((AbstractList) this).modCount++;
            ar4<E> ar4Var = this.f;
            a<E> aVar = this.e;
            if (aVar != null) {
                aVar.b(i, collection, i2);
            } else {
                ar4 ar4Var2 = ar4.e;
                ar4Var.b(i, collection, i2);
            }
            this.b = ar4Var.b;
            this.d += i2;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final void clear() {
            j();
            g();
            m(this.c, this.d);
        }

        public final void d(int i, E e) {
            ((AbstractList) this).modCount++;
            ar4<E> ar4Var = this.f;
            a<E> aVar = this.e;
            if (aVar != null) {
                aVar.d(i, e);
            } else {
                ar4 ar4Var2 = ar4.e;
                ar4Var.d(i, e);
            }
            this.b = ar4Var.b;
            this.d++;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final boolean equals(Object obj) {
            g();
            if (obj == this) {
                return true;
            }
            if (obj instanceof List) {
                List list = (List) obj;
                E[] eArr = this.b;
                int i = this.d;
                if (i == list.size()) {
                    for (int i2 = 0; i2 < i; i2++) {
                        if (aa4.e(eArr[this.c + i2], list.get(i2))) {
                        }
                    }
                    return true;
                }
            }
            return false;
        }

        public final void g() {
            if (((AbstractList) this.f).modCount == ((AbstractList) this).modCount) {
                return;
            }
            ln.e();
        }

        @Override // java.util.AbstractList, java.util.List
        public final E get(int i) {
            g();
            u0.a aVar = u0.Companion;
            int i2 = this.d;
            aVar.getClass();
            u0.a.b(i, i2);
            return this.b[this.c + i];
        }

        @Override // defpackage.d1
        public final int getSize() {
            g();
            return this.d;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final int hashCode() {
            g();
            E[] eArr = this.b;
            int i = this.d;
            int iHashCode = 1;
            for (int i2 = 0; i2 < i; i2++) {
                E e = eArr[this.c + i2];
                iHashCode = (iHashCode * 31) + (e != null ? e.hashCode() : 0);
            }
            return iHashCode;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int indexOf(Object obj) {
            g();
            for (int i = 0; i < this.d; i++) {
                if (aa4.e(this.b[this.c + i], obj)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            g();
            return this.d == 0;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator<E> iterator() {
            return listIterator(0);
        }

        public final void j() {
            if (this.f.d) {
                ud.d();
            }
        }

        public final E k(int i) {
            E eK;
            ((AbstractList) this).modCount++;
            a<E> aVar = this.e;
            if (aVar != null) {
                eK = aVar.k(i);
            } else {
                ar4 ar4Var = ar4.e;
                eK = this.f.k(i);
            }
            this.d--;
            return eK;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int lastIndexOf(Object obj) {
            g();
            for (int i = this.d - 1; i >= 0; i--) {
                if (aa4.e(this.b[this.c + i], obj)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public final ListIterator<E> listIterator(int i) {
            g();
            u0.a aVar = u0.Companion;
            int i2 = this.d;
            aVar.getClass();
            u0.a.c(i, i2);
            return new C0117a(this, i);
        }

        public final void m(int i, int i2) {
            if (i2 > 0) {
                ((AbstractList) this).modCount++;
            }
            a<E> aVar = this.e;
            if (aVar != null) {
                aVar.m(i, i2);
            } else {
                ar4 ar4Var = ar4.e;
                this.f.m(i, i2);
            }
            this.d -= i2;
        }

        public final int n(int i, int i2, Collection<? extends E> collection, boolean z) {
            int iN;
            a<E> aVar = this.e;
            if (aVar != null) {
                iN = aVar.n(i, i2, collection, z);
            } else {
                ar4 ar4Var = ar4.e;
                iN = this.f.n(i, i2, collection, z);
            }
            if (iN > 0) {
                ((AbstractList) this).modCount++;
            }
            this.d -= iN;
            return iN;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean remove(Object obj) {
            j();
            g();
            int iIndexOf = indexOf(obj);
            if (iIndexOf >= 0) {
                removeAt(iIndexOf);
            }
            return iIndexOf >= 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean removeAll(Collection<?> collection) {
            collection.getClass();
            j();
            g();
            return n(this.c, this.d, collection, false) > 0;
        }

        @Override // defpackage.d1
        public final E removeAt(int i) {
            j();
            g();
            u0.a aVar = u0.Companion;
            int i2 = this.d;
            aVar.getClass();
            u0.a.b(i, i2);
            return k(this.c + i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean retainAll(Collection<?> collection) {
            collection.getClass();
            j();
            g();
            return n(this.c, this.d, collection, true) > 0;
        }

        @Override // defpackage.d1, java.util.AbstractList, java.util.List
        public final E set(int i, E e) {
            j();
            g();
            u0.a aVar = u0.Companion;
            int i2 = this.d;
            aVar.getClass();
            u0.a.b(i, i2);
            E[] eArr = this.b;
            int i3 = this.c + i;
            E e2 = eArr[i3];
            eArr[i3] = e;
            return e2;
        }

        @Override // java.util.AbstractList, java.util.List
        public final List<E> subList(int i, int i2) {
            u0.a aVar = u0.Companion;
            int i3 = this.d;
            aVar.getClass();
            u0.a.d(i, i2, i3);
            return new a(this.b, this.c + i, i2 - i, this, this.f);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final <T> T[] toArray(T[] tArr) {
            tArr.getClass();
            g();
            int length = tArr.length;
            int i = this.d;
            E[] eArr = this.b;
            int i2 = this.c;
            if (length < i) {
                T[] tArr2 = (T[]) Arrays.copyOfRange(eArr, i2, i + i2, tArr.getClass());
                tArr2.getClass();
                return tArr2;
            }
            aq5.m(eArr, 0, tArr, i2, i + i2);
            int i3 = this.d;
            if (i3 < tArr.length) {
                tArr[i3] = null;
            }
            return tArr;
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            g();
            return hn1.b(this.b, this.c, this.d, this);
        }

        @Override // java.util.AbstractList, java.util.List
        public final ListIterator<E> listIterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean add(E e) {
            j();
            g();
            d(this.c + this.d, e);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean addAll(Collection<? extends E> collection) {
            collection.getClass();
            j();
            g();
            int size = collection.size();
            b(this.c + this.d, collection, size);
            return size > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final Object[] toArray() {
            g();
            E[] eArr = this.b;
            int i = this.d;
            int i2 = this.c;
            return aq5.r(i2, i + i2, eArr);
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e2) {
        g();
        int i = this.c;
        ((AbstractList) this).modCount++;
        j(i, 1);
        this.b[i] = e2;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends E> collection) {
        collection.getClass();
        g();
        int size = collection.size();
        b(this.c, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return aq5.r(0, this.c, this.b);
    }
}
