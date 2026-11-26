package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class wl6 implements wh5 {
    public final long a;
    public final int b;
    public final long c;
    public final long d;
    public final long e;
    public final long[] f;

    public wl6(long j, int i, long j2, long j3, long[] jArr) {
        this.a = j;
        this.b = i;
        this.c = j2;
        this.f = jArr;
        this.d = j3;
        this.e = j3 != -1 ? j + j3 : -1L;
    }

    @Override // yads.wh5
    public final long a(long j) {
        long j2 = j - this.a;
        if (b() && j2 > this.b) {
            long[] jArr = this.f;
            if (jArr != null) {
                double d = (j2 * 256.0d) / this.d;
                int iB = u56.b(jArr, (long) d, true);
                long j3 = this.c;
                long j4 = (((long) iB) * j3) / 100;
                long j5 = jArr[iB];
                int i = iB + 1;
                long j6 = (j3 * ((long) i)) / 100;
                long j7 = iB == 99 ? 256L : jArr[i];
                return Math.round((j5 == j7 ? 0.0d : (d - j5) / (j7 - j5)) * (j6 - j4)) + j4;
            }
            defpackage.ud.g();
        }
        return 0L;
    }

    @Override // yads.sh5
    public final qh5 b(long j) {
        if (!b()) {
            uh5 uh5Var = new uh5(0L, this.a + ((long) this.b));
            return new qh5(uh5Var, uh5Var);
        }
        long j2 = this.c;
        int i = u56.a;
        long jMax = Math.max(0L, Math.min(j, j2));
        double d = (jMax * 100.0d) / this.c;
        double dB = 0.0d;
        if (d > 0.0d) {
            if (d >= 100.0d) {
                dB = 256.0d;
            } else {
                int i2 = (int) d;
                long[] jArr = this.f;
                if (jArr == null) {
                    defpackage.ud.g();
                    return null;
                }
                double d2 = jArr[i2];
                dB = defpackage.dh.b(i2 == 99 ? 256.0d : jArr[i2 + 1], d2, d - ((double) i2), d2);
            }
        }
        uh5 uh5Var2 = new uh5(jMax, this.a + Math.max(this.b, Math.min(Math.round((dB / 256.0d) * this.d), this.d - 1)));
        return new qh5(uh5Var2, uh5Var2);
    }

    @Override // yads.sh5
    public final long c() {
        return this.c;
    }

    @Override // yads.wh5
    public final long a() {
        return this.e;
    }

    @Override // yads.sh5
    public final boolean b() {
        return this.f != null;
    }
}
