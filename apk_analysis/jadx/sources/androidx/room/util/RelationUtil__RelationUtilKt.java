package androidx.room.util;

import androidx.collection.LongSparseArray;
import defpackage.j59;
import defpackage.nl3;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class RelationUtil__RelationUtilKt {
    public static final <V> void recursiveFetchLongSparseArray(LongSparseArray<V> longSparseArray, boolean z, nl3<? super LongSparseArray<V>, j59> nl3Var) {
        longSparseArray.getClass();
        nl3Var.getClass();
        LongSparseArray<? extends V> longSparseArray2 = new LongSparseArray<>(999);
        int size = longSparseArray.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (z) {
                longSparseArray2.put(longSparseArray.keyAt(i), longSparseArray.valueAt(i));
            } else {
                longSparseArray2.put(longSparseArray.keyAt(i), null);
            }
            i++;
            i2++;
            if (i2 == 999) {
                nl3Var.invoke(longSparseArray2);
                if (!z) {
                    longSparseArray.putAll(longSparseArray2);
                }
                longSparseArray2.clear();
                i2 = 0;
            }
        }
        if (i2 > 0) {
            nl3Var.invoke(longSparseArray2);
            if (z) {
                return;
            }
            longSparseArray.putAll(longSparseArray2);
        }
    }

    public static final <K, V> void recursiveFetchMap(Map<K, V> map, boolean z, nl3<? super Map<K, V>, j59> nl3Var) {
        int i;
        map.getClass();
        nl3Var.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<K> it = map.keySet().iterator();
        loop0: while (true) {
            i = 0;
            do {
                if (!it.hasNext()) {
                    break loop0;
                }
                K next = it.next();
                if (z) {
                    linkedHashMap.put(next, map.get(next));
                } else {
                    linkedHashMap.put(next, null);
                }
                i++;
            } while (i != 999);
            nl3Var.invoke(linkedHashMap);
            if (!z) {
                map.putAll(linkedHashMap);
            }
            linkedHashMap.clear();
        }
        if (i > 0) {
            nl3Var.invoke(linkedHashMap);
            if (z) {
                return;
            }
            map.putAll(linkedHashMap);
        }
    }
}
