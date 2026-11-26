package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xl4 implements n03, nl4 {
    public final el4 a;
    public final jk4 b;
    public final l15 c;
    public final b3 d;

    public xl4(el4 el4Var, jk4 jk4Var, bx5 bx5Var) {
        l15 l15Var = bx5Var.a;
        b3 b3Var = bx5Var.b;
        this.a = el4Var;
        this.b = jk4Var;
        this.c = l15Var;
        this.d = b3Var;
    }

    @Override // yads.nl4
    public final void a(long j, long j2) {
        long j3 = j2 + this.c.a;
        long jA = this.d.a(j);
        if (j3 < jA) {
            this.b.a(jA, j3);
        } else {
            invalidate();
            this.b.a();
        }
    }

    @Override // yads.nl4
    public final void b() {
        this.b.a();
        invalidate();
    }

    @Override // yads.n03
    public final void invalidate() {
        this.a.a.remove(this);
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
        this.b.a();
        invalidate();
    }
}
