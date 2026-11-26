package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class vi4 implements n03 {
    public b4 a;
    public m15 b;
    public final tt4 c;
    public final ek0 d;

    public vi4(b4 b4Var, bx5 bx5Var, m15 m15Var) {
        tt4 tt4VarA = qt4.a(null, 3);
        ek0 ek0Var = bx5Var.c;
        this.a = b4Var;
        this.b = m15Var;
        this.c = tt4VarA;
        this.d = ek0Var;
    }

    @Override // yads.n03
    public final void invalidate() {
        this.c.a();
        this.c.e = null;
        this.a = null;
        this.b = null;
    }

    @Override // yads.n03
    public final void pause() {
        this.c.b();
    }

    @Override // yads.n03
    public final void resume() {
        this.c.c();
    }

    @Override // yads.n03
    public final void start() {
        ti4 ti4Var = new ti4(this);
        long jA = this.d.a();
        ui4 ui4Var = new ui4(this, jA);
        tt4 tt4Var = this.c;
        tt4Var.e = ui4Var;
        tt4Var.a(jA, ti4Var);
    }
}
