package yads;

import defpackage.kx6;
import defpackage.ta8;
import defpackage.u96;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class m32 {
    public static n32 a(String str) throws pt4 {
        ArrayList arrayList = new ArrayList();
        List listY = ta8.Y(str, new String[]{"/"});
        try {
            long j = Long.parseLong((String) listY.get(0));
            if (listY.size() % 2 != 1) {
                throw new pt4("Must be even number of states in path: ".concat(str));
            }
            defpackage.w74 w74VarM = kx6.m(2, kx6.n(1, listY.size()));
            int i = w74VarM.b;
            int i2 = w74VarM.c;
            int i3 = w74VarM.d;
            if ((i3 > 0 && i <= i2) || (i3 < 0 && i2 <= i)) {
                while (true) {
                    arrayList.add(new defpackage.b36(listY.get(i), listY.get(i + 1)));
                    if (i == i2) {
                        break;
                    }
                    i += i3;
                }
            }
            return new n32(j, (List) arrayList, listY, true);
        } catch (NumberFormatException e) {
            throw new pt4("Top level id must be number: ".concat(str), e);
        }
    }

    public static n32 a(cb1 cb1Var) {
        String strA;
        long j = cb1Var.b;
        br0 br0Var = cb1Var.a;
        String strValueOf = String.valueOf(j);
        p41 p41VarA = br0Var.a();
        if (p41VarA instanceof z22) {
            strA = du1.a((z22) p41VarA);
        } else {
            strA = p41VarA.a();
        }
        if (strA == null) {
            bz.a(0);
            strA = (String) bz.a.get(0);
        }
        return new n32(j, defpackage.kx2.b, u96.i(strValueOf, strA), 8);
    }
}
