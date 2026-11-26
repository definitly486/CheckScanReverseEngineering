package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class zf4 {
    public static final td4.a a = td4.a.a("k");

    public static ArrayList a(td4 td4Var, nw4 nw4Var, float f, cc9 cc9Var, boolean z) {
        td4 td4Var2;
        nw4 nw4Var2;
        float f2;
        cc9 cc9Var2;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        if (td4Var.U() == td4.b.STRING) {
            nw4Var.a("Lottie doesn't support expressions.");
            return arrayList;
        }
        td4Var.n();
        while (td4Var.v()) {
            if (td4Var.X(a) != 0) {
                td4Var.e0();
            } else if (td4Var.U() == td4.b.BEGIN_ARRAY) {
                td4Var.m();
                if (td4Var.U() == td4.b.NUMBER) {
                    td4 td4Var3 = td4Var;
                    nw4 nw4Var3 = nw4Var;
                    float f3 = f;
                    cc9 cc9Var3 = cc9Var;
                    boolean z3 = z;
                    vf4 vf4VarB = xf4.b(td4Var3, nw4Var3, f3, cc9Var3, false, z3);
                    td4Var2 = td4Var3;
                    nw4Var2 = nw4Var3;
                    f2 = f3;
                    cc9Var2 = cc9Var3;
                    z2 = z3;
                    arrayList.add(vf4VarB);
                } else {
                    td4Var2 = td4Var;
                    nw4Var2 = nw4Var;
                    f2 = f;
                    cc9Var2 = cc9Var;
                    z2 = z;
                    while (td4Var2.v()) {
                        arrayList.add(xf4.b(td4Var2, nw4Var2, f2, cc9Var2, true, z2));
                    }
                }
                td4Var2.o();
                td4Var = td4Var2;
                nw4Var = nw4Var2;
                f = f2;
                cc9Var = cc9Var2;
                z = z2;
            } else {
                td4 td4Var4 = td4Var;
                arrayList.add(xf4.b(td4Var4, nw4Var, f, cc9Var, false, z));
                td4Var = td4Var4;
            }
        }
        td4Var.p();
        b(arrayList);
        return arrayList;
    }

    public static void b(ArrayList arrayList) {
        int i;
        T t;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            vf4 vf4Var = (vf4) arrayList.get(i2);
            i2++;
            vf4 vf4Var2 = (vf4) arrayList.get(i2);
            vf4Var.h = Float.valueOf(vf4Var2.g);
            if (vf4Var.c == 0 && (t = vf4Var2.b) != 0) {
                vf4Var.c = t;
                if (vf4Var instanceof m46) {
                    ((m46) vf4Var).d();
                }
            }
        }
        vf4 vf4Var3 = (vf4) arrayList.get(i);
        if ((vf4Var3.b == 0 || vf4Var3.c == 0) && arrayList.size() > 1) {
            arrayList.remove(vf4Var3);
        }
    }
}
