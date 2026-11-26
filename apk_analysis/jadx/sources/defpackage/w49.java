package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class w49 implements Collection<v49>, re4 {
    public final short[] b;

    public static final class a implements Iterator<v49>, re4 {
        public final short[] b;
        public int c;

        public a(short[] sArr) {
            this.b = sArr;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.c < this.b.length;
        }

        @Override // java.util.Iterator
        public final v49 next() {
            int i = this.c;
            short[] sArr = this.b;
            if (i < sArr.length) {
                this.c = i + 1;
                return new v49(sArr[i]);
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
    public final /* bridge */ /* synthetic */ boolean add(v49 v49Var) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection<? extends v49> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x001d A[RETURN] */
    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof v49)) {
            return false;
        }
        short s = ((v49) obj).b;
        short[] sArr = this.b;
        int length = sArr.length;
        int i = 0;
        while (i < length) {
            if (s == sArr[i]) {
                if (i >= 0) {
                    return true;
                }
                return false;
            }
            i++;
        }
        i = -1;
        if (i >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        collection.getClass();
        Collection<?> collection2 = collection;
        if (collection2.isEmpty()) {
            return true;
        }
        for (Object obj : collection2) {
            if (obj instanceof v49) {
                short s = ((v49) obj).b;
                short[] sArr = this.b;
                int length = sArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        i = -1;
                        break;
                    }
                    if (s == sArr[i]) {
                        break;
                    }
                    i++;
                }
                if (i >= 0) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (obj instanceof w49) {
            return this.b.equals(((w49) obj).b);
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
    public final Iterator<v49> iterator() {
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
        return "UShortArray(storage=" + Arrays.toString(this.b) + ')';
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return hn1.c(this);
    }
}
