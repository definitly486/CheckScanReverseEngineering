package yads;

import defpackage.na8;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class wb5 {
    public final os2 a;
    public final bo2 b;
    public final Map c = Collections.synchronizedMap(new LinkedHashMap());
    public final WeakHashMap d = new WeakHashMap();

    public wb5(os2 os2Var, bo2 bo2Var) {
        this.a = os2Var;
        this.b = bo2Var;
    }

    public static void a(gs2 gs2Var, db1 db1Var, ao2 ao2Var) {
        boolean z;
        z66 z66VarE = gs2Var.e();
        List<uf2> list = db1Var.g;
        if (list != null) {
            for (uf2 uf2Var : list) {
                u66 u66VarA = z66VarE.a(xb5.a(uf2Var));
                if (u66VarA == null) {
                    c76.a(z66VarE, uf2Var, gs2Var, ao2Var);
                } else {
                    if (uf2Var instanceof mf2) {
                        z = u66VarA instanceof n66;
                    } else if (uf2Var instanceof pf2) {
                        z = u66VarA instanceof r66;
                    } else if (uf2Var instanceof qf2) {
                        z = u66VarA instanceof q66;
                    } else if (uf2Var instanceof sf2) {
                        z = u66VarA instanceof s66;
                    } else if (uf2Var instanceof nf2) {
                        z = u66VarA instanceof o66;
                    } else if (uf2Var instanceof tf2) {
                        z = u66VarA instanceof t66;
                    } else if (uf2Var instanceof of2) {
                        z = u66VarA instanceof p66;
                    } else if (uf2Var instanceof lf2) {
                        z = u66VarA instanceof m66;
                    } else {
                        if (!(uf2Var instanceof rf2)) {
                            defpackage.me0.e();
                            return;
                        }
                        z = false;
                    }
                    if (!z) {
                        ao2Var.a((RuntimeException) new IllegalArgumentException(na8.i("\n                           Variable inconsistency detected!\n                           at DivData: " + xb5.a(uf2Var) + " (" + uf2Var + ")\n                           at VariableController: " + z66VarE.a(xb5.a(uf2Var)) + "\n                        ")));
                    }
                }
            }
        }
    }
}
