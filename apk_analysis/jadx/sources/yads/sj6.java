package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class sj6 implements sh5 {
    public final pj6 a;
    public final int b;
    public final long c;
    public final long d;
    public final long e;

    public sj6(pj6 pj6Var, int i, long j, long j2) {
        this.a = pj6Var;
        this.b = i;
        this.c = j;
        long j3 = (j2 - j) / ((long) pj6Var.c);
        this.d = j3;
        this.e = u56.a(j3 * ((long) i), 1000000L, pj6Var.b);
    }

    @Override // yads.sh5
    public final qh5 b(long j) {
        long j2 = (((long) this.a.b) * j) / (((long) this.b) * 1000000);
        long j3 = this.d - 1;
        int i = u56.a;
        long jMax = Math.max(0L, Math.min(j2, j3));
        long j4 = this.c;
        pj6 pj6Var = this.a;
        long j5 = (((long) pj6Var.c) * jMax) + j4;
        long jA = u56.a(jMax * ((long) this.b), 1000000L, pj6Var.b);
        uh5 uh5Var = new uh5(jA, j5);
        if (jA >= j || jMax == this.d - 1) {
            return new qh5(uh5Var, uh5Var);
        }
        long j6 = jMax + 1;
        long j7 = this.c;
        pj6 pj6Var2 = this.a;
        return new qh5(uh5Var, new uh5(u56.a(j6 * ((long) this.b), 1000000L, pj6Var2.b), (((long) pj6Var2.c) * j6) + j7));
    }

    @Override // yads.sh5
    public final long c() {
        return this.e;
    }

    @Override // yads.sh5
    public final boolean b() {
        return true;
    }
}
