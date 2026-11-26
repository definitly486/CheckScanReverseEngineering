package yads;

import defpackage.jp7;
import defpackage.ra8;
import defpackage.sa8;
import defpackage.ta8;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class gf {
    public final Set a;

    public gf(Set set) {
        this.a = set;
    }

    public static ArrayList a(List list) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            String str = ((ff) obj).c;
            str.getClass();
            for (String str2 : jp7.p(new sa8(str), 50)) {
                if (ra8.C(ta8.f0(str2).toString(), "at ", false)) {
                    Set set = cq5.a;
                    if (!(set instanceof Collection) || !set.isEmpty()) {
                        Iterator it = set.iterator();
                        while (it.hasNext()) {
                            if (ta8.D(str2, (String) it.next(), false)) {
                                arrayList.add(obj);
                                break;
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public final ArrayList a(ArrayList arrayList) {
        us4 us4Var;
        StackTraceElement[] stackTraceElementArr;
        boolean zA;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ff ffVar = (ff) it.next();
            try {
                defpackage.cl4 cl4Var = jf.a;
                LinkedHashMap linkedHashMapA = jf.a(ffVar.c);
                Thread thread = (Thread) defpackage.qn1.U(linkedHashMapA.keySet());
                if (thread == null || (stackTraceElementArr = (StackTraceElement[]) linkedHashMapA.get(thread)) == null) {
                    zA = false;
                } else {
                    Set set = cq5.a;
                    zA = cq5.a(stackTraceElementArr, this.a);
                }
                us4Var = zA ? new us4(ffVar, linkedHashMapA) : null;
            } catch (Throwable unused) {
            }
            if (us4Var != null) {
                arrayList2.add(us4Var);
            }
        }
        return arrayList2;
    }
}
