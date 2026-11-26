package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class hs implements w80 {
    public final /* synthetic */ defpackage.c31 a;

    public hs(defpackage.c31 c31Var) {
        this.a = c31Var;
    }

    @Override // yads.w80
    public final void a(ja5 ja5Var) {
        if (this.a.t() instanceof defpackage.no5) {
            this.a.resumeWith(new k70(ja5Var));
        }
    }

    @Override // yads.w80
    public final void onAdFailedToLoad(m4 m4Var) {
        if (this.a.t() instanceof defpackage.no5) {
            this.a.resumeWith(new j70(m4Var));
        }
    }
}
