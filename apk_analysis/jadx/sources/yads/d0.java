package yads;

import androidx.media3.common.C;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes6.dex */
public final class d0 implements ws2 {
    public final e0 a = new e0(null);
    public final os4 b = new os4(2786);
    public boolean c;

    @Override // yads.ws2
    public final boolean a(xs2 xs2Var) {
        wk0 wk0Var;
        int iA;
        os4 os4Var = new os4(10);
        int i = 0;
        while (true) {
            wk0Var = (wk0) xs2Var;
            wk0Var.b(os4Var.a, 0, 10, false);
            os4Var.e(0);
            if (os4Var.m() != 4801587) {
                break;
            }
            os4Var.e(os4Var.b + 3);
            int iJ = os4Var.j();
            i += iJ + 10;
            wk0Var.a(iJ, false);
        }
        wk0Var.f = 0;
        wk0Var.a(i, false);
        int i2 = 0;
        int i3 = i;
        while (true) {
            wk0Var.b(os4Var.a, 0, 6, false);
            os4Var.e(0);
            if (os4Var.p() != 2935) {
                wk0Var.f = 0;
                i3++;
                if (i3 - i >= 8192) {
                    return false;
                }
                wk0Var.a(i3, false);
                i2 = 0;
            } else {
                i2++;
                if (i2 >= 4) {
                    return true;
                }
                byte[] bArr = os4Var.a;
                if (bArr.length < 6) {
                    iA = -1;
                } else if (((bArr[5] & 248) >> 3) > 10) {
                    iA = ((((bArr[2] & 7) << 8) | (bArr[3] & 255)) + 1) * 2;
                } else {
                    byte b = bArr[4];
                    iA = f0.a((b & 192) >> 6, b & 63);
                }
                if (iA == -1) {
                    return false;
                }
                wk0Var.a(iA - 6, false);
            }
        }
    }

    @Override // yads.ws2
    public final void release() {
    }

    public static /* synthetic */ ws2[] a() {
        return new ws2[]{new d0()};
    }

    @Override // yads.ws2
    public final void a(zs2 zs2Var) {
        e0 e0Var = this.a;
        e0Var.getClass();
        e0Var.d = CommonUrlParts.Values.FALSE_INTEGER;
        e0Var.e = zs2Var.a(0, 1);
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
        int iC = ((wk0) xs2Var).c(this.b.a, 0, 2786);
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
