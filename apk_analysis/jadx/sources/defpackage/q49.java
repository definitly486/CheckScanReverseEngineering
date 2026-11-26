package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class q49 implements Collection<p49>, re4 {
    public final long[] b;

    public static final class a implements Iterator<p49>, re4 {
        public final long[] b;
        public int c;

        public a(long[] jArr) {
            this.b = jArr;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.c < this.b.length;
        }

        @Override // java.util.Iterator
        public final p49 next() {
            int i = this.c;
            long[] jArr = this.b;
            if (i < jArr.length) {
                this.c = i + 1;
                return new p49(jArr[i]);
            }
            ag.g(String.valueOf(i));
            return null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Collection
    public final /* bridge */ /* synthetic */ boolean add(p49 p49Var) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection<? extends p49> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof p49)) {
            return false;
        }
        return yr.D(this.b, ((p49) obj).b);
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        collection.getClass();
        Collection<?> collection2 = collection;
        if (collection2.isEmpty()) {
            return true;
        }
        for (Object obj : collection2) {
            if (!(obj instanceof p49)) {
                return false;
            }
            if (!yr.D(this.b, ((p49) obj).b)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (obj instanceof q49) {
            return this.b.equals(((q49) obj).b);
        }
        return false;
    }

    @Override // java.util.Collection
    public final int hashCode() {
        return Arrays.hashCode(this.b);
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.b.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator<p49> iterator() {
        return new a(this.b);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final int size() {
        return this.b.length;
    }

    @Override // java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        tArr.getClass();
        return (T[]) hn1.d(this, tArr);
    }

    public final String toString() {
        return "ULongArray(storage=" + Arrays.toString(this.b) + ')';
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return hn1.c(this);
    }
}
