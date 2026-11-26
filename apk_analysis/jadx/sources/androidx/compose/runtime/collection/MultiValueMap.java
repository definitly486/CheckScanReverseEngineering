package androidx.compose.runtime.collection;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectList;
import androidx.collection.ObjectListKt;
import defpackage.aa4;
import defpackage.aq5;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.nl3;
import defpackage.y74;

/* JADX INFO: loaded from: classes2.dex */
public final class MultiValueMap<K, V> {
    private final MutableScatterMap<Object, Object> map;

    private /* synthetic */ MultiValueMap(MutableScatterMap mutableScatterMap) {
        this.map = mutableScatterMap;
    }

    /* JADX INFO: renamed from: add-impl, reason: not valid java name */
    public static final void m5368addimpl(MutableScatterMap<Object, Object> mutableScatterMap, K k, V v) {
        int iFindInsertIndex = mutableScatterMap.findInsertIndex(k);
        boolean z = iFindInsertIndex < 0;
        Object obj = z ? null : mutableScatterMap.values[iFindInsertIndex];
        if (obj != null) {
            if (obj instanceof MutableObjectList) {
                MutableObjectList mutableObjectList = (MutableObjectList) obj;
                mutableObjectList.add(v);
                v = (V) mutableObjectList;
            } else {
                v = (V) ObjectListKt.mutableObjectListOf(obj, v);
            }
        }
        if (!z) {
            mutableScatterMap.values[iFindInsertIndex] = v;
            return;
        }
        int i = ~iFindInsertIndex;
        mutableScatterMap.keys[i] = k;
        mutableScatterMap.values[i] = v;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ MultiValueMap m5369boximpl(MutableScatterMap mutableScatterMap) {
        return new MultiValueMap(mutableScatterMap);
    }

    /* JADX INFO: renamed from: clear-impl, reason: not valid java name */
    public static final void m5370clearimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        mutableScatterMap.clear();
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static <K, V> MutableScatterMap<Object, Object> m5371constructorimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        return mutableScatterMap;
    }

    /* JADX INFO: renamed from: constructor-impl$default, reason: not valid java name */
    public static /* synthetic */ MutableScatterMap m5372constructorimpl$default(MutableScatterMap mutableScatterMap, int i, jh2 jh2Var) {
        int i2 = 1;
        if ((i & 1) != 0) {
            mutableScatterMap = new MutableScatterMap(0, i2, null);
        }
        return m5371constructorimpl(mutableScatterMap);
    }

