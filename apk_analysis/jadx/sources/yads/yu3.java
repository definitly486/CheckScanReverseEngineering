package yads;

import defpackage.gk3;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class yu3 implements y13 {
    public final ArrayList a;

    public yu3(ArrayList arrayList) {
        this.a = arrayList;
    }

    public static final s13 c(List list, u13 u13Var) {
        return u13Var.a(list);
    }

    public static final s13 d(List list, u13 u13Var) {
        return u13Var.b(list);
    }

    public final u13 a(String str, nl3 nl3Var) {
        ArrayList arrayList = this.a;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            u13 u13Var = (u13) obj;
            if (defpackage.aa4.e(u13Var.c(), str) && defpackage.aa4.e(nl3Var.invoke(u13Var), r13.a)) {
                arrayList2.add(obj);
            }
        }
        int size = arrayList2.size();
        if (size != 0) {
            if (size == 1) {
                return (u13) arrayList2.get(0);
            }
            defpackage.qg.h(defpackage.ch.c(arrayList2.get(0), "Function ", " declared multiple times."));
        }
        return null;
    }

    @Override // yads.y13
    public final u13 b(String str, ArrayList arrayList) {
        u13 u13VarA = a(str, new gk3(arrayList, 1));
        if (u13VarA != null) {
            return u13VarA;
        }
        u13 u13VarA2 = a(str, new defpackage.mr2(arrayList, 4));
        if (u13VarA2 != null) {
            return u13VarA2;
        }
        throw new a94(str, arrayList);
    }

    public static final s13 b(List list, u13 u13Var) {
        return u13Var.b(list);
    }

    @Override // yads.y13
    public final u13 a(String str, ArrayList arrayList) {
        u13 u13VarA = a(str, new defpackage.lq(arrayList, 3));
        if (u13VarA != null) {
            return u13VarA;
        }
        u13 u13VarA2 = a(str, new defpackage.xf1(arrayList, 2));
        if (u13VarA2 != null) {
            return u13VarA2;
        }
        throw new a94(str, arrayList);
    }

    public static final s13 a(List list, u13 u13Var) {
        return u13Var.a(list);
    }
}
