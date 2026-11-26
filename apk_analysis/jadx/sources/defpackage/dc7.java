package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class dc7 {
    public final jf6 a;
    public final qe b;

    public dc7(jf6 jf6Var, qe qeVar) {
        this.a = jf6Var;
        this.b = qeVar;
    }

    public final void a(t99 t99Var) {
        t99Var.getClass();
        Boolean boolH = t99Var.h();
        boolean zBooleanValue = boolH != null ? boolH.booleanValue() : false;
        jf6 jf6Var = this.a;
        jf6Var.W0(zBooleanValue);
        jf6Var.M0(t99Var.j() == s33.TEST);
        s33 s33VarJ = t99Var.j();
        if (s33VarJ != null) {
            this.b.e(s33VarJ.name());
        }
        r33 r33VarI = t99Var.i();
        if (r33VarI != null) {
            jf6Var.K0(r33VarI.name());
        }
        List<String> listA = t99Var.a().a();
        if (listA == null) {
            listA = kx2.b;
        }
        jf6Var.p(ht3.c().j(listA));
        jf6Var.q0(t99Var.g() == q33.TEST);
        jf6Var.z(t99Var.f() == o33.TEST);
        jf6Var.g0(t99Var.b() == l33.TEST);
        jf6Var.K(t99Var.k() == t33.TEST);
        jf6Var.m0(aa4.e(t99Var.l(), Boolean.TRUE));
        jf6Var.R0(t99Var.c() == m33.TEST);
        boolean z = t99Var.d() == n33.TEST;
        jf6Var.L0(z);
        String strE = t99Var.e();
        String string = z ? strE != null ? ta8.f0(strE).toString() : null : null;
        if (string == null) {
            string = "";
        }
        jf6Var.u0(string);
    }
}
