package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class i13 implements c13 {
    public final rr3 a;
    public final m2 b;

    public i13(rr3 rr3Var, m2 m2Var) {
        this.a = rr3Var;
        this.b = m2Var;
    }

    @Override // yads.c13
    public final void c() {
        if (this.a.a()) {
            return;
        }
        this.b.e();
    }

    @Override // yads.c13
    public final void invalidate() {
        this.a.b();
    }
}
