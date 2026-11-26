package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class fi4 implements nl4 {
    public final el4 a;
    public gd6 b;

    public fi4(el4 el4Var, gd6 gd6Var) {
        this.a = el4Var;
        this.b = gd6Var;
    }

    @Override // yads.nl4
    public final void a() {
    }

    @Override // yads.nl4
    public final void a(long j, long j2) {
    }

    @Override // yads.nl4
    public final void b() {
        gd6 gd6Var = this.b;
        if (gd6Var != null) {
            gd6Var.onVideoComplete();
        }
    }
}
