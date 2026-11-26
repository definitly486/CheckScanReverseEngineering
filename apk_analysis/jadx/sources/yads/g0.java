package yads;

import androidx.media3.common.C;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes6.dex */
public final class g0 implements ws2 {
    public final h0 a = new h0(null);
    public final os4 b = new os4(16384);
    public boolean c;

    @Override // yads.ws2
    public final boolean a(xs2 xs2Var) {
        wk0 wk0Var;
        int i;
        os4 os4Var = new os4(10);
        int i2 = 0;
        while (true) {
            wk0Var = (wk0) xs2Var;
            wk0Var.b(os4Var.a, 0, 10, false);
            os4Var.e(0);
            if (os4Var.m() != 4801587) {
                break;
            }
            os4Var.e(os4Var.b + 3);
            int iJ = os4Var.j();
            i2 += iJ + 10;
            wk0Var.a(iJ, false);
        }
        wk0Var.f = 0;
        wk0Var.a(i2, false);
        int i3 = 0;
        int i4 = i2;
        while (true) {
            int i5 = 7;
            wk0Var.b(os4Var.a, 0, 7, false);
            os4Var.e(0);
            int iP = os4Var.p();
            if (iP == 44096 || iP == 44097) {
                i3++;
                if (i3 >= 4) {
                    return true;
                }
                byte[] bArr = os4Var.a;
                if (bArr.length < 7) {
                    i = -1;
                } else {
                    int i6 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
                    if (i6 == 65535) {
                        i6 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
                    } else {
                        i5 = 4;
                    }
                    if (iP == 44097) {
                        i5 += 2;
                    }
                    i = i6 + i5;
                }
                if (i == -1) {
                    return false;
                }
                wk0Var.a(i - 7, false);
            } else {
                wk0Var.f = 0;
                i4++;
                if (i4 - i2 >= 8192) {
                    return false;
                }
                wk0Var.a(i4, false);
                i3 = 0;
            }
        }
    }

    @Override // yads.ws2
    public final void release() {
    }

    public static /* synthetic */ ws2[] a() {
        return new ws2[]{new g0()};
    }

    @Override // yads.ws2
    public final void a(zs2 zs2Var) {
        h0 h0Var = this.a;
        h0Var.getClass();
        h0Var.d = CommonUrlParts.Values.FALSE_INTEGER;
        h0Var.e = zs2Var.a(0, 1);
        zs2Var.a();
        zs2Var.a(new rh5(C.TIME_UNSET, 0L));
    }

    @Override // yads.ws2
    public final void a(long j, long j2) {
        this.c = false;
        this.a.a();
    }

    @Override // yads.ws2
    public final int a(xs2 xs2Var, qx4 qx4Var) {
        int iC = ((wk0) xs2Var).c(this.b.a, 0, 16384);
        if (iC == -1) {
            return -1;
        }
        this.b.e(0);
        this.b.d(iC);
        if (!this.c) {
            this.a.a(4, 0L);
            this.c = true;
        }
        this.a.a(this.b);
        return 0;
    }
}
