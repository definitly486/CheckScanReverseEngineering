package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class jr<T> implements Iterator<T>, re4 {
    public final T[] b;
    public int c;

    public jr(T[] tArr) {
        tArr.getClass();
        this.b = tArr;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c < this.b.length;
    }

    @Override // java.util.Iterator
    public final T next() {
        try {
            T[] tArr = this.b;
            int i = this.c;
            this.c = i + 1;
            return tArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.c--;
            ag.g(e.getMessage());
            return null;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
