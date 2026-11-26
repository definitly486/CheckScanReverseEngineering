package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class oh implements u03 {
    public final /* synthetic */ ph a;
    public final /* synthetic */ n8 b;

    public oh(ph phVar, n8 n8Var) {
        this.a = phVar;
        this.b = n8Var;
    }

    @Override // yads.u03
    public final void onAdShown() {
        this.a.e.invoke(this.b);
    }
}