    /* JADX INFO: renamed from: contains-impl, reason: not valid java name */
    public static final boolean m5373containsimpl(MutableScatterMap<Object, Object> mutableScatterMap, K k) {
        return mutableScatterMap.contains(k);
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m5374equalsimpl(MutableScatterMap<Object, Object> mutableScatterMap, Object obj) {
        return (obj instanceof MultiValueMap) && aa4.e(mutableScatterMap, ((MultiValueMap) obj).m5387unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5375equalsimpl0(MutableScatterMap<Object, Object> mutableScatterMap, MutableScatterMap<Object, Object> mutableScatterMap2) {
        return aa4.e(mutableScatterMap, mutableScatterMap2);
    }

    /* JADX INFO: renamed from: forEachValue-impl, reason: not valid java name */
    public static final void m5377forEachValueimpl(MutableScatterMap<Object, Object> mutableScatterMap, nl3<? super V, j59> nl3Var) {
        Object[] objArr = mutableScatterMap.values;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        Object obj = objArr[(i << 3) + i3];
                        if (obj instanceof MutableObjectList) {
                            ObjectList objectList = (ObjectList) obj;
                            Object[] objArr2 = objectList.content;
                            int i4 = objectList._size;
                            for (int i5 = 0; i5 < i4; i5++) {
                                Object obj2 = objArr2[i5];
                                obj2.getClass();
                                nl3Var.invoke(obj2);
                            }
                        } else {
                            obj.getClass();
                            nl3Var.invoke(obj);
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    /* JADX INFO: renamed from: get-impl, reason: not valid java name */
    public static final ObjectList<V> m5378getimpl(MutableScatterMap<Object, Object> mutableScatterMap, K k) {
        Object obj = mutableScatterMap.get(k);
        if (obj == null) {
            return ObjectListKt.emptyObjectList();
        }
        return obj instanceof MutableObjectList ? (ObjectList) obj : ObjectListKt.objectListOf(obj);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m5379hashCodeimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        return mutableScatterMap.hashCode();
    }

    /* JADX INFO: renamed from: isEmpty-impl, reason: not valid java name */
    public static final boolean m5380isEmptyimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        return mutableScatterMap.isEmpty();
    }

    /* JADX INFO: renamed from: isNotEmpty-impl, reason: not valid java name */
    public static final boolean m5381isNotEmptyimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        return mutableScatterMap.isNotEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: removeFirst-impl, reason: not valid java name */
    public static final V m5382removeFirstimpl(MutableScatterMap<Object, Object> mutableScatterMap, K k) {
        V v = (V) mutableScatterMap.get(k);
        if (v == 0) {
            return null;
        }
        if (!(v instanceof MutableObjectList)) {
            mutableScatterMap.remove(k);
            return v;
        }
        MutableObjectList mutableObjectList = (MutableObjectList) v;
        V v2 = (V) mutableObjectList.removeAt(0);
        if (mutableObjectList.isEmpty()) {
            mutableScatterMap.remove(k);
        }
        if (mutableObjectList.getSize() == 1) {
            mutableScatterMap.set(k, mutableObjectList.first());
        }
        return v2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: removeLast-impl, reason: not valid java name */
    public static final V m5383removeLastimpl(MutableScatterMap<Object, Object> mutableScatterMap, K k) {
        V v = (V) mutableScatterMap.get(k);
        if (v == 0) {
            return null;
        }
        if (!(v instanceof MutableObjectList)) {
            mutableScatterMap.remove(k);
            return v;
        }
        MutableObjectList mutableObjectList = (MutableObjectList) v;
        V v2 = (V) ExtensionsKt.removeLast(mutableObjectList);
        v2.getClass();
        if (mutableObjectList.isEmpty()) {
            mutableScatterMap.remove(k);
        }
        if (mutableObjectList.getSize() == 1) {
            mutableScatterMap.set(k, mutableObjectList.first());
        }
        return v2;
    }

    /* JADX INFO: renamed from: removeValueIf-impl, reason: not valid java name */
    public static final void m5384removeValueIfimpl(MutableScatterMap<Object, Object> mutableScatterMap, K k, nl3<? super V, Boolean> nl3Var) {
        Object obj = mutableScatterMap.get(k);
        if (obj != null) {
            if (!(obj instanceof MutableObjectList)) {
                if (nl3Var.invoke(obj).booleanValue()) {
                    mutableScatterMap.remove(k);
                    return;
                }
                return;
            }
            MutableObjectList mutableObjectList = (MutableObjectList) obj;
            int i = mutableObjectList._size;
            Object[] objArr = mutableObjectList.content;
            int i2 = 0;
            y74 y74VarN = kx6.n(0, i);
            int i3 = y74VarN.b;
            int i4 = y74VarN.c;
            if (i3 <= i4) {
                while (true) {
                    objArr[i3 - i2] = objArr[i3];
                    if (nl3Var.invoke(objArr[i3]).booleanValue()) {
                        i2++;
                    }
                    if (i3 == i4) {
                        break;
                    } else {
                        i3++;
                    }
                }
            }
            aq5.t(null, objArr, i - i2, i);
            mutableObjectList._size -= i2;
            if (mutableObjectList.isEmpty()) {
                mutableScatterMap.remove(k);
            }
            if (mutableObjectList.getSize() == 1) {
                mutableScatterMap.set(k, mutableObjectList.first());
            }
        }
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m5385toStringimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        return "MultiValueMap(map=" + mutableScatterMap + ')';
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x005f A[LOOP:0: B:9:0x001d->B:22:0x005f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:25:0x0062 A[EDGE_INSN: B:25:0x0062->B:23:0x0062 BREAK  A[LOOP:0: B:9:0x001d->B:22:0x005f], SYNTHETIC] */
    /* JADX INFO: renamed from: values-impl, reason: not valid java name */
    public static final ObjectList<V> m5386valuesimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        if (mutableScatterMap.isEmpty()) {
            return ObjectListKt.emptyObjectList();
        }
        MutableObjectList mutableObjectList = new MutableObjectList(0, 1, null);
        Object[] objArr = mutableScatterMap.values;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i != length) {
                        break;
                        break;
                    }
                    i++;
                } else {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            Object obj = objArr[(i << 3) + i3];
                            if (obj instanceof MutableObjectList) {
                                mutableObjectList.addAll((MutableObjectList) obj);
                            } else {
                                obj.getClass();
                                mutableObjectList.add(obj);
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        break;
                    }
                    if (i != length) {
                        break;
                    }
                    i++;
                }
            }
        }
        return mutableObjectList;
    }

    public boolean equals(Object obj) {
        return m5374equalsimpl(this.map, obj);
    }

    public int hashCode() {
        return m5379hashCodeimpl(this.map);
    }

    public String toString() {
        return m5385toStringimpl(this.map);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ MutableScatterMap m5387unboximpl() {
        return this.map;
    }

    /* JADX INFO: renamed from: forEachValue-impl, reason: not valid java name */
    public static final void m5376forEachValueimpl(MutableScatterMap<Object, Object> mutableScatterMap, K k, nl3<? super V, j59> nl3Var) {
        Object obj = mutableScatterMap.get(k);
        if (obj != null) {
            if (obj instanceof MutableObjectList) {
                ObjectList objectList = (ObjectList) obj;
                Object[] objArr = objectList.content;
                int i = objectList._size;
                for (int i2 = 0; i2 < i; i2++) {
                    Object obj2 = objArr[i2];
                    obj2.getClass();
                    nl3Var.invoke(obj2);
                }
                return;
            }
            nl3Var.invoke(obj);
        }
    }
}
