package defpackage;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class qc6 {
    public final Map<String, Object> a;

    public qc6(Map<String, ? extends Object> map) {
        this.a = map;
    }

    public final qc6 a(Object obj, String str) {
        Map mapSingletonMap;
        if (obj == null) {
            return this;
        }
        Map<String, Object> map = this.a;
        map.getClass();
        if (map.isEmpty()) {
            mapSingletonMap = Collections.singletonMap(str, obj);
            mapSingletonMap.getClass();
        } else {
            LinkedHashMap linkedHashMap = new LinkedHashMap(map);
            linkedHashMap.put(str, obj);
            mapSingletonMap = linkedHashMap;
        }
        return new qc6(mapSingletonMap);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof qc6) {
            return aa4.e(this.a, ((qc6) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a.toString();
    }

    public qc6() {
        this(mx2.b);
    }
}
