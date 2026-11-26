package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.yr;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class TrieNode<E> {
    private int bitmap;
    private Object[] buffer;
    private MutabilityOwnership ownedBy;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final TrieNode EMPTY = new TrieNode(0, new Object[0]);

    public TrieNode(int i, Object[] objArr, MutabilityOwnership mutabilityOwnership) {
        this.bitmap = i;
        this.buffer = objArr;
        this.ownedBy = mutabilityOwnership;
    }

    private final TrieNode<E> addElementAt(int i, E e) {
        return new TrieNode<>(this.bitmap | i, TrieNodeKt.addElementAtIndex(this.buffer, indexOfCellAt$runtime(i), e));
    }

    private final int calculateSize() {
        int i = this.bitmap;
        Object[] objArr = this.buffer;
        if (i == 0) {
            return objArr.length;
        }
        int iCalculateSize = 0;
        for (Object obj : objArr) {
            iCalculateSize += obj instanceof TrieNode ? ((TrieNode) obj).calculateSize() : 1;
        }
        return iCalculateSize;
    }

    private final TrieNode<E> collisionAdd(E e) {
        return collisionContainsElement(e) ? this : new TrieNode<>(0, TrieNodeKt.addElementAtIndex(this.buffer, 0, e));
    }

    private final boolean collisionContainsElement(E e) {
        return yr.E(this.buffer, e);
    }

    private final TrieNode<E> collisionRemove(E e) {
        int iQ = yr.Q(e, this.buffer);
        return iQ != -1 ? collisionRemoveElementAtIndex(iQ) : this;
    }

    private final TrieNode<E> collisionRemoveElementAtIndex(int i) {
        return new TrieNode<>(0, TrieNodeKt.removeCellAtIndex(this.buffer, i));
    }

    private final E elementAtIndex(int i) {
        return (E) this.buffer[i];
    }

    private final boolean elementsIdentityEquals(TrieNode<E> trieNode) {
        if (this == trieNode) {
            return true;
        }
        if (this.bitmap != trieNode.bitmap) {
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

    private final boolean hasNoCellAt(int i) {
        return (this.bitmap & i) == 0;
    }

    private final TrieNode<E> makeNode(int i, E e, int i2, E e2, int i3, MutabilityOwnership mutabilityOwnership) {
        if (i3 > 30) {
            return new TrieNode<>(0, new Object[]{e, e2}, mutabilityOwnership);
        }
        int iIndexSegment = TrieNodeKt.indexSegment(i, i3);
        int iIndexSegment2 = TrieNodeKt.indexSegment(i2, i3);
        if (iIndexSegment != iIndexSegment2) {
            return new TrieNode<>((1 << iIndexSegment) | (1 << iIndexSegment2), iIndexSegment < iIndexSegment2 ? new Object[]{e, e2} : new Object[]{e2, e}, mutabilityOwnership);
        }
        return new TrieNode<>(1 << iIndexSegment, new Object[]{makeNode(i, e, i2, e2, i3 + 5, mutabilityOwnership)}, mutabilityOwnership);
    }

    private final TrieNode<E> makeNodeAtIndex(int i, int i2, E e, int i3, MutabilityOwnership mutabilityOwnership) {
        E eElementAtIndex = elementAtIndex(i);
        return makeNode(eElementAtIndex != null ? eElementAtIndex.hashCode() : 0, eElementAtIndex, i2, e, i3 + 5, mutabilityOwnership);
    }

    private final TrieNode<E> moveElementToNode(int i, int i2, E e, int i3) {
        Object[] objArr = this.buffer;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        objArrCopyOf[i] = makeNodeAtIndex(i, i2, e, i3, null);
        return new TrieNode<>(this.bitmap, objArrCopyOf);
    }

    private final TrieNode<E> mutableAddElementAt(int i, E e, MutabilityOwnership mutabilityOwnership) {
        int iIndexOfCellAt$runtime = indexOfCellAt$runtime(i);
        MutabilityOwnership mutabilityOwnership2 = this.ownedBy;
        Object[] objArr = this.buffer;
        if (mutabilityOwnership2 != mutabilityOwnership) {
            return new TrieNode<>(this.bitmap | i, TrieNodeKt.addElementAtIndex(objArr, iIndexOfCellAt$runtime, e), mutabilityOwnership);
        }
        this.buffer = TrieNodeKt.addElementAtIndex(objArr, iIndexOfCellAt$runtime, e);
        this.bitmap = i | this.bitmap;
        return this;
    }

    private final TrieNode<E> mutableCollisionAdd(E e, PersistentHashSetBuilder<?> persistentHashSetBuilder) {
        if (collisionContainsElement(e)) {
            return this;
        }
        persistentHashSetBuilder.setSize(persistentHashSetBuilder.size() + 1);
        MutabilityOwnership mutabilityOwnership = this.ownedBy;
        MutabilityOwnership ownership$runtime = persistentHashSetBuilder.getOwnership$runtime();
        Object[] objArr = this.buffer;
        if (mutabilityOwnership != ownership$runtime) {
            return new TrieNode<>(0, TrieNodeKt.addElementAtIndex(objArr, 0, e), persistentHashSetBuilder.getOwnership$runtime());
        }
        this.buffer = TrieNodeKt.addElementAtIndex(objArr, 0, e);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final TrieNode<E> mutableCollisionAddAll(TrieNode<E> trieNode, DeltaCounter deltaCounter, MutabilityOwnership mutabilityOwnership) {
        Object[] objArr = this.buffer;
        if (this == trieNode) {
            deltaCounter.plusAssign(objArr.length);
            return this;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length + trieNode.buffer.length);
        Object[] objArr2 = trieNode.buffer;
        int length = this.buffer.length;
        int i = 0;
        int i2 = 0;
        while (i < objArr2.length) {
            CommonFunctionsKt.m5571assert(i2 <= i);
            if (!collisionContainsElement(objArr2[i])) {
                objArrCopyOf[length + i2] = objArr2[i];
                i2++;
                CommonFunctionsKt.m5571assert(length + i2 <= objArrCopyOf.length);
            }
            i++;
        }
        int length2 = i2 + this.buffer.length;
        deltaCounter.plusAssign(objArrCopyOf.length - length2);
        if (length2 == this.buffer.length) {
            return this;
        }
        if (length2 == trieNode.buffer.length) {
            return trieNode;
        }
        if (length2 != objArrCopyOf.length) {
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, length2);
        }
        if (!aa4.e(this.ownedBy, mutabilityOwnership)) {
            return new TrieNode<>(0, objArrCopyOf, mutabilityOwnership);
        }
        this.buffer = objArrCopyOf;
        return this;
    }

    private final TrieNode<E> mutableCollisionRemove(E e, PersistentHashSetBuilder<?> persistentHashSetBuilder) {
        int iQ = yr.Q(e, this.buffer);
        if (iQ == -1) {
            return this;
        }
        persistentHashSetBuilder.setSize(persistentHashSetBuilder.size() - 1);
        return mutableCollisionRemoveElementAtIndex(iQ, persistentHashSetBuilder.getOwnership$runtime());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object mutableCollisionRemoveAll(TrieNode<E> trieNode, DeltaCounter deltaCounter, MutabilityOwnership mutabilityOwnership) {
        if (this == trieNode) {
            deltaCounter.plusAssign(this.buffer.length);
            return EMPTY;
        }
        boolean zE = aa4.e(mutabilityOwnership, this.ownedBy);
        Object[] objArr = this.buffer;
        Object[] objArr2 = zE ? objArr : new Object[objArr.length];
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= objArr.length) {
                break;
            }
            CommonFunctionsKt.m5571assert(i2 <= i);
            if (!trieNode.collisionContainsElement(objArr[i])) {
                objArr2[i2] = objArr[i];
                i2++;
                CommonFunctionsKt.m5571assert(i2 <= objArr2.length);
            }
            i++;
        }
        deltaCounter.plusAssign(this.buffer.length - i2);
        if (i2 == 0) {
            return EMPTY;
        }
        if (i2 == 1) {
            return objArr2[0];
        }
        if (i2 == this.buffer.length) {
            return this;
        }
        return i2 == objArr2.length ? new TrieNode(0, objArr2, mutabilityOwnership) : new TrieNode(0, Arrays.copyOf(objArr2, i2), mutabilityOwnership);
    }

    private final TrieNode<E> mutableCollisionRemoveElementAtIndex(int i, MutabilityOwnership mutabilityOwnership) {
        MutabilityOwnership mutabilityOwnership2 = this.ownedBy;
        Object[] objArr = this.buffer;
        if (mutabilityOwnership2 != mutabilityOwnership) {
            return new TrieNode<>(0, TrieNodeKt.removeCellAtIndex(objArr, i), mutabilityOwnership);
        }
        this.buffer = TrieNodeKt.removeCellAtIndex(objArr, i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object mutableCollisionRetainAll(TrieNode<E> trieNode, DeltaCounter deltaCounter, MutabilityOwnership mutabilityOwnership) {
        if (this == trieNode) {
            deltaCounter.plusAssign(this.buffer.length);
            return this;
        }
        boolean zE = aa4.e(mutabilityOwnership, this.ownedBy);
        Object[] objArr = this.buffer;
        if (!zE) {
            objArr = new Object[Math.min(objArr.length, trieNode.buffer.length)];
        }
        Object[] objArr2 = this.buffer;
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= objArr2.length) {
                break;
            }
            CommonFunctionsKt.m5571assert(i2 <= i);
            if (trieNode.collisionContainsElement(objArr2[i])) {
                objArr[i2] = objArr2[i];
                i2++;
                CommonFunctionsKt.m5571assert(i2 <= objArr.length);
            }
            i++;
        }
        deltaCounter.plusAssign(i2);
        if (i2 == 0) {
            return EMPTY;
        }
        if (i2 == 1) {
            return objArr[0];
        }
        if (i2 == this.buffer.length) {
            return this;
        }
        if (i2 == trieNode.buffer.length) {
            return trieNode;
        }
        return i2 == objArr.length ? new TrieNode(0, objArr, mutabilityOwnership) : new TrieNode(0, Arrays.copyOf(objArr, i2), mutabilityOwnership);
    }

    private final TrieNode<E> mutableMoveElementToNode(int i, int i2, E e, int i3, MutabilityOwnership mutabilityOwnership) {
        MutabilityOwnership mutabilityOwnership2 = this.ownedBy;
        Object[] objArr = this.buffer;
        if (mutabilityOwnership2 == mutabilityOwnership) {
            objArr[i] = makeNodeAtIndex(i, i2, e, i3, mutabilityOwnership);
            return this;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        objArrCopyOf[i] = makeNodeAtIndex(i, i2, e, i3, mutabilityOwnership);
        return new TrieNode<>(this.bitmap, objArrCopyOf, mutabilityOwnership);
    }

    private final TrieNode<E> mutableRemoveCellAtIndex(int i, int i2, MutabilityOwnership mutabilityOwnership) {
        MutabilityOwnership mutabilityOwnership2 = this.ownedBy;
        Object[] objArr = this.buffer;
        if (mutabilityOwnership2 != mutabilityOwnership) {
            return new TrieNode<>(this.bitmap ^ i2, TrieNodeKt.removeCellAtIndex(objArr, i), mutabilityOwnership);
        }
        this.buffer = TrieNodeKt.removeCellAtIndex(objArr, i);
        this.bitmap ^= i2;
        return this;
    }

    private final TrieNode<E> mutableUpdateNodeAtIndex(int i, TrieNode<E> trieNode, MutabilityOwnership mutabilityOwnership) {
        Object[] objArr = trieNode.buffer;
        if (objArr.length == 1) {
            Object obj = objArr[0];
            if (!(obj instanceof TrieNode)) {
                if (this.buffer.length == 1) {
                    trieNode.bitmap = this.bitmap;
                    return trieNode;
                }
                trieNode = (TrieNode<E>) obj;
            }
        }
        MutabilityOwnership mutabilityOwnership2 = this.ownedBy;
        Object[] objArr2 = this.buffer;
        if (mutabilityOwnership2 == mutabilityOwnership) {
            objArr2[i] = trieNode;
            return this;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr2, objArr2.length);
        objArrCopyOf[i] = trieNode;
        return new TrieNode<>(this.bitmap, objArrCopyOf, mutabilityOwnership);
    }

    private final TrieNode<E> nodeAtIndex(int i) {
        Object obj = this.buffer[i];
        obj.getClass();
        return (TrieNode) obj;
    }

    private final TrieNode<E> removeCellAtIndex(int i, int i2) {
        return new TrieNode<>(this.bitmap ^ i2, TrieNodeKt.removeCellAtIndex(this.buffer, i));
    }

    private final TrieNode<E> updateNodeAtIndex(int i, TrieNode<E> trieNode) {
        Object[] objArr = trieNode.buffer;
        if (objArr.length == 1) {
            Object obj = objArr[0];
            if (!(obj instanceof TrieNode)) {
                if (this.buffer.length == 1) {
                    trieNode.bitmap = this.bitmap;
                    return trieNode;
                }
                trieNode = (TrieNode<E>) obj;
            }
        }
        Object[] objArr2 = this.buffer;
        Object[] objArrCopyOf = Arrays.copyOf(objArr2, objArr2.length);
        objArrCopyOf[i] = trieNode;
        return new TrieNode<>(this.bitmap, objArrCopyOf);
    }

    public final TrieNode<E> add(int i, E e, int i2) {
        int iIndexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasNoCellAt(iIndexSegment)) {
            return addElementAt(iIndexSegment, e);
        }
        int iIndexOfCellAt$runtime = indexOfCellAt$runtime(iIndexSegment);
        Object obj = this.buffer[iIndexOfCellAt$runtime];
        if (obj instanceof TrieNode) {
            TrieNode<E> trieNodeNodeAtIndex = nodeAtIndex(iIndexOfCellAt$runtime);
            TrieNode<E> trieNodeCollisionAdd = i2 == 30 ? trieNodeNodeAtIndex.collisionAdd(e) : trieNodeNodeAtIndex.add(i, e, i2 + 5);
            if (trieNodeNodeAtIndex != trieNodeCollisionAdd) {
                return updateNodeAtIndex(iIndexOfCellAt$runtime, trieNodeCollisionAdd);
            }
        } else if (!aa4.e(e, obj)) {
            return moveElementToNode(iIndexOfCellAt$runtime, i, e, i2);
        }
        return this;
    }

    public final boolean contains(int i, E e, int i2) {
        int iIndexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasNoCellAt(iIndexSegment)) {
            return false;
        }
        int iIndexOfCellAt$runtime = indexOfCellAt$runtime(iIndexSegment);
        Object obj = this.buffer[iIndexOfCellAt$runtime];
        if (!(obj instanceof TrieNode)) {
            return aa4.e(e, obj);
        }
        TrieNode<E> trieNodeNodeAtIndex = nodeAtIndex(iIndexOfCellAt$runtime);
        return i2 == 30 ? trieNodeNodeAtIndex.collisionContainsElement(e) : trieNodeNodeAtIndex.contains(i, e, i2 + 5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean containsAll(TrieNode<E> trieNode, int i) {
        if (this == trieNode) {
            return true;
        }
        if (i > 30) {
            for (Object obj : trieNode.buffer) {
                if (!yr.E(this.buffer, obj)) {
                    return false;
                }
            }
            return true;
        }
        int i2 = this.bitmap;
        int i3 = trieNode.bitmap;
        int i4 = i2 & i3;
        if (i4 != i3) {
            return false;
        }
        while (i4 != 0) {
            int iLowestOneBit = Integer.lowestOneBit(i4);
            int iIndexOfCellAt$runtime = indexOfCellAt$runtime(iLowestOneBit);
            int iIndexOfCellAt$runtime2 = trieNode.indexOfCellAt$runtime(iLowestOneBit);
            Object obj2 = this.buffer[iIndexOfCellAt$runtime];
            Object obj3 = trieNode.buffer[iIndexOfCellAt$runtime2];
            boolean z = obj2 instanceof TrieNode;
            boolean z2 = obj3 instanceof TrieNode;
            if (z && z2) {
                if (!((TrieNode) obj2).containsAll((TrieNode) obj3, i + 5)) {
                    return false;
                }
            } else if (z) {
                if (!((TrieNode) obj2).contains(obj3 != null ? obj3.hashCode() : 0, obj3, i + 5)) {
                    return false;
                }
            } else if (z2 || !aa4.e(obj2, obj3)) {
                return false;
            }
            i4 ^= iLowestOneBit;
        }
        return true;
    }

    public final int getBitmap() {
        return this.bitmap;
    }

    public final Object[] getBuffer() {
        return this.buffer;
    }

    public final MutabilityOwnership getOwnedBy() {
        return this.ownedBy;
    }

    public final int indexOfCellAt$runtime(int i) {
        return Integer.bitCount(this.bitmap & (i - 1));
    }

    public final TrieNode<E> mutableAdd(int i, E e, int i2, PersistentHashSetBuilder<?> persistentHashSetBuilder) {
        int iIndexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasNoCellAt(iIndexSegment)) {
            persistentHashSetBuilder.setSize(persistentHashSetBuilder.size() + 1);
            return mutableAddElementAt(iIndexSegment, e, persistentHashSetBuilder.getOwnership$runtime());
        }
        int iIndexOfCellAt$runtime = indexOfCellAt$runtime(iIndexSegment);
        Object obj = this.buffer[iIndexOfCellAt$runtime];
        if (obj instanceof TrieNode) {
            TrieNode<E> trieNodeNodeAtIndex = nodeAtIndex(iIndexOfCellAt$runtime);
            TrieNode<E> trieNodeMutableCollisionAdd = i2 == 30 ? trieNodeNodeAtIndex.mutableCollisionAdd(e, persistentHashSetBuilder) : trieNodeNodeAtIndex.mutableAdd(i, e, i2 + 5, persistentHashSetBuilder);
            if (trieNodeNodeAtIndex != trieNodeMutableCollisionAdd) {
                return mutableUpdateNodeAtIndex(iIndexOfCellAt$runtime, trieNodeMutableCollisionAdd, persistentHashSetBuilder.getOwnership$runtime());
            }
        } else if (!aa4.e(e, obj)) {
            persistentHashSetBuilder.setSize(persistentHashSetBuilder.size() + 1);
            return mutableMoveElementToNode(iIndexOfCellAt$runtime, i, e, i2, persistentHashSetBuilder.getOwnership$runtime());
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TrieNode<E> mutableAddAll(TrieNode<E> trieNode, int i, DeltaCounter deltaCounter, PersistentHashSetBuilder<?> persistentHashSetBuilder) {
        Object objMakeNode;
        Object[] objArr;
        if (this == trieNode) {
            deltaCounter.setCount(deltaCounter.getCount() + calculateSize());
            return this;
        }
        if (i > 30) {
            return mutableCollisionAddAll(trieNode, deltaCounter, persistentHashSetBuilder.getOwnership$runtime());
        }
        int i2 = this.bitmap;
        int i3 = trieNode.bitmap | i2;
        TrieNode<E> trieNode2 = (i3 == i2 && aa4.e(this.ownedBy, persistentHashSetBuilder.getOwnership$runtime())) ? this : new TrieNode<>(i3, new Object[Integer.bitCount(i3)], persistentHashSetBuilder.getOwnership$runtime());
        int i4 = i3;
        int i5 = 0;
        while (i4 != 0) {
            int iLowestOneBit = Integer.lowestOneBit(i4);
            int iIndexOfCellAt$runtime = indexOfCellAt$runtime(iLowestOneBit);
            int iIndexOfCellAt$runtime2 = trieNode.indexOfCellAt$runtime(iLowestOneBit);
            Object[] objArr2 = trieNode2.buffer;
            if (hasNoCellAt(iLowestOneBit)) {
                objMakeNode = trieNode.buffer[iIndexOfCellAt$runtime2];
            } else {
                boolean zHasNoCellAt = trieNode.hasNoCellAt(iLowestOneBit);
                Object[] objArr3 = this.buffer;
                if (zHasNoCellAt) {
                    objMakeNode = objArr3[iIndexOfCellAt$runtime];
                } else {
                    objMakeNode = objArr3[iIndexOfCellAt$runtime];
                    Object obj = trieNode.buffer[iIndexOfCellAt$runtime2];
                    boolean z = objMakeNode instanceof TrieNode;
                    boolean z2 = obj instanceof TrieNode;
                    if (z && z2) {
                        objMakeNode = ((TrieNode) objMakeNode).mutableAddAll((TrieNode) obj, i + 5, deltaCounter, persistentHashSetBuilder);
                    } else if (z) {
                        TrieNode trieNode3 = (TrieNode) objMakeNode;
                        int size = persistentHashSetBuilder.size();
                        objMakeNode = trieNode3.mutableAdd(obj != null ? obj.hashCode() : 0, obj, i + 5, persistentHashSetBuilder);
                        if (persistentHashSetBuilder.size() == size) {
                            deltaCounter.setCount(deltaCounter.getCount() + 1);
                        }
                        j59 j59Var = j59.a;
                    } else if (z2) {
                        TrieNode trieNode4 = (TrieNode) obj;
                        int size2 = persistentHashSetBuilder.size();
                        objMakeNode = trieNode4.mutableAdd(objMakeNode != null ? objMakeNode.hashCode() : 0, objMakeNode, i + 5, persistentHashSetBuilder);
                        if (persistentHashSetBuilder.size() == size2) {
                            deltaCounter.setCount(deltaCounter.getCount() + 1);
                        }
                        j59 j59Var2 = j59.a;
                    } else {
                        if (aa4.e(objMakeNode, obj)) {
                            deltaCounter.setCount(deltaCounter.getCount() + 1);
                            j59 j59Var3 = j59.a;
                        } else {
                            objArr = objArr2;
                            objMakeNode = makeNode(objMakeNode != null ? objMakeNode.hashCode() : 0, objMakeNode, obj != null ? obj.hashCode() : 0, obj, i + 5, persistentHashSetBuilder.getOwnership$runtime());
                        }
                        objArr[i5] = objMakeNode;
                        i5++;
                        i4 ^= iLowestOneBit;
                    }
                }
            }
            objArr = objArr2;
            objArr[i5] = objMakeNode;
            i5++;
            i4 ^= iLowestOneBit;
        }
        if (elementsIdentityEquals(trieNode2)) {
            return this;
        }
        return trieNode.elementsIdentityEquals(trieNode2) ? trieNode : trieNode2;
    }

    public final TrieNode<E> mutableRemove(int i, E e, int i2, PersistentHashSetBuilder<?> persistentHashSetBuilder) {
        int iIndexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasNoCellAt(iIndexSegment)) {
            return this;
        }
        int iIndexOfCellAt$runtime = indexOfCellAt$runtime(iIndexSegment);
        Object obj = this.buffer[iIndexOfCellAt$runtime];
        if (obj instanceof TrieNode) {
            TrieNode<E> trieNodeNodeAtIndex = nodeAtIndex(iIndexOfCellAt$runtime);
            TrieNode<E> trieNodeMutableCollisionRemove = i2 == 30 ? trieNodeNodeAtIndex.mutableCollisionRemove(e, persistentHashSetBuilder) : trieNodeNodeAtIndex.mutableRemove(i, e, i2 + 5, persistentHashSetBuilder);
            return (this.ownedBy == persistentHashSetBuilder.getOwnership$runtime() || trieNodeNodeAtIndex != trieNodeMutableCollisionRemove) ? mutableUpdateNodeAtIndex(iIndexOfCellAt$runtime, trieNodeMutableCollisionRemove, persistentHashSetBuilder.getOwnership$runtime()) : this;
        }
        if (!aa4.e(e, obj)) {
            return this;
        }
        persistentHashSetBuilder.setSize(persistentHashSetBuilder.size() - 1);
        return mutableRemoveCellAtIndex(iIndexOfCellAt$runtime, iIndexSegment, persistentHashSetBuilder.getOwnership$runtime());
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00a9  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object mutableRemoveAll(TrieNode<E> trieNode, int i, DeltaCounter deltaCounter, PersistentHashSetBuilder<?> persistentHashSetBuilder) {
        TrieNode<E> trieNode2;
        if (this == trieNode) {
            deltaCounter.plusAssign(calculateSize());
            return EMPTY;
        }
        if (i > 30) {
            return mutableCollisionRemoveAll(trieNode, deltaCounter, persistentHashSetBuilder.getOwnership$runtime());
        }
        int i2 = this.bitmap & trieNode.bitmap;
        if (i2 != 0) {
            if (aa4.e(this.ownedBy, persistentHashSetBuilder.getOwnership$runtime())) {
                trieNode2 = this;
            } else {
                int i3 = this.bitmap;
                Object[] objArr = this.buffer;
                trieNode2 = new TrieNode<>(i3, Arrays.copyOf(objArr, objArr.length), persistentHashSetBuilder.getOwnership$runtime());
            }
            int i4 = this.bitmap;
            while (i2 != 0) {
                int iLowestOneBit = Integer.lowestOneBit(i2);
                int iIndexOfCellAt$runtime = indexOfCellAt$runtime(iLowestOneBit);
                int iIndexOfCellAt$runtime2 = trieNode.indexOfCellAt$runtime(iLowestOneBit);
                Object objMutableRemoveAll = this.buffer[iIndexOfCellAt$runtime];
                Object obj = trieNode.buffer[iIndexOfCellAt$runtime2];
                boolean z = objMutableRemoveAll instanceof TrieNode;
                boolean z2 = obj instanceof TrieNode;
                if (z && z2) {
                    objMutableRemoveAll = ((TrieNode) objMutableRemoveAll).mutableRemoveAll((TrieNode) obj, i + 5, deltaCounter, persistentHashSetBuilder);
                } else if (z) {
                    TrieNode trieNode3 = (TrieNode) objMutableRemoveAll;
                    int size = persistentHashSetBuilder.size();
                    TrieNode trieNodeMutableRemove = trieNode3.mutableRemove(obj != null ? obj.hashCode() : 0, obj, i + 5, persistentHashSetBuilder);
                    if (size != persistentHashSetBuilder.size()) {
                        deltaCounter.plusAssign(1);
                        Object[] objArr2 = trieNodeMutableRemove.buffer;
                        if (objArr2.length == 1) {
                            objMutableRemoveAll = objArr2[0];
                            if (objMutableRemoveAll instanceof TrieNode) {
                                objMutableRemoveAll = trieNodeMutableRemove;
                            }
                        } else {
                            objMutableRemoveAll = trieNodeMutableRemove;
                        }
                    }
                } else if (z2) {
                    if (((TrieNode) obj).contains(objMutableRemoveAll != null ? objMutableRemoveAll.hashCode() : 0, objMutableRemoveAll, i + 5)) {
                        deltaCounter.plusAssign(1);
                        objMutableRemoveAll = EMPTY;
                    }
                } else if (aa4.e(objMutableRemoveAll, obj)) {
                    deltaCounter.plusAssign(1);
                    objMutableRemoveAll = EMPTY;
                }
                if (objMutableRemoveAll == EMPTY) {
                    i4 ^= iLowestOneBit;
                }
                trieNode2.buffer[iIndexOfCellAt$runtime] = objMutableRemoveAll;
                i2 ^= iLowestOneBit;
            }
            int iBitCount = Integer.bitCount(i4);
            if (i4 == 0) {
                return EMPTY;
            }
            if (i4 != this.bitmap) {
                if (iBitCount == 1 && i != 0) {
                    Object obj2 = trieNode2.buffer[trieNode2.indexOfCellAt$runtime(i4)];
                    return obj2 instanceof TrieNode ? new TrieNode(i4, new Object[]{obj2}, persistentHashSetBuilder.getOwnership$runtime()) : obj2;
                }
                Object[] objArr3 = new Object[iBitCount];
                Object[] objArr4 = trieNode2.buffer;
                int i5 = 0;
                int i6 = 0;
                while (i5 < objArr4.length) {
                    CommonFunctionsKt.m5571assert(i6 <= i5);
                    if (objArr4[i5] != Companion.getEMPTY$runtime()) {
                        objArr3[i6] = objArr4[i5];
                        i6++;
                        CommonFunctionsKt.m5571assert(i6 <= iBitCount);
                    }
                    i5++;
                }
                return new TrieNode(i4, objArr3, persistentHashSetBuilder.getOwnership$runtime());
            }
            if (!trieNode2.elementsIdentityEquals(this)) {
                return trieNode2;
            }
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object mutableRetainAll(TrieNode<E> trieNode, int i, DeltaCounter deltaCounter, PersistentHashSetBuilder<?> persistentHashSetBuilder) {
        if (this == trieNode) {
            deltaCounter.plusAssign(calculateSize());
            return this;
        }
        if (i > 30) {
            return mutableCollisionRetainAll(trieNode, deltaCounter, persistentHashSetBuilder.getOwnership$runtime());
        }
        int i2 = this.bitmap & trieNode.bitmap;
        if (i2 == 0) {
            return EMPTY;
        }
        TrieNode<E> trieNode2 = (aa4.e(this.ownedBy, persistentHashSetBuilder.getOwnership$runtime()) && i2 == this.bitmap) ? this : new TrieNode<>(i2, new Object[Integer.bitCount(i2)], persistentHashSetBuilder.getOwnership$runtime());
        int i3 = i2;
        int i4 = 0;
        int i5 = 0;
        while (i3 != 0) {
            int iLowestOneBit = Integer.lowestOneBit(i3);
            int iIndexOfCellAt$runtime = indexOfCellAt$runtime(iLowestOneBit);
            int iIndexOfCellAt$runtime2 = trieNode.indexOfCellAt$runtime(iLowestOneBit);
            Object objMutableRetainAll = this.buffer[iIndexOfCellAt$runtime];
            Object obj = trieNode.buffer[iIndexOfCellAt$runtime2];
            boolean z = objMutableRetainAll instanceof TrieNode;
            boolean z2 = obj instanceof TrieNode;
            if (z && z2) {
                objMutableRetainAll = ((TrieNode) objMutableRetainAll).mutableRetainAll((TrieNode) obj, i + 5, deltaCounter, persistentHashSetBuilder);
            } else if (z) {
                if (((TrieNode) objMutableRetainAll).contains(obj != null ? obj.hashCode() : 0, obj, i + 5)) {
                    deltaCounter.plusAssign(1);
                    objMutableRetainAll = obj;
                } else {
                    objMutableRetainAll = EMPTY;
                }
            } else if (z2) {
                if (((TrieNode) obj).contains(objMutableRetainAll != null ? objMutableRetainAll.hashCode() : 0, objMutableRetainAll, i + 5)) {
                    deltaCounter.plusAssign(1);
                } else {
                    objMutableRetainAll = EMPTY;
                }
            } else if (aa4.e(objMutableRetainAll, obj)) {
                deltaCounter.plusAssign(1);
            } else {
                objMutableRetainAll = EMPTY;
            }
            if (objMutableRetainAll != EMPTY) {
                i4 |= iLowestOneBit;
            }
            trieNode2.buffer[i5] = objMutableRetainAll;
            i5++;
            i3 ^= iLowestOneBit;
        }
        int iBitCount = Integer.bitCount(i4);
        if (i4 == 0) {
            return EMPTY;
        }
        if (i4 == i2) {
            if (trieNode2.elementsIdentityEquals(this)) {
                return this;
            }
            return trieNode2.elementsIdentityEquals(trieNode) ? trieNode : trieNode2;
        }
        if (iBitCount == 1 && i != 0) {
            Object obj2 = trieNode2.buffer[trieNode2.indexOfCellAt$runtime(i4)];
            return obj2 instanceof TrieNode ? new TrieNode(i4, new Object[]{obj2}, persistentHashSetBuilder.getOwnership$runtime()) : obj2;
        }
        Object[] objArr = new Object[iBitCount];
        Object[] objArr2 = trieNode2.buffer;
        int i6 = 0;
        int i7 = 0;
        while (i6 < objArr2.length) {
            CommonFunctionsKt.m5571assert(i7 <= i6);
            if (objArr2[i6] != Companion.getEMPTY$runtime()) {
                objArr[i7] = objArr2[i6];
                i7++;
                CommonFunctionsKt.m5571assert(i7 <= iBitCount);
            }
            i6++;
        }
        return new TrieNode(i4, objArr, persistentHashSetBuilder.getOwnership$runtime());
    }

    public final TrieNode<E> remove(int i, E e, int i2) {
        int iIndexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasNoCellAt(iIndexSegment)) {
            return this;
        }
        int iIndexOfCellAt$runtime = indexOfCellAt$runtime(iIndexSegment);
        Object obj = this.buffer[iIndexOfCellAt$runtime];
        if (!(obj instanceof TrieNode)) {
            return aa4.e(e, obj) ? removeCellAtIndex(iIndexOfCellAt$runtime, iIndexSegment) : this;
        }
        TrieNode<E> trieNodeNodeAtIndex = nodeAtIndex(iIndexOfCellAt$runtime);
        TrieNode<E> trieNodeCollisionRemove = i2 == 30 ? trieNodeNodeAtIndex.collisionRemove(e) : trieNodeNodeAtIndex.remove(i, e, i2 + 5);
        return trieNodeNodeAtIndex == trieNodeCollisionRemove ? this : updateNodeAtIndex(iIndexOfCellAt$runtime, trieNodeCollisionRemove);
    }

    public final void setBitmap(int i) {
        this.bitmap = i;
    }

    public final void setBuffer(Object[] objArr) {
        this.buffer = objArr;
    }

    public final void setOwnedBy(MutabilityOwnership mutabilityOwnership) {
        this.ownedBy = mutabilityOwnership;
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

    public TrieNode(int i, Object[] objArr) {
        this(i, objArr, null);
    }
}
