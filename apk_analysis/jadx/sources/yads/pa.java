package yads;

import defpackage.ta8;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class pa {
    public static List a(rh0 rh0Var) {
        defpackage.ar4 ar4VarE = u96.e();
        ar4VarE.add(oh0.a);
        ar4VarE.add(new ph0("Info"));
        if (rh0Var.e() == me0.BIDDING && rh0Var.a() != null) {
            String strC = rh0Var.c();
            ar4VarE.add(new qh0((strC == null || ta8.M(strC)) ? "ID" : rh0Var.c(), rh0Var.a()));
        }
        ar4VarE.add(new qh0("Type", rh0Var.e().a()));
        List<xf0> listD = rh0Var.d();
        if (listD != null) {
            for (xf0 xf0Var : listD) {
                ar4VarE.add(new qh0(xf0Var.a(), xf0Var.b()));
            }
        }
        List listB = rh0Var.b();
        if (listB != null && !listB.isEmpty()) {
            ar4VarE.add(oh0.a);
            ar4VarE.add(new ph0("CPM floors"));
            String strC2 = rh0Var.c();
            String strC3 = (strC2 == null || ta8.M(strC2)) ? "" : defpackage.ni0.c(rh0Var.c(), ": ");
            for (zh0 zh0Var : rh0Var.b()) {
                ar4VarE.add(new qh0(defpackage.bj.c(strC3, zh0Var.b()), "cpm: " + zh0Var.a()));
            }
        }
        return u96.d(ar4VarE);
    }
}
