package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class kl5 extends zr {
    public final int o;
    public final vz2 p;
    public long q;
    public boolean r;

    public kl5(wc0 wc0Var, bd0 bd0Var, vz2 vz2Var, int i, Object obj, long j, long j2, long j3, int i2, vz2 vz2Var2) {
        super(wc0Var, bd0Var, vz2Var, i, obj, j, j2, C.TIME_UNSET, C.TIME_UNSET, j3);
        this.o = i2;
        this.p = vz2Var2;
    }

    @Override // yads.nu3
    public final void a() {
        k06 cm2Var;
        bs bsVar = this.m;
        if (bsVar == null) {
            defpackage.ud.g();
            return;
        }
        int iA = 0;
        for (lc5 lc5Var : bsVar.b) {
            if (lc5Var.E != 0) {
                lc5Var.E = 0L;
                lc5Var.z = true;
            }
        }
        int i = this.o;
        int i2 = 0;
        while (true) {
            int[] iArr = bsVar.a;
            if (i2 >= iArr.length) {
                sv3.b("BaseMediaChunkOutput", "Unmatched track of type: " + i);
                cm2Var = new cm2();
                break;
            }
            if (i == iArr[i2]) {
                cm2Var = bsVar.b[i2];
                break;
            }
            i2++;
        }
        k06 k06Var = cm2Var;
        k06Var.a(this.p);
        try {
            bd0 bd0Var = this.b;
            long j = this.q;
            long j2 = bd0Var.g;
            long jA = this.i.a(bd0Var.a(j, j2 == -1 ? -1L : j2 - j));
            if (jA != -1) {
                jA += this.q;
            }
            wk0 wk0Var = new wk0(this.i, this.q, jA);
            while (true) {
                long j3 = this.q;
                if (iA == -1) {
                    k06Var.a(this.g, 1, (int) j3, 0, null);
                    zc0.a(this.i);
                    this.r = true;
                    return;
                }
                this.q = j3 + ((long) iA);
                iA = k06Var.a(wk0Var, Integer.MAX_VALUE, true);
            }
        } catch (Throwable th) {
            zc0.a(this.i);
            throw th;
        }
    }

    @Override // yads.nu3
    public final void b() {
    }

    @Override // yads.zr
    public final boolean d() {
        return this.r;
    }
}
