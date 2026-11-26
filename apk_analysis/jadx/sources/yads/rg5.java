package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class rg5 implements ek4 {
    public final /* synthetic */ sg5 a;

    public rg5(sg5 sg5Var) {
        this.a = sg5Var;
    }

    @Override // yads.ek4
    public final void a(m4 m4Var) {
        sg5 sg5Var = this.a;
        if (sg5Var.l) {
            return;
        }
        sg5Var.k = null;
        sg5Var.a.b(m4Var);
    }

    @Override // yads.ek4
    public final void a(pg4 pg4Var) {
        sg5 sg5Var = this.a;
        if (sg5Var.l) {
            return;
        }
        sg5Var.k = pg4Var;
        sg5Var.a.h();
    }
}
