package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class PersistentHashMapEntriesIterator<K, V> extends PersistentHashMapBaseIterator<K, V, Map.Entry<? extends K, ? extends V>> {
    public static final int $stable = 8;

    /* JADX WARN: Illegal instructions before constructor call */
    public PersistentHashMapEntriesIterator(TrieNode<K, V> trieNode) {
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
        for (int i = 0; i < 8; i++) {
            trieNodeBaseIteratorArr[i] = new TrieNodeEntriesIterator();
        }
        super(trieNode, trieNodeBaseIteratorArr);
    }
}
