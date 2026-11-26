package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class n05 extends m05 {
    public static Object c(Object obj, Map map) {
        map.getClass();
        if (map instanceof e05) {
            return ((e05) map).f(obj);
        }
        Object obj2 = map.get(obj);
        if (obj2 != null || map.containsKey(obj)) {
            return obj2;
        }
        ag.g(ch.c(obj, "Key ", " is missing in the map."));
        return null;
    }

    public static <K, V> HashMap<K, V> d(b36<? extends K, ? extends V>... b36VarArr) {
        HashMap<K, V> map = new HashMap<>(m05.b(b36VarArr.length));
        j(map, b36VarArr);
        return map;
    }

    public static <K, V> Map<K, V> e(b36<? extends K, ? extends V>... b36VarArr) {
        if (b36VarArr.length <= 0) {
            return mx2.b;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(m05.b(b36VarArr.length));
        j(linkedHashMap, b36VarArr);
        return linkedHashMap;
    }

    public static LinkedHashMap f(b36... b36VarArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(m05.b(b36VarArr.length));
        j(linkedHashMap, b36VarArr);
        return linkedHashMap;
    }

    public static LinkedHashMap g(Map map, Map map2) {
        map.getClass();
        map2.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.putAll(map2);
        return linkedHashMap;
    }

    public static <K, V> Map<K, V> h(Map<? extends K, ? extends V> map, b36<? extends K, ? extends V> b36Var) {
        B b = b36Var.c;
        A a = b36Var.b;
        map.getClass();
        if (map.isEmpty()) {
            Map<K, V> mapSingletonMap = Collections.singletonMap(a, b);
            mapSingletonMap.getClass();
            return mapSingletonMap;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put(a, b);
        return linkedHashMap;
    }

    public static <K, V> void i(Map<? super K, ? super V> map, Iterable<? extends b36<? extends K, ? extends V>> iterable) {
        map.getClass();
        iterable.getClass();
        for (b36<? extends K, ? extends V> b36Var : iterable) {
            map.put((Object) b36Var.b, (Object) b36Var.c);
        }
    }

    public static <K, V> void j(Map<? super K, ? super V> map, b36<? extends K, ? extends V>[] b36VarArr) {
        map.getClass();
        b36VarArr.getClass();
        for (b36<? extends K, ? extends V> b36Var : b36VarArr) {
            map.put((Object) b36Var.b, (Object) b36Var.c);
        }
    }

    public static <K, V> Map<K, V> k(Iterable<? extends b36<? extends K, ? extends V>> iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size != 0) {
                if (size != 1) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap(m05.b(collection.size()));
                    i(linkedHashMap, iterable);
                    return linkedHashMap;
                }
                b36 b36Var = (b36) (iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
                b36Var.getClass();
                Map<K, V> mapSingletonMap = Collections.singletonMap(b36Var.b, b36Var.c);
                mapSingletonMap.getClass();
                return mapSingletonMap;
            }
        } else {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            i(linkedHashMap2, iterable);
            int size2 = linkedHashMap2.size();
            if (size2 != 0) {
                if (size2 != 1) {
                    return linkedHashMap2;
                }
                Map.Entry<K, V> next = linkedHashMap2.entrySet().iterator().next();
                Map<K, V> mapSingletonMap2 = Collections.singletonMap(next.getKey(), next.getValue());
                mapSingletonMap2.getClass();
                return mapSingletonMap2;
            }
        }
        return mx2.b;
    }

    public static <K, V> Map<K, V> l(Map<? extends K, ? extends V> map) {
        map.getClass();
        int size = map.size();
        if (size == 0) {
            return mx2.b;
        }
        if (size != 1) {
            return new LinkedHashMap(map);
        }
        Map.Entry<? extends K, ? extends V> next = map.entrySet().iterator().next();
        Map<K, V> mapSingletonMap = Collections.singletonMap(next.getKey(), next.getValue());
        mapSingletonMap.getClass();
        return mapSingletonMap;
    }

    public static <K, V> Map<K, V> m(b36<? extends K, ? extends V>[] b36VarArr) {
        b36VarArr.getClass();
        int length = b36VarArr.length;
        if (length == 0) {
            return mx2.b;
        }
        if (length != 1) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(m05.b(b36VarArr.length));
            j(linkedHashMap, b36VarArr);
            return linkedHashMap;
        }
        b36<? extends K, ? extends V> b36Var = b36VarArr[0];
        b36Var.getClass();
        Map<K, V> mapSingletonMap = Collections.singletonMap(b36Var.b, b36Var.c);
        mapSingletonMap.getClass();
        return mapSingletonMap;
    }

    public static LinkedHashMap n(Map map) {
        map.getClass();
        return new LinkedHashMap(map);
    }
}
