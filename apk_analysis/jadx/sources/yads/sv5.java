package yads;

import defpackage.j59;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class sv5 {
    public final LinkedHashMap a = new LinkedHashMap();

    public final void a(String str, String str2, String str3) {
        synchronized (this.a) {
            try {
                LinkedHashMap linkedHashMap = this.a;
                Object linkedHashMap2 = linkedHashMap.get(str);
                if (linkedHashMap2 == null) {
                    linkedHashMap2 = new LinkedHashMap();
                    linkedHashMap.put(str, linkedHashMap2);
                }
                ((Map) linkedHashMap2).put(str2, str3);
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String a(String str, String str2) {
        String str3;
        synchronized (this.a) {
            Map map = (Map) this.a.get(str);
            str3 = map != null ? (String) map.get(str2) : null;
        }
        return str3;
    }
}
