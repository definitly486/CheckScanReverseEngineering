package androidx.compose.runtime.retain.impl;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectList;
import androidx.collection.ObjectListKt;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class SafeMultiValueMap<K, V> {
    private final MutableScatterMap<Object, Object> map;

    public static final class ValueSafetyWrapper {
        public static final int $stable = 8;
        private final Object value;

        public ValueSafetyWrapper(Object obj) {
            this.value = obj;
        }

        public final Object getValue() {
            return this.value;
        }
    }

    private /* synthetic */ SafeMultiValueMap(MutableScatterMap mutableScatterMap) {
        this.map = mutableScatterMap;
    }

    /* JADX INFO: renamed from: add-impl, reason: not valid java name */
    public static final void m5602addimpl(MutableScatterMap<Object, Object> mutableScatterMap, K k, V v) {
        Object objMutableObjectListOf;
        if (k == null) {
            k = (K) SafeMultiValueMapKt.NULL_SENTINEL;
        }
        int iFindInsertIndex = mutableScatterMap.findInsertIndex(k);
        boolean z = iFindInsertIndex < 0;
        Object value = null;
        Object obj = z ? null : mutableScatterMap.values[iFindInsertIndex];
        if (obj == null) {
            objMutableObjectListOf = m5618safeWrapIfNecessaryimpl$runtime_retain(mutableScatterMap, v);
        } else if (obj instanceof MutableObjectList) {
            MutableObjectList mutableObjectList = (MutableObjectList) obj;
            mutableObjectList.add(v);
            objMutableObjectListOf = mutableObjectList;
        } else {
            if (obj instanceof ValueSafetyWrapper) {
                value = ((ValueSafetyWrapper) obj).getValue();
            } else if (obj != SafeMultiValueMapKt.NULL_SENTINEL) {
                value = obj;
            }
            objMutableObjectListOf = ObjectListKt.mutableObjectListOf(value, v);
        }
        if (!z) {
            mutableScatterMap.values[iFindInsertIndex] = objMutableObjectListOf;
            return;
        }
        int i = ~iFindInsertIndex;
        mutableScatterMap.keys[i] = k;
        mutableScatterMap.values[i] = objMutableObjectListOf;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ SafeMultiValueMap m5603boximpl(MutableScatterMap mutableScatterMap) {
        return new SafeMultiValueMap(mutableScatterMap);
    }

    /* JADX INFO: renamed from: clear-impl, reason: not valid java name */
    public static final void m5604clearimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        mutableScatterMap.clear();
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static <K, V> MutableScatterMap<Object, Object> m5605constructorimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        return mutableScatterMap;
    }

    /* JADX INFO: renamed from: constructor-impl$default, reason: not valid java name */
    public static /* synthetic */ MutableScatterMap m5606constructorimpl$default(MutableScatterMap mutableScatterMap, int i, jh2 jh2Var) {
        int i2 = 1;
        if ((i & 1) != 0) {
            mutableScatterMap = new MutableScatterMap(0, i2, null);
        }
        return m5605constructorimpl(mutableScatterMap);
    }

    /* JADX INFO: renamed from: contains-impl, reason: not valid java name */
    public static final boolean m5607containsimpl(MutableScatterMap<Object, Object> mutableScatterMap, K k) {
        if (k == null) {
            k = (K) SafeMultiValueMapKt.NULL_SENTINEL;
        }
        return mutableScatterMap.contains(k);
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m5608equalsimpl(MutableScatterMap<Object, Object> mutableScatterMap, Object obj) {
        return (obj instanceof SafeMultiValueMap) && aa4.e(mutableScatterMap, ((SafeMultiValueMap) obj).m5622unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5609equalsimpl0(MutableScatterMap<Object, Object> mutableScatterMap, MutableScatterMap<Object, Object> mutableScatterMap2) {
        return aa4.e(mutableScatterMap, mutableScatterMap2);
    }

    /* JADX INFO: renamed from: forEachValue-impl, reason: not valid java name */
    public static final void m5611forEachValueimpl(MutableScatterMap<Object, Object> mutableScatterMap, nl3<? super V, j59> nl3Var) {
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
                            MutableObjectList mutableObjectList = (MutableObjectList) obj;
                            Object[] objArr2 = mutableObjectList.content;
                            int i4 = mutableObjectList._size;
                            for (int i5 = 0; i5 < i4; i5++) {
                                nl3Var.invoke(objArr2[i5]);
                            }
                        } else {
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

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m5612hashCodeimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        return mutableScatterMap.hashCode();
    }

    /* JADX INFO: renamed from: isEmpty-impl, reason: not valid java name */
    public static final boolean m5613isEmptyimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        return mutableScatterMap.isEmpty();
    }

    /* JADX INFO: renamed from: isNotEmpty-impl, reason: not valid java name */
    public static final boolean m5614isNotEmptyimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        return mutableScatterMap.isNotEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: removeFirst-impl, reason: not valid java name */
    public static final V m5615removeFirstimpl(MutableScatterMap<Object, Object> mutableScatterMap, K k, V v) {
        if (k == null) {
            k = (K) SafeMultiValueMapKt.NULL_SENTINEL;
        }
        Object obj = mutableScatterMap.get(k);
        if (obj == null) {
            return v;
        }
        if (!(obj instanceof MutableObjectList)) {
            V v2 = (V) mutableScatterMap.remove(k);
            if (v2 instanceof ValueSafetyWrapper) {
                return (V) ((ValueSafetyWrapper) v2).getValue();
            }
            if (v2 == SafeMultiValueMapKt.NULL_SENTINEL) {
                return null;
            }
            return v2;
        }
        MutableObjectList mutableObjectList = (MutableObjectList) obj;
        V v3 = (V) mutableObjectList.removeAt(0);
        if (mutableObjectList.isEmpty()) {
            mutableScatterMap.remove(k);
        }
        if (mutableObjectList.getSize() == 1) {
            mutableScatterMap.set(k, m5618safeWrapIfNecessaryimpl$runtime_retain(mutableScatterMap, mutableObjectList.first()));
        }
        return v3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: removeLast-impl, reason: not valid java name */
    public static final V m5617removeLastimpl(MutableScatterMap<Object, Object> mutableScatterMap, K k, V v) {
        if (k == null) {
            k = (K) SafeMultiValueMapKt.NULL_SENTINEL;
        }
        V v2 = (V) mutableScatterMap.get(k);
        if (v2 == 0) {
            return v;
        }
        if (!(v2 instanceof MutableObjectList)) {
            mutableScatterMap.remove(k);
            if (v2 instanceof ValueSafetyWrapper) {
                return (V) ((ValueSafetyWrapper) v2).getValue();
            }
            if (v2 == SafeMultiValueMapKt.NULL_SENTINEL) {
                return null;
            }
            return v2;
        }
        MutableObjectList mutableObjectList = (MutableObjectList) v2;
        V v3 = (V) mutableObjectList.removeAt(mutableObjectList.getSize() - 1);
        if (mutableObjectList.isEmpty()) {
            mutableScatterMap.remove(k);
        }
        if (mutableObjectList.getSize() == 1) {
            mutableScatterMap.set(k, m5618safeWrapIfNecessaryimpl$runtime_retain(mutableScatterMap, mutableObjectList.first()));
        }
        return v3;
    }

    /* JADX INFO: renamed from: safeWrapIfNecessary-impl$runtime_retain, reason: not valid java name */
    public static final Object m5618safeWrapIfNecessaryimpl$runtime_retain(MutableScatterMap<Object, Object> mutableScatterMap, Object obj) {
        if (obj instanceof MutableObjectList) {
            return new ValueSafetyWrapper(obj);
        }
        return obj == null ? SafeMultiValueMapKt.NULL_SENTINEL : obj;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m5619toStringimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        return "SafeMultiValueMap(map=" + mutableScatterMap + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: unwrapSafeValue-impl$runtime_retain, reason: not valid java name */
    public static final V m5620unwrapSafeValueimpl$runtime_retain(MutableScatterMap<Object, Object> mutableScatterMap, Object obj) {
        if (obj instanceof ValueSafetyWrapper) {
            return (V) ((ValueSafetyWrapper) obj).getValue();
        }
        if (obj == SafeMultiValueMapKt.NULL_SENTINEL) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x005c A[LOOP:0: B:9:0x001d->B:22:0x005c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:25:0x005f A[EDGE_INSN: B:25:0x005f->B:23:0x005f BREAK  A[LOOP:0: B:9:0x001d->B:22:0x005c], SYNTHETIC] */
    /* JADX INFO: renamed from: values-impl, reason: not valid java name */
    public static final ObjectList<V> m5621valuesimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
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
        return m5608equalsimpl(this.map, obj);
    }

    public int hashCode() {
        return m5612hashCodeimpl(this.map);
    }

    public String toString() {
        return m5619toStringimpl(this.map);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ MutableScatterMap m5622unboximpl() {
        return this.map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: removeLast-impl, reason: not valid java name */
    public static final V m5616removeLastimpl(MutableScatterMap<Object, Object> mutableScatterMap, K k) {
        if (k == null) {
            k = (K) SafeMultiValueMapKt.NULL_SENTINEL;
        }
        V v = (V) mutableScatterMap.get(k);
        if (v == 0) {
            return null;
        }
        if (v instanceof MutableObjectList) {
            MutableObjectList mutableObjectList = (MutableObjectList) v;
            V v2 = (V) mutableObjectList.removeAt(mutableObjectList.getSize() - 1);
            if (mutableObjectList.getSize() == 1) {
                mutableScatterMap.set(k, m5618safeWrapIfNecessaryimpl$runtime_retain(mutableScatterMap, mutableObjectList.first()));
            }
            return v2;
        }
        mutableScatterMap.remove(k);
        if (v instanceof ValueSafetyWrapper) {
            return (V) ((ValueSafetyWrapper) v).getValue();
        }
        if (v == SafeMultiValueMapKt.NULL_SENTINEL) {
            return null;
        }
        return v;
    }

    /* JADX INFO: renamed from: forEachValue-impl, reason: not valid java name */
    public static final void m5610forEachValueimpl(MutableScatterMap<Object, Object> mutableScatterMap, K k, nl3<? super V, j59> nl3Var) {
        if (k == null) {
            k = (K) SafeMultiValueMapKt.NULL_SENTINEL;
        }
        Object value = mutableScatterMap.get(k);
        if (value != null) {
            if (value instanceof MutableObjectList) {
                MutableObjectList mutableObjectList = (MutableObjectList) value;
                Object[] objArr = mutableObjectList.content;
                int i = mutableObjectList._size;
                for (int i2 = 0; i2 < i; i2++) {
                    nl3Var.invoke(objArr[i2]);
                }
                return;
            }
            if (value instanceof ValueSafetyWrapper) {
                value = ((ValueSafetyWrapper) value).getValue();
            } else if (value == SafeMultiValueMapKt.NULL_SENTINEL) {
                value = null;
            }
            nl3Var.invoke(value);
        }
    }
}
