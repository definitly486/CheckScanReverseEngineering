package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import defpackage.aa4;
import defpackage.gm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.nl3;
import defpackage.w74;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class TrieNode<K, V> {
    private Object[] buffer;
    private int dataMap;
    private int nodeMap;
    private final MutabilityOwnership ownedBy;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final TrieNode EMPTY = new TrieNode(0, 0, new Object[0]);

    public static final class ModificationResult<K, V> {
        public static final int $stable = 8;
        private TrieNode<K, V> node;
        private final int sizeDelta;

        public ModificationResult(TrieNode<K, V> trieNode, int i) {
            this.node = trieNode;
            this.sizeDelta = i;
        }

        public final TrieNode<K, V> getNode() {
            return this.node;
        }

        public final int getSizeDelta() {
            return this.sizeDelta;
        }

        public final ModificationResult<K, V> replaceNode(nl3<? super TrieNode<K, V>, TrieNode<K, V>> nl3Var) {
            setNode(nl3Var.invoke(getNode()));
            return this;
        }

        public final void setNode(TrieNode<K, V> trieNode) {
            this.node = trieNode;
        }
    }

    public TrieNode(int i, int i2, Object[] objArr, MutabilityOwnership mutabilityOwnership) {
        this.dataMap = i;
        this.nodeMap = i2;
        this.ownedBy = mutabilityOwnership;
        this.buffer = objArr;
    }

    private final void accept(gm3<? super TrieNode<K, V>, ? super Integer, ? super Integer, ? super Integer, ? super Integer, j59> gm3Var, int i, int i2) {
        gm3Var.invoke(this, Integer.valueOf(i2), Integer.valueOf(i), Integer.valueOf(this.dataMap), Integer.valueOf(this.nodeMap));
        int i3 = this.nodeMap;
        while (i3 != 0) {
            int iLowestOneBit = Integer.lowestOneBit(i3);
            nodeAtIndex$runtime(nodeIndex$runtime(iLowestOneBit)).accept(gm3Var, (Integer.numberOfTrailingZeros(iLowestOneBit) << i2) + i, i2 + 5);
            i3 -= iLowestOneBit;
        }
    }

    private final ModificationResult<K, V> asInsertResult() {
        return new ModificationResult<>(this, 1);
    }

    private final ModificationResult<K, V> asUpdateResult() {
        return new ModificationResult<>(this, 0);
    }

    private final Object[] bufferMoveEntryToNode(int i, int i2, int i3, K k, V v, int i4, MutabilityOwnership mutabilityOwnership) {
        K kKeyAtIndex = keyAtIndex(i);
        return TrieNodeKt.replaceEntryWithNode(this.buffer, i, nodeIndex$runtime(i2) + 1, makeNode(kKeyAtIndex != null ? kKeyAtIndex.hashCode() : 0, kKeyAtIndex, valueAtKeyIndex(i), i3, k, v, i4 + 5, mutabilityOwnership));
    }

    private final int calculateSize() {
        if (this.nodeMap == 0) {
            return this.buffer.length / 2;
        }
        int iBitCount = Integer.bitCount(this.dataMap);
        int length = this.buffer.length;
        for (int i = iBitCount * 2; i < length; i++) {
            iBitCount += nodeAtIndex$runtime(i).calculateSize();
        }
        return iBitCount;
    }

    private final boolean collisionContainsKey(K k) {
        w74 w74VarM = kx6.m(2, kx6.n(0, this.buffer.length));
        int i = w74VarM.b;
        int i2 = w74VarM.c;
        int i3 = w74VarM.d;
        if ((i3 > 0 && i <= i2) || (i3 < 0 && i2 <= i)) {
            while (!aa4.e(k, this.buffer[i])) {
                if (i != i2) {
                    i += i3;
                }
            }
            return true;
        }
        return false;
    }

    private final V collisionGet(K k) {
        w74 w74VarM = kx6.m(2, kx6.n(0, this.buffer.length));
        int i = w74VarM.b;
        int i2 = w74VarM.c;
        int i3 = w74VarM.d;
        if ((i3 <= 0 || i > i2) && (i3 >= 0 || i2 > i)) {
            return null;
        }
        while (!aa4.e(k, keyAtIndex(i))) {
            if (i == i2) {
                return null;
            }
            i += i3;
        }
        return valueAtKeyIndex(i);
    }

    private final ModificationResult<K, V> collisionPut(K k, V v) {
        w74 w74VarM = kx6.m(2, kx6.n(0, this.buffer.length));
        int i = w74VarM.b;
        int i2 = w74VarM.c;
        int i3 = w74VarM.d;
        if ((i3 > 0 && i <= i2) || (i3 < 0 && i2 <= i)) {
            while (!aa4.e(k, keyAtIndex(i))) {
                if (i != i2) {
                    i += i3;
                }
            }
            if (v == valueAtKeyIndex(i)) {
                return null;
            }
            Object[] objArr = this.buffer;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            objArrCopyOf[i + 1] = v;
            return new TrieNode(0, 0, objArrCopyOf).asUpdateResult();
        }
        return new TrieNode(0, 0, TrieNodeKt.insertEntryAtIndex(this.buffer, 0, k, v)).asInsertResult();
    }

    private final TrieNode<K, V> collisionRemove(K k, V v) {
        w74 w74VarM = kx6.m(2, kx6.n(0, this.buffer.length));
        int i = w74VarM.b;
        int i2 = w74VarM.c;
        int i3 = w74VarM.d;
        if ((i3 > 0 && i <= i2) || (i3 < 0 && i2 <= i)) {
            while (true) {
                if (aa4.e(k, keyAtIndex(i)) && aa4.e(v, valueAtKeyIndex(i))) {
                    return collisionRemoveEntryAtIndex(i);
                }
                if (i != i2) {
                    i += i3;
                }
            }
        }
        return this;
    }

    private final TrieNode<K, V> collisionRemoveEntryAtIndex(int i) {
        Object[] objArr = this.buffer;
        if (objArr.length == 2) {
            return null;
        }
        return new TrieNode<>(0, 0, TrieNodeKt.removeEntryAtIndex(objArr, i));
    }

    private final boolean elementsIdentityEquals(TrieNode<K, V> trieNode) {
        if (this == trieNode) {
            return true;
        }
        if (this.nodeMap != trieNode.nodeMap || this.dataMap != trieNode.dataMap) {
            return false;
        }
        int length = this.buffer.length;
        for (int i = 0; i < length; i++) {
            if (this.buffer[i] != trieNode.buffer[i]) {
                return false;
            }
        }
        return true;
    }

    private final boolean hasNodeAt(int i) {
        return (this.nodeMap & i) != 0;
    }

    private final TrieNode<K, V> insertEntryAt(int i, K k, V v) {
        return new TrieNode<>(i | this.dataMap, this.nodeMap, TrieNodeKt.insertEntryAtIndex(this.buffer, entryKeyIndex$runtime(i), k, v));
    }

    private final K keyAtIndex(int i) {
        return (K) this.buffer[i];
    }

    private final TrieNode<K, V> makeNode(int i, K k, V v, int i2, K k2, V v2, int i3, MutabilityOwnership mutabilityOwnership) {
        if (i3 > 30) {
            return new TrieNode<>(0, 0, new Object[]{k, v, k2, v2}, mutabilityOwnership);
        }
        int iIndexSegment = TrieNodeKt.indexSegment(i, i3);
        int iIndexSegment2 = TrieNodeKt.indexSegment(i2, i3);
        if (iIndexSegment != iIndexSegment2) {
            return new TrieNode<>((1 << iIndexSegment) | (1 << iIndexSegment2), 0, iIndexSegment < iIndexSegment2 ? new Object[]{k, v, k2, v2} : new Object[]{k2, v2, k, v}, mutabilityOwnership);
        }
        return new TrieNode<>(0, 1 << iIndexSegment, new Object[]{makeNode(i, k, v, i2, k2, v2, i3 + 5, mutabilityOwnership)}, mutabilityOwnership);
    }

    private final TrieNode<K, V> moveEntryToNode(int i, int i2, int i3, K k, V v, int i4) {
        return new TrieNode<>(this.dataMap ^ i2, this.nodeMap | i2, bufferMoveEntryToNode(i, i2, i3, k, v, i4, null));
    }

    private final TrieNode<K, V> mutableCollisionPut(K k, V v, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        w74 w74VarM = kx6.m(2, kx6.n(0, this.buffer.length));
        int i = w74VarM.b;
        int i2 = w74VarM.c;
        int i3 = w74VarM.d;
        if ((i3 > 0 && i <= i2) || (i3 < 0 && i2 <= i)) {
            while (!aa4.e(k, keyAtIndex(i))) {
                if (i != i2) {
                    i += i3;
                }
            }
            persistentHashMapBuilder.setOperationResult$runtime(valueAtKeyIndex(i));
            if (this.ownedBy == persistentHashMapBuilder.getOwnership()) {
                this.buffer[i + 1] = v;
                return this;
            }
            persistentHashMapBuilder.setModCount$runtime(persistentHashMapBuilder.getModCount$runtime() + 1);
            Object[] objArr = this.buffer;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            objArrCopyOf[i + 1] = v;
            return new TrieNode<>(0, 0, objArrCopyOf, persistentHashMapBuilder.getOwnership());
        }
        persistentHashMapBuilder.setSize(persistentHashMapBuilder.size() + 1);
        return new TrieNode<>(0, 0, TrieNodeKt.insertEntryAtIndex(this.buffer, 0, k, v), persistentHashMapBuilder.getOwnership());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final TrieNode<K, V> mutableCollisionPutAll(TrieNode<K, V> trieNode, DeltaCounter deltaCounter, MutabilityOwnership mutabilityOwnership) {
        CommonFunctionsKt.m5571assert(this.nodeMap == 0);
        CommonFunctionsKt.m5571assert(this.dataMap == 0);
        CommonFunctionsKt.m5571assert(trieNode.nodeMap == 0);
        CommonFunctionsKt.m5571assert(trieNode.dataMap == 0);
        Object[] objArr = this.buffer;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length + trieNode.buffer.length);
        int length = this.buffer.length;
        w74 w74VarM = kx6.m(2, kx6.n(0, trieNode.buffer.length));
        int i = w74VarM.b;
        int i2 = w74VarM.c;
        int i3 = w74VarM.d;
        if ((i3 > 0 && i <= i2) || (i3 < 0 && i2 <= i)) {
            while (true) {
                if (collisionContainsKey(trieNode.buffer[i])) {
                    deltaCounter.setCount(deltaCounter.getCount() + 1);
                } else {
                    Object[] objArr2 = trieNode.buffer;
                    objArrCopyOf[length] = objArr2[i];
                    objArrCopyOf[length + 1] = objArr2[i + 1];
                    length += 2;
                }
                if (i == i2) {
                    break;
                }
                i += i3;
            }
        }
        if (length == this.buffer.length) {
            return this;
        }
        if (length == trieNode.buffer.length) {
            return trieNode;
        }
        return length == objArrCopyOf.length ? new TrieNode<>(0, 0, objArrCopyOf, mutabilityOwnership) : new TrieNode<>(0, 0, Arrays.copyOf(objArrCopyOf, length), mutabilityOwnership);
    }

    private final TrieNode<K, V> mutableCollisionRemove(K k, V v, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        w74 w74VarM = kx6.m(2, kx6.n(0, this.buffer.length));
        int i = w74VarM.b;
        int i2 = w74VarM.c;
        int i3 = w74VarM.d;
        if ((i3 > 0 && i <= i2) || (i3 < 0 && i2 <= i)) {
            while (true) {
                if (aa4.e(k, keyAtIndex(i)) && aa4.e(v, valueAtKeyIndex(i))) {
                    return mutableCollisionRemoveEntryAtIndex(i, persistentHashMapBuilder);
                }
                if (i != i2) {
                    i += i3;
                }
            }
        }
        return this;
    }

    private final TrieNode<K, V> mutableCollisionRemoveEntryAtIndex(int i, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        persistentHashMapBuilder.setSize(persistentHashMapBuilder.size() - 1);
        persistentHashMapBuilder.setOperationResult$runtime(valueAtKeyIndex(i));
        if (this.buffer.length == 2) {
            return null;
        }
        MutabilityOwnership mutabilityOwnership = this.ownedBy;
        MutabilityOwnership ownership = persistentHashMapBuilder.getOwnership();
        Object[] objArr = this.buffer;
        if (mutabilityOwnership != ownership) {
            return new TrieNode<>(0, 0, TrieNodeKt.removeEntryAtIndex(objArr, i), persistentHashMapBuilder.getOwnership());
        }
        this.buffer = TrieNodeKt.removeEntryAtIndex(objArr, i);
        return this;
    }

    private final TrieNode<K, V> mutableInsertEntryAt(int i, K k, V v, MutabilityOwnership mutabilityOwnership) {
        int iEntryKeyIndex$runtime = entryKeyIndex$runtime(i);
        MutabilityOwnership mutabilityOwnership2 = this.ownedBy;
        Object[] objArr = this.buffer;
        if (mutabilityOwnership2 != mutabilityOwnership) {
            return new TrieNode<>(i | this.dataMap, this.nodeMap, TrieNodeKt.insertEntryAtIndex(objArr, iEntryKeyIndex$runtime, k, v), mutabilityOwnership);
        }
        this.buffer = TrieNodeKt.insertEntryAtIndex(objArr, iEntryKeyIndex$runtime, k, v);
        this.dataMap = i | this.dataMap;
        return this;
    }

    private final TrieNode<K, V> mutableMoveEntryToNode(int i, int i2, int i3, K k, V v, int i4, MutabilityOwnership mutabilityOwnership) {
        if (this.ownedBy != mutabilityOwnership) {
            return new TrieNode<>(this.dataMap ^ i2, this.nodeMap | i2, bufferMoveEntryToNode(i, i2, i3, k, v, i4, mutabilityOwnership), mutabilityOwnership);
        }
        this.buffer = bufferMoveEntryToNode(i, i2, i3, k, v, i4, mutabilityOwnership);
        this.dataMap ^= i2;
        this.nodeMap |= i2;
        return this;
    }

    private final TrieNode<K, V> mutablePutAllFromOtherNodeCell(TrieNode<K, V> trieNode, int i, int i2, DeltaCounter deltaCounter, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        if (hasNodeAt(i)) {
            TrieNode<K, V> trieNodeNodeAtIndex$runtime = nodeAtIndex$runtime(nodeIndex$runtime(i));
            if (trieNode.hasNodeAt(i)) {
                return trieNodeNodeAtIndex$runtime.mutablePutAll(trieNode.nodeAtIndex$runtime(trieNode.nodeIndex$runtime(i)), i2 + 5, deltaCounter, persistentHashMapBuilder);
            }
            if (!trieNode.hasEntryAt$runtime(i)) {
                return trieNodeNodeAtIndex$runtime;
            }
            int iEntryKeyIndex$runtime = trieNode.entryKeyIndex$runtime(i);
            K kKeyAtIndex = trieNode.keyAtIndex(iEntryKeyIndex$runtime);
            V vValueAtKeyIndex = trieNode.valueAtKeyIndex(iEntryKeyIndex$runtime);
            int size = persistentHashMapBuilder.size();
            TrieNode<K, V> trieNodeMutablePut = trieNodeNodeAtIndex$runtime.mutablePut(kKeyAtIndex != null ? kKeyAtIndex.hashCode() : 0, kKeyAtIndex, vValueAtKeyIndex, i2 + 5, persistentHashMapBuilder);
            if (persistentHashMapBuilder.size() == size) {
                deltaCounter.setCount(deltaCounter.getCount() + 1);
            }
            return trieNodeMutablePut;
        }
        if (!trieNode.hasNodeAt(i)) {
            int iEntryKeyIndex$runtime2 = entryKeyIndex$runtime(i);
            K kKeyAtIndex2 = keyAtIndex(iEntryKeyIndex$runtime2);
            V vValueAtKeyIndex2 = valueAtKeyIndex(iEntryKeyIndex$runtime2);
            int iEntryKeyIndex$runtime3 = trieNode.entryKeyIndex$runtime(i);
            K kKeyAtIndex3 = trieNode.keyAtIndex(iEntryKeyIndex$runtime3);
            return makeNode(kKeyAtIndex2 != null ? kKeyAtIndex2.hashCode() : 0, kKeyAtIndex2, vValueAtKeyIndex2, kKeyAtIndex3 != null ? kKeyAtIndex3.hashCode() : 0, kKeyAtIndex3, trieNode.valueAtKeyIndex(iEntryKeyIndex$runtime3), i2 + 5, persistentHashMapBuilder.getOwnership());
        }
        TrieNode<K, V> trieNodeNodeAtIndex$runtime2 = trieNode.nodeAtIndex$runtime(trieNode.nodeIndex$runtime(i));
        if (!hasEntryAt$runtime(i)) {
            return trieNodeNodeAtIndex$runtime2;
        }
        int iEntryKeyIndex$runtime4 = entryKeyIndex$runtime(i);
        K kKeyAtIndex4 = keyAtIndex(iEntryKeyIndex$runtime4);
        int i3 = i2 + 5;
        if (!trieNodeNodeAtIndex$runtime2.containsKey(kKeyAtIndex4 != null ? kKeyAtIndex4.hashCode() : 0, kKeyAtIndex4, i3)) {
            return trieNodeNodeAtIndex$runtime2.mutablePut(kKeyAtIndex4 != null ? kKeyAtIndex4.hashCode() : 0, kKeyAtIndex4, valueAtKeyIndex(iEntryKeyIndex$runtime4), i3, persistentHashMapBuilder);
        }
        deltaCounter.setCount(deltaCounter.getCount() + 1);
        return trieNodeNodeAtIndex$runtime2;
    }

    private final TrieNode<K, V> mutableRemoveEntryAtIndex(int i, int i2, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        persistentHashMapBuilder.setSize(persistentHashMapBuilder.size() - 1);
        persistentHashMapBuilder.setOperationResult$runtime(valueAtKeyIndex(i));
        if (this.buffer.length == 2) {
            return null;
        }
        MutabilityOwnership mutabilityOwnership = this.ownedBy;
        MutabilityOwnership ownership = persistentHashMapBuilder.getOwnership();
        Object[] objArr = this.buffer;
        if (mutabilityOwnership != ownership) {
            return new TrieNode<>(i2 ^ this.dataMap, this.nodeMap, TrieNodeKt.removeEntryAtIndex(objArr, i), persistentHashMapBuilder.getOwnership());
        }
        this.buffer = TrieNodeKt.removeEntryAtIndex(objArr, i);
        this.dataMap ^= i2;
        return this;
    }

    private final TrieNode<K, V> mutableRemoveNodeAtIndex(int i, int i2, MutabilityOwnership mutabilityOwnership) {
        Object[] objArr = this.buffer;
        if (objArr.length == 1) {
            return null;
        }
        if (this.ownedBy != mutabilityOwnership) {
            return new TrieNode<>(this.dataMap, this.nodeMap ^ i2, TrieNodeKt.removeNodeAtIndex(objArr, i), mutabilityOwnership);
        }
        this.buffer = TrieNodeKt.removeNodeAtIndex(objArr, i);
        this.nodeMap ^= i2;
        return this;
    }

    private final TrieNode<K, V> mutableReplaceNode(TrieNode<K, V> trieNode, TrieNode<K, V> trieNode2, int i, int i2, MutabilityOwnership mutabilityOwnership) {
        if (trieNode2 == null) {
            return mutableRemoveNodeAtIndex(i, i2, mutabilityOwnership);
        }
        return (this.ownedBy == mutabilityOwnership || trieNode != trieNode2) ? mutableUpdateNodeAtIndex(i, trieNode2, mutabilityOwnership) : this;
    }

    private final TrieNode<K, V> mutableUpdateNodeAtIndex(int i, TrieNode<K, V> trieNode, MutabilityOwnership mutabilityOwnership) {
        Object[] objArr = this.buffer;
        if (objArr.length == 1 && trieNode.buffer.length == 2 && trieNode.nodeMap == 0) {
            trieNode.dataMap = this.nodeMap;
            return trieNode;
        }
        if (this.ownedBy == mutabilityOwnership) {
            objArr[i] = trieNode;
            return this;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        objArrCopyOf[i] = trieNode;
        return new TrieNode<>(this.dataMap, this.nodeMap, objArrCopyOf, mutabilityOwnership);
    }

    private final TrieNode<K, V> mutableUpdateValueAtIndex(int i, V v, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        if (this.ownedBy == persistentHashMapBuilder.getOwnership()) {
            this.buffer[i + 1] = v;
            return this;
        }
        persistentHashMapBuilder.setModCount$runtime(persistentHashMapBuilder.getModCount$runtime() + 1);
        Object[] objArr = this.buffer;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        objArrCopyOf[i + 1] = v;
        return new TrieNode<>(this.dataMap, this.nodeMap, objArrCopyOf, persistentHashMapBuilder.getOwnership());
    }

    private final TrieNode<K, V> removeEntryAtIndex(int i, int i2) {
        Object[] objArr = this.buffer;
        if (objArr.length == 2) {
            return null;
        }
        return new TrieNode<>(i2 ^ this.dataMap, this.nodeMap, TrieNodeKt.removeEntryAtIndex(objArr, i));
    }

    private final TrieNode<K, V> removeNodeAtIndex(int i, int i2) {
        Object[] objArr = this.buffer;
        if (objArr.length == 1) {
            return null;
        }
        return new TrieNode<>(this.dataMap, this.nodeMap ^ i2, TrieNodeKt.removeNodeAtIndex(objArr, i));
    }

    private final TrieNode<K, V> replaceNode(TrieNode<K, V> trieNode, TrieNode<K, V> trieNode2, int i, int i2) {
        if (trieNode2 == null) {
            return removeNodeAtIndex(i, i2);
        }
        return trieNode != trieNode2 ? updateNodeAtIndex(i, i2, trieNode2) : this;
    }

    private final TrieNode<K, V> updateNodeAtIndex(int i, int i2, TrieNode<K, V> trieNode) {
        Object[] objArr = trieNode.buffer;
        if (objArr.length != 2 || trieNode.nodeMap != 0) {
            Object[] objArr2 = this.buffer;
            Object[] objArrCopyOf = Arrays.copyOf(objArr2, objArr2.length);
            objArrCopyOf[i] = trieNode;
            return new TrieNode<>(this.dataMap, this.nodeMap, objArrCopyOf);
        }
        if (this.buffer.length == 1) {
            trieNode.dataMap = this.nodeMap;
            return trieNode;
        }
        return new TrieNode<>(this.dataMap ^ i2, this.nodeMap ^ i2, TrieNodeKt.replaceNodeWithEntry(this.buffer, i, entryKeyIndex$runtime(i2), objArr[0], objArr[1]));
    }

    private final TrieNode<K, V> updateValueAtIndex(int i, V v) {
        Object[] objArr = this.buffer;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        objArrCopyOf[i + 1] = v;
        return new TrieNode<>(this.dataMap, this.nodeMap, objArrCopyOf);
    }

    private final V valueAtKeyIndex(int i) {
        return (V) this.buffer[i + 1];
    }

    public final void accept$runtime(gm3<? super TrieNode<K, V>, ? super Integer, ? super Integer, ? super Integer, ? super Integer, j59> gm3Var) {
        accept(gm3Var, 0, 0);
    }

    public final boolean containsKey(int i, K k, int i2) {
        int iIndexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasEntryAt$runtime(iIndexSegment)) {
            return aa4.e(k, keyAtIndex(entryKeyIndex$runtime(iIndexSegment)));
        }
        if (!hasNodeAt(iIndexSegment)) {
            return false;
        }
        TrieNode<K, V> trieNodeNodeAtIndex$runtime = nodeAtIndex$runtime(nodeIndex$runtime(iIndexSegment));
        return i2 == 30 ? trieNodeNodeAtIndex$runtime.collisionContainsKey(k) : trieNodeNodeAtIndex$runtime.containsKey(i, k, i2 + 5);
    }

    public final int entryCount$runtime() {
        return Integer.bitCount(this.dataMap);
    }

    public final int entryKeyIndex$runtime(int i) {
        return Integer.bitCount(this.dataMap & (i - 1)) * 2;
    }

    public final V get(int i, K k, int i2) {
        int iIndexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasEntryAt$runtime(iIndexSegment)) {
            int iEntryKeyIndex$runtime = entryKeyIndex$runtime(iIndexSegment);
            if (aa4.e(k, keyAtIndex(iEntryKeyIndex$runtime))) {
                return valueAtKeyIndex(iEntryKeyIndex$runtime);
            }
            return null;
        }
        if (!hasNodeAt(iIndexSegment)) {
            return null;
        }
        TrieNode<K, V> trieNodeNodeAtIndex$runtime = nodeAtIndex$runtime(nodeIndex$runtime(iIndexSegment));
        return i2 == 30 ? trieNodeNodeAtIndex$runtime.collisionGet(k) : trieNodeNodeAtIndex$runtime.get(i, k, i2 + 5);
    }

    public final Object[] getBuffer$runtime() {
        return this.buffer;
    }

    public final boolean hasEntryAt$runtime(int i) {
        return (this.dataMap & i) != 0;
    }

    public final TrieNode<K, V> mutablePut(int i, K k, V v, int i2, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        int iIndexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasEntryAt$runtime(iIndexSegment)) {
            int iEntryKeyIndex$runtime = entryKeyIndex$runtime(iIndexSegment);
            if (aa4.e(k, keyAtIndex(iEntryKeyIndex$runtime))) {
                persistentHashMapBuilder.setOperationResult$runtime(valueAtKeyIndex(iEntryKeyIndex$runtime));
                return valueAtKeyIndex(iEntryKeyIndex$runtime) == v ? this : mutableUpdateValueAtIndex(iEntryKeyIndex$runtime, v, persistentHashMapBuilder);
            }
            persistentHashMapBuilder.setSize(persistentHashMapBuilder.size() + 1);
            return mutableMoveEntryToNode(iEntryKeyIndex$runtime, iIndexSegment, i, k, v, i2, persistentHashMapBuilder.getOwnership());
        }
        if (!hasNodeAt(iIndexSegment)) {
            persistentHashMapBuilder.setSize(persistentHashMapBuilder.size() + 1);
            return mutableInsertEntryAt(iIndexSegment, k, v, persistentHashMapBuilder.getOwnership());
        }
        int iNodeIndex$runtime = nodeIndex$runtime(iIndexSegment);
        TrieNode<K, V> trieNodeNodeAtIndex$runtime = nodeAtIndex$runtime(iNodeIndex$runtime);
        TrieNode<K, V> trieNodeMutableCollisionPut = i2 == 30 ? trieNodeNodeAtIndex$runtime.mutableCollisionPut(k, v, persistentHashMapBuilder) : trieNodeNodeAtIndex$runtime.mutablePut(i, k, v, i2 + 5, persistentHashMapBuilder);
        return trieNodeNodeAtIndex$runtime == trieNodeMutableCollisionPut ? this : mutableUpdateNodeAtIndex(iNodeIndex$runtime, trieNodeMutableCollisionPut, persistentHashMapBuilder.getOwnership());
    }

    public final TrieNode<K, V> mutablePutAll(TrieNode<K, V> trieNode, int i, DeltaCounter deltaCounter, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        TrieNode<K, V> trieNode2;
        if (this == trieNode) {
            deltaCounter.plusAssign(calculateSize());
            return this;
        }
        int i2 = i;
        if (i2 > 30) {
            return mutableCollisionPutAll(trieNode, deltaCounter, persistentHashMapBuilder.getOwnership());
        }
        int i3 = this.nodeMap | trieNode.nodeMap;
        int i4 = this.dataMap;
        int i5 = trieNode.dataMap;
        int i6 = (i4 ^ i5) & (~i3);
        int i7 = i4 & i5;
        while (i7 != 0) {
            int iLowestOneBit = Integer.lowestOneBit(i7);
            if (aa4.e(keyAtIndex(entryKeyIndex$runtime(iLowestOneBit)), trieNode.keyAtIndex(trieNode.entryKeyIndex$runtime(iLowestOneBit)))) {
                i6 |= iLowestOneBit;
            } else {
                i3 |= iLowestOneBit;
            }
            i7 ^= iLowestOneBit;
        }
        int i8 = 0;
        if (!((i3 & i6) == 0)) {
            PreconditionsKt.throwIllegalStateException("Check failed.");
        }
        if (aa4.e(this.ownedBy, persistentHashMapBuilder.getOwnership()) && this.dataMap == i6 && this.nodeMap == i3) {
            trieNode2 = this;
        } else {
            trieNode2 = new TrieNode<>(i6, i3, new Object[Integer.bitCount(i3) + (Integer.bitCount(i6) * 2)]);
        }
        int i9 = i3;
        int i10 = 0;
        while (i9 != 0) {
            int iLowestOneBit2 = Integer.lowestOneBit(i9);
            Object[] objArr = trieNode2.buffer;
            objArr[(objArr.length - 1) - i10] = mutablePutAllFromOtherNodeCell(trieNode, iLowestOneBit2, i2, deltaCounter, persistentHashMapBuilder);
            i10++;
            i9 ^= iLowestOneBit2;
            i2 = i;
        }
        while (i6 != 0) {
            int iLowestOneBit3 = Integer.lowestOneBit(i6);
            int i11 = i8 * 2;
            if (trieNode.hasEntryAt$runtime(iLowestOneBit3)) {
                int iEntryKeyIndex$runtime = trieNode.entryKeyIndex$runtime(iLowestOneBit3);
                trieNode2.buffer[i11] = trieNode.keyAtIndex(iEntryKeyIndex$runtime);
                trieNode2.buffer[i11 + 1] = trieNode.valueAtKeyIndex(iEntryKeyIndex$runtime);
                if (hasEntryAt$runtime(iLowestOneBit3)) {
                    deltaCounter.setCount(deltaCounter.getCount() + 1);
                }
            } else {
                int iEntryKeyIndex$runtime2 = entryKeyIndex$runtime(iLowestOneBit3);
                trieNode2.buffer[i11] = keyAtIndex(iEntryKeyIndex$runtime2);
                trieNode2.buffer[i11 + 1] = valueAtKeyIndex(iEntryKeyIndex$runtime2);
            }
            i8++;
            i6 ^= iLowestOneBit3;
        }
        if (elementsIdentityEquals(trieNode2)) {
            return this;
        }
        return trieNode.elementsIdentityEquals(trieNode2) ? trieNode : trieNode2;
    }

    public final TrieNode<K, V> mutableRemove(int i, K k, V v, int i2, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        PersistentHashMapBuilder<K, V> persistentHashMapBuilder2;
        TrieNode<K, V> trieNodeMutableRemove;
        int iIndexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasEntryAt$runtime(iIndexSegment)) {
            int iEntryKeyIndex$runtime = entryKeyIndex$runtime(iIndexSegment);
            return (aa4.e(k, keyAtIndex(iEntryKeyIndex$runtime)) && aa4.e(v, valueAtKeyIndex(iEntryKeyIndex$runtime))) ? mutableRemoveEntryAtIndex(iEntryKeyIndex$runtime, iIndexSegment, persistentHashMapBuilder) : this;
        }
        if (!hasNodeAt(iIndexSegment)) {
            return this;
        }
        int iNodeIndex$runtime = nodeIndex$runtime(iIndexSegment);
        TrieNode<K, V> trieNodeNodeAtIndex$runtime = nodeAtIndex$runtime(iNodeIndex$runtime);
        if (i2 == 30) {
            trieNodeMutableRemove = trieNodeNodeAtIndex$runtime.mutableCollisionRemove(k, v, persistentHashMapBuilder);
            persistentHashMapBuilder2 = persistentHashMapBuilder;
        } else {
            persistentHashMapBuilder2 = persistentHashMapBuilder;
            trieNodeMutableRemove = trieNodeNodeAtIndex$runtime.mutableRemove(i, k, v, i2 + 5, persistentHashMapBuilder2);
        }
        return mutableReplaceNode(trieNodeNodeAtIndex$runtime, trieNodeMutableRemove, iNodeIndex$runtime, iIndexSegment, persistentHashMapBuilder2.getOwnership());
    }

    public final TrieNode<K, V> nodeAtIndex$runtime(int i) {
        Object obj = this.buffer[i];
        obj.getClass();
        return (TrieNode) obj;
    }

    public final int nodeIndex$runtime(int i) {
        return (this.buffer.length - 1) - Integer.bitCount(this.nodeMap & (i - 1));
    }

    public final ModificationResult<K, V> put(int i, K k, V v, int i2) {
        ModificationResult<K, V> modificationResultPut;
        int iIndexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasEntryAt$runtime(iIndexSegment)) {
            int iEntryKeyIndex$runtime = entryKeyIndex$runtime(iIndexSegment);
            if (!aa4.e(k, keyAtIndex(iEntryKeyIndex$runtime))) {
                return moveEntryToNode(iEntryKeyIndex$runtime, iIndexSegment, i, k, v, i2).asInsertResult();
            }
            if (valueAtKeyIndex(iEntryKeyIndex$runtime) == v) {
                return null;
            }
            return updateValueAtIndex(iEntryKeyIndex$runtime, v).asUpdateResult();
        }
        if (!hasNodeAt(iIndexSegment)) {
            return insertEntryAt(iIndexSegment, k, v).asInsertResult();
        }
        int iNodeIndex$runtime = nodeIndex$runtime(iIndexSegment);
        TrieNode<K, V> trieNodeNodeAtIndex$runtime = nodeAtIndex$runtime(iNodeIndex$runtime);
        if (i2 == 30) {
            modificationResultPut = trieNodeNodeAtIndex$runtime.collisionPut(k, v);
            if (modificationResultPut == null) {
                return null;
            }
        } else {
            modificationResultPut = trieNodeNodeAtIndex$runtime.put(i, k, v, i2 + 5);
            if (modificationResultPut == null) {
                return null;
            }
        }
        modificationResultPut.setNode(updateNodeAtIndex(iNodeIndex$runtime, iIndexSegment, modificationResultPut.getNode()));
        return modificationResultPut;
    }

    public final TrieNode<K, V> remove(int i, K k, V v, int i2) {
        int iIndexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasEntryAt$runtime(iIndexSegment)) {
            int iEntryKeyIndex$runtime = entryKeyIndex$runtime(iIndexSegment);
            return (aa4.e(k, keyAtIndex(iEntryKeyIndex$runtime)) && aa4.e(v, valueAtKeyIndex(iEntryKeyIndex$runtime))) ? removeEntryAtIndex(iEntryKeyIndex$runtime, iIndexSegment) : this;
        }
        if (!hasNodeAt(iIndexSegment)) {
            return this;
        }
        int iNodeIndex$runtime = nodeIndex$runtime(iIndexSegment);
        TrieNode<K, V> trieNodeNodeAtIndex$runtime = nodeAtIndex$runtime(iNodeIndex$runtime);
        return replaceNode(trieNodeNodeAtIndex$runtime, i2 == 30 ? trieNodeNodeAtIndex$runtime.collisionRemove(k, v) : trieNodeNodeAtIndex$runtime.remove(i, k, v, i2 + 5), iNodeIndex$runtime, iIndexSegment);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final TrieNode getEMPTY$runtime() {
            return TrieNode.EMPTY;
        }

        private Companion() {
        }
    }

    public TrieNode(int i, int i2, Object[] objArr) {
        this(i, i2, objArr, null);
    }

    private final TrieNode<K, V> collisionRemove(K k) {
        w74 w74VarM = kx6.m(2, kx6.n(0, this.buffer.length));
        int i = w74VarM.b;
        int i2 = w74VarM.c;
        int i3 = w74VarM.d;
        if ((i3 > 0 && i <= i2) || (i3 < 0 && i2 <= i)) {
            while (!aa4.e(k, keyAtIndex(i))) {
                if (i != i2) {
                    i += i3;
                }
            }
            return collisionRemoveEntryAtIndex(i);
        }
        return this;
    }

    private final TrieNode<K, V> mutableCollisionRemove(K k, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        w74 w74VarM = kx6.m(2, kx6.n(0, this.buffer.length));
        int i = w74VarM.b;
        int i2 = w74VarM.c;
        int i3 = w74VarM.d;
        if ((i3 > 0 && i <= i2) || (i3 < 0 && i2 <= i)) {
            while (!aa4.e(k, keyAtIndex(i))) {
                if (i != i2) {
                    i += i3;
                }
            }
            return mutableCollisionRemoveEntryAtIndex(i, persistentHashMapBuilder);
        }
        return this;
    }

    public final TrieNode<K, V> remove(int i, K k, int i2) {
        TrieNode<K, V> trieNodeRemove;
        int iIndexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasEntryAt$runtime(iIndexSegment)) {
            int iEntryKeyIndex$runtime = entryKeyIndex$runtime(iIndexSegment);
            return aa4.e(k, keyAtIndex(iEntryKeyIndex$runtime)) ? removeEntryAtIndex(iEntryKeyIndex$runtime, iIndexSegment) : this;
        }
        if (!hasNodeAt(iIndexSegment)) {
            return this;
        }
        int iNodeIndex$runtime = nodeIndex$runtime(iIndexSegment);
        TrieNode<K, V> trieNodeNodeAtIndex$runtime = nodeAtIndex$runtime(iNodeIndex$runtime);
        if (i2 == 30) {
            trieNodeRemove = trieNodeNodeAtIndex$runtime.collisionRemove(k);
        } else {
            trieNodeRemove = trieNodeNodeAtIndex$runtime.remove(i, k, i2 + 5);
        }
        return replaceNode(trieNodeNodeAtIndex$runtime, trieNodeRemove, iNodeIndex$runtime, iIndexSegment);
    }

    public final TrieNode<K, V> mutableRemove(int i, K k, int i2, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        TrieNode<K, V> trieNodeMutableRemove;
        int iIndexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasEntryAt$runtime(iIndexSegment)) {
            int iEntryKeyIndex$runtime = entryKeyIndex$runtime(iIndexSegment);
            if (aa4.e(k, keyAtIndex(iEntryKeyIndex$runtime))) {
                return mutableRemoveEntryAtIndex(iEntryKeyIndex$runtime, iIndexSegment, persistentHashMapBuilder);
            }
        } else if (hasNodeAt(iIndexSegment)) {
            int iNodeIndex$runtime = nodeIndex$runtime(iIndexSegment);
            TrieNode<K, V> trieNodeNodeAtIndex$runtime = nodeAtIndex$runtime(iNodeIndex$runtime);
            if (i2 == 30) {
                trieNodeMutableRemove = trieNodeNodeAtIndex$runtime.mutableCollisionRemove(k, persistentHashMapBuilder);
            } else {
                trieNodeMutableRemove = trieNodeNodeAtIndex$runtime.mutableRemove(i, k, i2 + 5, persistentHashMapBuilder);
            }
            return mutableReplaceNode(trieNodeNodeAtIndex$runtime, trieNodeMutableRemove, iNodeIndex$runtime, iIndexSegment, persistentHashMapBuilder.getOwnership());
        }
        return this;
    }
}
