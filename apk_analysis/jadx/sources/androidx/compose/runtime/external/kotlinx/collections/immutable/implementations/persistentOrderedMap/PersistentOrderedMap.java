package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableCollection;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.x0;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class PersistentOrderedMap<K, V> extends x0<K, V> implements PersistentMap<K, V> {
    private static final PersistentOrderedMap EMPTY;
    private final Object firstKey;
    private final PersistentHashMap<K, LinkedValue<V>> hashMap;
    private final Object lastKey;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    static {
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        EMPTY = new PersistentOrderedMap(endOfChain, endOfChain, PersistentHashMap.Companion.emptyOf$runtime());
    }

    public PersistentOrderedMap(Object obj, Object obj2, PersistentHashMap<K, LinkedValue<V>> persistentHashMap) {
        this.firstKey = obj;
        this.lastKey = obj2;
        this.hashMap = persistentHashMap;
    }

    private final ImmutableSet<Map.Entry<K, V>> createEntries() {
        return new PersistentOrderedMapEntries(this);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    /* JADX INFO: renamed from: builder */
    public PersistentMap.Builder<K, V> builder2() {
        return new PersistentOrderedMapBuilder(this);
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public PersistentMap<K, V> clear() {
        return Companion.emptyOf$runtime();
    }

    @Override // defpackage.x0, java.util.Map
    public boolean containsKey(Object obj) {
        return this.hashMap.containsKey(obj);
    }

    @Override // defpackage.x0, java.util.Map
    public final /* bridge */ ImmutableSet<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // defpackage.x0, java.util.Map
    public V get(Object obj) {
        LinkedValue<V> linkedValue = this.hashMap.get(obj);
        if (linkedValue != null) {
            return linkedValue.getValue();
        }
        return null;
    }

    @Override // defpackage.x0, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    public ImmutableSet<Map.Entry<K, V>> getEntries() {
        return createEntries();
    }

    public final Object getFirstKey$runtime() {
        return this.firstKey;
    }

    public final PersistentHashMap<K, LinkedValue<V>> getHashMap$runtime() {
        return this.hashMap;
    }

    @Override // defpackage.x0, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    public ImmutableSet<K> getKeys() {
        return new PersistentOrderedMapKeys(this);
    }

    public final Object getLastKey$runtime() {
        return this.lastKey;
    }

    @Override // defpackage.x0
    public int getSize() {
        return this.hashMap.size();
    }

    @Override // defpackage.x0, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    public ImmutableCollection<V> getValues() {
        return new PersistentOrderedMapValues(this);
    }

    @Override // defpackage.x0, java.util.Map
    public final /* bridge */ ImmutableSet<K> keySet() {
        return getKeys();
    }

    @Override // defpackage.x0, java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public PersistentOrderedMap<K, V> put(K k, V v) {
        boolean zIsEmpty = isEmpty();
        PersistentHashMap<K, LinkedValue<V>> persistentHashMap = this.hashMap;
        if (zIsEmpty) {
            return new PersistentOrderedMap<>(k, k, persistentHashMap.put((Object) k, new LinkedValue<>(v)));
        }
        LinkedValue<V> linkedValue = persistentHashMap.get(k);
        if (linkedValue != null) {
            if (linkedValue.getValue() == v) {
                return this;
            }
            return new PersistentOrderedMap<>(this.firstKey, this.lastKey, this.hashMap.put((Object) k, linkedValue.withValue(v)));
        }
        Object obj = this.lastKey;
        LinkedValue<V> linkedValue2 = this.hashMap.get(obj);
        linkedValue2.getClass();
        return new PersistentOrderedMap<>(this.firstKey, k, this.hashMap.put((Object) obj, linkedValue2.withNext(k)).put((Object) k, new LinkedValue<>(v, obj)));
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public PersistentMap<K, V> putAll(Map<? extends K, ? extends V> map) {
        PersistentMap.Builder<K, V> builder = builder2();
        builder.putAll(map);
        return builder.build2();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap, java.util.Map] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2, types: [androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap, java.util.Map] */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    @Override // defpackage.x0, java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public PersistentOrderedMap<K, V> remove(K k) {
        LinkedValue<V> linkedValue = this.hashMap.get(k);
        if (linkedValue == null) {
            return this;
        }
        PersistentHashMap<K, LinkedValue<V>> persistentHashMapRemove = this.hashMap.remove((Object) k);
        ?? r5 = persistentHashMapRemove;
        if (linkedValue.getHasPrevious()) {
            Object obj = persistentHashMapRemove.get(linkedValue.getPrevious());
            obj.getClass();
            r5 = (PersistentHashMap<K, LinkedValue<V>>) persistentHashMapRemove.put(linkedValue.getPrevious(), ((LinkedValue) obj).withNext(linkedValue.getNext()));
        }
        ?? Put = r5;
        if (linkedValue.getHasNext()) {
            Object obj2 = r5.get(linkedValue.getNext());
            obj2.getClass();
            Put = r5.put(linkedValue.getNext(), ((LinkedValue) obj2).withPrevious(linkedValue.getPrevious()));
        }
        return new PersistentOrderedMap<>(!linkedValue.getHasPrevious() ? linkedValue.getNext() : this.firstKey, !linkedValue.getHasNext() ? linkedValue.getPrevious() : this.lastKey, Put);
    }

    @Override // defpackage.x0, java.util.Map
    public final /* bridge */ ImmutableCollection<V> values() {
        return getValues();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final <K, V> PersistentOrderedMap<K, V> emptyOf$runtime() {
            PersistentOrderedMap<K, V> persistentOrderedMap = PersistentOrderedMap.EMPTY;
            persistentOrderedMap.getClass();
            return persistentOrderedMap;
        }

        private Companion() {
        }
    }

    @Override // defpackage.x0, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    public final Set<Map.Entry<K, V>> getEntries() {
        return createEntries();
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public PersistentOrderedMap<K, V> remove(K k, V v) {
        LinkedValue<V> linkedValue = this.hashMap.get(k);
        return (linkedValue != null && aa4.e(linkedValue.getValue(), v)) ? remove((Object) k) : this;
    }
}
