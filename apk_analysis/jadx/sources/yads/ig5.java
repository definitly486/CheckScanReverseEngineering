package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ig5 implements ek4 {
    public final /* synthetic */ lg5 a;

    public ig5(lg5 lg5Var) {
        this.a = lg5Var;
    }

    @Override // yads.ek4
    public final void a(pg4 pg4Var) {
        lg5 lg5Var = this.a;
        if (lg5Var.r) {
            return;
        }
        lg5Var.q = pg4Var;
        defpackage.av0.c(lg5Var.h, null, null, new hg5(lg5Var, null), 3);
    }

    @Override // yads.ek4
    public final void a(m4 m4Var) {
        lg5 lg5Var = this.a;
        if (lg5Var.r) {
            return;
        }
        lg5Var.p = null;
        lg5Var.q = null;
        lg5Var.a.b(m4Var);
    }
}
