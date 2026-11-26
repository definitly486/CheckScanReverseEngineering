package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class oe4 {
    public static final ConcurrentHashMap a = new ConcurrentHashMap();

    public static final String a(ne4<?> ne4Var) {
        ne4Var.getClass();
        ConcurrentHashMap concurrentHashMap = a;
        String str = (String) concurrentHashMap.get(ne4Var);
        if (str != null) {
            return str;
        }
        String name = d31.n(ne4Var).getName();
        concurrentHashMap.put(ne4Var, name);
        return name;
    }
}
