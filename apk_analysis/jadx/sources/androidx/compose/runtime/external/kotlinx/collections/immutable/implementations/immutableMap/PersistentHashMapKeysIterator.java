package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

/* JADX INFO: loaded from: classes2.dex */
public final class PersistentHashMapKeysIterator<K, V> extends PersistentHashMapBaseIterator<K, V, K> {
    public static final int $stable = 8;

    /* JADX WARN: Illegal instructions before constructor call */
    public PersistentHashMapKeysIterator(TrieNode<K, V> trieNode) {
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
        for (int i = 0; i < 8; i++) {
            trieNodeBaseIteratorArr[i] = new TrieNodeKeysIterator();
        }
        super(trieNode, trieNodeBaseIteratorArr);
    }
}
