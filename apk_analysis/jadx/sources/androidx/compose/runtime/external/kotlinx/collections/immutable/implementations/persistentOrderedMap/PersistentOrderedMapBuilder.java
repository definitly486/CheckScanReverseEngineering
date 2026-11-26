package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import defpackage.aa4;
import defpackage.e1;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class PersistentOrderedMapBuilder<K, V> extends e1<K, V> implements PersistentMap.Builder<K, V> {
    public static final int $stable = 8;
    private Object firstKey;
    private final PersistentHashMapBuilder<K, LinkedValue<V>> hashMapBuilder;
    private Object lastKey;
    private PersistentOrderedMap<K, V> map;

    public PersistentOrderedMapBuilder(PersistentOrderedMap<K, V> persistentOrderedMap) {
        this.map = persistentOrderedMap;
        this.firstKey = persistentOrderedMap.getFirstKey$runtime();
        this.lastKey = this.map.getLastKey$runtime();
        this.hashMapBuilder = this.map.getHashMap$runtime().builder();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap.Builder
    public PersistentMap<K, V> build() {
        PersistentOrderedMap<K, V> persistentOrderedMap;
        PersistentHashMap<K, LinkedValue<V>> persistentHashMapBuild = this.hashMapBuilder.build();
        if (persistentHashMapBuild == this.map.getHashMap$runtime()) {
            CommonFunctionsKt.m5571assert(this.firstKey == this.map.getFirstKey$runtime());
            CommonFunctionsKt.m5571assert(this.lastKey == this.map.getLastKey$runtime());
            persistentOrderedMap = this.map;
        } else {
            persistentOrderedMap = new PersistentOrderedMap<>(this.firstKey, this.lastKey, persistentHashMapBuild);
        }
        this.map = persistentOrderedMap;
        return persistentOrderedMap;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.hashMapBuilder.clear();
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        this.firstKey = endOfChain;
        this.lastKey = endOfChain;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.hashMapBuilder.containsKey(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        LinkedValue<V> linkedValue = this.hashMapBuilder.get(obj);
        if (linkedValue != null) {
            return linkedValue.getValue();
        }
        return null;
    }

    @Override // defpackage.e1
    public Set<Map.Entry<K, V>> getEntries() {
        return new PersistentOrderedMapBuilderEntries(this);
    }

    public final Object getFirstKey$runtime() {
        return this.firstKey;
    }

    public final PersistentHashMapBuilder<K, LinkedValue<V>> getHashMapBuilder$runtime() {
        return this.hashMapBuilder;
    }

    @Override // defpackage.e1
    public Set<K> getKeys() {
        return new PersistentOrderedMapBuilderKeys(this);
    }

    @Override // defpackage.e1
    public int getSize() {
        return this.hashMapBuilder.size();
    }

    @Override // defpackage.e1
    public Collection<V> getValues() {
        return new PersistentOrderedMapBuilderValues(this);
    }

    @Override // defpackage.e1, java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        LinkedValue<V> linkedValue = this.hashMapBuilder.get(k);
        if (linkedValue != null) {
            if (linkedValue.getValue() == v) {
                return v;
            }
            this.hashMapBuilder.put(k, linkedValue.withValue(v));
            return linkedValue.getValue();
        }
        if (isEmpty()) {
            this.firstKey = k;
            this.lastKey = k;
            this.hashMapBuilder.put(k, new LinkedValue<>(v));
            return null;
        }
        Object obj = this.lastKey;
        LinkedValue<V> linkedValue2 = this.hashMapBuilder.get(obj);
        linkedValue2.getClass();
        LinkedValue<V> linkedValue3 = linkedValue2;
        CommonFunctionsKt.m5571assert(!linkedValue3.getHasNext());
        this.hashMapBuilder.put((K) obj, linkedValue3.withNext(k));
        this.hashMapBuilder.put(k, new LinkedValue<>(v, obj));
        this.lastKey = k;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        LinkedValue<V> linkedValueRemove = this.hashMapBuilder.remove(obj);
        if (linkedValueRemove == null) {
            return null;
        }
        if (linkedValueRemove.getHasPrevious()) {
            LinkedValue<V> linkedValue = this.hashMapBuilder.get(linkedValueRemove.getPrevious());
            linkedValue.getClass();
            this.hashMapBuilder.put((K) linkedValueRemove.getPrevious(), linkedValue.withNext(linkedValueRemove.getNext()));
        } else {
            this.firstKey = linkedValueRemove.getNext();
        }
        if (linkedValueRemove.getHasNext()) {
            LinkedValue<V> linkedValue2 = this.hashMapBuilder.get(linkedValueRemove.getNext());
            linkedValue2.getClass();
            this.hashMapBuilder.put((K) linkedValueRemove.getNext(), linkedValue2.withPrevious(linkedValueRemove.getPrevious()));
        } else {
            this.lastKey = linkedValueRemove.getPrevious();
        }
        return linkedValueRemove.getValue();
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        LinkedValue<V> linkedValue = this.hashMapBuilder.get(obj);
        if (linkedValue == null || !aa4.e(linkedValue.getValue(), obj2)) {
            return false;
        }
        remove(obj);
        return true;
    }
}
