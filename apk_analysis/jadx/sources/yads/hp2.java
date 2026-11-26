package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class hp2 implements mc5 {
    public final vz2 b;
    public long[] d;
    public boolean e;
    public ip2 f;
    public boolean g;
    public int h;
    public final gp2 c = new gp2();
    public long i = C.TIME_UNSET;

    public hp2(ip2 ip2Var, vz2 vz2Var, boolean z) {
        this.b = vz2Var;
        this.f = ip2Var;
        this.d = ip2Var.b;
        a(ip2Var, z);
    }

    @Override // yads.mc5
    public final int a(a03 a03Var, mi0 mi0Var, int i) {
        int i2 = this.h;
        boolean z = i2 == this.d.length;
        if (z && !this.e) {
            mi0Var.b = 4;
            return -4;
        }
        if ((i & 2) != 0 || !this.g) {
            a03Var.b = this.b;
            this.g = true;
            return -5;
        }
        if (z) {
            return -3;
        }
        if ((i & 1) == 0) {
            this.h = i2 + 1;
        }
        if ((i & 4) == 0) {
            byte[] bArrA = this.c.a(this.f.a[i2]);
            mi0Var.c(bArrA.length);
            mi0Var.d.put(bArrA);
        }
        mi0Var.f = this.d[i2];
        mi0Var.b = 1;
        return -4;
    }

    @Override // yads.mc5
    public final int b(long j) {
        int iMax = Math.max(this.h, u56.a(this.d, j, true));
        int i = iMax - this.h;
        this.h = iMax;
        return i;
    }

    @Override // yads.mc5
    public final boolean c() {
        return true;
    }

    public final void a(ip2 ip2Var, boolean z) {
        int i = this.h;
        long j = C.TIME_UNSET;
        long j2 = i == 0 ? -9223372036854775807L : this.d[i - 1];
        this.e = z;
        this.f = ip2Var;
        long[] jArr = ip2Var.b;
        this.d = jArr;
        long j3 = this.i;
        if (j3 == C.TIME_UNSET) {
            if (j2 != C.TIME_UNSET) {
                this.h = u56.a(jArr, j2, false);
            }
        } else {
            int iA = u56.a(jArr, j3, true);
            this.h = iA;
            if (this.e && iA == this.d.length) {
                j = j3;
            }
            this.i = j;
        }
    }

    @Override // yads.mc5
    public final void a() {
    }
}
