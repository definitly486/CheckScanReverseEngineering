package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import defpackage.o1;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class PersistentHashMapKeys<K, V> extends o1<K> implements ImmutableSet<K> {
    public static final int $stable = 8;
    private final PersistentHashMap<K, V> map;

    public PersistentHashMapKeys(PersistentHashMap<K, V> persistentHashMap) {
        this.map = persistentHashMap;
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
        return new PersistentHashMapKeysIterator(this.map.getNode$runtime());
    }
}
