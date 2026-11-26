package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xi4 implements n03 {
    public final jk4 a;
    public final tt4 b;
    public final l15 c;
    public final b3 d;
    public z95 e;

    public xi4(jk4 jk4Var, bx5 bx5Var) {
        tt4 tt4VarA = qt4.a(null, 3);
        l15 l15Var = bx5Var.a;
        b3 b3Var = bx5Var.b;
        this.a = jk4Var;
        this.b = tt4VarA;
        this.c = l15Var;
        this.d = b3Var;
    }

    @Override // yads.n03
    public final void invalidate() {
        z95 z95Var = this.e;
        if (z95Var != null) {
            z95Var.c.a();
        }
        this.e = null;
    }

    @Override // yads.n03
    public final void pause() {
        z95 z95Var = this.e;
        if (z95Var != null) {
            z95Var.c.b();
        }
    }

    @Override // yads.n03
    public final void resume() {
        z95 z95Var = this.e;
        if (z95Var != null) {
            z95Var.c.c();
        }
    }

    /* JADX WARN: Type inference failed for: r1v9, types: [ll3, qm3] */
    @Override // yads.n03
    public final void start() {
        z95 z95VarA = x95.a(this.a, this.c, this.d, this.b, new wi4(this));
        long jLongValue = ((Number) z95VarA.b.invoke()).longValue();
        z95VarA.f = jLongValue;
        long jLongValue2 = jLongValue - ((Number) z95VarA.d.invoke()).longValue();
        if (jLongValue2 < 0) {
            jLongValue2 = 0;
        }
        if (jLongValue2 == 0) {
            z95VarA.a.a();
            z95VarA.e.invoke();
        } else {
            y95 y95Var = new y95(z95VarA);
            z95VarA.c.a(jLongValue2, y95Var);
            z95VarA.c.e = y95Var;
        }
        this.e = z95VarA;
    }
}
