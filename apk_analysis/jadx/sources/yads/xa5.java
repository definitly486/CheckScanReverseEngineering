package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xa5 implements u03 {
    public final /* synthetic */ ya5 a;
    public final /* synthetic */ n8 b;

    public xa5(ya5 ya5Var, n8 n8Var) {
        this.a = ya5Var;
        this.b = n8Var;
    }

    @Override // yads.u03
    public final void onAdShown() {
        this.a.e.invoke(this.b);
    }
}
