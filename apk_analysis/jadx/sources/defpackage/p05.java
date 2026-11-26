package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class p05 extends o05 {
    public static <K, V> List<b36<K, V>> o(Map<? extends K, ? extends V> map) {
        map.getClass();
        int size = map.size();
        kx2 kx2Var = kx2.b;
        if (size == 0) {
            return kx2Var;
        }
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return kx2Var;
        }
        Map.Entry<? extends K, ? extends V> next = it.next();
        if (!it.hasNext()) {
            return u96.h(new b36(next.getKey(), next.getValue()));
        }
        ArrayList arrayList = new ArrayList(map.size());
        arrayList.add(new b36(next.getKey(), next.getValue()));
        do {
            Map.Entry<? extends K, ? extends V> next2 = it.next();
            arrayList.add(new b36(next2.getKey(), next2.getValue()));
        } while (it.hasNext());
        return arrayList;
    }
}
