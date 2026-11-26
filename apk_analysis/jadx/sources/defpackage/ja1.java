package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class ja1 extends um {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ ka1 b;

    public ja1(ka1 ka1Var, boolean z, id2 id2Var) {
        this.b = ka1Var;
        this.a = z;
    }

    @Override // tm.a
    public final void onAnimationEnd() {
        if (this.a) {
            this.b.o = null;
        }
    }
}
