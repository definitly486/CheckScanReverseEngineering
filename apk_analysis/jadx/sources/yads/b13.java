package yads;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class b13 {
    public static final Set a = defpackage.l1.f("test_environment");

    /* JADX WARN: Code duplicated, block: B:13:0x0040  */
    public static a13 a(n8 n8Var) {
        LinkedHashMap linkedHashMap;
        Map map = n8Var.g;
        if (map != null) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Map.Entry entry : map.entrySet()) {
                if (!a.contains((String) entry.getKey())) {
                    linkedHashMap2.put(entry.getKey(), entry.getValue());
                }
            }
            if (linkedHashMap2.isEmpty()) {
                linkedHashMap = null;
            } else {
                linkedHashMap = linkedHashMap2;
            }
        } else {
            linkedHashMap = null;
        }
        String str = n8Var.a;
        String str2 = n8Var.b;
        String str3 = n8Var.c;
        String str4 = n8Var.d;
        List list = n8Var.e;
        return new a13(str, str2, str3, str4, (list == null || list.isEmpty()) ? null : list, linkedHashMap, n8Var.j);
    }
}
