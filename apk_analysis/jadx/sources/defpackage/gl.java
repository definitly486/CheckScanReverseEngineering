package defpackage;

import java.io.EOFException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class gl {
    public static final td4.a a = td4.a.a("k", "x", "y");

    public static eeb a(he4 he4Var, nw4 nw4Var) throws xc4, EOFException {
        ArrayList arrayList = new ArrayList();
        if (he4Var.U() == td4.b.BEGIN_ARRAY) {
            he4Var.m();
            while (he4Var.v()) {
                he4 he4Var2 = he4Var;
                nw4 nw4Var2 = nw4Var;
                arrayList.add(new m46(nw4Var2, xf4.b(he4Var2, nw4Var2, ib9.c(), p46.c, he4Var.U() == td4.b.BEGIN_OBJECT, false)));
                he4Var = he4Var2;
                nw4Var = nw4Var2;
            }
            he4Var.o();
            zf4.b(arrayList);
        } else {
            arrayList.add(new vf4(ie4.b(he4Var, ib9.c())));
        }
        return new eeb(arrayList);
    }

    public static sl b(he4 he4Var, nw4 nw4Var) throws xc4, EOFException {
        he4Var.n();
        eeb eebVarA = null;
        dl dlVarD = null;
        boolean z = false;
        dl dlVarD2 = null;
        while (he4Var.U() != td4.b.END_OBJECT) {
            int iX = he4Var.X(a);
            if (iX == 0) {
                eebVarA = a(he4Var, nw4Var);
            } else if (iX != 1) {
                if (iX != 2) {
                    he4Var.Z();
                    he4Var.e0();
                } else if (he4Var.U() == td4.b.STRING) {
                    he4Var.e0();
                    z = true;
                } else {
                    dlVarD = tl.d(he4Var, nw4Var, true);
                }
            } else if (he4Var.U() == td4.b.STRING) {
                he4Var.e0();
                z = true;
            } else {
                dlVarD2 = tl.d(he4Var, nw4Var, true);
            }
        }
        he4Var.p();
        if (z) {
            nw4Var.a("Lottie doesn't support expressions.");
        }
        return eebVarA != null ? eebVarA : new kl(dlVarD2, dlVarD);
    }
}
