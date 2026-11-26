package yads;

import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class kx implements w80 {
    public final n8 a;
    public final /* synthetic */ ox b;

    public kx(ox oxVar, n8 n8Var) {
        this.b = oxVar;
        this.a = n8Var;
    }

    @Override // yads.w80
    public final void a(ja5 ja5Var) {
        ox oxVar = this.b;
        h90.a(oxVar.f, new defpackage.ag1(2, oxVar, this), new jx(oxVar, this, ja5Var, null));
    }

    @Override // yads.w80
    public final void onAdFailedToLoad(m4 m4Var) {
        cl0 cl0Var = this.b.e;
        cl0Var.a.a(this.a, null);
    }

    public static final j59 a(ox oxVar, kx kxVar, Throwable th) {
        cl0 cl0Var = oxVar.e;
        cl0Var.a.a(kxVar.a, null);
        return j59.a;
    }
}
