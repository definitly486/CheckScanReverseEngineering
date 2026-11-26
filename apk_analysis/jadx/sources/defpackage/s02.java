package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class s02 implements e15<d36> {
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    @Override // defpackage.e15
    public final void a(g15 g15Var, zn5 zn5Var) {
        boolean z;
        d36 d36Var = (d36) zn5Var;
        pj0 pj0Var = (pj0) d36Var.a;
        if (pj0Var != null) {
            pj0 pj0Var2 = (pj0) pj0Var.a;
            if (pj0Var2 instanceof yq4) {
                z = ((yq4) pj0Var2).f;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        if (!z) {
            g15Var.b();
        }
        int iC = g15Var.c();
        g15Var.f(d36Var);
        g15Var.b.a(e12.f, Boolean.valueOf(z));
        g15Var.d(d36Var, iC);
        if (z) {
            return;
        }
        g15Var.a(d36Var);
    }
}
