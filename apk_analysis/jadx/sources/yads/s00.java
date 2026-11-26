package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class s00 implements mc5 {
    public final mc5 b;
    public boolean c;
    public final /* synthetic */ t00 d;

    public s00(t00 t00Var, mc5 mc5Var) {
        this.d = t00Var;
        this.b = mc5Var;
    }

    @Override // yads.mc5
    public final int a(a03 a03Var, mi0 mi0Var, int i) {
        if (this.d.e != C.TIME_UNSET) {
            return -3;
        }
        if (this.c) {
            mi0Var.b = 4;
            return -4;
        }
        int iA = this.b.a(a03Var, mi0Var, i);
        if (iA != -5) {
            t00 t00Var = this.d;
            long j = t00Var.g;
            if (j == Long.MIN_VALUE || ((iA != -4 || mi0Var.f < j) && !(iA == -3 && t00Var.getBufferedPositionUs() == Long.MIN_VALUE && !mi0Var.e))) {
                return iA;
            }
            mi0Var.b();
            mi0Var.b = 4;
            this.c = true;
            return -4;
        }
        vz2 vz2Var = a03Var.b;
        vz2Var.getClass();
        int i2 = vz2Var.C;
        if (i2 != 0 || vz2Var.D != 0) {
            t00 t00Var2 = this.d;
            if (t00Var2.f != 0) {
                i2 = 0;
            }
            int i3 = t00Var2.g == Long.MIN_VALUE ? vz2Var.D : 0;
            uz2 uz2Var = new uz2(vz2Var);
            uz2Var.A = i2;
            uz2Var.B = i3;
            a03Var.b = new vz2(uz2Var);
        }
        return -5;
    }

    @Override // yads.mc5
    public final int b(long j) {
        if (this.d.e != C.TIME_UNSET) {
            return -3;
        }
        return this.b.b(j);
    }

    @Override // yads.mc5
    public final boolean c() {
        return this.d.e == C.TIME_UNSET && this.b.c();
    }

    @Override // yads.mc5
    public final void a() {
        this.b.a();
    }
}
