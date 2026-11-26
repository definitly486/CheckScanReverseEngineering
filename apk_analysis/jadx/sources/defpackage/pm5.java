package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class pm5 {
    public static final pm5 b = new pm5(n05.l(new a().a));
    public final Map<String, List<String>> a;

    /* JADX WARN: Multi-variable type inference failed */
    public pm5(Map<String, ? extends List<String>> map) {
        this.a = map;
    }

    public final String a() {
        String lowerCase = "Content-Type".toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        List<String> list = this.a.get(lowerCase);
        if (list != null) {
            return (String) qn1.c0(list);
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof pm5) && this.a.equals(((pm5) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "NetworkHeaders(data=" + this.a + ")";
    }

    public static final class a {
        public final LinkedHashMap a;

        public a(pm5 pm5Var) {
            Map<String, List<String>> map = pm5Var.a;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator<T> it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                linkedHashMap.put(entry.getKey(), qn1.v0((Collection) entry.getValue()));
            }
            this.a = linkedHashMap;
        }

        public final void a(String str, String str2) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            LinkedHashMap linkedHashMap = this.a;
            Object arrayList = linkedHashMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(lowerCase, arrayList);
            }
            ((List) arrayList).add(str2);
        }

        public final void b(String str) {
            String lowerCase = "Cache-Control".toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            this.a.put(lowerCase, u96.k(str));
        }

        public a() {
            this.a = new LinkedHashMap();
        }
    }
}
