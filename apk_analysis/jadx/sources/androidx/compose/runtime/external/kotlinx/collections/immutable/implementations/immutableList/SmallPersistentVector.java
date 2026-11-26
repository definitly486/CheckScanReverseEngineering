package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import defpackage.aq5;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.yr;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
public final class SmallPersistentVector<E> extends AbstractPersistentList<E> implements ImmutableList<E> {
    private final Object[] buffer;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final SmallPersistentVector EMPTY = new SmallPersistentVector(new Object[0]);

    public SmallPersistentVector(Object[] objArr) {
        this.buffer = objArr;
        CommonFunctionsKt.m5571assert(objArr.length <= 32);
    }

    private final Object[] bufferOfSize(int i) {
        return new Object[i];
    }

    @Override // java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public PersistentList<E> add(int i, E e) {
        ListImplementation.checkPositionIndex$runtime(i, size());
        if (i == size()) {
            return add((Object) e);
        }
        if (size() < 32) {
            Object[] objArrBufferOfSize = bufferOfSize(size() + 1);
            aq5.q(this.buffer, objArrBufferOfSize, 0, 0, i, 6);
            aq5.m(this.buffer, i + 1, objArrBufferOfSize, i, size());
            objArrBufferOfSize[i] = e;
            return new SmallPersistentVector(objArrBufferOfSize);
        }
        Object[] objArr = this.buffer;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        aq5.m(this.buffer, i + 1, objArrCopyOf, i, size() - 1);
        objArrCopyOf[i] = e;
        return new PersistentVector(objArrCopyOf, UtilsKt.presizedBufferWith(this.buffer[31]), size() + 1, 0);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public PersistentList<E> addAll(int i, Collection<? extends E> collection) {
        ListImplementation.checkPositionIndex$runtime(i, size());
        if (collection.size() + size() > 32) {
            PersistentList.Builder<E> builder = builder();
            builder.addAll(i, collection);
            return builder.build();
        }
        Object[] objArrBufferOfSize = bufferOfSize(collection.size() + size());
        aq5.q(this.buffer, objArrBufferOfSize, 0, 0, i, 6);
        aq5.m(this.buffer, collection.size() + i, objArrBufferOfSize, i, size());
        Iterator<? extends E> it = collection.iterator();
        int i2 = i;
        while (it.hasNext()) {
            objArrBufferOfSize[i2] = it.next();
            i2++;
        }
        return new SmallPersistentVector(objArrBufferOfSize);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    public PersistentList.Builder<E> builder() {
        return new PersistentVectorBuilder(this, null, this.buffer, 0);
    }

    @Override // defpackage.u0, java.util.List
    public E get(int i) {
        ListImplementation.checkElementIndex$runtime(i, size());
        return (E) this.buffer[i];
    }

    @Override // defpackage.u0, defpackage.v
    public int getSize() {
        return this.buffer.length;
    }

    @Override // defpackage.u0, java.util.List
    public int indexOf(Object obj) {
        return yr.Q(obj, this.buffer);
    }

    @Override // defpackage.u0, java.util.List
    public int lastIndexOf(Object obj) {
        Object[] objArr = this.buffer;
        objArr.getClass();
        if (obj == null) {
            int length = objArr.length - 1;
            if (length >= 0) {
                while (true) {
                    int i = length - 1;
                    if (objArr[length] == null) {
                        return length;
                    }
                    if (i >= 0) {
                        length = i;
                    }
                }
            }
        } else {
            int length2 = objArr.length - 1;
            if (length2 >= 0) {
                while (true) {
                    int i2 = length2 - 1;
                    if (obj.equals(objArr[length2])) {
                        return length2;
                    }
                    if (i2 < 0) {
                        break;
                    }
                    length2 = i2;
                }
            }
        }
        return -1;
    }

    @Override // defpackage.u0, java.util.List
    public ListIterator<E> listIterator(int i) {
        ListImplementation.checkPositionIndex$runtime(i, size());
        return new BufferIterator(this.buffer, i, size());
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    public PersistentList<E> removeAll(nl3<? super E, Boolean> nl3Var) {
        Object[] objArrCopyOf = this.buffer;
        int size = size();
        int size2 = size();
        boolean z = false;
        for (int i = 0; i < size2; i++) {
            Object obj = this.buffer[i];
            if (nl3Var.invoke(obj).booleanValue()) {
                if (!z) {
                    Object[] objArr = this.buffer;
                    objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
                    z = true;
                    size = i;
                }
            } else if (z) {
                objArrCopyOf[size] = obj;
                size++;
            }
        }
        if (size == size()) {
            return this;
        }
        return size == 0 ? EMPTY : new SmallPersistentVector(aq5.r(0, size, objArrCopyOf));
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public PersistentList<E> removeAt(int i) {
        ListImplementation.checkElementIndex$runtime(i, size());
        if (size() == 1) {
            return EMPTY;
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.buffer, size() - 1);
        aq5.m(this.buffer, i, objArrCopyOf, i + 1, size());
        return new SmallPersistentVector(objArrCopyOf);
    }

    @Override // defpackage.u0, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public PersistentList<E> set(int i, E e) {
        ListImplementation.checkElementIndex$runtime(i, size());
        Object[] objArr = this.buffer;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        objArrCopyOf[i] = e;
        return new SmallPersistentVector(objArrCopyOf);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final SmallPersistentVector getEMPTY() {
            return SmallPersistentVector.EMPTY;
        }

        private Companion() {
        }
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList, java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    public PersistentList<E> addAll(Collection<? extends E> collection) {
        if (collection.size() + size() <= 32) {
            Object[] objArrCopyOf = Arrays.copyOf(this.buffer, collection.size() + size());
            int size = size();
            Iterator<? extends E> it = collection.iterator();
            while (it.hasNext()) {
                objArrCopyOf[size] = it.next();
                size++;
            }
            return new SmallPersistentVector(objArrCopyOf);
        }
        PersistentList.Builder<E> builder = builder();
        builder.addAll(collection);
        return builder.build();
    }

    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    public PersistentList<E> add(E e) {
        if (size() < 32) {
            Object[] objArrCopyOf = Arrays.copyOf(this.buffer, size() + 1);
            objArrCopyOf[size()] = e;
            return new SmallPersistentVector(objArrCopyOf);
        }
        return new PersistentVector(this.buffer, UtilsKt.presizedBufferWith(e), size() + 1, 0);
    }
}
