package androidx.room.util;

import androidx.collection.ArrayMap;
import defpackage.j59;
import defpackage.nl3;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class RelationUtil__RelationUtil_androidKt {
    public static final <K, V> void recursiveFetchArrayMap(ArrayMap<K, V> arrayMap, boolean z, nl3<? super ArrayMap<K, V>, j59> nl3Var) {
        arrayMap.getClass();
        nl3Var.getClass();
        ArrayMap arrayMap2 = new ArrayMap(999);
        int size = arrayMap.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (z) {
                arrayMap2.put(arrayMap.keyAt(i), arrayMap.valueAt(i));
            } else {
                arrayMap2.put(arrayMap.keyAt(i), null);
            }
            i++;
            i2++;
            if (i2 == 999) {
                nl3Var.invoke(arrayMap2);
                if (!z) {
                    arrayMap.putAll((Map) arrayMap2);
                }
                arrayMap2.clear();
                i2 = 0;
            }
        }
        if (i2 > 0) {
            nl3Var.invoke(arrayMap2);
            if (z) {
                return;
            }
            arrayMap.putAll((Map) arrayMap2);
        }
    }

    public static final <K, V> void recursiveFetchHashMap(HashMap<K, V> map, boolean z, nl3<? super HashMap<K, V>, j59> nl3Var) {
        int i;
        map.getClass();
        nl3Var.getClass();
        HashMap map2 = new HashMap(999);
        Iterator<K> it = map.keySet().iterator();
        loop0: while (true) {
            i = 0;
            do {
                if (!it.hasNext()) {
                    break loop0;
                }
                K next = it.next();
                next.getClass();
                if (z) {
                    map2.put(next, map.get(next));
                } else {
                    map2.put(next, null);
                }
                i++;
            } while (i != 999);
            nl3Var.invoke(map2);
            if (!z) {
                map.putAll(map2);
            }
            map2.clear();
        }
        if (i > 0) {
            nl3Var.invoke(map2);
            if (z) {
                return;
            }
            map.putAll(map2);
        }
    }
}
