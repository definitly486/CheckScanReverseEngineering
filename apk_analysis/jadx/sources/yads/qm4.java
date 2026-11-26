package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class qm4 implements n03, mm4 {
    public final lm4 a;
    public final tt4 b;
    public final l15 c;
    public final b3 d;
    public jk4 e;
    public z95 f;

    public qm4(lm4 lm4Var, jk4 jk4Var, bx5 bx5Var) {
        tt4 tt4VarA = qt4.a(null, 3);
        l15 l15Var = bx5Var.a;
        b3 b3Var = bx5Var.b;
        this.a = lm4Var;
        this.b = tt4VarA;
        this.c = l15Var;
        this.d = b3Var;
        this.e = jk4Var;
    }

    @Override // yads.mm4
    public final void a() {
        jk4 jk4Var = this.e;
        if (jk4Var != null) {
            jk4Var.a();
        }
        invalidate();
    }

    @Override // yads.n03
    public final void invalidate() {
        z95 z95Var = this.f;
        if (z95Var != null) {
            z95Var.c.a();
        }
        this.f = null;
        this.a.a.remove(this);
        this.e = null;
    }

    @Override // yads.n03
    public final void pause() {
        z95 z95Var = this.f;
        if (z95Var != null) {
            z95Var.c.b();
        }
    }

    @Override // yads.n03
    public final void resume() {
        z95 z95Var = this.f;
        if (z95Var != null) {
            z95Var.c.c();
        }
    }

    /* JADX WARN: Type inference failed for: r1v9, types: [ll3, qm3] */
    @Override // yads.n03
    public final void start() {
        this.a.a.add(this);
        jk4 jk4Var = this.e;
        if (jk4Var == null) {
            defpackage.fg.c("Required value was null.");
            return;
        }
        z95 z95VarA = x95.a(jk4Var, this.c, this.d, this.b, new pm4(this));
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
        this.f = z95VarA;
    }

    @Override // yads.mm4
    public final void a(boolean z) {
    }
}
