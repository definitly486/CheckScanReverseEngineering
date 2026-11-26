package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class np4 implements ws2 {
    public zs2 a;
    public fs5 b;
    public boolean c;

    @Override // yads.ws2
    public final int a(xs2 xs2Var, qx4 qx4Var) throws xs4 {
        if (this.a == null) {
            defpackage.ud.g();
            return 0;
        }
        if (this.b == null) {
            wk0 wk0Var = (wk0) xs2Var;
            if (!a(wk0Var)) {
                defpackage.e2.h("Failed to determine bitstream type", null);
                return 0;
            }
            wk0Var.f = 0;
        }
        if (!this.c) {
            k06 k06VarA = this.a.a(0, 1);
            this.a.a();
            fs5 fs5Var = this.b;
            fs5Var.c = this.a;
            fs5Var.b = k06VarA;
            fs5Var.a(true);
            this.c = true;
        }
        fs5 fs5Var2 = this.b;
        if (fs5Var2.b == null) {
            defpackage.ud.g();
            return 0;
        }
        int i = u56.a;
        int i2 = fs5Var2.h;
        if (i2 == 0) {
            while (true) {
                wk0 wk0Var2 = (wk0) xs2Var;
                if (!fs5Var2.a.a(wk0Var2)) {
                    fs5Var2.h = 3;
                    break;
                }
                long j = wk0Var2.d;
                long j2 = fs5Var2.f;
                fs5Var2.k = j - j2;
                if (!fs5Var2.a(fs5Var2.a.b, j2, fs5Var2.j)) {
                    vz2 vz2Var = fs5Var2.j.a;
                    fs5Var2.i = vz2Var.A;
                    if (!fs5Var2.m) {
                        fs5Var2.b.a(vz2Var);
                        fs5Var2.m = true;
                    }
                    gy2 gy2Var = fs5Var2.j.b;
                    if (gy2Var == null) {
                        long j3 = wk0Var2.c;
                        if (j3 == -1) {
                            fs5Var2.d = new es5();
                        } else {
                            pp4 pp4Var = fs5Var2.a.a;
                            fs5Var2.d = new ul0(fs5Var2, fs5Var2.f, j3, pp4Var.d + pp4Var.e, pp4Var.b, (pp4Var.a & 4) != 0);
                        }
                        fs5Var2.h = 2;
                        fs5Var2.a.a();
                        return 0;
                    }
                    fs5Var2.d = gy2Var;
                    fs5Var2.h = 2;
                    fs5Var2.a.a();
                    return 0;
                }
                fs5Var2.f = wk0Var2.d;
            }
        } else {
            if (i2 == 1) {
                ((wk0) xs2Var).a((int) fs5Var2.f);
                fs5Var2.h = 2;
                return 0;
            }
            if (i2 == 2) {
                wk0 wk0Var3 = (wk0) xs2Var;
                long jA = fs5Var2.d.a(wk0Var3);
                if (jA >= 0) {
                    qx4Var.a = jA;
                    return 1;
                }
                if (jA < -1) {
                    fs5Var2.a(-(jA + 2));
                }
                if (!fs5Var2.l) {
                    sh5 sh5VarA = fs5Var2.d.a();
                    if (sh5VarA == null) {
                        defpackage.ud.g();
                        return 0;
                    }
                    fs5Var2.c.a(sh5VarA);
                    fs5Var2.l = true;
                }
                if (fs5Var2.k <= 0 && !fs5Var2.a.a(wk0Var3)) {
                    fs5Var2.h = 3;
                    return -1;
                }
                fs5Var2.k = 0L;
                os4 os4Var = fs5Var2.a.b;
                long jA2 = fs5Var2.a(os4Var);
                if (jA2 >= 0) {
                    long j4 = fs5Var2.g;
                    if (j4 + jA2 >= fs5Var2.e) {
                        long j5 = (j4 * 1000000) / ((long) fs5Var2.i);
                        fs5Var2.b.a(os4Var.c, os4Var);
                        fs5Var2.b.a(j5, 1, os4Var.c, 0, null);
                        fs5Var2.e = -1L;
                    }
                }
                fs5Var2.g += jA2;
                return 0;
            }
            if (i2 != 3) {
                defpackage.ud.g();
                return 0;
            }
        }
        return -1;
    }

    @Override // yads.ws2
    public final void release() {
    }

    @Override // yads.ws2
    public final boolean a(xs2 xs2Var) {
        try {
            return a((wk0) xs2Var);
        } catch (xs4 unused) {
            return false;
        }
    }

    @Override // yads.ws2
    public final void a(zs2 zs2Var) {
        this.a = zs2Var;
    }

    @Override // yads.ws2
    public final void a(long j, long j2) {
        fs5 fs5Var = this.b;
        if (fs5Var != null) {
            op4 op4Var = fs5Var.a;
            pp4 pp4Var = op4Var.a;
            pp4Var.a = 0;
            pp4Var.b = 0L;
            pp4Var.c = 0;
            pp4Var.d = 0;
            pp4Var.e = 0;
            op4Var.b.c(0);
            op4Var.c = -1;
            op4Var.e = false;
            if (j == 0) {
                fs5Var.a(!fs5Var.l);
                return;
            }
            if (fs5Var.h != 0) {
                long j3 = (((long) fs5Var.i) * j2) / 1000000;
                fs5Var.e = j3;
                qp4 qp4Var = fs5Var.d;
                int i = u56.a;
                qp4Var.a(j3);
                fs5Var.h = 2;
            }
        }
    }

    public static /* synthetic */ ws2[] a() {
        return new ws2[]{new np4()};
    }

    public final boolean a(wk0 wk0Var) {
        boolean zA;
        pp4 pp4Var = new pp4();
        if (pp4Var.a(wk0Var, true) && (pp4Var.a & 2) == 2) {
            int iMin = Math.min(pp4Var.e, 8);
            os4 os4Var = new os4(iMin);
            wk0Var.b(os4Var.a, 0, iMin, false);
            os4Var.e(0);
            if (os4Var.c - os4Var.b >= 5 && os4Var.k() == 127 && os4Var.l() == 1179402563) {
                this.b = new hy2();
            } else {
                os4Var.e(0);
                try {
                    zA = dj6.a(1, os4Var, true);
                } catch (xs4 unused) {
                    zA = false;
                }
                if (zA) {
                    this.b = new zi6();
                } else {
                    os4Var.e(0);
                    if (vq4.a(os4Var, vq4.o)) {
                        this.b = new vq4();
                    }
                }
            }
            return true;
        }
        return false;
    }
}
