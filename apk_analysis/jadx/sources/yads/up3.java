package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class up3 implements u03 {
    public final /* synthetic */ vp3 a;
    public final /* synthetic */ n8 b;

    public up3(vp3 vp3Var, n8 n8Var) {
        this.a = vp3Var;
        this.b = n8Var;
    }

    @Override // yads.u03
    public final void onAdShown() {
        this.a.e.invoke(this.b);
    }
}
