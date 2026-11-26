package com.google.android.gms.common.util;

import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import defpackage.ih;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class CollectionUtils {
    public static Set a(int i, boolean z) {
        if (i <= (true != z ? 256 : 128)) {
            return new ArraySet(i);
        }
        return new HashSet(i, true != z ? 1.0f : 0.75f);
    }

    public static Map b(int i) {
        return i <= 256 ? new ArrayMap(i) : new HashMap(i, 1.0f);
    }

    public static boolean isEmpty(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    @Deprecated
    public static <T> List<T> listOf(T... tArr) {
        int length = tArr.length;
        if (length != 0) {
            return length != 1 ? Collections.unmodifiableList(Arrays.asList(tArr)) : Collections.singletonList(tArr[0]);
        }
        return Collections.EMPTY_LIST;
    }

    public static <K, V> Map<K, V> mapOf(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6) {
        Map mapB = b(6);
        mapB.put(k, v);
        mapB.put(k2, v2);
        mapB.put(k3, v3);
        mapB.put(k4, v4);
        mapB.put(k5, v5);
        mapB.put(k6, v6);
        return Collections.unmodifiableMap(mapB);
    }

    public static <K, V> Map<K, V> mapOfKeyValueArrays(K[] kArr, V[] vArr) {
        int length = kArr.length;
        int length2 = vArr.length;
        if (length != length2) {
            ih.c(String.valueOf(length).length() + 44 + String.valueOf(length2).length(), "Key and values array lengths not equal: ", length, " != ", length2);
            return null;
        }
        if (length == 0) {
            return Collections.EMPTY_MAP;
        }
        if (length == 1) {
            return Collections.singletonMap(kArr[0], vArr[0]);
        }
        Map mapB = b(length);
        for (int i = 0; i < kArr.length; i++) {
            mapB.put(kArr[i], vArr[i]);
        }
        return Collections.unmodifiableMap(mapB);
    }

    public static <T> Set<T> mutableSetOfWithSize(int i) {
        return i == 0 ? new ArraySet() : a(i, true);
    }

    @Deprecated
    public static <T> Set<T> setOf(T... tArr) {
        int length = tArr.length;
        if (length == 0) {
            return Collections.EMPTY_SET;
        }
        if (length == 1) {
            return Collections.singleton(tArr[0]);
        }
        if (length == 2) {
            T t = tArr[0];
            T t2 = tArr[1];
            Set setA = a(2, false);
            setA.add(t);
            setA.add(t2);
            return Collections.unmodifiableSet(setA);
        }
        if (length == 3) {
            return setOf(tArr[0], tArr[1], tArr[2]);
        }
        if (length != 4) {
            Set setA2 = a(length, false);
            Collections.addAll(setA2, tArr);
            return Collections.unmodifiableSet(setA2);
        }
        T t3 = tArr[0];
        T t4 = tArr[1];
        T t5 = tArr[2];
        T t6 = tArr[3];
        Set setA3 = a(4, false);
        setA3.add(t3);
        setA3.add(t4);
        setA3.add(t5);
        setA3.add(t6);
        return Collections.unmodifiableSet(setA3);
    }

    @Deprecated
    public static <T> List<T> listOf(T t) {
        return Collections.singletonList(t);
    }

    @Deprecated
    public static <T> List<T> listOf() {
        return Collections.EMPTY_LIST;
    }

    public static <K, V> Map<K, V> mapOf(K k, V v, K k2, V v2, K k3, V v3) {
        Map mapB = b(3);
        mapB.put(k, v);
        mapB.put(k2, v2);
        mapB.put(k3, v3);
        return Collections.unmodifiableMap(mapB);
    }

    @Deprecated
    public static <T> Set<T> setOf(T t, T t2, T t3) {
        Set setA = a(3, false);
        setA.add(t);
        setA.add(t2);
        setA.add(t3);
        return Collections.unmodifiableSet(setA);
    }
}
