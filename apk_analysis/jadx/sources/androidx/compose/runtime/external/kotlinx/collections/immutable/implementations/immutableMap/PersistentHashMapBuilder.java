package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import defpackage.e1;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class PersistentHashMapBuilder<K, V> extends e1<K, V> implements PersistentMap.Builder<K, V> {
    public static final int $stable = 8;
    private PersistentHashMap<K, V> map;
    private int modCount;
    private TrieNode<K, V> node;
    private V operationResult;
    private MutabilityOwnership ownership = new MutabilityOwnership();
    private int size;

    public PersistentHashMapBuilder(PersistentHashMap<K, V> persistentHashMap) {
        this.map = persistentHashMap;
        this.node = this.map.getNode$runtime();
        this.size = this.map.size();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap.Builder
    public PersistentHashMap<K, V> build() {
        PersistentHashMap<K, V> persistentHashMap;
        if (this.node == this.map.getNode$runtime()) {
            persistentHashMap = this.map;
        } else {
            this.ownership = new MutabilityOwnership();
            persistentHashMap = new PersistentHashMap<>(this.node, size());
        }
        this.map = persistentHashMap;
        return persistentHashMap;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        TrieNode<K, V> eMPTY$runtime = TrieNode.Companion.getEMPTY$runtime();
        eMPTY$runtime.getClass();
        this.node = eMPTY$runtime;
        setSize(0);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.node.containsKey(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        return this.node.get(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override // defpackage.e1
    public Set<Map.Entry<K, V>> getEntries() {
        return new PersistentHashMapBuilderEntries(this);
    }

    @Override // defpackage.e1
    public Set<K> getKeys() {
        return new PersistentHashMapBuilderKeys(this);
    }

    public final int getModCount$runtime() {
        return this.modCount;
    }

    public final TrieNode<K, V> getNode$runtime() {
        return this.node;
    }

    public final V getOperationResult$runtime() {
        return this.operationResult;
    }

    public final MutabilityOwnership getOwnership() {
        return this.ownership;
    }

    @Override // defpackage.e1
    public int getSize() {
        return this.size;
    }

    @Override // defpackage.e1
    public Collection<V> getValues() {
        return new PersistentHashMapBuilderValues(this);
    }

    @Override // defpackage.e1, java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        this.operationResult = null;
        this.node = this.node.mutablePut(k != null ? k.hashCode() : 0, k, v, 0, this);
        return this.operationResult;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        PersistentHashMap<K, V> persistentHashMapBuild = map instanceof PersistentHashMap ? (PersistentHashMap) map : null;
        if (persistentHashMapBuild == null) {
            PersistentHashMapBuilder persistentHashMapBuilder = map instanceof PersistentHashMapBuilder ? (PersistentHashMapBuilder) map : null;
            persistentHashMapBuild = persistentHashMapBuilder != null ? persistentHashMapBuilder.build() : null;
        }
        if (persistentHashMapBuild == null) {
            super.putAll(map);
            return;
        }
        DeltaCounter deltaCounter = new DeltaCounter(0, 1, null);
        int size = size();
        TrieNode<K, V> trieNode = this.node;
        TrieNode<K, V> node$runtime = persistentHashMapBuild.getNode$runtime();
        node$runtime.getClass();
        this.node = trieNode.mutablePutAll(node$runtime, 0, deltaCounter, this);
        int size2 = (persistentHashMapBuild.size() + size) - deltaCounter.getCount();
        if (size != size2) {
            setSize(size2);
        }
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        int size = size();
        TrieNode trieNodeMutableRemove = this.node.mutableRemove(obj != null ? obj.hashCode() : 0, obj, obj2, 0, this);
        if (trieNodeMutableRemove == null) {
            trieNodeMutableRemove = TrieNode.Companion.getEMPTY$runtime();
            trieNodeMutableRemove.getClass();
        }
        this.node = trieNodeMutableRemove;
        return size != size();
    }

    public final void setModCount$runtime(int i) {
        this.modCount = i;
    }

    public final void setNode$runtime(TrieNode<K, V> trieNode) {
        this.node = trieNode;
    }

    public final void setOperationResult$runtime(V v) {
        this.operationResult = v;
    }

    public final void setOwnership(MutabilityOwnership mutabilityOwnership) {
        this.ownership = mutabilityOwnership;
    }

    public void setSize(int i) {
        this.size = i;
        this.modCount++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        this.operationResult = null;
        TrieNode trieNodeMutableRemove = this.node.mutableRemove(obj != null ? obj.hashCode() : 0, obj, 0, this);
        if (trieNodeMutableRemove == null) {
            trieNodeMutableRemove = TrieNode.Companion.getEMPTY$runtime();
            trieNodeMutableRemove.getClass();
        }
        this.node = trieNodeMutableRemove;
        return this.operationResult;
    }
}
