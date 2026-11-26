package yads;

import defpackage.rm9;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class rf3 {
    public final dg3 a;
    public final defpackage.y22 b;
    public final rh6 c;
    public final ln3 d;
    public defpackage.mb4 e;

    /* JADX WARN: Code duplicated, block: B:17:0x0058  */
    public rf3(ch4 ch4Var, ArrayList arrayList) {
        int iIntValue;
        Integer num;
        dg3 dg3Var = new dg3();
        defpackage.y22 y22VarA = xn.a(rm9.b(), new i90());
        rh6 rh6Var = new rh6();
        if (arrayList.isEmpty()) {
            iIntValue = 50;
        } else {
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                Integer numValueOf = Integer.valueOf(((ck5) it.next()).c);
                while (it.hasNext()) {
                    Integer numValueOf2 = Integer.valueOf(((ck5) it.next()).c);
                    if (numValueOf.compareTo(numValueOf2) < 0) {
                        numValueOf = numValueOf2;
                    }
                }
                num = numValueOf;
            } else {
                num = null;
            }
            if (num != null) {
                iIntValue = num.intValue();
            } else {
                iIntValue = 50;
            }
        }
        ln3 ln3Var = new ln3(ch4Var, iIntValue);
        this.a = dg3Var;
        this.b = y22VarA;
        this.c = rh6Var;
        this.d = ln3Var;
    }
}
