package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class x86 implements wh5 {
    public final long[] a;
    public final long[] b;
    public final long c;
    public final long d;

    public x86(long[] jArr, long[] jArr2, long j, long j2) {
        this.a = jArr;
        this.b = jArr2;
        this.c = j;
        this.d = j2;
    }

    @Override // yads.wh5
    public final long a(long j) {
        return this.a[u56.b(this.b, j, true)];
    }

    @Override // yads.sh5
    public final qh5 b(long j) {
        int iB = u56.b(this.a, j, true);
        long[] jArr = this.a;
        long j2 = jArr[iB];
        long[] jArr2 = this.b;
        uh5 uh5Var = new uh5(j2, jArr2[iB]);
        if (j2 >= j || iB == jArr.length - 1) {
            return new qh5(uh5Var, uh5Var);
        }
        int i = iB + 1;
        return new qh5(uh5Var, new uh5(jArr[i], jArr2[i]));
    }

    @Override // yads.sh5
    public final long c() {
        return this.c;
    }

    @Override // yads.wh5
    public final long a() {
        return this.d;
    }

    @Override // yads.sh5
    public final boolean b() {
        return true;
    }
}
