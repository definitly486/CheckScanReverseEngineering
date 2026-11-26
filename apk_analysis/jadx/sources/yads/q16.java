package yads;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class q16 implements Iterator {
    public final Iterator b;

    public q16(Iterator it) {
        it.getClass();
        this.b = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return ((Map.Entry) this.b.next()).getValue();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.b.remove();
    }
}
