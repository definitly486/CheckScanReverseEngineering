package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class cl4 implements n03, nl4 {
    public final el4 a;
    public final ra5 b;
    public final Long c;
    public final l10 d;
    public final y00 e;

    public cl4(d9 d9Var, el4 el4Var, ra5 ra5Var, bx5 bx5Var) {
        Long l = d9Var.j;
        l10 l10Var = bx5Var.e;
        y00 y00Var = bx5Var.d;
        this.a = el4Var;
        this.b = ra5Var;
        this.c = l;
        this.d = l10Var;
        this.e = y00Var;
    }

    @Override // yads.nl4
    public final void a(long j, long j2) {
        if (this.e.a()) {
            l10 l10Var = this.d;
            l10Var.b = j2;
            long j3 = j2 + l10Var.a;
            Long l = this.c;
            if (l == null || j3 < l.longValue()) {
                return;
            }
            this.b.a();
            c();
        }
    }

    @Override // yads.nl4
    public final void b() {
        if (this.e.a()) {
            this.b.a();
            c();
        }
    }

    public final void c() {
        this.a.a.remove(this);
    }

    @Override // yads.n03
    public final void invalidate() {
        c();
    }

    @Override // yads.n03
    public final void pause() {
    }

    @Override // yads.n03
    public final void resume() {
    }

    @Override // yads.n03
    public final void start() {
        Long l;
        this.a.a.add(this);
        if (!this.e.a() || (l = this.c) == null || this.d.a < l.longValue()) {
            return;
        }
        this.b.a();
        c();
    }

    @Override // yads.nl4
    public final void a() {
        this.b.a();
        c();
    }
}
