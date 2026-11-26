package yads;

import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class vk {
    public static Set a(List list) {
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ak) it.next()).c);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            List listH = obj instanceof rd3 ? u96.h(obj) : obj instanceof v14 ? ((v14) obj).c : null;
            if (listH != null) {
                arrayList2.add(listH);
            }
        }
        return defpackage.qn1.y0(defpackage.kn1.r(arrayList2));
    }
}
