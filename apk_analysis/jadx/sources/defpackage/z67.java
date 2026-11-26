package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes5.dex */
public final class z67<T> extends u0<T> {
    public final List<T> c;

    public static final class a implements ListIterator<T>, re4 {
        public final ListIterator<T> b;
        public final /* synthetic */ z67<T> c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(z67<? extends T> z67Var, int i) {
            this.c = z67Var;
            this.b = z67Var.c.listIterator(nn1.H(i, z67Var));
        }

        @Override // java.util.ListIterator
        public final void add(T t) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.b.hasPrevious();
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.b.hasNext();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final T next() {
            return this.b.previous();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return (this.c.size() - 1) - this.b.previousIndex();
        }

        @Override // java.util.ListIterator
        public final T previous() {
            return this.b.next();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return (this.c.size() - 1) - this.b.nextIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public final void set(T t) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public z67(List<? extends T> list) {
        list.getClass();
        this.c = list;
    }

    @Override // defpackage.u0, java.util.List
    public final T get(int i) {
        return this.c.get(nn1.G(i, this));
    }

    @Override // defpackage.u0, defpackage.v
    public final int getSize() {
        return this.c.size();
    }

    @Override // defpackage.u0, defpackage.v, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<T> iterator() {
        return new a(this, 0);
    }

    @Override // defpackage.u0, java.util.List
    public final ListIterator<T> listIterator() {
        return new a(this, 0);
    }

    @Override // defpackage.u0, java.util.List
    public final ListIterator<T> listIterator(int i) {
        return new a(this, i);
    }
}
