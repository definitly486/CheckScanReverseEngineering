package yads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class wd3 {
    public final void a(List list, Map map) {
        List list2;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ak akVar = (ak) it.next();
            Object obj = akVar.c;
            if (defpackage.aa4.e(akVar.b, "media") && (obj instanceof v14) && (list2 = ((v14) obj).c) != null) {
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : list2) {
                    if (td3.a((rd3) obj2, map)) {
                        arrayList.add(obj2);
                    }
                }
                list2.retainAll(arrayList);
            }
        }
    }
}
