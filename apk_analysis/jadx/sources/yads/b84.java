package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class b84 implements mc5 {
    public final mc5 b;
    public final long c;

    public b84(mc5 mc5Var, long j) {
        this.b = mc5Var;
        this.c = j;
    }

    @Override // yads.mc5
    public final int a(a03 a03Var, mi0 mi0Var, int i) {
        int iA = this.b.a(a03Var, mi0Var, i);
        if (iA == -4) {
            mi0Var.f = Math.max(0L, mi0Var.f + this.c);
        }
        return iA;
    }

    @Override // yads.mc5
    public final int b(long j) {
        return this.b.b(j - this.c);
    }

    @Override // yads.mc5
    public final boolean c() {
        return this.b.c();
    }

    @Override // yads.mc5
    public final void a() {
        this.b.a();
    }
}
