package yads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public abstract class qg4 {
    public static Set a(pg4 pg4Var, tn1 tn1Var) {
        List listF = pg4Var.f();
        if (listF == null) {
            return defpackage.ox2.b;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = listF.iterator();
        while (it.hasNext()) {
            defpackage.nn1.s(((fo1) it.next()).g, arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            sn1 sn1Var = (sn1) obj;
            if (tn1Var == null || sn1Var.a == tn1Var) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList(defpackage.kn1.q(arrayList2, 10));
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((sn1) it2.next()).b);
        }
        return defpackage.qn1.y0(arrayList3);
    }
}
