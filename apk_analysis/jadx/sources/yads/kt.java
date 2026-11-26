package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class kt implements sh5 {
    public final nt a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;

    public kt(nt ntVar, long j, long j2, long j3, long j4, long j5) {
        this.a = ntVar;
        this.b = j;
        this.c = j2;
        this.d = j3;
        this.e = j4;
        this.f = j5;
    }

    @Override // yads.sh5
    public final qh5 b(long j) {
        uh5 uh5Var = new uh5(j, mt.a(this.a.a(j), 0L, this.c, this.d, this.e, this.f));
        return new qh5(uh5Var, uh5Var);
    }

    @Override // yads.sh5
    public final long c() {
        return this.b;
    }

    @Override // yads.sh5
    public final boolean b() {
        return true;
    }
}
