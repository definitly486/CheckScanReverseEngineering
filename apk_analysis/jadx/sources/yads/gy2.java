package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class gy2 implements qp4 {
    public final ky2 a;
    public final jy2 b;
    public long c = -1;
    public long d = -1;

    public gy2(ky2 ky2Var, jy2 jy2Var) {
        this.a = ky2Var;
        this.b = jy2Var;
    }

    @Override // yads.qp4
    public final sh5 a() {
        long j = this.c;
        if (j != -1) {
            return new iy2(this.a, j);
        }
        defpackage.ud.g();
        return null;
    }

    @Override // yads.qp4
    public final void a(long j) {
        long[] jArr = this.b.a;
        this.d = jArr[u56.b(jArr, j, true)];
    }

    @Override // yads.qp4
    public final long a(wk0 wk0Var) {
        long j = this.d;
        if (j < 0) {
            return -1L;
        }
        long j2 = -(j + 2);
        this.d = -1L;
        return j2;
    }
}
