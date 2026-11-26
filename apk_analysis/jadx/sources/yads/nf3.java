package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class nf3 implements sh5 {
    public final long[] a;
    public final long[] b;
    public final long c;
    public final boolean d;

    public nf3(long j, long[] jArr, long[] jArr2) {
        if (jArr.length != jArr2.length) {
            defpackage.mi2.b();
            throw null;
        }
        int length = jArr2.length;
        boolean z = length > 0;
        this.d = z;
        if (!z || jArr2[0] <= 0) {
            this.a = jArr;
            this.b = jArr2;
        } else {
            int i = length + 1;
            long[] jArr3 = new long[i];
            this.a = jArr3;
            long[] jArr4 = new long[i];
            this.b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length);
            System.arraycopy(jArr2, 0, jArr4, 1, length);
        }
        this.c = j;
    }

    @Override // yads.sh5
    public final qh5 b(long j) {
        if (!this.d) {
            uh5 uh5Var = uh5.c;
            return new qh5(uh5Var, uh5Var);
        }
        int iB = u56.b(this.b, j, true);
        long[] jArr = this.b;
        long j2 = jArr[iB];
        long[] jArr2 = this.a;
        uh5 uh5Var2 = new uh5(j2, jArr2[iB]);
        if (j2 == j || iB == jArr.length - 1) {
            return new qh5(uh5Var2, uh5Var2);
        }
        int i = iB + 1;
        return new qh5(uh5Var2, new uh5(jArr[i], jArr2[i]));
    }

    @Override // yads.sh5
    public final long c() {
        return this.c;
    }

    @Override // yads.sh5
    public final boolean b() {
        return this.d;
    }
}
