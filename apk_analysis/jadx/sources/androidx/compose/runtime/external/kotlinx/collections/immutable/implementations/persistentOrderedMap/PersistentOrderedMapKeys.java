package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import defpackage.o1;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class PersistentOrderedMapKeys<K, V> extends o1<K> implements ImmutableSet<K> {
    public static final int $stable = 8;
    private final PersistentOrderedMap<K, V> map;

    public PersistentOrderedMapKeys(PersistentOrderedMap<K, V> persistentOrderedMap) {
        this.map = persistentOrderedMap;
    }

    @Override // defpackage.v, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // defpackage.v
    public int getSize() {
        return this.map.size();
    }

    @Override // defpackage.o1, defpackage.v, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<K> iterator() {
        return new PersistentOrderedMapKeysIterator(this.map);
    }
}
