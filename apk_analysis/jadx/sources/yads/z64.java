package yads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class z64 {
    public String a;

    public final ArrayList a(List list) {
        com.monetization.ads.mediation.base.a aVar;
        l64 l64Var;
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            w54 w54Var = (w54) it.next();
            List<v54> list2 = w54Var.c;
            ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(list2, 10));
            for (v54 v54Var : list2) {
                try {
                    aVar = (com.monetization.ads.mediation.base.a) f55.a(v54Var.b, new Object[0]);
                } catch (Exception unused) {
                    aVar = null;
                }
                if (aVar == null) {
                    l64Var = new l64(v54Var.a, null, false);
                } else {
                    o24 o24Var = new o24(aVar);
                    if (this.a == null) {
                        this.a = o24Var.b().getNetworkSdkVersion();
                    }
                    l64Var = new l64(v54Var.a, o24Var.b().getAdapterVersion(), true);
                }
                arrayList2.add(l64Var);
            }
            String str = this.a;
            this.a = null;
            arrayList.add(new m64(w54Var.a, w54Var.b.b, str, arrayList2));
        }
        return arrayList;
    }
}
