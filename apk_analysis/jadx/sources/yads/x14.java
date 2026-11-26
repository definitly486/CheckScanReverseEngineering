package yads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class x14 {
    public static Set a(sd4 sd4Var) {
        List list = sd4Var.b;
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ak) it.next()).c);
        }
        return defpackage.qn1.y0(defpackage.nn1.x(arrayList, v14.class));
    }
}
