package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import defpackage.ah;
import defpackage.aq5;
import defpackage.d1;
import defpackage.jr;
import defpackage.nl3;
import defpackage.v46;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
public final class PersistentVectorBuilder<E> extends d1<E> implements PersistentList.Builder<E> {
    public static final int $stable = 8;
    private MutabilityOwnership ownership = new MutabilityOwnership();
    private Object[] root;
    private int rootShift;
    private int size;
    private Object[] tail;
    private PersistentList<? extends E> vector;
    private Object[] vectorRoot;
    private Object[] vectorTail;

    public PersistentVectorBuilder(PersistentList<? extends E> persistentList, Object[] objArr, Object[] objArr2, int i) {
        this.vector = persistentList;
        this.vectorRoot = objArr;
        this.vectorTail = objArr2;
        this.rootShift = i;
        this.root = this.vectorRoot;
        this.tail = this.vectorTail;
        this.size = this.vector.size();
    }

    private final Object[] bufferFor(int i) {
        if (rootSize() <= i) {
            return this.tail;
        }
        Object[] objArr = this.root;
        objArr.getClass();
        for (int i2 = this.rootShift; i2 > 0; i2 -= 5) {
            Object[] objArr2 = objArr[UtilsKt.indexSegment(i, i2)];
            objArr2.getClass();
            objArr = objArr2;
        }
        return objArr;
    }

