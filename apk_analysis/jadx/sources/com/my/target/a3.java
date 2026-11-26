package com.my.target;

import defpackage.i7a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a3 {
    public static volatile j2 a;
    public static final ConcurrentHashMap b = new ConcurrentHashMap();
    public static final ConcurrentHashMap c = new ConcurrentHashMap();
    public static final ConcurrentHashMap d = new ConcurrentHashMap();
    public static final ConcurrentHashMap e = new ConcurrentHashMap();

    public static Object a(String str) {
        ConcurrentHashMap concurrentHashMap = e;
        Object obj = concurrentHashMap.get(str);
        if (obj != null) {
            return obj;
        }
        Object obj2 = new Object();
        Object objPutIfAbsent = concurrentHashMap.putIfAbsent(str, obj2);
        return objPutIfAbsent != null ? objPutIfAbsent : obj2;
    }

    public static void b(String str, String str2, i7a i7aVar, d1.a aVar, boolean z, int i) {
        String str3 = i7aVar.a.a;
        synchronized (a(str3)) {
            try {
                ConcurrentHashMap concurrentHashMap = d;
                ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) concurrentHashMap.get(str3);
                if (concurrentHashMap2 == null) {
                    concurrentHashMap2 = new ConcurrentHashMap();
                    ConcurrentHashMap concurrentHashMap3 = (ConcurrentHashMap) concurrentHashMap.putIfAbsent(str3, concurrentHashMap2);
                    if (concurrentHashMap3 != null) {
                        concurrentHashMap2 = concurrentHashMap3;
                    }
                }
                c2 c2Var = (c2) concurrentHashMap2.get(str);
                if (c2Var == null) {
                    c2Var = new c2(str, str2, i7aVar);
                    concurrentHashMap2.put(str, c2Var);
                }
                if (aVar.a() && !z && i <= 0) {
                    c2Var.d = true;
                }
                c2.a aVarA = c2Var.a(aVar, i7aVar);
                j2 j2Var = a;
                if (j2Var != null) {
                    j2Var.a(str3, str, str2, aVarA, c2Var.d, i7aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean c(String str) {
        synchronized (a(str)) {
            try {
                Map map = (Map) d.get(str);
                boolean z = true;
                if (map != null && !map.isEmpty()) {
                    Iterator it = map.values().iterator();
                    while (it.hasNext()) {
                        if (!((c2) it.next()).d) {
                            return false;
                        }
                    }
                    Integer num = (Integer) c.get(str);
                    if (num != null && num.intValue() != map.size()) {
                        z = false;
                    }
                    return z;
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void d(String str) {
        Object obj = e.get(str);
        if (obj == null) {
            return;
        }
        synchronized (obj) {
            try {
                ConcurrentHashMap concurrentHashMap = d;
                if (concurrentHashMap.containsKey(str)) {
                    ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) concurrentHashMap.remove(str);
                    if (concurrentHashMap2 == null) {
                        return;
                    }
                    j2 j2Var = a;
                    if (j2Var != null) {
                        j2Var.a(str);
                    }
                    b.remove(str);
                    c.remove(str);
                    ArrayList arrayList = new ArrayList(concurrentHashMap2.values());
                    if (arrayList.isEmpty()) {
                        return;
                    }
                    JSONArray jSONArray = new JSONArray();
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj2 = arrayList.get(i);
                        i++;
                        jSONArray.put(((c2) obj2).b());
                    }
                    ((c2) arrayList.get(0)).e.a(9102, "", jSONArray.toString());
                    e.remove(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
