package yads;

import defpackage.ta8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class y64 {
    public final z64 a;

    public y64(z64 z64Var) {
        this.a = z64Var;
    }

    public final ArrayList a(List list) {
        s64 s64Var;
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ag0 ag0Var = (ag0) it.next();
            List<String> list2 = ag0Var.e;
            ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(list2, 10));
            for (String str : list2) {
                List listX = ta8.X(str, new char[]{'.'});
                String str2 = (String) defpackage.qn1.W(listX.size() - 2, listX);
                if (str2 == null) {
                    str2 = "";
                }
                arrayList2.add(new v54(str2, str));
            }
            String str3 = ag0Var.b;
            String str4 = ag0Var.a;
            if (str4 != null) {
                s64.c.getClass();
                s64Var = (s64) s64.d.get(str4);
                if (s64Var == null) {
                    s64Var = s64.UNDEFINED;
                }
            } else {
                s64Var = s64.UNDEFINED;
            }
            arrayList.add(new w54(str3, s64Var, arrayList2));
        }
        return this.a.a(arrayList);
    }
}
