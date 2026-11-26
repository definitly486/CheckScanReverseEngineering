package yads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class uk {
    public final ArrayList a(List list, Map map) {
        v14 v14Var;
        List list2;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ak akVar = (ak) it.next();
            Object obj = akVar.c;
            String str = akVar.b;
            if ("image".equals(str) && (obj instanceof rd3)) {
                if (td3.a((rd3) obj, map)) {
                    arrayList.add(akVar);
                }
            } else if ("media".equals(str) && (obj instanceof v14) && (list2 = (v14Var = (v14) obj).c) != null) {
                rd3 rd3Var = list2 != null ? (rd3) defpackage.qn1.V(list2) : null;
                r96 r96Var = v14Var.b;
                by3 by3Var = v14Var.a;
                if (r96Var != null || by3Var != null || (rd3Var != null && td3.a(rd3Var, map))) {
                    arrayList.add(akVar);
                }
            } else {
                arrayList.add(akVar);
            }
        }
        return arrayList;
    }
}
