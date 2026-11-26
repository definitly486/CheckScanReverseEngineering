package yads;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b23 {
    public static final u13 a(u13 u13Var, ArrayList arrayList) {
        s13 s13VarA = u13Var.a(arrayList);
        if (!(s13VarA instanceof r13)) {
            if (s13VarA instanceof p13) {
                throw new vo2((u13Var.b() ? "At least" : "Exactly") + " " + ((p13) s13VarA).a() + " argument(s) expected.");
            }
            if (!(s13VarA instanceof q13)) {
                defpackage.me0.e();
                return null;
            }
            if (!defpackage.aa4.e(u13Var.b(arrayList), r13.a)) {
                q13 q13Var = (q13) s13VarA;
                throw new vo2("Invalid argument type: expected " + q13Var.b() + ", got " + q13Var.a() + ".");
            }
        }
        return u13Var;
    }

    public static final vo2 c(ArrayList arrayList) {
        return arrayList.size() == 1 ? new vo2("Method requires non empty argument list.") : new vo2(defpackage.me0.c("Method has no matching overload for given argument types: ", wo2.a(arrayList.subList(1, arrayList.size())), "."));
    }

    public static final vo2 a(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return new vo2("Function requires non empty argument list.");
        }
        return new vo2(defpackage.me0.c("Function has no matching overload for given argument types: ", wo2.a((List) arrayList), "."));
    }
}
