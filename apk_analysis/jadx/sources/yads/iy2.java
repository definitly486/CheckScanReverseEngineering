package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class iy2 implements sh5 {
    public final ky2 a;
    public final long b;

    public iy2(ky2 ky2Var, long j) {
        this.a = ky2Var;
        this.b = j;
    }

    @Override // yads.sh5
    public final qh5 b(long j) {
        ky2 ky2Var = this.a;
        jy2 jy2Var = ky2Var.k;
        if (jy2Var == null) {
            defpackage.ud.g();
            return null;
        }
        long[] jArr = jy2Var.a;
        long[] jArr2 = jy2Var.b;
        int iB = u56.b(jArr, ky2Var.a(j), false);
        long j2 = iB == -1 ? 0L : jArr[iB];
        long j3 = iB != -1 ? jArr2[iB] : 0L;
        long j4 = this.a.e;
        long j5 = (j2 * 1000000) / j4;
        long j6 = this.b;
        uh5 uh5Var = new uh5(j5, j3 + j6);
        if (j5 == j || iB == jArr.length - 1) {
            return new qh5(uh5Var, uh5Var);
        }
        int i = iB + 1;
        return new qh5(uh5Var, new uh5((jArr[i] * 1000000) / j4, j6 + jArr2[i]));
    }

    @Override // yads.sh5
    public final long c() {
        ky2 ky2Var = this.a;
        long j = ky2Var.j;
        return j == 0 ? C.TIME_UNSET : (j * 1000000) / ((long) ky2Var.e);
    }

    @Override // yads.sh5
    public final boolean b() {
        return true;
    }
}
