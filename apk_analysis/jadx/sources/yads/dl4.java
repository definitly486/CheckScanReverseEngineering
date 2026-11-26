package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class dl4 implements n03, nl4 {
    public final el4 a;
    public b4 b;
    public m15 c;
    public final Long d;

    public dl4(d9 d9Var, el4 el4Var, b4 b4Var, m15 m15Var) {
        Long l = d9Var.s;
        this.a = el4Var;
        this.b = b4Var;
        this.c = m15Var;
        this.d = l;
    }

    @Override // yads.nl4
    public final void a(long j, long j2) {
        m15 m15Var = this.c;
        if (m15Var != null) {
            m15Var.a(j, j2);
        }
        Long l = this.d;
        if (l == null || j2 <= l.longValue()) {
            return;
        }
        m15 m15Var2 = this.c;
        if (m15Var2 != null) {
            m15Var2.a();
        }
        b4 b4Var = this.b;
        if (b4Var != null) {
            b4Var.b();
        }
        this.a.a.remove(this);
        this.b = null;
        this.c = null;
    }

    @Override // yads.nl4
    public final void b() {
        m15 m15Var = this.c;
        if (m15Var != null) {
            m15Var.a();
        }
        b4 b4Var = this.b;
        if (b4Var != null) {
            b4Var.b();
        }
        this.a.a.remove(this);
        this.b = null;
        this.c = null;
    }

    @Override // yads.n03
    public final void invalidate() {
        this.a.a.remove(this);
        this.b = null;
        this.c = null;
    }

    @Override // yads.n03
    public final void pause() {
    }

    @Override // yads.n03
    public final void resume() {
    }

    @Override // yads.n03
    public final void start() {
        this.a.a.add(this);
    }

    @Override // yads.nl4
    public final void a() {
        b4 b4Var = this.b;
        if (b4Var != null) {
            b4Var.a();
        }
        this.b = null;
    }
}
