package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import defpackage.qz0;
import defpackage.re4;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class IndexBasedArrayIterator<T> implements Iterator<T>, re4 {
    private boolean canRemove;
    private int index;
    private int size;

    public IndexBasedArrayIterator(int i) {
        this.size = i;
    }

    public abstract T elementAt(int i);

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.size;
    }

    @Override // java.util.Iterator
    public T next() {
        if (!hasNext()) {
            qz0.e();
            return null;
        }
        T tElementAt = elementAt(this.index);
        this.index++;
        this.canRemove = true;
        return tElementAt;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (!this.canRemove) {
            RuntimeHelpersKt.throwIllegalStateException("Call next() before removing an element.");
        }
        int i = this.index - 1;
        this.index = i;
        removeAt(i);
        this.size--;
        this.canRemove = false;
    }

    public abstract void removeAt(int i);
}
