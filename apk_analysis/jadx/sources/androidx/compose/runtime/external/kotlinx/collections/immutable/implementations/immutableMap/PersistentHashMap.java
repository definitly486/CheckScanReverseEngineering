package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableCollection;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import defpackage.jh2;
import defpackage.x0;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class PersistentHashMap<K, V> extends x0<K, V> implements PersistentMap<K, V> {
    private final TrieNode<K, V> node;
    private final int size;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final PersistentHashMap EMPTY = new PersistentHashMap(TrieNode.Companion.getEMPTY$runtime(), 0);

    public PersistentHashMap(TrieNode<K, V> trieNode, int i) {
        this.node = trieNode;
        this.size = i;
    }

    private final ImmutableSet<Map.Entry<K, V>> createEntries() {
        return new PersistentHashMapEntries(this);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    /* JADX INFO: renamed from: builder */
    public PersistentHashMapBuilder<K, V> builder2() {
        return new PersistentHashMapBuilder<>(this);
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public PersistentMap<K, V> clear() {
        return Companion.emptyOf$runtime();
    }

    @Override // defpackage.x0, java.util.Map
    public boolean containsKey(Object obj) {
        return this.node.containsKey(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override // defpackage.x0, java.util.Map
    public final /* bridge */ ImmutableSet<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // defpackage.x0, java.util.Map
    public V get(Object obj) {
        return this.node.get(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override // defpackage.x0, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    public ImmutableSet<Map.Entry<K, V>> getEntries() {
        return createEntries();
    }

    @Override // defpackage.x0, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    public ImmutableSet<K> getKeys() {
        return new PersistentHashMapKeys(this);
    }

    public final TrieNode<K, V> getNode$runtime() {
        return this.node;
    }

    @Override // defpackage.x0
    public int getSize() {
        return this.size;
    }

    @Override // defpackage.x0, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    public ImmutableCollection<V> getValues() {
        return new PersistentHashMapValues(this);
    }

    @Override // defpackage.x0, java.util.Map
    public final /* bridge */ ImmutableSet<K> keySet() {
        return getKeys();
    }

    @Override // defpackage.x0, java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public PersistentHashMap<K, V> put(K k, V v) {
        TrieNode.ModificationResult<K, V> modificationResultPut = this.node.put(k != null ? k.hashCode() : 0, k, v, 0);
        if (modificationResultPut == null) {
            return this;
        }
        return new PersistentHashMap<>(modificationResultPut.getNode(), modificationResultPut.getSizeDelta() + size());
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public PersistentMap<K, V> putAll(Map<? extends K, ? extends V> map) {
        PersistentMap.Builder<K, V> builder = builder2();
        builder.putAll(map);
        return builder.build2();
    }

    @Override // defpackage.x0, java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public PersistentHashMap<K, V> remove(K k) {
        TrieNode<K, V> trieNodeRemove = this.node.remove(k != null ? k.hashCode() : 0, k, 0);
        if (this.node == trieNodeRemove) {
            return this;
        }
        return trieNodeRemove == null ? Companion.emptyOf$runtime() : new PersistentHashMap<>(trieNodeRemove, size() - 1);
    }

    @Override // defpackage.x0, java.util.Map
    public final /* bridge */ ImmutableCollection<V> values() {
        return getValues();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final <K, V> PersistentHashMap<K, V> emptyOf$runtime() {
            PersistentHashMap<K, V> persistentHashMap = PersistentHashMap.EMPTY;
            persistentHashMap.getClass();
            return persistentHashMap;
        }

        private Companion() {
        }
    }

    @Override // defpackage.x0, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    public final Set<Map.Entry<K, V>> getEntries() {
        return createEntries();
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public PersistentHashMap<K, V> remove(K k, V v) {
        TrieNode<K, V> trieNodeRemove = this.node.remove(k != null ? k.hashCode() : 0, k, v, 0);
        if (this.node == trieNodeRemove) {
            return this;
        }
        if (trieNodeRemove == null) {
            return Companion.emptyOf$runtime();
        }
        return new PersistentHashMap<>(trieNodeRemove, size() - 1);
    }
}
