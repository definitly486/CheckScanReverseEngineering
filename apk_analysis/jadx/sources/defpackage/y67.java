package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes5.dex */
public final class y67<T> extends d1<T> {
    public final List<T> b;

    public static final class a implements ListIterator<T>, re4 {
        public final ListIterator<T> b;
        public final /* synthetic */ y67<T> c;

        public a(y67<T> y67Var, int i) {
            this.c = y67Var;
            this.b = y67Var.b.listIterator(nn1.H(i, y67Var));
        }

        @Override // java.util.ListIterator
        public final void add(T t) {
            ListIterator<T> listIterator = this.b;
            listIterator.add(t);
            listIterator.previous();
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
            this.b.remove();
        }

        @Override // java.util.ListIterator
        public final void set(T t) {
            this.b.set(t);
        }
    }

    public y67(List<T> list) {
        list.getClass();
        this.b = list;
    }

    @Override // defpackage.d1, java.util.AbstractList, java.util.List
    public final void add(int i, T t) {
        this.b.add(nn1.H(i, this), t);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.b.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int i) {
        return this.b.get(nn1.G(i, this));
    }

    @Override // defpackage.d1
    public final int getSize() {
        return this.b.size();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<T> iterator() {
        return new a(this, 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<T> listIterator() {
        return new a(this, 0);
    }

    @Override // defpackage.d1
    public final T removeAt(int i) {
        return this.b.remove(nn1.G(i, this));
    }

    @Override // defpackage.d1, java.util.AbstractList, java.util.List
    public final T set(int i, T t) {
        return this.b.set(nn1.G(i, this), t);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<T> listIterator(int i) {
        return new a(this, i);
    }
}
