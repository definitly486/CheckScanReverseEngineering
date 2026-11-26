package yads;

import defpackage.jp7;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class ku4 {
    public final t5 a;

    public ku4(t5 t5Var) {
        this.a = t5Var;
    }

    public final LinkedHashMap a(Set set) {
        List listT0;
        t5 t5Var = this.a;
        synchronized (t5Var.a) {
            listT0 = defpackage.qn1.t0(t5Var.d);
        }
        defpackage.pa3 pa3VarK = jp7.k(new defpackage.pn1(listT0), new defpackage.nu1(set, 3));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        pa3.a aVar = new pa3.a(pa3VarK);
        while (aVar.hasNext()) {
            r5 r5Var = (r5) aVar.next();
            String str = r5Var.a.b;
            Object arrayList = linkedHashMap.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(str, arrayList);
            }
            ((List) arrayList).add(r5Var.b);
        }
        return linkedHashMap;
    }

    public static final boolean a(Set set, r5 r5Var) {
        return set.contains(r5Var.a);
    }
}
