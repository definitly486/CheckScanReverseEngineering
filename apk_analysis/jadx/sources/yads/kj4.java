package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class kj4 implements bc3 {
    public final boolean a;

    public kj4(d9 d9Var) {
        String str = d9Var.w;
        jj4 jj4Var = jj4.LoadingOnShow;
        this.a = defpackage.aa4.e(str, "loading_on_show") || defpackage.aa4.e(d9Var.w, "loading_on_back");
    }

    @Override // yads.bc3
    public final boolean a() {
        return this.a;
    }
}
