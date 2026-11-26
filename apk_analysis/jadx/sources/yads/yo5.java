package yads;

import androidx.collection.SparseArrayCompat;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class yo5 implements Iterator, defpackage.re4 {
    public final SparseArrayCompat b;
    public int c;

    public yo5(SparseArrayCompat sparseArrayCompat) {
        this.b = sparseArrayCompat;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b.size() > this.c;
    }

    @Override // java.util.Iterator
    public final Object next() {
        SparseArrayCompat sparseArrayCompat = this.b;
        int i = this.c;
        this.c = i + 1;
        return sparseArrayCompat.valueAt(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
