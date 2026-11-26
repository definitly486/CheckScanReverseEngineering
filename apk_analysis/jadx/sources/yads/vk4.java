package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class vk4 implements eb6 {
    public final gr2 a;

    public vk4(gr2 gr2Var) {
        this.a = gr2Var;
    }

    @Override // yads.eb6
    public final void a(ja6 ja6Var) {
        this.a.a((ol4) ja6Var.d);
    }

    @Override // yads.eb6
    public final long c() {
        return this.a.a.i();
    }

    @Override // yads.eb6
    public final void d() {
        this.a.e();
    }

    @Override // yads.eb6
    public final long getAdPosition() {
        eq2 eq2Var = this.a.a;
        eq2Var.q();
        return u56.b(eq2Var.a(eq2Var.b0));
    }

    @Override // yads.eb6
    public final float getVolume() {
        eq2 eq2Var = this.a.a;
        eq2Var.q();
        return eq2Var.V;
    }

    @Override // yads.eb6
    public final void pauseAd() {
        this.a.d();
    }

    @Override // yads.eb6
    public final void a(hb6 hb6Var) {
        this.a.a(hb6Var);
    }
}
