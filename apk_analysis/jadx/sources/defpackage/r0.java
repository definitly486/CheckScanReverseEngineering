package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public abstract class r0<T> implements Iterator<T>, re4 {
    private T nextValue;
    private int state;

    private final boolean tryToComputeNext() {
        this.state = 3;
        computeNext();
        return this.state == 1;
    }

    public abstract void computeNext();

    public final void done() {
        this.state = 2;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        int i = this.state;
        if (i == 0) {
            return tryToComputeNext();
        }
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return false;
        }
        fg.c("hasNext called when the iterator is in the FAILED state.");
        return false;
    }

    @Override // java.util.Iterator
    public T next() {
        int i = this.state;
        if (i == 1) {
            this.state = 0;
            return this.nextValue;
        }
        if (i == 2 || !tryToComputeNext()) {
            qz0.e();
            return null;
        }
        this.state = 0;
        return this.nextValue;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setNext(T t) {
        this.nextValue = t;
        this.state = 1;
    }
}
