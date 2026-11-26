package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class wb implements ws2 {
    public final os4 c;
    public final ns4 d;
    public zs2 e;
    public long f;
    public boolean h;
    public boolean i;
    public final xb a = new xb(null, true);
    public final os4 b = new os4(2048);
    public long g = -1;

    public wb() {
        os4 os4Var = new os4(10);
        this.c = os4Var;
        this.d = new ns4(os4Var.a);
    }

    @Override // yads.ws2
    public final boolean a(xs2 xs2Var) {
        wk0 wk0Var = (wk0) xs2Var;
        int i = 0;
        while (true) {
            wk0Var.b(this.c.a, 0, 10, false);
            this.c.e(0);
            if (this.c.m() != 4801587) {
                break;
            }
            os4 os4Var = this.c;
            os4Var.e(os4Var.b + 3);
            int iJ = this.c.j();
            i += iJ + 10;
            wk0Var.a(iJ, false);
        }
        wk0Var.f = 0;
        wk0Var.a(i, false);
        if (this.g == -1) {
            this.g = i;
        }
        int i2 = 0;
        int i3 = 0;
        int i4 = i;
        do {
            wk0Var.b(this.c.a, 0, 2, false);
            this.c.e(0);
            if ((this.c.p() & 65526) == 65520) {
                i2++;
                if (i2 >= 4 && i3 > 188) {
                    return true;
                }
                wk0Var.b(this.c.a, 0, 4, false);
                this.d.b(14);
                int iA = this.d.a(13);
                if (iA <= 6) {
                    i4++;
                    wk0Var.f = 0;
                    wk0Var.a(i4, false);
                } else {
                    wk0Var.a(iA - 6, false);
                    i3 += iA;
                }
            } else {
                i4++;
                wk0Var.f = 0;
                wk0Var.a(i4, false);
            }
            i2 = 0;
            i3 = 0;
        } while (i4 - i < 8192);
        return false;
    }

    @Override // yads.ws2
    public final void release() {
    }

    public static ws2[] a() {
        return new ws2[]{new wb()};
    }

    @Override // yads.ws2
    public final void a(zs2 zs2Var) {
        this.e = zs2Var;
        this.a.a(zs2Var, new t26(Integer.MIN_VALUE, 0, 1));
        zs2Var.a();
    }

    @Override // yads.ws2
    public final void a(long j, long j2) {
        this.h = false;
        this.a.a();
        this.f = j2;
    }

    @Override // yads.ws2
    public final int a(xs2 xs2Var, qx4 qx4Var) {
        if (this.e != null) {
            wk0 wk0Var = (wk0) xs2Var;
            long j = wk0Var.c;
            int iC = wk0Var.c(this.b.a, 0, 2048);
            boolean z = iC == -1;
            if (!this.i) {
                this.e.a(new rh5(C.TIME_UNSET, 0L));
                this.i = true;
            }
            if (z) {
                return -1;
            }
            this.b.e(0);
            this.b.d(iC);
            if (!this.h) {
                this.a.a(4, this.f);
                this.h = true;
            }
            this.a.a(this.b);
            return 0;
        }
        defpackage.ud.g();
        return 0;
    }
}
