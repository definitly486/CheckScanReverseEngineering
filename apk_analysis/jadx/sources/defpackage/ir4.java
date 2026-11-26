package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ir4 extends m {
    public final dr4 a = new dr4();
    public final int b;
    public boolean c;

    public ir4(int i) {
        this.b = i;
    }

    @Override // defpackage.m, defpackage.uj0
    public final boolean a() {
        return true;
    }

    @Override // defpackage.m, defpackage.uj0
    public final boolean c(pj0 pj0Var) {
        if (!this.c) {
            return true;
        }
        pj0 pj0Var2 = (pj0) this.a.a;
        if (!(pj0Var2 instanceof yq4)) {
            return true;
        }
        ((yq4) pj0Var2).f = false;
        return true;
    }

    @Override // defpackage.uj0
    public final pj0 d() {
        return this.a;
    }

    @Override // defpackage.uj0
    public final rj0 f(dq2 dq2Var) {
        if (dq2Var.h) {
            if (this.a.b == null) {
                return null;
            }
            pj0 pj0VarD = dq2Var.h().d();
            this.c = (pj0VarD instanceof d36) || (pj0VarD instanceof dr4);
            return rj0.a(dq2Var.e);
        }
        int i = dq2Var.g;
        int i2 = this.b;
        if (i >= i2) {
            return new rj0(-1, dq2Var.c + i2, false);
        }
        return null;
    }
}
