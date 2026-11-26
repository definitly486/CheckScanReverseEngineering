package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class ay2 implements pt {
    public final ky2 a;
    public final int b;
    public final dy2 c = new dy2();

    public ay2(ky2 ky2Var, int i) {
        this.a = ky2Var;
        this.b = i;
    }

    public final long a(wk0 wk0Var) {
        long j;
        boolean zA;
        while (true) {
            long j2 = wk0Var.d + ((long) wk0Var.f);
            long j3 = 6;
            if (j2 >= wk0Var.c - 6) {
                j = 6;
                break;
            }
            ky2 ky2Var = this.a;
            int i = this.b;
            dy2 dy2Var = this.c;
            byte[] bArr = new byte[2];
            wk0Var.b(bArr, 0, 2, false);
            if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
                wk0Var.f = 0;
                wk0Var.a((int) (j2 - wk0Var.d), false);
                zA = false;
                j = 6;
            } else {
                os4 os4Var = new os4(16);
                System.arraycopy(bArr, 0, os4Var.a, 0, 2);
                byte[] bArr2 = os4Var.a;
                int i2 = 0;
                while (true) {
                    if (i2 >= 14) {
                        j = j3;
                        break;
                    }
                    j = j3;
                    int iD = wk0Var.d(bArr2, 2 + i2, 14 - i2);
                    if (iD == -1) {
                        break;
                    }
                    i2 += iD;
                    j3 = j;
                }
                os4Var.d(i2);
                wk0Var.f = 0;
                wk0Var.a((int) (j2 - wk0Var.d), false);
                zA = ey2.a(os4Var, ky2Var, i, dy2Var);
            }
            if (zA) {
                break;
            }
            wk0Var.a(1, false);
        }
        long j4 = wk0Var.d + ((long) wk0Var.f);
        long j5 = wk0Var.c;
        if (j4 < j5 - j) {
            return this.c.a;
        }
        wk0Var.a((int) (j5 - j4), false);
        return this.a.j;
    }

    @Override // yads.pt
    public final ot a(wk0 wk0Var, long j) {
        long j2 = wk0Var.d;
        long jA = a(wk0Var);
        long j3 = wk0Var.d + ((long) wk0Var.f);
        wk0Var.a(Math.max(6, this.a.c), false);
        long jA2 = a(wk0Var);
        long j4 = wk0Var.d + ((long) wk0Var.f);
        if (jA <= j && jA2 > j) {
            return new ot(0, C.TIME_UNSET, j3);
        }
        if (jA2 <= j) {
            return new ot(-2, jA2, j4);
        }
        return new ot(-1, jA, j2);
    }
}
