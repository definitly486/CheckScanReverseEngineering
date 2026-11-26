package androidx.collection;

import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class LongObjectMapKt {
    private static final MutableLongObjectMap EmptyLongObjectMap = new MutableLongObjectMap(0);

    public static final <V> LongObjectMap<V> buildLongObjectMap(nl3<? super MutableLongObjectMap<V>, j59> nl3Var) {
        nl3Var.getClass();
        MutableLongObjectMap mutableLongObjectMap = new MutableLongObjectMap(0, 1, null);
        nl3Var.invoke(mutableLongObjectMap);
        return mutableLongObjectMap;
    }

    public static final <V> LongObjectMap<V> emptyLongObjectMap() {
        MutableLongObjectMap mutableLongObjectMap = EmptyLongObjectMap;
        mutableLongObjectMap.getClass();
        return mutableLongObjectMap;
    }

    public static final <V> LongObjectMap<V> longObjectMapOf(long j, V v, long j2, V v2, long j3, V v3, long j4, V v4, long j5, V v5) {
        MutableLongObjectMap mutableLongObjectMap = new MutableLongObjectMap(0, 1, null);
        mutableLongObjectMap.set(j, v);
        mutableLongObjectMap.set(j2, v2);
        mutableLongObjectMap.set(j3, v3);
        mutableLongObjectMap.set(j4, v4);
        mutableLongObjectMap.set(j5, v5);
        return mutableLongObjectMap;
    }

    public static final <V> MutableLongObjectMap<V> mutableLongObjectMapOf(long j, V v, long j2, V v2, long j3, V v3, long j4, V v4, long j5, V v5) {
        MutableLongObjectMap<V> mutableLongObjectMap = new MutableLongObjectMap<>(0, 1, null);
        mutableLongObjectMap.set(j, v);
        mutableLongObjectMap.set(j2, v2);
        mutableLongObjectMap.set(j3, v3);
        mutableLongObjectMap.set(j4, v4);
        mutableLongObjectMap.set(j5, v5);
        return mutableLongObjectMap;
    }

    public static final <V> LongObjectMap<V> buildLongObjectMap(int i, nl3<? super MutableLongObjectMap<V>, j59> nl3Var) {
        nl3Var.getClass();
        MutableLongObjectMap mutableLongObjectMap = new MutableLongObjectMap(i);
        nl3Var.invoke(mutableLongObjectMap);
        return mutableLongObjectMap;
    }

    public static final <V> LongObjectMap<V> longObjectMapOf(long j, V v) {
        MutableLongObjectMap mutableLongObjectMap = new MutableLongObjectMap(0, 1, null);
        mutableLongObjectMap.set(j, v);
        return mutableLongObjectMap;
    }

    public static final <V> MutableLongObjectMap<V> mutableLongObjectMapOf(long j, V v) {
        MutableLongObjectMap<V> mutableLongObjectMap = new MutableLongObjectMap<>(0, 1, null);
        mutableLongObjectMap.set(j, v);
        return mutableLongObjectMap;
    }

    public static final <V> LongObjectMap<V> longObjectMapOf(long j, V v, long j2, V v2) {
        MutableLongObjectMap mutableLongObjectMap = new MutableLongObjectMap(0, 1, null);
        mutableLongObjectMap.set(j, v);
        mutableLongObjectMap.set(j2, v2);
        return mutableLongObjectMap;
    }

    public static final <V> MutableLongObjectMap<V> mutableLongObjectMapOf(long j, V v, long j2, V v2) {
        MutableLongObjectMap<V> mutableLongObjectMap = new MutableLongObjectMap<>(0, 1, null);
        mutableLongObjectMap.set(j, v);
        mutableLongObjectMap.set(j2, v2);
        return mutableLongObjectMap;
    }

    public static final <V> LongObjectMap<V> longObjectMapOf(long j, V v, long j2, V v2, long j3, V v3) {
        MutableLongObjectMap mutableLongObjectMap = new MutableLongObjectMap(0, 1, null);
        mutableLongObjectMap.set(j, v);
        mutableLongObjectMap.set(j2, v2);
        mutableLongObjectMap.set(j3, v3);
        return mutableLongObjectMap;
    }

    public static final <V> MutableLongObjectMap<V> mutableLongObjectMapOf(long j, V v, long j2, V v2, long j3, V v3) {
        MutableLongObjectMap<V> mutableLongObjectMap = new MutableLongObjectMap<>(0, 1, null);
        mutableLongObjectMap.set(j, v);
        mutableLongObjectMap.set(j2, v2);
        mutableLongObjectMap.set(j3, v3);
        return mutableLongObjectMap;
    }

    public static final <V> LongObjectMap<V> longObjectMapOf(long j, V v, long j2, V v2, long j3, V v3, long j4, V v4) {
        MutableLongObjectMap mutableLongObjectMap = new MutableLongObjectMap(0, 1, null);
        mutableLongObjectMap.set(j, v);
        mutableLongObjectMap.set(j2, v2);
        mutableLongObjectMap.set(j3, v3);
        mutableLongObjectMap.set(j4, v4);
        return mutableLongObjectMap;
    }

    public static final <V> MutableLongObjectMap<V> mutableLongObjectMapOf(long j, V v, long j2, V v2, long j3, V v3, long j4, V v4) {
        MutableLongObjectMap<V> mutableLongObjectMap = new MutableLongObjectMap<>(0, 1, null);
        mutableLongObjectMap.set(j, v);
        mutableLongObjectMap.set(j2, v2);
        mutableLongObjectMap.set(j3, v3);
        mutableLongObjectMap.set(j4, v4);
        return mutableLongObjectMap;
    }

    public static final <V> LongObjectMap<V> longObjectMapOf() {
        MutableLongObjectMap mutableLongObjectMap = EmptyLongObjectMap;
        mutableLongObjectMap.getClass();
        return mutableLongObjectMap;
    }

    public static final <V> MutableLongObjectMap<V> mutableLongObjectMapOf() {
        return new MutableLongObjectMap<>(0, 1, null);
    }
}
