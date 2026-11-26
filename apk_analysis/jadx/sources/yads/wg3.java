package yads;

import defpackage.dx6;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes5.dex */
public final class wg3 {
    public final defpackage.xb4 a;

    public wg3(defpackage.xb4 xb4Var) {
        this.a = xb4Var;
    }

    public final String a(gg0 gg0Var) {
        ArrayList arrayListH0;
        defpackage.xb4 xb4Var = this.a;
        defpackage.xb4.d.getClass();
        String strA = xo.a(xb4Var.b(gg0.Companion.serializer(), gg0Var));
        if (strA == null) {
            strA = "";
        }
        Iterable aa1Var = new defpackage.aa1('A', 'Z');
        defpackage.aa1 aa1Var2 = new defpackage.aa1('a', 'z');
        if (aa1Var instanceof Collection) {
            arrayListH0 = defpackage.qn1.h0(aa1Var2, (Collection) aa1Var);
        } else {
            ArrayList arrayList = new ArrayList();
            defpackage.nn1.s(aa1Var, arrayList);
            defpackage.nn1.s(aa1Var2, arrayList);
            arrayListH0 = arrayList;
        }
        defpackage.y74 y74Var = new defpackage.y74(1, 3, 1);
        ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(y74Var, 10));
        defpackage.x74 it = y74Var.iterator();
        while (it.d) {
            it.nextInt();
            dx6.b.getClass();
            if (arrayListH0.isEmpty()) {
                defpackage.ag.g("Collection is empty.");
                return null;
            }
            Character ch = (Character) defpackage.qn1.Q(dx6.c.a(arrayListH0.size()), arrayListH0);
            ch.getClass();
            arrayList2.add(ch);
        }
        return defpackage.qn1.a0(arrayList2, "", null, null, 0, null, 62).concat(strA);
    }
}
