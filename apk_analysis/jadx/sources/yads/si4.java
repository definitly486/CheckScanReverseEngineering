package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class si4 implements n03 {
    public final ra5 a;
    public final l10 b;
    public final long c;
    public final tt4 d;
    public final ri4 e;

    public si4(d9 d9Var, ra5 ra5Var, bx5 bx5Var) {
        l10 l10Var = bx5Var.e;
        n70 n70Var = d9Var.a;
        Long l = d9Var.j;
        long jLongValue = (l == null ? n70Var == n70.REWARDED ? 5000L : 0L : l).longValue();
        tt4 tt4VarA = qt4.a(null, 3);
        this.a = ra5Var;
        this.b = l10Var;
        this.c = jLongValue;
        this.d = tt4VarA;
        this.e = new ri4(this);
    }

    @Override // yads.n03
    public final void invalidate() {
        this.d.a();
    }

    @Override // yads.n03
    public final void pause() {
        this.d.b();
    }

    @Override // yads.n03
    public final void resume() {
        this.d.c();
    }

    @Override // yads.n03
    public final void start() {
        long jMax = Math.max(0L, this.c - this.b.a);
        tt4 tt4Var = this.d;
        tt4Var.e = this.b;
        tt4Var.a(jMax, this.e);
    }
}
