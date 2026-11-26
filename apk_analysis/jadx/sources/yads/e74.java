package yads;

import defpackage.ra8;
import defpackage.ta8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class e74 {
    public e74(n64 n64Var) {
    }

    public static void a(ArrayList arrayList, List list, String str, boolean z) {
        c74 c74Var;
        String str2;
        String str3;
        if (z) {
            c74Var = c74.INFO;
            str2 = "ADAPTERS";
            str3 = "INTEGRATED SUCCESSFULLY";
        } else {
            c74Var = c74.ERROR;
            str2 = "MISSING ADAPTERS";
            str3 = "NOT INTEGRATED";
        }
        ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(((l64) it.next()).a());
        }
        String strA0 = defpackage.qn1.a0(arrayList2, null, str2.concat(": "), null, 0, null, 61);
        String strD = defpackage.cg.d(str, ": ", str3);
        arrayList.add(new d74(strA0, c74Var));
        arrayList.add(new d74(strD, c74Var));
    }

    public static void a(String str, ArrayList arrayList) {
        int iMax = Math.max(4, 44 - str.length());
        int i = iMax / 2;
        String strX = ra8.x(i, "-");
        String strX2 = ra8.x((iMax % 2) + i, "-");
        String strX3 = ra8.x(1, " ");
        arrayList.add(new d74(strX + strX3 + str + strX3 + strX2, c74.INFO));
    }

    public static void a(String str, String str2, ArrayList arrayList) {
        if (str != null && !ta8.M(str)) {
            arrayList.add(new d74("SDK Version: ".concat(str), c74.INFO));
        }
        if (str2 == null || ta8.M(str2)) {
            return;
        }
        arrayList.add(new d74("ADAPTERS Version: ".concat(str2), c74.INFO));
    }

    public final ArrayList a(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            m64 m64Var = (m64) it.next();
            a(m64Var.a, arrayList2);
            String str = m64Var.c;
            String str2 = ((l64) defpackage.qn1.T(m64Var.d)).b;
            boolean zA = n64.a(m64Var);
            if (zA) {
                a(str, str2, arrayList2);
            }
            a(arrayList2, m64Var.d, m64Var.a, zA);
        }
        return arrayList2;
    }
}
