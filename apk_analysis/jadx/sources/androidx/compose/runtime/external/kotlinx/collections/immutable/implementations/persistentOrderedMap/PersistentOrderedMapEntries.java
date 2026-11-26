package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import defpackage.o1;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class PersistentOrderedMapEntries<K, V> extends o1<Map.Entry<? extends K, ? extends V>> implements ImmutableSet<Map.Entry<? extends K, ? extends V>> {
    public static final int $stable = 8;
    private final PersistentOrderedMap<K, V> map;

    public PersistentOrderedMapEntries(PersistentOrderedMap<K, V> persistentOrderedMap) {
        this.map = persistentOrderedMap;
    }

    public boolean contains(Map.Entry<? extends K, ? extends V> entry) {
        if (entry == null) {
            return false;
        }
        V v = this.map.get(entry.getKey());
        if (v != null) {
            return v.equals(entry.getValue());
        }
        return entry.getValue() == null && this.map.containsKey(entry.getKey());
    }

    @Override // defpackage.v
    public int getSize() {
        return this.map.size();
    }

    @Override // defpackage.o1, defpackage.v, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<Map.Entry<K, V>> iterator() {
        return new PersistentOrderedMapEntriesIterator(this.map);
    }

    @Override // defpackage.v, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return contains((Map.Entry) obj);
        }
        return false;
    }
}
