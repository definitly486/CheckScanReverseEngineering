package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableCollection;
import defpackage.v;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class PersistentHashMapValues<K, V> extends v<V> implements ImmutableCollection<V> {
    public static final int $stable = 8;
    private final PersistentHashMap<K, V> map;

    public PersistentHashMapValues(PersistentHashMap<K, V> persistentHashMap) {
        this.map = persistentHashMap;
    }

    @Override // defpackage.v, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.map.containsValue(obj);
    }

    @Override // defpackage.v
    public int getSize() {
        return this.map.size();
    }

    @Override // defpackage.v, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<V> iterator() {
        return new PersistentHashMapValuesIterator(this.map.getNode$runtime());
    }
}
