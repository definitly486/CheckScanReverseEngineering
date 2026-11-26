package androidx.collection;

import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ObjectIntMapKt {
    private static final MutableObjectIntMap<Object> EmptyObjectIntMap = new MutableObjectIntMap<>(0);

    public static final <K> ObjectIntMap<K> buildObjectIntMap(nl3<? super MutableObjectIntMap<K>, j59> nl3Var) {
        nl3Var.getClass();
        MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
        nl3Var.invoke(mutableObjectIntMap);
        return mutableObjectIntMap;
    }

    public static final <K> ObjectIntMap<K> emptyObjectIntMap() {
        MutableObjectIntMap<Object> mutableObjectIntMap = EmptyObjectIntMap;
        mutableObjectIntMap.getClass();
        return mutableObjectIntMap;
    }

    public static final <K> MutableObjectIntMap<K> mutableObjectIntMapOf(K k, int i, K k2, int i2, K k3, int i3, K k4, int i4, K k5, int i5) {
        MutableObjectIntMap<K> mutableObjectIntMap = new MutableObjectIntMap<>(0, 1, null);
        mutableObjectIntMap.set(k, i);
        mutableObjectIntMap.set(k2, i2);
        mutableObjectIntMap.set(k3, i3);
        mutableObjectIntMap.set(k4, i4);
        mutableObjectIntMap.set(k5, i5);
        return mutableObjectIntMap;
    }

    public static final <K> ObjectIntMap<K> objectIntMap() {
        MutableObjectIntMap<Object> mutableObjectIntMap = EmptyObjectIntMap;
        mutableObjectIntMap.getClass();
        return mutableObjectIntMap;
    }

    public static final <K> ObjectIntMap<K> objectIntMapOf(K k, int i, K k2, int i2, K k3, int i3, K k4, int i4, K k5, int i5) {
        MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
        mutableObjectIntMap.set(k, i);
        mutableObjectIntMap.set(k2, i2);
        mutableObjectIntMap.set(k3, i3);
        mutableObjectIntMap.set(k4, i4);
        mutableObjectIntMap.set(k5, i5);
        return mutableObjectIntMap;
    }

    public static final <K> ObjectIntMap<K> buildObjectIntMap(int i, nl3<? super MutableObjectIntMap<K>, j59> nl3Var) {
        nl3Var.getClass();
        MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(i);
        nl3Var.invoke(mutableObjectIntMap);
        return mutableObjectIntMap;
    }

    public static final <K> MutableObjectIntMap<K> mutableObjectIntMapOf(K k, int i) {
        MutableObjectIntMap<K> mutableObjectIntMap = new MutableObjectIntMap<>(0, 1, null);
        mutableObjectIntMap.set(k, i);
        return mutableObjectIntMap;
    }

    public static final <K> ObjectIntMap<K> objectIntMapOf(K k, int i, K k2, int i2) {
        MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
        mutableObjectIntMap.set(k, i);
        mutableObjectIntMap.set(k2, i2);
        return mutableObjectIntMap;
    }

    public static final <K> MutableObjectIntMap<K> mutableObjectIntMapOf(K k, int i, K k2, int i2) {
        MutableObjectIntMap<K> mutableObjectIntMap = new MutableObjectIntMap<>(0, 1, null);
        mutableObjectIntMap.set(k, i);
        mutableObjectIntMap.set(k2, i2);
        return mutableObjectIntMap;
    }

    public static final <K> ObjectIntMap<K> objectIntMapOf(K k, int i, K k2, int i2, K k3, int i3) {
        MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
        mutableObjectIntMap.set(k, i);
        mutableObjectIntMap.set(k2, i2);
        mutableObjectIntMap.set(k3, i3);
        return mutableObjectIntMap;
    }

    public static final <K> MutableObjectIntMap<K> mutableObjectIntMapOf(K k, int i, K k2, int i2, K k3, int i3) {
        MutableObjectIntMap<K> mutableObjectIntMap = new MutableObjectIntMap<>(0, 1, null);
        mutableObjectIntMap.set(k, i);
        mutableObjectIntMap.set(k2, i2);
        mutableObjectIntMap.set(k3, i3);
        return mutableObjectIntMap;
    }

    public static final <K> ObjectIntMap<K> objectIntMapOf(K k, int i, K k2, int i2, K k3, int i3, K k4, int i4) {
        MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
        mutableObjectIntMap.set(k, i);
        mutableObjectIntMap.set(k2, i2);
        mutableObjectIntMap.set(k3, i3);
        mutableObjectIntMap.set(k4, i4);
        return mutableObjectIntMap;
    }

    public static final <K> MutableObjectIntMap<K> mutableObjectIntMapOf(K k, int i, K k2, int i2, K k3, int i3, K k4, int i4) {
        MutableObjectIntMap<K> mutableObjectIntMap = new MutableObjectIntMap<>(0, 1, null);
        mutableObjectIntMap.set(k, i);
        mutableObjectIntMap.set(k2, i2);
        mutableObjectIntMap.set(k3, i3);
        mutableObjectIntMap.set(k4, i4);
        return mutableObjectIntMap;
    }

    public static final <K> ObjectIntMap<K> objectIntMapOf(K k, int i) {
        MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
        mutableObjectIntMap.set(k, i);
        return mutableObjectIntMap;
    }

    public static final <K> MutableObjectIntMap<K> mutableObjectIntMapOf() {
        return new MutableObjectIntMap<>(0, 1, null);
    }
}
