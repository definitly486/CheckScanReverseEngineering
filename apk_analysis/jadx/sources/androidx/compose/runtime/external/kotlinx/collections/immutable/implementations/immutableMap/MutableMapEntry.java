package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import defpackage.ue4;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class MutableMapEntry<K, V> extends MapEntry<K, V> implements Map.Entry<K, V>, ue4.a {
    private final PersistentHashMapBuilderEntriesIterator<K, V> parentIterator;
    private V value;

    public MutableMapEntry(PersistentHashMapBuilderEntriesIterator<K, V> persistentHashMapBuilderEntriesIterator, K k, V v) {
        super(k, v);
        this.parentIterator = persistentHashMapBuilderEntriesIterator;
        this.value = v;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry, java.util.Map.Entry
    public V getValue() {
        return this.value;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry, java.util.Map.Entry
    public V setValue(V v) {
        V value = getValue();
        setValue((Object) v);
        this.parentIterator.setValue(getKey(), v);
        return value;
    }

    @Override // java.util.Map.Entry
    public void setValue(V v) {
        this.value = v;
    }
}
