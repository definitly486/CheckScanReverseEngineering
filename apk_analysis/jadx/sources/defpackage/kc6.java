package defpackage;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class kc6 implements oc6 {
    public final Object b = new Object();
    public final LinkedHashMap c = new LinkedHashMap();

    @Override // defpackage.oc6
    public final void a(String str, Object obj) {
        obj.getClass();
        synchronized (this.b) {
            this.c.put(str, obj);
            j59 j59Var = j59.a;
        }
    }

    @Override // defpackage.oc6
    public final boolean b() {
        return true;
    }

    @Override // defpackage.oc6
    public final void c(List<String> list) {
        synchronized (this.b) {
            try {
                Iterator it = this.c.entrySet().iterator();
                while (it.hasNext()) {
                    if (!list.contains(((Map.Entry) it.next()).getKey())) {
                        it.remove();
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.oc6
    public final Object d(Object obj, String str) {
        str.getClass();
        synchronized (this.b) {
            Object obj2 = this.c.get(str);
            if (obj2 != null) {
                obj = obj2;
            }
            j59 j59Var = j59.a;
        }
        return obj;
    }

    @Override // defpackage.oc6
    public final LinkedHashMap getAll() {
        Map mapL;
        synchronized (this.b) {
            mapL = n05.l(this.c);
            j59 j59Var = j59.a;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : mapL.entrySet()) {
            String str = (String) entry.getKey();
            oc6.a.getClass();
            if (!oc6.a.b.contains(str)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    @Override // defpackage.oc6
    public final void remove(String str) {
        str.getClass();
        synchronized (this.b) {
            this.c.remove(str);
        }
    }
}
