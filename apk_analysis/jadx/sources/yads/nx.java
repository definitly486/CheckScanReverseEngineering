package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class nx implements w80 {
    public final /* synthetic */ yp a;

    public nx(yp ypVar) {
        this.a = ypVar;
    }

    @Override // yads.w80
    public final void a(ja5 ja5Var) {
        this.a.invoke(new k70(ja5Var));
    }

    @Override // yads.w80
    public final void onAdFailedToLoad(m4 m4Var) {
        this.a.invoke(new j70(m4Var));
    }
}
