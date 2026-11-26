package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes5.dex */
public abstract class u0<E> extends v<E> implements List<E> {
    public static final a Companion = new a();
    private static final int maxArraySize = 2147483639;

    public static final class a {
        public static void a(int i, int i2, int i3) {
            if (i < 0 || i2 > i3) {
                bj.d(i3, bg.f(i, i2, "startIndex: ", ", endIndex: ", ", size: "));
            } else {
                if (i <= i2) {
                    return;
                }
                fg.c(rz0.c(i, i2, "startIndex: ", " > endIndex: "));
            }
        }

        public static void b(int i, int i2) {
            if (i < 0 || i >= i2) {
                yq.d(rz0.c(i, i2, "index: ", ", size: "));
            }
        }

        public static void c(int i, int i2) {
            if (i < 0 || i > i2) {
                yq.d(rz0.c(i, i2, "index: ", ", size: "));
            }
        }

        public static void d(int i, int i2, int i3) {
            if (i < 0 || i2 > i3) {
                bj.d(i3, bg.f(i, i2, "fromIndex: ", ", toIndex: ", ", size: "));
            } else {
                if (i <= i2) {
                    return;
                }
                fg.c(rz0.c(i, i2, "fromIndex: ", " > toIndex: "));
            }
        }

        public static int e(int i, int i2) {
            int i3 = i + (i >> 1);
            if (i3 - i2 < 0) {
                i3 = i2;
            }
            if (i3 - u0.maxArraySize <= 0) {
                return i3;
            }
            if (i2 > u0.maxArraySize) {
                return Integer.MAX_VALUE;
            }
            return u0.maxArraySize;
        }
    }

    public class b implements Iterator<E>, re4 {
        public int b;

        public b() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.b < u0.this.size();
        }

        @Override // java.util.Iterator
        public final E next() {
            if (!hasNext()) {
                qz0.e();
                return null;
            }
            int i = this.b;
            this.b = i + 1;
            return u0.this.get(i);
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public class c extends u0<E>.b implements ListIterator<E> {
        public c(int i) {
            super();
            a aVar = u0.Companion;
            int size = u0.this.size();
            aVar.getClass();
            a.c(i, size);
            this.b = i;
        }

        @Override // java.util.ListIterator
        public final void add(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.b > 0;
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.b;
        }

        @Override // java.util.ListIterator
        public final E previous() {
            if (!hasPrevious()) {
                qz0.e();
                return null;
            }
            int i = this.b - 1;
            this.b = i;
            return u0.this.get(i);
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.b - 1;
        }

        @Override // java.util.ListIterator
        public final void set(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public static final class d<E> extends u0<E> implements RandomAccess {
        public final u0<E> c;
        public final int d;
        public final int e;

        /* JADX WARN: Multi-variable type inference failed */
        public d(u0<? extends E> u0Var, int i, int i2) {
            u0Var.getClass();
            this.c = u0Var;
            this.d = i;
            a aVar = u0.Companion;
            int size = u0Var.size();
            aVar.getClass();
            a.d(i, i2, size);
            this.e = i2 - i;
        }

        @Override // defpackage.u0, java.util.List
        public final E get(int i) {
            u0.Companion.getClass();
            a.b(i, this.e);
            return this.c.get(this.d + i);
        }

        @Override // defpackage.u0, defpackage.v
        public final int getSize() {
            return this.e;
        }

        @Override // defpackage.u0, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableList
        public final List<E> subList(int i, int i2) {
            u0.Companion.getClass();
            a.d(i, i2, this.e);
            int i3 = this.d;
            return new d(this.c, i + i3, i3 + i2);
        }
    }

    @Override // java.util.List
    public void add(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        Collection collection = (Collection) obj;
        Companion.getClass();
        if (size() == collection.size()) {
            Iterator<E> it = collection.iterator();
            Iterator<E> it2 = iterator();
            while (it2.hasNext()) {
                if (!aa4.e(it2.next(), it.next())) {
                }
            }
            return true;
        }
        return false;
    }

    public abstract E get(int i);

    @Override // defpackage.v
    public abstract int getSize();

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        Companion.getClass();
        Iterator<E> it = iterator();
        int iHashCode = 1;
        while (it.hasNext()) {
            E next = it.next();
            iHashCode = (iHashCode * 31) + (next != null ? next.hashCode() : 0);
        }
        return iHashCode;
    }

    public int indexOf(Object obj) {
        Iterator<E> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (aa4.e(it.next(), obj)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // defpackage.v, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new b();
    }

    public int lastIndexOf(Object obj) {
        ListIterator<E> listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (aa4.e(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    public ListIterator<E> listIterator() {
        return new c(0);
    }

    @Override // java.util.List
    public E remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public E set(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public List<E> subList(int i, int i2) {
        return new d(this, i, i2);
    }

    public ListIterator<E> listIterator(int i) {
        return new c(i);
    }
}
