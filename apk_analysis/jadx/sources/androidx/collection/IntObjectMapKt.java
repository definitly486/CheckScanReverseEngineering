package androidx.collection;

import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class IntObjectMapKt {
    private static final MutableIntObjectMap EmptyIntObjectMap = new MutableIntObjectMap(0);

    public static final <V> IntObjectMap<V> buildIntObjectMap(nl3<? super MutableIntObjectMap<V>, j59> nl3Var) {
        nl3Var.getClass();
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(0, 1, null);
        nl3Var.invoke(mutableIntObjectMap);
        return mutableIntObjectMap;
    }

    public static final <V> IntObjectMap<V> emptyIntObjectMap() {
        MutableIntObjectMap mutableIntObjectMap = EmptyIntObjectMap;
        mutableIntObjectMap.getClass();
        return mutableIntObjectMap;
    }

    public static final <V> IntObjectMap<V> intObjectMapOf(int i, V v, int i2, V v2, int i3, V v3, int i4, V v4, int i5, V v5) {
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(0, 1, null);
        mutableIntObjectMap.set(i, v);
        mutableIntObjectMap.set(i2, v2);
        mutableIntObjectMap.set(i3, v3);
        mutableIntObjectMap.set(i4, v4);
        mutableIntObjectMap.set(i5, v5);
        return mutableIntObjectMap;
    }

    public static final <V> MutableIntObjectMap<V> mutableIntObjectMapOf(int i, V v, int i2, V v2, int i3, V v3, int i4, V v4, int i5, V v5) {
        MutableIntObjectMap<V> mutableIntObjectMap = new MutableIntObjectMap<>(0, 1, null);
        mutableIntObjectMap.set(i, v);
        mutableIntObjectMap.set(i2, v2);
        mutableIntObjectMap.set(i3, v3);
        mutableIntObjectMap.set(i4, v4);
        mutableIntObjectMap.set(i5, v5);
        return mutableIntObjectMap;
    }

    public static final <V> IntObjectMap<V> buildIntObjectMap(int i, nl3<? super MutableIntObjectMap<V>, j59> nl3Var) {
        nl3Var.getClass();
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(i);
        nl3Var.invoke(mutableIntObjectMap);
        return mutableIntObjectMap;
    }

    public static final <V> IntObjectMap<V> intObjectMapOf(int i, V v) {
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(0, 1, null);
        mutableIntObjectMap.set(i, v);
        return mutableIntObjectMap;
    }

    public static final <V> MutableIntObjectMap<V> mutableIntObjectMapOf(int i, V v) {
        MutableIntObjectMap<V> mutableIntObjectMap = new MutableIntObjectMap<>(0, 1, null);
        mutableIntObjectMap.set(i, v);
        return mutableIntObjectMap;
    }

    public static final <V> IntObjectMap<V> intObjectMapOf(int i, V v, int i2, V v2) {
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(0, 1, null);
        mutableIntObjectMap.set(i, v);
        mutableIntObjectMap.set(i2, v2);
        return mutableIntObjectMap;
    }

    public static final <V> MutableIntObjectMap<V> mutableIntObjectMapOf(int i, V v, int i2, V v2) {
        MutableIntObjectMap<V> mutableIntObjectMap = new MutableIntObjectMap<>(0, 1, null);
        mutableIntObjectMap.set(i, v);
        mutableIntObjectMap.set(i2, v2);
        return mutableIntObjectMap;
    }

    public static final <V> IntObjectMap<V> intObjectMapOf(int i, V v, int i2, V v2, int i3, V v3) {
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(0, 1, null);
        mutableIntObjectMap.set(i, v);
        mutableIntObjectMap.set(i2, v2);
        mutableIntObjectMap.set(i3, v3);
        return mutableIntObjectMap;
    }

    public static final <V> MutableIntObjectMap<V> mutableIntObjectMapOf(int i, V v, int i2, V v2, int i3, V v3) {
        MutableIntObjectMap<V> mutableIntObjectMap = new MutableIntObjectMap<>(0, 1, null);
        mutableIntObjectMap.set(i, v);
        mutableIntObjectMap.set(i2, v2);
        mutableIntObjectMap.set(i3, v3);
        return mutableIntObjectMap;
    }

    public static final <V> IntObjectMap<V> intObjectMapOf(int i, V v, int i2, V v2, int i3, V v3, int i4, V v4) {
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(0, 1, null);
        mutableIntObjectMap.set(i, v);
        mutableIntObjectMap.set(i2, v2);
        mutableIntObjectMap.set(i3, v3);
        mutableIntObjectMap.set(i4, v4);
        return mutableIntObjectMap;
    }

    public static final <V> MutableIntObjectMap<V> mutableIntObjectMapOf(int i, V v, int i2, V v2, int i3, V v3, int i4, V v4) {
        MutableIntObjectMap<V> mutableIntObjectMap = new MutableIntObjectMap<>(0, 1, null);
        mutableIntObjectMap.set(i, v);
        mutableIntObjectMap.set(i2, v2);
        mutableIntObjectMap.set(i3, v3);
        mutableIntObjectMap.set(i4, v4);
        return mutableIntObjectMap;
    }

    public static final <V> IntObjectMap<V> intObjectMapOf() {
        MutableIntObjectMap mutableIntObjectMap = EmptyIntObjectMap;
        mutableIntObjectMap.getClass();
        return mutableIntObjectMap;
    }

    public static final <V> MutableIntObjectMap<V> mutableIntObjectMapOf() {
        return new MutableIntObjectMap<>(0, 1, null);
    }
}
