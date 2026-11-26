package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class nj6 implements mj6 {
    public final zs2 a;
    public final k06 b;
    public final pj6 c;
    public final vz2 d;
    public final int e;
    public long f;
    public int g;
    public long h;

    public nj6(zs2 zs2Var, k06 k06Var, pj6 pj6Var, String str, int i) throws xs4 {
        this.a = zs2Var;
        this.b = k06Var;
        this.c = pj6Var;
        int i2 = (pj6Var.a * pj6Var.d) / 8;
        if (pj6Var.c != i2) {
            StringBuilder sbC = defpackage.n7.c(i2, "Expected block size: ", "; got: ");
            sbC.append(pj6Var.c);
            throw new xs4(sbC.toString(), null, true, 1);
        }
        int i3 = pj6Var.b * i2;
        int i4 = i3 * 8;
        int iMax = Math.max(i2, i3 / 10);
        this.e = iMax;
        uz2 uz2Var = new uz2();
        uz2Var.k = str;
        uz2Var.f = i4;
        uz2Var.g = i4;
        uz2Var.l = iMax;
        uz2Var.x = pj6Var.a;
        uz2Var.y = pj6Var.b;
        uz2Var.z = i;
        this.d = new vz2(uz2Var);
    }

    @Override // yads.mj6
    public final boolean a(wk0 wk0Var, long j) {
        int i;
        int i2;
        long j2 = j;
        while (j2 > 0 && (i = this.g) < (i2 = this.e)) {
            int iA = this.b.a(wk0Var, (int) Math.min(i2 - i, j2), true);
            if (iA == -1) {
                j2 = 0;
            } else {
                this.g += iA;
                j2 -= (long) iA;
            }
        }
        pj6 pj6Var = this.c;
        int i3 = pj6Var.c;
        int i4 = this.g / i3;
        if (i4 > 0) {
            long jA = this.f + u56.a(this.h, 1000000L, pj6Var.b);
            int i5 = i4 * i3;
            int i6 = this.g - i5;
            this.b.a(jA, 1, i5, i6, null);
            this.h += (long) i4;
            this.g = i6;
        }
        return j2 <= 0;
    }

    @Override // yads.mj6
    public final void a(int i, long j) {
        this.a.a(new sj6(this.c, 1, i, j));
        this.b.a(this.d);
    }

    @Override // yads.mj6
    public final void a(long j) {
        this.f = j;
        this.g = 0;
        this.h = 0L;
    }
}
