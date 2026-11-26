package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import defpackage.aa4;
import defpackage.ln;
import defpackage.ud;
import defpackage.v39;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class PersistentHashMapBuilderBaseIterator<K, V, T> extends PersistentHashMapBaseIterator<K, V, T> implements Iterator<T> {
    public static final int $stable = 8;
    private final PersistentHashMapBuilder<K, V> builder;
    private int expectedModCount;
    private K lastIteratedKey;
    private boolean nextWasInvoked;

    public PersistentHashMapBuilderBaseIterator(PersistentHashMapBuilder<K, V> persistentHashMapBuilder, TrieNodeBaseIterator<K, V, T>[] trieNodeBaseIteratorArr) {
        super(persistentHashMapBuilder.getNode$runtime(), trieNodeBaseIteratorArr);
        this.builder = persistentHashMapBuilder;
        this.expectedModCount = persistentHashMapBuilder.getModCount$runtime();
    }

    private final void checkForComodification() {
        if (this.builder.getModCount$runtime() == this.expectedModCount) {
            return;
        }
        ln.e();
    }

    private final void checkNextWasInvoked() {
        if (this.nextWasInvoked) {
            return;
        }
        ud.g();
    }

    private final void resetPath(int i, TrieNode<?, ?> trieNode, K k, int i2) {
        int i3 = i2 * 5;
        if (i3 > 30) {
            getPath()[i2].reset(trieNode.getBuffer$runtime(), trieNode.getBuffer$runtime().length, 0);
            while (!aa4.e(getPath()[i2].currentKey(), k)) {
                getPath()[i2].moveToNextKey();
            }
            setPathLastIndex(i2);
            return;
        }
        int iIndexSegment = 1 << TrieNodeKt.indexSegment(i, i3);
        if (trieNode.hasEntryAt$runtime(iIndexSegment)) {
            getPath()[i2].reset(trieNode.getBuffer$runtime(), trieNode.entryCount$runtime() * 2, trieNode.entryKeyIndex$runtime(iIndexSegment));
            setPathLastIndex(i2);
        } else {
            int iNodeIndex$runtime = trieNode.nodeIndex$runtime(iIndexSegment);
            TrieNode<?, ?> trieNodeNodeAtIndex$runtime = trieNode.nodeAtIndex$runtime(iNodeIndex$runtime);
            getPath()[i2].reset(trieNode.getBuffer$runtime(), trieNode.entryCount$runtime() * 2, iNodeIndex$runtime);
            resetPath(i, trieNodeNodeAtIndex$runtime, k, i2 + 1);
        }
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBaseIterator, java.util.Iterator
    public T next() {
        checkForComodification();
        this.lastIteratedKey = currentKey();
        this.nextWasInvoked = true;
        return (T) super.next();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBaseIterator, java.util.Iterator
    public void remove() {
        checkNextWasInvoked();
        if (hasNext()) {
            K kCurrentKey = currentKey();
            v39.b(this.builder).remove(this.lastIteratedKey);
            resetPath(kCurrentKey != null ? kCurrentKey.hashCode() : 0, this.builder.getNode$runtime(), kCurrentKey, 0);
        } else {
            v39.b(this.builder).remove(this.lastIteratedKey);
        }
        this.lastIteratedKey = null;
        this.nextWasInvoked = false;
        this.expectedModCount = this.builder.getModCount$runtime();
    }

    public final void setValue(K k, V v) {
        if (this.builder.containsKey(k)) {
            if (hasNext()) {
                K kCurrentKey = currentKey();
                this.builder.put(k, v);
                resetPath(kCurrentKey != null ? kCurrentKey.hashCode() : 0, this.builder.getNode$runtime(), kCurrentKey, 0);
            } else {
                this.builder.put(k, v);
            }
            this.expectedModCount = this.builder.getModCount$runtime();
        }
    }
}
