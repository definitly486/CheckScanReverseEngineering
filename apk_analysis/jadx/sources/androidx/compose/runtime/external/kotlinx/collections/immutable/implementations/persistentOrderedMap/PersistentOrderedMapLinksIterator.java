package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import defpackage.l2;
import defpackage.qz0;
import defpackage.re4;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class PersistentOrderedMapLinksIterator<K, V> implements Iterator<LinkedValue<V>>, re4 {
    public static final int $stable = 8;
    private final Map<K, LinkedValue<V>> hashMap;
    private int index;
    private Object nextKey;

    public PersistentOrderedMapLinksIterator(Object obj, Map<K, LinkedValue<V>> map) {
        this.nextKey = obj;
        this.hashMap = map;
    }

    public final int getIndex$runtime() {
        return this.index;
    }

    public final Object getNextKey$runtime() {
        return this.nextKey;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.hashMap.size();
    }

    @Override // java.util.Iterator
    public LinkedValue<V> next() {
        if (!hasNext()) {
            qz0.e();
            return null;
        }
        LinkedValue<V> linkedValue = this.hashMap.get(this.nextKey);
        if (linkedValue == null) {
            throw new ConcurrentModificationException(l2.d(new StringBuilder("Hash code of a key ("), this.nextKey, ") has changed after it was added to the persistent map."));
        }
        LinkedValue<V> linkedValue2 = linkedValue;
        this.index++;
        this.nextKey = linkedValue2.getNext();
        return linkedValue2;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setIndex$runtime(int i) {
        this.index = i;
    }

    public final void setNextKey$runtime(Object obj) {
        this.nextKey = obj;
    }
}
