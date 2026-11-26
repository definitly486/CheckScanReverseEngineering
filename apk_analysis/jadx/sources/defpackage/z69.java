package defpackage;

import com.google.protobuf.t;
import java.util.AbstractList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public final class z69 extends AbstractList<String> implements oo4, RandomAccess {
    public final t b;

    public class a implements ListIterator<String> {
        public ListIterator<String> b;

        @Override // java.util.ListIterator
        public final void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.b.hasNext();
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.b.hasPrevious();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            return this.b.next();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.b.nextIndex();
        }

        @Override // java.util.ListIterator
        public final String previous() {
            return this.b.previous();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.b.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public final void set(String str) {
            throw new UnsupportedOperationException();
        }
    }

    public class b implements Iterator<String> {
        public Iterator<String> b;

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.b.hasNext();
        }

        @Override // java.util.Iterator
        public final String next() {
            return this.b.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public z69(t tVar) {
        this.b = tVar;
    }

    @Override // defpackage.oo4
    public final void e(fx0 fx0Var) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        return (String) this.b.get(i);
    }

    @Override // defpackage.oo4
    public final Object getRaw(int i) {
        return this.b.c.get(i);
    }

    @Override // defpackage.oo4
    public final List<?> getUnderlyingElements() {
        return Collections.unmodifiableList(this.b.c);
    }

    @Override // defpackage.oo4
    public final oo4 getUnmodifiableView() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        b bVar = new b();
        bVar.b = this.b.iterator();
        return bVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        a aVar = new a();
        aVar.b = this.b.listIterator(i);
        return aVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.b.c.size();
    }
}
