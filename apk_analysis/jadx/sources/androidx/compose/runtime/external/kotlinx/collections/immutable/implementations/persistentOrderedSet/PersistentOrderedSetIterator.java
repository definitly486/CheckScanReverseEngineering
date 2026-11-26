package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet;

import defpackage.ch;
import defpackage.qz0;
import defpackage.re4;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class PersistentOrderedSetIterator<E> implements Iterator<E>, re4 {
    public static final int $stable = 8;
    private int index;
    private final Map<E, Links> map;
    private Object nextElement;

    public PersistentOrderedSetIterator(Object obj, Map<E, Links> map) {
        this.nextElement = obj;
        this.map = map;
    }

    private final void checkHasNext() {
        if (hasNext()) {
            return;
        }
        qz0.e();
    }

    public final int getIndex$runtime() {
        return this.index;
    }

    public final Map<E, Links> getMap$runtime() {
        return this.map;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.map.size();
    }

    @Override // java.util.Iterator
    public E next() {
        checkHasNext();
        E e = (E) this.nextElement;
        this.index++;
        Links links = this.map.get(e);
        if (links == null) {
            throw new ConcurrentModificationException(ch.c(e, "Hash code of an element (", ") has changed after it was added to the persistent set."));
        }
        this.nextElement = links.getNext();
        return e;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setIndex$runtime(int i) {
        this.index = i;
    }
}
