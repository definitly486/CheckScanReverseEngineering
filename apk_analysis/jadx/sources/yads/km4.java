package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class km4 implements n03, mm4 {
    public final lm4 a;
    public b4 b;
    public final ek0 c;
    public m15 d;
    public final tt4 e;

    public km4(lm4 lm4Var, b4 b4Var, ek0 ek0Var, m15 m15Var) {
        tt4 tt4VarA = qt4.a(null, 3);
        this.a = lm4Var;
        this.b = b4Var;
        this.c = ek0Var;
        this.d = m15Var;
        this.e = tt4VarA;
    }

    @Override // yads.mm4
    public final void a() {
        m15 m15Var = this.d;
        if (m15Var != null) {
            m15Var.a();
        }
        b4 b4Var = this.b;
        if (b4Var != null) {
            b4Var.b();
        }
        this.a.a.remove(this);
        this.b = null;
        this.d = null;
    }

    @Override // yads.n03
    public final void invalidate() {
        this.e.a();
        this.e.e = null;
        this.a.a.remove(this);
        this.b = null;
        this.d = null;
    }

    @Override // yads.n03
    public final void pause() {
        this.e.b();
    }

    @Override // yads.n03
    public final void resume() {
        this.e.c();
    }

    @Override // yads.n03
    public final void start() {
        this.a.a.add(this);
        ek0 ek0Var = this.c;
        Long lValueOf = ek0Var != null ? Long.valueOf(ek0Var.a()) : null;
        if (lValueOf != null) {
            jm4 jm4Var = new jm4(this, lValueOf.longValue());
            tt4 tt4Var = this.e;
            tt4Var.e = jm4Var;
            tt4Var.a(lValueOf.longValue(), jm4Var);
        }
    }

    @Override // yads.mm4
    public final void a(boolean z) {
    }
}
