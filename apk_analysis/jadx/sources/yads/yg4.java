package yads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class yg4 {
    public final gf4 a = new gf4();

    public static ArrayList b(vg4 vg4Var) {
        List list = vg4Var.a;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = ((sd4) it.next()).c;
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public final List a(vg4 vg4Var) {
        List<sd4> list = vg4Var.a;
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
        for (sd4 sd4Var : list) {
            vk vkVar = this.a.a;
            Set setA = vk.a(sd4Var.b);
            ArrayList arrayList2 = new ArrayList();
            Iterator it = setA.iterator();
            while (it.hasNext()) {
                String str = ((rd3) it.next()).d;
                if (str != null) {
                    arrayList2.add(str);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : arrayList2) {
                if (((String) obj).length() > 0) {
                    arrayList3.add(obj);
                }
            }
            arrayList.add(defpackage.qn1.t0(arrayList3));
        }
        return defpackage.kn1.r(arrayList);
    }
}
