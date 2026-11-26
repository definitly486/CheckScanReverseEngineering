package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class c12 implements e15<dr4> {
    @Override // defpackage.e15
    public final void a(g15 g15Var, zn5 zn5Var) {
        dr4 dr4Var = (dr4) zn5Var;
        int iC = g15Var.c();
        g27 g27Var = g15Var.b;
        g15Var.f(dr4Var);
        pj0 pj0Var = (pj0) dr4Var.a;
        boolean z = pj0Var instanceof d06;
        vr6<e12.a> vr6Var = e12.a;
        if (z) {
            d06 d06Var = (d06) pj0Var;
            int i = d06Var.g;
            g27Var.a(vr6Var, e12.a.ORDERED);
            g27Var.a(e12.c, Integer.valueOf(i));
            d06Var.g++;
        } else {
            g27Var.a(vr6Var, e12.a.BULLET);
            int i2 = 0;
            for (zn5 zn5VarC = (pj0) dr4Var.a; zn5VarC != null; zn5VarC = zn5VarC.c()) {
                if (zn5VarC instanceof dr4) {
                    i2++;
                }
            }
            g27Var.a(e12.b, Integer.valueOf(i2));
        }
        g15Var.d(dr4Var, iC);
        if (dr4Var.e != null) {
            g15Var.b();
        }
    }
}
