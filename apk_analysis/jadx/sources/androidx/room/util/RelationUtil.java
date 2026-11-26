package androidx.room.util;

import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import defpackage.j59;
import defpackage.nl3;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class RelationUtil {
    public static final int MAX_BIND_PARAMETER_CNT = 999;

    public static final <K, V> void recursiveFetchArrayMap(ArrayMap<K, V> arrayMap, boolean z, nl3<? super ArrayMap<K, V>, j59> nl3Var) {
        RelationUtil__RelationUtil_androidKt.recursiveFetchArrayMap(arrayMap, z, nl3Var);
    }

    public static final <K, V> void recursiveFetchHashMap(HashMap<K, V> map, boolean z, nl3<? super HashMap<K, V>, j59> nl3Var) {
        RelationUtil__RelationUtil_androidKt.recursiveFetchHashMap(map, z, nl3Var);
    }

    public static final <V> void recursiveFetchLongSparseArray(LongSparseArray<V> longSparseArray, boolean z, nl3<? super LongSparseArray<V>, j59> nl3Var) {
        RelationUtil__RelationUtilKt.recursiveFetchLongSparseArray(longSparseArray, z, nl3Var);
    }

    public static final <K, V> void recursiveFetchMap(Map<K, V> map, boolean z, nl3<? super Map<K, V>, j59> nl3Var) {
        RelationUtil__RelationUtilKt.recursiveFetchMap(map, z, nl3Var);
    }
}
