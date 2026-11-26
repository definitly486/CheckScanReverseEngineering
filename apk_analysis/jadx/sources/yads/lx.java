package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class lx implements w80 {
    public final w80 a;

    public lx(w80 w80Var) {
        this.a = w80Var;
    }

    @Override // yads.w80
    public final void a(ja5 ja5Var) {
        w80 w80Var = this.a;
        if (w80Var != null) {
            w80Var.a(ja5Var);
        }
    }

    @Override // yads.w80
    public final void onAdFailedToLoad(m4 m4Var) {
        w80 w80Var = this.a;
        if (w80Var != null) {
            w80Var.onAdFailedToLoad(m4Var);
        }
    }
}
