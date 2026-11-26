package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class gr implements Iterator, re4 {
    public final double[] b;
    public int c;

    public gr(double[] dArr) {
        this.b = dArr;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c < this.b.length;
    }

    @Override // java.util.Iterator
    public final Object next() {
        double d;
        try {
            double[] dArr = this.b;
            int i = this.c;
            this.c = i + 1;
            d = dArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.c--;
            ag.g(e.getMessage());
            d = 0.0d;
        }
        return Double.valueOf(d);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
