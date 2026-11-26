package yads;

import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class yd3 {
    public final Set a(List list) {
        Object next;
        u0 u0Var;
        ArrayList arrayList;
        ArrayList arrayList2;
        Object next2;
        Set setX0 = defpackage.qn1.x0(vk.a(list));
        Iterator it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!defpackage.aa4.e(((ak) next).a, "feedback"));
        ak akVar = (ak) next;
        boolean z = (akVar != null ? akVar.c : null) instanceof mw2;
        Iterable iterableH0 = defpackage.kx2.b;
        if (z) {
            List listJ = u96.j(((mw2) akVar.c).a);
            ot3 ot3Var = akVar.d;
            if (ot3Var == null || (arrayList2 = ot3Var.a) == null) {
                u0Var = null;
            } else {
                Iterator it2 = arrayList2.iterator();
                do {
                    if (!it2.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it2.next();
                } while (!defpackage.aa4.e(((u0) next2).a(), "divkit_adtune"));
                u0Var = (u0) next2;
            }
            nn1 nn1Var = u0Var instanceof nn1 ? (nn1) u0Var : null;
            if (nn1Var != null && (arrayList = nn1Var.b.d) != null) {
                iterableH0 = arrayList;
            }
            iterableH0 = defpackage.qn1.h0(iterableH0, listJ);
        }
        setX0.addAll(iterableH0);
        return setX0;
    }
}
