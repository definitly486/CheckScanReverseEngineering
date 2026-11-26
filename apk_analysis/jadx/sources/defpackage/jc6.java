package defpackage;

import com.tapjoy.TJKeyValueStorageKt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class jc6 {
    public static Map a(double d) {
        if (Double.isNaN(d)) {
            Map mapSingletonMap = Collections.singletonMap("stringValue", "NaN");
            mapSingletonMap.getClass();
            return mapSingletonMap;
        }
        if (Double.isInfinite(d)) {
            Map mapSingletonMap2 = Collections.singletonMap("stringValue", d > 0.0d ? "Infinity" : "-Infinity");
            mapSingletonMap2.getClass();
            return mapSingletonMap2;
        }
        Map mapSingletonMap3 = Collections.singletonMap("doubleValue", Double.valueOf(d));
        mapSingletonMap3.getClass();
        return mapSingletonMap3;
    }

    public static Map b(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            Map mapSingletonMap = Collections.singletonMap("stringValue", obj);
            mapSingletonMap.getClass();
            return mapSingletonMap;
        }
        if (obj instanceof Boolean) {
            Map mapSingletonMap2 = Collections.singletonMap("boolValue", obj);
            mapSingletonMap2.getClass();
            return mapSingletonMap2;
        }
        if (obj instanceof Double) {
            return a(((Number) obj).doubleValue());
        }
        if (obj instanceof Float) {
            return a(((Number) obj).floatValue());
        }
        if (obj instanceof Number) {
            Map mapSingletonMap3 = Collections.singletonMap("intValue", String.valueOf(((Number) obj).longValue()));
            mapSingletonMap3.getClass();
            return mapSingletonMap3;
        }
        if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            Iterator it = ((Iterable) obj).iterator();
            while (it.hasNext()) {
                Map mapB = b(it.next());
                if (mapB != null) {
                    arrayList.add(mapB);
                }
            }
            Map mapSingletonMap4 = Collections.singletonMap("values", arrayList);
            mapSingletonMap4.getClass();
            Map mapSingletonMap5 = Collections.singletonMap("arrayValue", mapSingletonMap4);
            mapSingletonMap5.getClass();
            return mapSingletonMap5;
        }
        if (!(obj instanceof Map)) {
            if (obj instanceof Date) {
                Map mapSingletonMap6 = Collections.singletonMap("stringValue", tl.a((Date) obj));
                mapSingletonMap6.getClass();
                return mapSingletonMap6;
            }
            Map mapSingletonMap7 = Collections.singletonMap("stringValue", obj.toString());
            mapSingletonMap7.getClass();
            return mapSingletonMap7;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            if ((key instanceof String) && value != null) {
                linkedHashMap.put(key, value);
            }
        }
        Map mapSingletonMap8 = Collections.singletonMap("values", c(linkedHashMap));
        mapSingletonMap8.getClass();
        Map mapSingletonMap9 = Collections.singletonMap("kvlistValue", mapSingletonMap8);
        mapSingletonMap9.getClass();
        return mapSingletonMap9;
    }

    public static ArrayList c(LinkedHashMap linkedHashMap) {
        Map mapB;
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (String str : qn1.m0(linkedHashMap.keySet())) {
            Object obj = linkedHashMap.get(str);
            if (obj != null && (mapB = b(obj)) != null) {
                arrayList.add(n05.e(new b36(TJKeyValueStorageKt.KEY, str), new b36("value", mapB)));
            }
        }
        return arrayList;
    }
}
