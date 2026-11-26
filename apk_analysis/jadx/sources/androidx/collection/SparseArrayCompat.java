package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.aa4;
import defpackage.aq5;
import defpackage.jh2;
import defpackage.ul2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class SparseArrayCompat<E> implements Cloneable {
    public /* synthetic */ boolean garbage;
    public /* synthetic */ int[] keys;
    public /* synthetic */ int size;
    public /* synthetic */ Object[] values;

    public SparseArrayCompat(int i) {
        if (i == 0) {
            this.keys = ContainerHelpersKt.EMPTY_INTS;
            this.values = ContainerHelpersKt.EMPTY_OBJECTS;
        } else {
            int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i);
            this.keys = new int[iIdealIntArraySize];
            this.values = new Object[iIdealIntArraySize];
        }
    }

    public void append(int i, E e) {
        int i2 = this.size;
        if (i2 != 0 && i <= this.keys[i2 - 1]) {
            put(i, e);
            return;
        }
        if (this.garbage && i2 >= this.keys.length) {
            SparseArrayCompatKt.gc(this);
        }
        int i3 = this.size;
        if (i3 >= this.keys.length) {
            int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i3 + 1);
            this.keys = Arrays.copyOf(this.keys, iIdealIntArraySize);
            this.values = Arrays.copyOf(this.values, iIdealIntArraySize);
        }
        this.keys[i3] = i;
        this.values[i3] = e;
        this.size = i3 + 1;
    }

    public void clear() {
        int i = this.size;
        Object[] objArr = this.values;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.size = 0;
        this.garbage = false;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SparseArrayCompat<E> m1038clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        objClone.getClass();
        SparseArrayCompat<E> sparseArrayCompat = (SparseArrayCompat) objClone;
        sparseArrayCompat.keys = (int[]) this.keys.clone();
        sparseArrayCompat.values = (Object[]) this.values.clone();
        return sparseArrayCompat;
    }

    public boolean containsKey(int i) {
        return indexOfKey(i) >= 0;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x001c A[RETURN] */
    public boolean containsValue(E e) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        int i = this.size;
        int i2 = 0;
        while (i2 < i) {
            if (this.values[i2] == e) {
                if (i2 >= 0) {
                    return true;
                }
                return false;
            }
            i2++;
        }
        i2 = -1;
        if (i2 >= 0) {
            return true;
        }
        return false;
    }

    @ul2
    public void delete(int i) {
        remove(i);
    }

    public E get(int i) {
        return (E) SparseArrayCompatKt.commonGet(this, i);
    }

    public final boolean getIsEmpty() {
        return isEmpty();
    }

    public int indexOfKey(int i) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        return ContainerHelpersKt.binarySearch(this.keys, this.size, i);
    }

    public int indexOfValue(E e) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.values[i2] == e) {
                return i2;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public int keyAt(int i) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        return this.keys[i];
    }

    public void put(int i, E e) {
        int iBinarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, i);
        if (iBinarySearch >= 0) {
            this.values[iBinarySearch] = e;
            return;
        }
        int i2 = ~iBinarySearch;
        if (i2 < this.size && this.values[i2] == SparseArrayCompatKt.DELETED) {
            this.keys[i2] = i;
            this.values[i2] = e;
            return;
        }
        if (this.garbage && this.size >= this.keys.length) {
            SparseArrayCompatKt.gc(this);
            i2 = ~ContainerHelpersKt.binarySearch(this.keys, this.size, i);
        }
        int i3 = this.size;
        if (i3 >= this.keys.length) {
            int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i3 + 1);
            this.keys = Arrays.copyOf(this.keys, iIdealIntArraySize);
            this.values = Arrays.copyOf(this.values, iIdealIntArraySize);
        }
        int i4 = this.size;
        if (i4 - i2 != 0) {
            int[] iArr = this.keys;
            int i5 = i2 + 1;
            aq5.h(i5, i2, i4, iArr, iArr);
            Object[] objArr = this.values;
            aq5.m(objArr, i5, objArr, i2, this.size);
        }
        this.keys[i2] = i;
        this.values[i2] = e;
        this.size++;
    }

    public void putAll(SparseArrayCompat<? extends E> sparseArrayCompat) {
        sparseArrayCompat.getClass();
        int size = sparseArrayCompat.size();
        for (int i = 0; i < size; i++) {
            int iKeyAt = sparseArrayCompat.keyAt(i);
            E eValueAt = sparseArrayCompat.valueAt(i);
            int iBinarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, iKeyAt);
            if (iBinarySearch >= 0) {
                this.values[iBinarySearch] = eValueAt;
            } else {
                int i2 = ~iBinarySearch;
                if (i2 >= this.size || this.values[i2] != SparseArrayCompatKt.DELETED) {
                    if (this.garbage && this.size >= this.keys.length) {
                        SparseArrayCompatKt.gc(this);
                        i2 = ~ContainerHelpersKt.binarySearch(this.keys, this.size, iKeyAt);
                    }
                    int i3 = this.size;
                    if (i3 >= this.keys.length) {
                        int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i3 + 1);
                        this.keys = Arrays.copyOf(this.keys, iIdealIntArraySize);
                        this.values = Arrays.copyOf(this.values, iIdealIntArraySize);
                    }
                    int i4 = this.size;
                    if (i4 - i2 != 0) {
                        int[] iArr = this.keys;
                        int i5 = i2 + 1;
                        aq5.h(i5, i2, i4, iArr, iArr);
                        Object[] objArr = this.values;
                        aq5.m(objArr, i5, objArr, i2, this.size);
                    }
                    this.keys[i2] = iKeyAt;
                    this.values[i2] = eValueAt;
                    this.size++;
                } else {
                    this.keys[i2] = iKeyAt;
                    this.values[i2] = eValueAt;
                }
            }
        }
    }

    public E putIfAbsent(int i, E e) {
        E e2 = (E) SparseArrayCompatKt.commonGet(this, i);
        if (e2 == null) {
            int iBinarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, i);
            if (iBinarySearch >= 0) {
                this.values[iBinarySearch] = e;
                return e2;
            }
            int i2 = ~iBinarySearch;
            if (i2 < this.size && this.values[i2] == SparseArrayCompatKt.DELETED) {
                this.keys[i2] = i;
                this.values[i2] = e;
                return e2;
            }
            if (this.garbage && this.size >= this.keys.length) {
                SparseArrayCompatKt.gc(this);
                i2 = ~ContainerHelpersKt.binarySearch(this.keys, this.size, i);
            }
            int i3 = this.size;
            if (i3 >= this.keys.length) {
                int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i3 + 1);
                this.keys = Arrays.copyOf(this.keys, iIdealIntArraySize);
                this.values = Arrays.copyOf(this.values, iIdealIntArraySize);
            }
            int i4 = this.size;
            if (i4 - i2 != 0) {
                int[] iArr = this.keys;
                int i5 = i2 + 1;
                aq5.h(i5, i2, i4, iArr, iArr);
                Object[] objArr = this.values;
                aq5.m(objArr, i5, objArr, i2, this.size);
            }
            this.keys[i2] = i;
            this.values[i2] = e;
            this.size++;
        }
        return e2;
    }

    public boolean remove(int i, Object obj) {
        int iIndexOfKey = indexOfKey(i);
        if (iIndexOfKey < 0 || !aa4.e(obj, valueAt(iIndexOfKey))) {
            return false;
        }
        removeAt(iIndexOfKey);
        return true;
    }

    public void removeAt(int i) {
        if (this.values[i] != SparseArrayCompatKt.DELETED) {
            this.values[i] = SparseArrayCompatKt.DELETED;
            this.garbage = true;
        }
    }

    public void removeAtRange(int i, int i2) {
        int iMin = Math.min(i2, i + i2);
        while (i < iMin) {
            removeAt(i);
            i++;
        }
    }

    public boolean replace(int i, E e, E e2) {
        int iIndexOfKey = indexOfKey(i);
        if (iIndexOfKey < 0 || !aa4.e(this.values[iIndexOfKey], e)) {
            return false;
        }
        this.values[iIndexOfKey] = e2;
        return true;
    }

    public void setValueAt(int i, E e) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        this.values[i] = e;
    }

    public int size() {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        return this.size;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.size * 28);
        sb.append('{');
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(keyAt(i2));
            sb.append('=');
            E eValueAt = valueAt(i2);
            if (eValueAt != this) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public E valueAt(int i) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        Object[] objArr = this.values;
        if (i < objArr.length) {
            return (E) objArr[i];
        }
        CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
        throw new ArrayIndexOutOfBoundsException();
    }

    public E get(int i, E e) {
        return (E) SparseArrayCompatKt.commonGet(this, i, e);
    }

    public void remove(int i) {
        SparseArrayCompatKt.commonRemove(this, i);
    }

    public E replace(int i, E e) {
        int iIndexOfKey = indexOfKey(i);
        if (iIndexOfKey < 0) {
            return null;
        }
        Object[] objArr = this.values;
        E e2 = (E) objArr[iIndexOfKey];
        objArr[iIndexOfKey] = e;
        return e2;
    }

    public SparseArrayCompat() {
        this(0, 1, null);
    }

    public /* synthetic */ SparseArrayCompat(int i, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 10 : i);
    }
}
