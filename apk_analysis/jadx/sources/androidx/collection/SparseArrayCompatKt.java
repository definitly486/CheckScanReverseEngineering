package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.aa4;
import defpackage.aq5;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class SparseArrayCompatKt {
    private static final Object DELETED = new Object();

    public static final <E> void commonAppend(SparseArrayCompat<E> sparseArrayCompat, int i, E e) {
        sparseArrayCompat.getClass();
        int i2 = sparseArrayCompat.size;
        if (i2 != 0 && i <= sparseArrayCompat.keys[i2 - 1]) {
            sparseArrayCompat.put(i, e);
            return;
        }
        if (sparseArrayCompat.garbage && i2 >= sparseArrayCompat.keys.length) {
            gc(sparseArrayCompat);
        }
        int i3 = sparseArrayCompat.size;
        if (i3 >= sparseArrayCompat.keys.length) {
            int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i3 + 1);
            sparseArrayCompat.keys = Arrays.copyOf(sparseArrayCompat.keys, iIdealIntArraySize);
            sparseArrayCompat.values = Arrays.copyOf(sparseArrayCompat.values, iIdealIntArraySize);
        }
        sparseArrayCompat.keys[i3] = i;
        sparseArrayCompat.values[i3] = e;
        sparseArrayCompat.size = i3 + 1;
    }

    public static final <E> void commonClear(SparseArrayCompat<E> sparseArrayCompat) {
        sparseArrayCompat.getClass();
        int i = sparseArrayCompat.size;
        Object[] objArr = sparseArrayCompat.values;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        sparseArrayCompat.size = 0;
        sparseArrayCompat.garbage = false;
    }

    public static final <E> boolean commonContainsKey(SparseArrayCompat<E> sparseArrayCompat, int i) {
        sparseArrayCompat.getClass();
        return sparseArrayCompat.indexOfKey(i) >= 0;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x001f A[RETURN] */
    public static final <E> boolean commonContainsValue(SparseArrayCompat<E> sparseArrayCompat, E e) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        int i = sparseArrayCompat.size;
        int i2 = 0;
        while (i2 < i) {
            if (sparseArrayCompat.values[i2] == e) {
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

    public static final <E> E commonGet(SparseArrayCompat<E> sparseArrayCompat, int i) {
        E e;
        sparseArrayCompat.getClass();
        int iBinarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
        if (iBinarySearch < 0 || (e = (E) sparseArrayCompat.values[iBinarySearch]) == DELETED) {
            return null;
        }
        return e;
    }

    public static final <E> int commonIndexOfKey(SparseArrayCompat<E> sparseArrayCompat, int i) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        return ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
    }

    public static final <E> int commonIndexOfValue(SparseArrayCompat<E> sparseArrayCompat, E e) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        int i = sparseArrayCompat.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (sparseArrayCompat.values[i2] == e) {
                return i2;
            }
        }
        return -1;
    }

    public static final <E> boolean commonIsEmpty(SparseArrayCompat<E> sparseArrayCompat) {
        sparseArrayCompat.getClass();
        return sparseArrayCompat.size() == 0;
    }

    public static final <E> int commonKeyAt(SparseArrayCompat<E> sparseArrayCompat, int i) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        return sparseArrayCompat.keys[i];
    }

    public static final <E> void commonPut(SparseArrayCompat<E> sparseArrayCompat, int i, E e) {
        sparseArrayCompat.getClass();
        int iBinarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
        if (iBinarySearch >= 0) {
            sparseArrayCompat.values[iBinarySearch] = e;
            return;
        }
        int i2 = ~iBinarySearch;
        if (i2 < sparseArrayCompat.size && sparseArrayCompat.values[i2] == DELETED) {
            sparseArrayCompat.keys[i2] = i;
            sparseArrayCompat.values[i2] = e;
            return;
        }
        if (sparseArrayCompat.garbage && sparseArrayCompat.size >= sparseArrayCompat.keys.length) {
            gc(sparseArrayCompat);
            i2 = ~ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
        }
        int i3 = sparseArrayCompat.size;
        if (i3 >= sparseArrayCompat.keys.length) {
            int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i3 + 1);
            sparseArrayCompat.keys = Arrays.copyOf(sparseArrayCompat.keys, iIdealIntArraySize);
            sparseArrayCompat.values = Arrays.copyOf(sparseArrayCompat.values, iIdealIntArraySize);
        }
        int i4 = sparseArrayCompat.size;
        if (i4 - i2 != 0) {
            int[] iArr = sparseArrayCompat.keys;
            int i5 = i2 + 1;
            aq5.h(i5, i2, i4, iArr, iArr);
            Object[] objArr = sparseArrayCompat.values;
            aq5.m(objArr, i5, objArr, i2, sparseArrayCompat.size);
        }
        sparseArrayCompat.keys[i2] = i;
        sparseArrayCompat.values[i2] = e;
        sparseArrayCompat.size++;
    }

    public static final <E> void commonPutAll(SparseArrayCompat<E> sparseArrayCompat, SparseArrayCompat<? extends E> sparseArrayCompat2) {
        sparseArrayCompat.getClass();
        sparseArrayCompat2.getClass();
        int size = sparseArrayCompat2.size();
        for (int i = 0; i < size; i++) {
            int iKeyAt = sparseArrayCompat2.keyAt(i);
            E eValueAt = sparseArrayCompat2.valueAt(i);
            int iBinarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, iKeyAt);
            if (iBinarySearch >= 0) {
                sparseArrayCompat.values[iBinarySearch] = eValueAt;
            } else {
                int i2 = ~iBinarySearch;
                if (i2 >= sparseArrayCompat.size || sparseArrayCompat.values[i2] != DELETED) {
                    if (sparseArrayCompat.garbage && sparseArrayCompat.size >= sparseArrayCompat.keys.length) {
                        gc(sparseArrayCompat);
                        i2 = ~ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, iKeyAt);
                    }
                    int i3 = sparseArrayCompat.size;
                    if (i3 >= sparseArrayCompat.keys.length) {
                        int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i3 + 1);
                        sparseArrayCompat.keys = Arrays.copyOf(sparseArrayCompat.keys, iIdealIntArraySize);
                        sparseArrayCompat.values = Arrays.copyOf(sparseArrayCompat.values, iIdealIntArraySize);
                    }
                    int i4 = sparseArrayCompat.size;
                    if (i4 - i2 != 0) {
                        int[] iArr = sparseArrayCompat.keys;
                        int i5 = i2 + 1;
                        aq5.h(i5, i2, i4, iArr, iArr);
                        Object[] objArr = sparseArrayCompat.values;
                        aq5.m(objArr, i5, objArr, i2, sparseArrayCompat.size);
                    }
                    sparseArrayCompat.keys[i2] = iKeyAt;
                    sparseArrayCompat.values[i2] = eValueAt;
                    sparseArrayCompat.size++;
                } else {
                    sparseArrayCompat.keys[i2] = iKeyAt;
                    sparseArrayCompat.values[i2] = eValueAt;
                }
            }
        }
    }

    public static final <E> E commonPutIfAbsent(SparseArrayCompat<E> sparseArrayCompat, int i, E e) {
        sparseArrayCompat.getClass();
        E e2 = (E) commonGet(sparseArrayCompat, i);
        if (e2 == null) {
            int iBinarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
            if (iBinarySearch >= 0) {
                sparseArrayCompat.values[iBinarySearch] = e;
                return e2;
            }
            int i2 = ~iBinarySearch;
            if (i2 < sparseArrayCompat.size && sparseArrayCompat.values[i2] == DELETED) {
                sparseArrayCompat.keys[i2] = i;
                sparseArrayCompat.values[i2] = e;
                return e2;
            }
            if (sparseArrayCompat.garbage && sparseArrayCompat.size >= sparseArrayCompat.keys.length) {
                gc(sparseArrayCompat);
                i2 = ~ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
            }
            int i3 = sparseArrayCompat.size;
            if (i3 >= sparseArrayCompat.keys.length) {
                int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i3 + 1);
                sparseArrayCompat.keys = Arrays.copyOf(sparseArrayCompat.keys, iIdealIntArraySize);
                sparseArrayCompat.values = Arrays.copyOf(sparseArrayCompat.values, iIdealIntArraySize);
            }
            int i4 = sparseArrayCompat.size;
            if (i4 - i2 != 0) {
                int[] iArr = sparseArrayCompat.keys;
                int i5 = i2 + 1;
                aq5.h(i5, i2, i4, iArr, iArr);
                Object[] objArr = sparseArrayCompat.values;
                aq5.m(objArr, i5, objArr, i2, sparseArrayCompat.size);
            }
            sparseArrayCompat.keys[i2] = i;
            sparseArrayCompat.values[i2] = e;
            sparseArrayCompat.size++;
        }
        return e2;
    }

    public static final <E> void commonRemove(SparseArrayCompat<E> sparseArrayCompat, int i) {
        sparseArrayCompat.getClass();
        int iBinarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
        if (iBinarySearch >= 0) {
            Object[] objArr = sparseArrayCompat.values;
            Object obj = objArr[iBinarySearch];
            Object obj2 = DELETED;
            if (obj != obj2) {
                objArr[iBinarySearch] = obj2;
                sparseArrayCompat.garbage = true;
            }
        }
    }

    public static final <E> void commonRemoveAt(SparseArrayCompat<E> sparseArrayCompat, int i) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.values[i] != DELETED) {
            sparseArrayCompat.values[i] = DELETED;
            sparseArrayCompat.garbage = true;
        }
    }

    public static final <E> void commonRemoveAtRange(SparseArrayCompat<E> sparseArrayCompat, int i, int i2) {
        sparseArrayCompat.getClass();
        int iMin = Math.min(i2, i + i2);
        while (i < iMin) {
            sparseArrayCompat.removeAt(i);
            i++;
        }
    }

    public static final <E> boolean commonReplace(SparseArrayCompat<E> sparseArrayCompat, int i, E e, E e2) {
        sparseArrayCompat.getClass();
        int iIndexOfKey = sparseArrayCompat.indexOfKey(i);
        if (iIndexOfKey < 0 || !aa4.e(sparseArrayCompat.values[iIndexOfKey], e)) {
            return false;
        }
        sparseArrayCompat.values[iIndexOfKey] = e2;
        return true;
    }

    public static final <E> void commonSetValueAt(SparseArrayCompat<E> sparseArrayCompat, int i, E e) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        sparseArrayCompat.values[i] = e;
    }

    public static final <E> int commonSize(SparseArrayCompat<E> sparseArrayCompat) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        return sparseArrayCompat.size;
    }

    public static final <E> String commonToString(SparseArrayCompat<E> sparseArrayCompat) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(sparseArrayCompat.size * 28);
        sb.append('{');
        int i = sparseArrayCompat.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(sparseArrayCompat.keyAt(i2));
            sb.append('=');
            E eValueAt = sparseArrayCompat.valueAt(i2);
            if (eValueAt != sparseArrayCompat) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public static final <E> E commonValueAt(SparseArrayCompat<E> sparseArrayCompat, int i) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        Object[] objArr = sparseArrayCompat.values;
        if (i < objArr.length) {
            return (E) objArr[i];
        }
        CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
        throw new ArrayIndexOutOfBoundsException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E> void gc(SparseArrayCompat<E> sparseArrayCompat) {
        int i = sparseArrayCompat.size;
        int[] iArr = sparseArrayCompat.keys;
        Object[] objArr = sparseArrayCompat.values;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != DELETED) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        sparseArrayCompat.garbage = false;
        sparseArrayCompat.size = i2;
    }

    private static final <E, T extends E> T internalGet(SparseArrayCompat<E> sparseArrayCompat, int i, T t) {
        T t2;
        int iBinarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
        return (iBinarySearch < 0 || (t2 = (T) sparseArrayCompat.values[iBinarySearch]) == DELETED) ? t : t2;
    }

    public static final <E> E commonGet(SparseArrayCompat<E> sparseArrayCompat, int i, E e) {
        E e2;
        sparseArrayCompat.getClass();
        int iBinarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
        return (iBinarySearch < 0 || (e2 = (E) sparseArrayCompat.values[iBinarySearch]) == DELETED) ? e : e2;
    }

    public static final <E> boolean commonRemove(SparseArrayCompat<E> sparseArrayCompat, int i, Object obj) {
        sparseArrayCompat.getClass();
        int iIndexOfKey = sparseArrayCompat.indexOfKey(i);
        if (iIndexOfKey < 0 || !aa4.e(obj, sparseArrayCompat.valueAt(iIndexOfKey))) {
            return false;
        }
        sparseArrayCompat.removeAt(iIndexOfKey);
        return true;
    }

    public static final <E> E commonReplace(SparseArrayCompat<E> sparseArrayCompat, int i, E e) {
        sparseArrayCompat.getClass();
        int iIndexOfKey = sparseArrayCompat.indexOfKey(i);
        if (iIndexOfKey < 0) {
            return null;
        }
        Object[] objArr = sparseArrayCompat.values;
        E e2 = (E) objArr[iIndexOfKey];
        objArr[iIndexOfKey] = e;
        return e2;
    }
}