    private final Object[] copyToBuffer(Object[] objArr, int i, Iterator<? extends Object> it) {
        while (i < 32 && it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return objArr;
    }

    private final Object[] insertIntoRoot(Object[] objArr, int i, int i2, Object obj, ObjectRef objectRef) {
        Object obj2;
        int iIndexSegment = UtilsKt.indexSegment(i2, i);
        if (i == 0) {
            objectRef.setValue(objArr[31]);
            Object[] objArrMakeMutable = makeMutable(objArr);
            aq5.m(objArr, iIndexSegment + 1, objArrMakeMutable, iIndexSegment, 31);
            objArrMakeMutable[iIndexSegment] = obj;
            return objArrMakeMutable;
        }
        Object[] objArrMakeMutable2 = makeMutable(objArr);
        int i3 = i - 5;
        Object obj3 = objArrMakeMutable2[iIndexSegment];
        obj3.getClass();
        objArrMakeMutable2[iIndexSegment] = insertIntoRoot((Object[]) obj3, i3, i2, obj, objectRef);
        while (true) {
            iIndexSegment++;
            if (iIndexSegment >= 32 || (obj2 = objArrMakeMutable2[iIndexSegment]) == null) {
                break;
            }
            objArrMakeMutable2[iIndexSegment] = insertIntoRoot((Object[]) obj2, i3, 0, objectRef.getValue(), objectRef);
        }
        return objArrMakeMutable2;
    }

    private final void insertIntoTail(Object[] objArr, int i, E e) {
        int iTailSize = tailSize();
        Object[] objArrMakeMutable = makeMutable(this.tail);
        Object[] objArr2 = this.tail;
        if (iTailSize >= 32) {
            Object obj = objArr2[31];
            aq5.m(objArr2, i + 1, objArrMakeMutable, i, 31);
            objArrMakeMutable[i] = e;
            pushFilledTail(objArr, objArrMakeMutable, mutableBufferWith(obj));
            return;
        }
        aq5.m(objArr2, i + 1, objArrMakeMutable, i, iTailSize);
        objArrMakeMutable[i] = e;
        this.root = objArr;
        this.tail = objArrMakeMutable;
        this.size = size() + 1;
    }

    private final boolean isMutable(Object[] objArr) {
        return objArr.length == 33 && objArr[32] == this.ownership;
    }

    private final ListIterator<Object[]> leafBufferIterator(int i) {
        Object[] objArr = this.root;
        if (objArr == null) {
            ah.f("Invalid root");
            return null;
        }
        int iRootSize = rootSize() >> 5;
        ListImplementation.checkPositionIndex$runtime(i, iRootSize);
        int i2 = this.rootShift;
        return i2 == 0 ? new SingleElementListIterator(objArr, i) : new TrieIterator(objArr, i, iRootSize, i2 / 5);
    }

    private final Object[] makeMutable(Object[] objArr) {
        if (objArr == null) {
            return mutableBuffer();
        }
        if (isMutable(objArr)) {
            return objArr;
        }
        Object[] objArrMutableBuffer = mutableBuffer();
        int length = objArr.length;
        aq5.q(objArr, objArrMutableBuffer, 0, 0, length > 32 ? 32 : length, 6);
        return objArrMutableBuffer;
    }

    private final Object[] makeMutableShiftingRight(Object[] objArr, int i) {
        if (isMutable(objArr)) {
            aq5.m(objArr, i, objArr, 0, 32 - i);
            return objArr;
        }
        Object[] objArrMutableBuffer = mutableBuffer();
        aq5.m(objArr, i, objArrMutableBuffer, 0, 32 - i);
        return objArrMutableBuffer;
    }

    private final Object[] mutableBuffer() {
        Object[] objArr = new Object[33];
        objArr[32] = this.ownership;
        return objArr;
    }

    private final Object[] mutableBufferWith(Object obj) {
        Object[] objArr = new Object[33];
        objArr[0] = obj;
        objArr[32] = this.ownership;
        return objArr;
    }

    private final Object[] nullifyAfter(Object[] objArr, int i, int i2) {
        if (i2 < 0) {
            PreconditionsKt.throwIllegalArgumentException("shift should be positive");
        }
        if (i2 == 0) {
            return objArr;
        }
        int iIndexSegment = UtilsKt.indexSegment(i, i2);
        Object obj = objArr[iIndexSegment];
        obj.getClass();
        Object objNullifyAfter = nullifyAfter((Object[]) obj, i, i2 - 5);
        if (iIndexSegment < 31) {
            int i3 = iIndexSegment + 1;
            if (objArr[i3] != null) {
                if (isMutable(objArr)) {
                    Arrays.fill(objArr, i3, 32, (Object) null);
                }
                Object[] objArrMutableBuffer = mutableBuffer();
                aq5.m(objArr, 0, objArrMutableBuffer, 0, i3);
                objArr = objArrMutableBuffer;
            }
        }
        if (objNullifyAfter == objArr[iIndexSegment]) {
            return objArr;
        }
        Object[] objArrMakeMutable = makeMutable(objArr);
        objArrMakeMutable[iIndexSegment] = objNullifyAfter;
        return objArrMakeMutable;
    }

    private final Object[] pullLastBuffer(Object[] objArr, int i, int i2, ObjectRef objectRef) {
        Object[] objArrPullLastBuffer;
        int iIndexSegment = UtilsKt.indexSegment(i2 - 1, i);
        if (i == 5) {
            objectRef.setValue(objArr[iIndexSegment]);
            objArrPullLastBuffer = null;
        } else {
            Object obj = objArr[iIndexSegment];
            obj.getClass();
            objArrPullLastBuffer = pullLastBuffer((Object[]) obj, i - 5, i2, objectRef);
        }
        if (objArrPullLastBuffer == null && iIndexSegment == 0) {
            return null;
        }
        Object[] objArrMakeMutable = makeMutable(objArr);
        objArrMakeMutable[iIndexSegment] = objArrPullLastBuffer;
        return objArrMakeMutable;
    }

    private final void pullLastBufferFromRoot(Object[] objArr, int i, int i2) {
        if (i2 == 0) {
            this.root = null;
            if (objArr == null) {
                objArr = new Object[0];
            }
            this.tail = objArr;
            this.size = i;
            this.rootShift = i2;
            return;
        }
        ObjectRef objectRef = new ObjectRef(null);
        objArr.getClass();
        Object[] objArrPullLastBuffer = pullLastBuffer(objArr, i2, i, objectRef);
        objArrPullLastBuffer.getClass();
        Object value = objectRef.getValue();
        value.getClass();
        this.tail = (Object[]) value;
        this.size = i;
        if (objArrPullLastBuffer[1] == null) {
            this.root = (Object[]) objArrPullLastBuffer[0];
            this.rootShift = i2 - 5;
        } else {
            this.root = objArrPullLastBuffer;
            this.rootShift = i2;
        }
    }

    private final Object[] pushBuffers(Object[] objArr, int i, int i2, Iterator<Object[]> it) {
        if (!it.hasNext()) {
            PreconditionsKt.throwIllegalArgumentException("invalid buffersIterator");
        }
        if (!(i2 >= 0)) {
            PreconditionsKt.throwIllegalArgumentException("negative shift");
        }
        if (i2 == 0) {
            return it.next();
        }
        Object[] objArrMakeMutable = makeMutable(objArr);
        int iIndexSegment = UtilsKt.indexSegment(i, i2);
        int i3 = i2 - 5;
        objArrMakeMutable[iIndexSegment] = pushBuffers((Object[]) objArrMakeMutable[iIndexSegment], i, i3, it);
        while (true) {
            iIndexSegment++;
            if (iIndexSegment >= 32 || !it.hasNext()) {
                break;
            }
            objArrMakeMutable[iIndexSegment] = pushBuffers((Object[]) objArrMakeMutable[iIndexSegment], 0, i3, it);
        }
        return objArrMakeMutable;
    }

    private final Object[] pushBuffersIncreasingHeightIfNeeded(Object[] objArr, int i, Object[][] objArr2) {
        objArr2.getClass();
        jr jrVar = new jr(objArr2);
        int i2 = i >> 5;
        int i3 = this.rootShift;
        Object[] objArrPushBuffers = i2 < (1 << i3) ? pushBuffers(objArr, i, i3, jrVar) : makeMutable(objArr);
        while (jrVar.hasNext()) {
            this.rootShift += 5;
            objArrPushBuffers = mutableBufferWith(objArrPushBuffers);
            int i4 = this.rootShift;
            pushBuffers(objArrPushBuffers, 1 << i4, i4, jrVar);
        }
        return objArrPushBuffers;
    }

    private final void pushFilledTail(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int size = size() >> 5;
        int i = this.rootShift;
        if (size > (1 << i)) {
            this.root = pushTail(mutableBufferWith(objArr), objArr2, this.rootShift + 5);
            this.tail = objArr3;
            this.rootShift += 5;
            this.size = size() + 1;
            return;
        }
        if (objArr == null) {
            this.root = objArr2;
            this.tail = objArr3;
            this.size = size() + 1;
        } else {
            this.root = pushTail(objArr, objArr2, i);
            this.tail = objArr3;
            this.size = size() + 1;
        }
    }

    private final Object[] pushTail(Object[] objArr, Object[] objArr2, int i) {
        int iIndexSegment = UtilsKt.indexSegment(size() - 1, i);
        Object[] objArrMakeMutable = makeMutable(objArr);
        if (i == 5) {
            objArrMakeMutable[iIndexSegment] = objArr2;
            return objArrMakeMutable;
        }
        objArrMakeMutable[iIndexSegment] = pushTail((Object[]) objArrMakeMutable[iIndexSegment], objArr2, i - 5);
        return objArrMakeMutable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int recyclableRemoveAll(nl3<? super E, Boolean> nl3Var, Object[] objArr, int i, int i2, ObjectRef objectRef, List<Object[]> list, List<Object[]> list2) {
        if (isMutable(objArr)) {
            list.add(objArr);
        }
        Object value = objectRef.getValue();
        value.getClass();
        Object[] objArr2 = (Object[]) value;
        Object[] objArrRemove = objArr2;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (!nl3Var.invoke(obj).booleanValue()) {
                if (i2 == 32) {
                    objArrRemove = !list.isEmpty() ? list.remove(list.size() - 1) : mutableBuffer();
                    i2 = 0;
                }
                objArrRemove[i2] = obj;
                i2++;
            }
        }
        objectRef.setValue(objArrRemove);
        if (objArr2 != objectRef.getValue()) {
            list2.add(objArr2);
        }
        return i2;
    }

    private final boolean removeAll(nl3<? super E, Boolean> nl3Var) {
        int iTailSize = tailSize();
        ObjectRef objectRef = new ObjectRef(null);
        if (this.root == null) {
            return removeAllFromTail(nl3Var, iTailSize, objectRef) != iTailSize;
        }
        ListIterator<Object[]> listIteratorLeafBufferIterator = leafBufferIterator(0);
        int iRemoveAll = 32;
        while (iRemoveAll == 32 && listIteratorLeafBufferIterator.hasNext()) {
            iRemoveAll = removeAll(nl3Var, listIteratorLeafBufferIterator.next(), 32, objectRef);
        }
        if (iRemoveAll == 32) {
            CommonFunctionsKt.m5571assert(!listIteratorLeafBufferIterator.hasNext());
            int iRemoveAllFromTail = removeAllFromTail(nl3Var, iTailSize, objectRef);
            if (iRemoveAllFromTail == 0) {
                pullLastBufferFromRoot(this.root, size(), this.rootShift);
            }
            return iRemoveAllFromTail != iTailSize;
        }
        int iPreviousIndex = listIteratorLeafBufferIterator.previousIndex() << 5;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int iRecyclableRemoveAll = iRemoveAll;
        while (listIteratorLeafBufferIterator.hasNext()) {
            iRecyclableRemoveAll = recyclableRemoveAll(nl3Var, listIteratorLeafBufferIterator.next(), 32, iRecyclableRemoveAll, objectRef, arrayList2, arrayList);
        }
        int iRecyclableRemoveAll2 = recyclableRemoveAll(nl3Var, this.tail, iTailSize, iRecyclableRemoveAll, objectRef, arrayList2, arrayList);
        Object value = objectRef.getValue();
        value.getClass();
        Object[] objArr = (Object[]) value;
        Arrays.fill(objArr, iRecyclableRemoveAll2, 32, (Object) null);
        boolean zIsEmpty = arrayList.isEmpty();
        Object[] objArrPushBuffers = this.root;
        if (zIsEmpty) {
            objArrPushBuffers.getClass();
        } else {
            objArrPushBuffers = pushBuffers(objArrPushBuffers, iPreviousIndex, this.rootShift, arrayList.iterator());
        }
        int size = iPreviousIndex + (arrayList.size() << 5);
        this.root = retainFirst(objArrPushBuffers, size);
        this.tail = objArr;
        this.size = size + iRecyclableRemoveAll2;
        return true;
    }

    private final int removeAllFromTail(nl3<? super E, Boolean> nl3Var, int i, ObjectRef objectRef) {
        int iRemoveAll = removeAll(nl3Var, this.tail, i, objectRef);
        if (iRemoveAll == i) {
            CommonFunctionsKt.m5571assert(objectRef.getValue() == this.tail);
            return i;
        }
        Object value = objectRef.getValue();
        value.getClass();
        Object[] objArr = (Object[]) value;
        Arrays.fill(objArr, iRemoveAll, i, (Object) null);
        this.tail = objArr;
        this.size = size() - (i - iRemoveAll);
        return iRemoveAll;
    }

    private final Object[] removeFromRootAt(Object[] objArr, int i, int i2, ObjectRef objectRef) {
        int iIndexSegment = UtilsKt.indexSegment(i2, i);
        if (i == 0) {
            Object obj = objArr[iIndexSegment];
            Object[] objArrMakeMutable = makeMutable(objArr);
            aq5.m(objArr, iIndexSegment, objArrMakeMutable, iIndexSegment + 1, 32);
            objArrMakeMutable[31] = objectRef.getValue();
            objectRef.setValue(obj);
            return objArrMakeMutable;
        }
        int iIndexSegment2 = objArr[31] == null ? UtilsKt.indexSegment(rootSize() - 1, i) : 31;
        Object[] objArrMakeMutable2 = makeMutable(objArr);
        int i3 = i - 5;
        int i4 = iIndexSegment + 1;
        if (i4 <= iIndexSegment2) {
            while (true) {
                Object obj2 = objArrMakeMutable2[iIndexSegment2];
                obj2.getClass();
                objArrMakeMutable2[iIndexSegment2] = removeFromRootAt((Object[]) obj2, i3, 0, objectRef);
                if (iIndexSegment2 == i4) {
                    break;
                }
                iIndexSegment2--;
            }
        }
        Object obj3 = objArrMakeMutable2[iIndexSegment];
        obj3.getClass();
        objArrMakeMutable2[iIndexSegment] = removeFromRootAt((Object[]) obj3, i3, i2, objectRef);
        return objArrMakeMutable2;
    }

    private final Object removeFromTailAt(Object[] objArr, int i, int i2, int i3) {
        int size = size() - i;
        CommonFunctionsKt.m5571assert(i3 < size);
        Object[] objArr2 = this.tail;
        if (size == 1) {
            Object obj = objArr2[0];
            pullLastBufferFromRoot(objArr, i, i2);
            return obj;
        }
        Object obj2 = objArr2[i3];
        Object[] objArrMakeMutable = makeMutable(objArr2);
        aq5.m(objArr2, i3, objArrMakeMutable, i3 + 1, size);
        objArrMakeMutable[size - 1] = null;
        this.root = objArr;
        this.tail = objArrMakeMutable;
        this.size = (i + size) - 1;
        this.rootShift = i2;
        return obj2;
    }

    private final Object[] retainFirst(Object[] objArr, int i) {
        if (!((i & 31) == 0)) {
            PreconditionsKt.throwIllegalArgumentException("invalid size");
        }
        if (i == 0) {
            this.rootShift = 0;
            return null;
        }
        int i2 = i - 1;
        while (true) {
            int i3 = this.rootShift;
            if ((i2 >> i3) != 0) {
                return nullifyAfter(objArr, i2, i3);
            }
            this.rootShift = i3 - 5;
            Object[] objArr2 = objArr[0];
            objArr2.getClass();
            objArr = objArr2;
        }
    }

    private final int rootSize() {
        if (size() <= 32) {
            return 0;
        }
        return UtilsKt.rootSize(size());
    }

    private final Object[] setInRoot(Object[] objArr, int i, int i2, E e, ObjectRef objectRef) {
        int iIndexSegment = UtilsKt.indexSegment(i2, i);
        Object[] objArrMakeMutable = makeMutable(objArr);
        if (i != 0) {
            Object obj = objArrMakeMutable[iIndexSegment];
            obj.getClass();
            objArrMakeMutable[iIndexSegment] = setInRoot((Object[]) obj, i - 5, i2, e, objectRef);
            return objArrMakeMutable;
        }
        if (objArrMakeMutable != objArr) {
            ((AbstractList) this).modCount++;
        }
        objectRef.setValue(objArrMakeMutable[iIndexSegment]);
        objArrMakeMutable[iIndexSegment] = e;
        return objArrMakeMutable;
    }

    private final Object[] shiftLeafBuffers(int i, int i2, Object[][] objArr, int i3, Object[] objArr2) {
        if (this.root == null) {
            ah.f("root is null");
            return null;
        }
        ListIterator<Object[]> listIteratorLeafBufferIterator = leafBufferIterator(rootSize() >> 5);
        while (listIteratorLeafBufferIterator.previousIndex() != i) {
            Object[] objArrPrevious = listIteratorLeafBufferIterator.previous();
            aq5.m(objArrPrevious, 0, objArr2, 32 - i2, 32);
            objArr2 = makeMutableShiftingRight(objArrPrevious, i2);
            i3--;
            objArr[i3] = objArr2;
        }
        return listIteratorLeafBufferIterator.previous();
    }

    private final void splitToBuffers(Collection<? extends E> collection, int i, Object[] objArr, int i2, Object[][] objArr2, int i3, Object[] objArr3) {
        Object[] objArrMutableBuffer;
        if (i3 < 1) {
            PreconditionsKt.throwIllegalArgumentException("requires at least one nullBuffer");
        }
        Object[] objArrMakeMutable = makeMutable(objArr);
        objArr2[0] = objArrMakeMutable;
        int i4 = i & 31;
        int size = ((collection.size() + i) - 1) & 31;
        int i5 = (i2 - i4) + size;
        if (i5 < 32) {
            aq5.m(objArrMakeMutable, size + 1, objArr3, i4, i2);
        } else {
            int i6 = i5 - 31;
            if (i3 == 1) {
                objArrMutableBuffer = objArrMakeMutable;
            } else {
                objArrMutableBuffer = mutableBuffer();
                i3--;
                objArr2[i3] = objArrMutableBuffer;
            }
            int i7 = i2 - i6;
            aq5.m(objArrMakeMutable, 0, objArr3, i7, i2);
            aq5.m(objArrMakeMutable, size + 1, objArrMutableBuffer, i4, i7);
            objArr3 = objArrMutableBuffer;
        }
        Iterator<? extends E> it = collection.iterator();
        copyToBuffer(objArrMakeMutable, i4, it);
        for (int i8 = 1; i8 < i3; i8++) {
            objArr2[i8] = copyToBuffer(mutableBuffer(), 0, it);
        }
        copyToBuffer(objArr3, 0, it);
    }

    private final int tailSize(int i) {
        return i <= 32 ? i : i - UtilsKt.rootSize(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.d1, java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        ListImplementation.checkPositionIndex$runtime(i, size());
        if (i == size()) {
            add(e);
            return;
        }
        ((AbstractList) this).modCount++;
        int iRootSize = rootSize();
        if (i >= iRootSize) {
            insertIntoTail(this.root, i - iRootSize, e);
            return;
        }
        ObjectRef objectRef = new ObjectRef(null);
        Object[] objArr = this.root;
        objArr.getClass();
        insertIntoTail(insertIntoRoot(objArr, this.rootShift, i, e, objectRef), 0, objectRef.getValue());
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        PersistentVectorBuilder<E> persistentVectorBuilder;
        Collection<? extends E> collection2;
        Object[] objArrMutableBuffer;
        ListImplementation.checkPositionIndex$runtime(i, size());
        if (i == size()) {
            return addAll(collection);
        }
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int i2 = (i >> 5) << 5;
        int size = ((collection.size() + (size() - i2)) - 1) / 32;
        if (size == 0) {
            CommonFunctionsKt.m5571assert(i >= rootSize());
            int i3 = i & 31;
            int size2 = ((collection.size() + i) - 1) & 31;
            Object[] objArr = this.tail;
            Object[] objArrMakeMutable = makeMutable(objArr);
            aq5.m(objArr, size2 + 1, objArrMakeMutable, i3, tailSize());
            copyToBuffer(objArrMakeMutable, i3, collection.iterator());
            this.tail = objArrMakeMutable;
            this.size = collection.size() + size();
            return true;
        }
        Object[][] objArr2 = new Object[size][];
        int iTailSize = tailSize();
        int iTailSize2 = tailSize(collection.size() + size());
        if (i >= rootSize()) {
            objArrMutableBuffer = mutableBuffer();
            persistentVectorBuilder = this;
            collection2 = collection;
            persistentVectorBuilder.splitToBuffers(collection2, i, this.tail, iTailSize, objArr2, size, objArrMutableBuffer);
            objArr2 = objArr2;
        } else {
            persistentVectorBuilder = this;
            collection2 = collection;
            Object[] objArr3 = persistentVectorBuilder.tail;
            if (iTailSize2 > iTailSize) {
                int i4 = iTailSize2 - iTailSize;
                Object[] objArrMakeMutableShiftingRight = persistentVectorBuilder.makeMutableShiftingRight(objArr3, i4);
                persistentVectorBuilder.insertIntoRoot(collection2, i, i4, objArr2, size, objArrMakeMutableShiftingRight);
                objArr2 = objArr2;
                objArrMutableBuffer = objArrMakeMutableShiftingRight;
            } else {
                objArrMutableBuffer = persistentVectorBuilder.mutableBuffer();
                int i5 = iTailSize - iTailSize2;
                aq5.m(objArr3, 0, objArrMutableBuffer, i5, iTailSize);
                int i6 = 32 - i5;
                Object[] objArrMakeMutableShiftingRight2 = persistentVectorBuilder.makeMutableShiftingRight(persistentVectorBuilder.tail, i6);
                int i7 = size - 1;
                objArr2[i7] = objArrMakeMutableShiftingRight2;
                persistentVectorBuilder.insertIntoRoot(collection2, i, i6, objArr2, i7, objArrMakeMutableShiftingRight2);
                persistentVectorBuilder = persistentVectorBuilder;
                collection2 = collection2;
            }
        }
        persistentVectorBuilder.root = persistentVectorBuilder.pushBuffersIncreasingHeightIfNeeded(persistentVectorBuilder.root, i2, objArr2);
        persistentVectorBuilder.tail = objArrMutableBuffer;
        persistentVectorBuilder.size = collection2.size() + persistentVectorBuilder.size();
        return true;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection.Builder
    public PersistentList<E> build() {
        PersistentVector persistentVector;
        if (this.root == this.vectorRoot && this.tail == this.vectorTail) {
            persistentVector = this.vector;
        } else {
            this.ownership = new MutabilityOwnership();
            Object[] objArr = this.root;
            this.vectorRoot = objArr;
            Object[] objArr2 = this.tail;
            this.vectorTail = objArr2;
            if (objArr == null) {
                persistentVector = objArr2.length == 0 ? UtilsKt.persistentVectorOf() : new SmallPersistentVector(Arrays.copyOf(this.tail, size()));
            } else {
                objArr.getClass();
                persistentVector = new PersistentVector(objArr, this.tail, size(), this.rootShift);
            }
        }
        this.vector = persistentVector;
        return (PersistentList<E>) persistentVector;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        ListImplementation.checkElementIndex$runtime(i, size());
        return (E) bufferFor(i)[i & 31];
    }

    public final int getModCount$runtime() {
        return ((AbstractList) this).modCount;
    }

    public final Object[] getRoot$runtime() {
        return this.root;
    }

    public final int getRootShift$runtime() {
        return this.rootShift;
    }

    @Override // defpackage.d1
    public int getSize() {
        return this.size;
    }

    public final Object[] getTail$runtime() {
        return this.tail;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return listIterator();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator(int i) {
        ListImplementation.checkPositionIndex$runtime(i, size());
        return new PersistentVectorMutableIterator(this, i);
    }

    public final boolean removeAllWithPredicate(nl3<? super E, Boolean> nl3Var) {
        boolean zRemoveAll = removeAll(nl3Var);
        if (zRemoveAll) {
            ((AbstractList) this).modCount++;
        }
        return zRemoveAll;
    }

    @Override // defpackage.d1
    public E removeAt(int i) {
        ListImplementation.checkElementIndex$runtime(i, size());
        ((AbstractList) this).modCount++;
        int iRootSize = rootSize();
        if (i >= iRootSize) {
            return (E) removeFromTailAt(this.root, iRootSize, this.rootShift, i - iRootSize);
        }
        ObjectRef objectRef = new ObjectRef(this.tail[0]);
        Object[] objArr = this.root;
        objArr.getClass();
        removeFromTailAt(removeFromRootAt(objArr, this.rootShift, i, objectRef), iRootSize, this.rootShift, 0);
        return (E) objectRef.getValue();
    }

    @Override // defpackage.d1, java.util.AbstractList, java.util.List
    public E set(int i, E e) {
        ListImplementation.checkElementIndex$runtime(i, size());
        if (rootSize() > i) {
            ObjectRef objectRef = new ObjectRef(null);
            Object[] objArr = this.root;
            objArr.getClass();
            this.root = setInRoot(objArr, this.rootShift, i, e, objectRef);
            return (E) objectRef.getValue();
        }
        Object[] objArrMakeMutable = makeMutable(this.tail);
        if (objArrMakeMutable != this.tail) {
            ((AbstractList) this).modCount++;
        }
        int i2 = i & 31;
        E e2 = (E) objArrMakeMutable[i2];
        objArrMakeMutable[i2] = e;
        this.tail = objArrMakeMutable;
        return e2;
    }

    public final void setRootShift$runtime(int i) {
        this.rootShift = i;
    }

    private final int tailSize() {
        return tailSize(size());
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        ((AbstractList) this).modCount++;
        int iTailSize = tailSize();
        if (iTailSize < 32) {
            Object[] objArrMakeMutable = makeMutable(this.tail);
            objArrMakeMutable[iTailSize] = e;
            this.tail = objArrMakeMutable;
            this.size = size() + 1;
        } else {
            pushFilledTail(this.root, this.tail, mutableBufferWith(e));
        }
        return true;
    }

    private final void insertIntoRoot(Collection<? extends E> collection, int i, int i2, Object[][] objArr, int i3, Object[] objArr2) {
        Object[] objArr3;
        if (this.root != null) {
            int i4 = i >> 5;
            Object[] objArrShiftLeafBuffers = shiftLeafBuffers(i4, i2, objArr, i3, objArr2);
            int iRootSize = i3 - (((rootSize() >> 5) - 1) - i4);
            if (iRootSize < i3) {
                Object[] objArr4 = objArr[iRootSize];
                objArr4.getClass();
                objArr3 = objArr4;
            } else {
                objArr3 = objArr2;
            }
            splitToBuffers(collection, i, objArrShiftLeafBuffers, 32, objArr, iRootSize, objArr3);
            return;
        }
        ah.f("root is null");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> collection) {
        return removeAllWithPredicate(new v46(collection, 0));
    }

    private final int removeAll(nl3<? super E, Boolean> nl3Var, Object[] objArr, int i, ObjectRef objectRef) {
        Object[] objArrMakeMutable = objArr;
        int i2 = i;
        boolean z = false;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (nl3Var.invoke(obj).booleanValue()) {
                if (!z) {
                    objArrMakeMutable = makeMutable(objArr);
                    z = true;
                    i2 = i3;
                }
            } else if (z) {
                objArrMakeMutable[i2] = obj;
                i2++;
            }
        }
        objectRef.setValue(objArrMakeMutable);
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> collection) {
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int iTailSize = tailSize();
        Iterator<? extends E> it = collection.iterator();
        if (32 - iTailSize >= collection.size()) {
            this.tail = copyToBuffer(makeMutable(this.tail), iTailSize, it);
            this.size = collection.size() + size();
        } else {
            int size = ((collection.size() + iTailSize) - 1) / 32;
            Object[][] objArr = new Object[size][];
            objArr[0] = copyToBuffer(makeMutable(this.tail), iTailSize, it);
            for (int i = 1; i < size; i++) {
                objArr[i] = copyToBuffer(mutableBuffer(), 0, it);
            }
            this.root = pushBuffersIncreasingHeightIfNeeded(this.root, rootSize(), objArr);
            this.tail = copyToBuffer(mutableBuffer(), 0, it);
            this.size = collection.size() + size();
        }
        return true;
    }
}
