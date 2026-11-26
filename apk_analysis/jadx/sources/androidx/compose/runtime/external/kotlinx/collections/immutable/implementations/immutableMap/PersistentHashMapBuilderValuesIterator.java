package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

/* JADX INFO: loaded from: classes2.dex */
public final class PersistentHashMapBuilderValuesIterator<K, V> extends PersistentHashMapBuilderBaseIterator<K, V, V> {
    public static final int $stable = 8;

    /* JADX WARN: Illegal instructions before constructor call */
    public PersistentHashMapBuilderValuesIterator(PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
        for (int i = 0; i < 8; i++) {
            trieNodeBaseIteratorArr[i] = new TrieNodeValuesIterator();
        }
        super(persistentHashMapBuilder, trieNodeBaseIteratorArr);
    }
}
