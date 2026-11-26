package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class l44<T> implements Iterator<j44<? extends T>>, re4 {
    public final Iterator<T> b;
    public int c;

    /* JADX WARN: Multi-variable type inference failed */
    public l44(Iterator<? extends T> it) {
        it.getClass();
        this.b = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.c;
        this.c = i + 1;
        if (i >= 0) {
            return new j44(i, this.b.next());
        }
        u96.o();
        throw null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
