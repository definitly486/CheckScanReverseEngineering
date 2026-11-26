package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class wb6 {
    public final Object a;
    public final fr<b> b;

    public static final class a extends x39<Map<String, ? extends Object>> {
    }

    public static final class b {
    }

    static {
        new a();
    }

    public wb6(wd6 wd6Var, ic6 ic6Var) {
        wd6Var.getClass();
        ic6Var.getClass();
        this.a = new Object();
        this.b = new fr<>();
    }

    public final void a(LinkedHashMap linkedHashMap) {
        ArrayList arrayList;
        if (linkedHashMap.containsKey("$exception_steps")) {
            return;
        }
        synchronized (this.a) {
            fr<b> frVar = this.b;
            arrayList = new ArrayList(kn1.q(frVar, 10));
            Iterator<b> it = frVar.iterator();
            while (it.hasNext()) {
                it.next().getClass();
                arrayList.add(new LinkedHashMap((Map) null));
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        linkedHashMap.put("$exception_steps", arrayList);
    }
}
