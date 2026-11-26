package yads;

import androidx.media3.common.C;
import java.util.Collections;

/* JADX INFO: loaded from: classes6.dex */
public final class lr3 implements zm2 {
    public final String a;
    public final os4 b;
    public final ns4 c;
    public k06 d;
    public String e;
    public vz2 f;
    public int g;
    public int h;
    public int i;
    public int j;
    public long k;
    public boolean l;
    public int m;
    public int n;
    public int o;
    public boolean p;
    public long q;
    public int r;
    public long s;
    public int t;
    public String u;

    public lr3(String str) {
        this.a = str;
        os4 os4Var = new os4(1024);
        this.b = os4Var;
        this.c = new ns4(os4Var.a);
        this.k = C.TIME_UNSET;
    }

    @Override // yads.zm2
    public final void a(os4 os4Var) throws xs4 {
        int i;
        boolean zE;
        if (this.d == null) {
            defpackage.ud.g();
            return;
        }
        while (true) {
            int i2 = os4Var.c - os4Var.b;
            if (i2 <= 0) {
                return;
            }
            int i3 = this.g;
            if (i3 != 0) {
                if (i3 == 1) {
                    int iK = os4Var.k();
                    if ((iK & 224) == 224) {
                        this.j = iK;
                        this.g = 2;
                    } else if (iK != 86) {
                        this.g = 0;
                    }
                } else if (i3 == 2) {
                    int iK2 = ((this.j & (-225)) << 8) | os4Var.k();
                    this.i = iK2;
                    os4 os4Var2 = this.b;
                    if (iK2 > os4Var2.a.length) {
                        os4Var2.c(iK2);
                        ns4 ns4Var = this.c;
                        byte[] bArr = this.b.a;
                        ns4Var.b(bArr, bArr.length);
                    }
                    this.h = 0;
                    this.g = 3;
                } else {
                    if (i3 != 3) {
                        defpackage.ud.g();
                        return;
                    }
                    int iMin = Math.min(i2, this.i - this.h);
                    os4Var.a(this.c.a, this.h, iMin);
                    int i4 = this.h + iMin;
                    this.h = i4;
                    if (i4 == this.i) {
                        this.c.b(0);
                        ns4 ns4Var2 = this.c;
                        if (ns4Var2.e()) {
                            if (this.l) {
                            }
                            this.g = 0;
                        } else {
                            this.l = true;
                            int iA = ns4Var2.a(1);
                            int iA2 = iA == 1 ? ns4Var2.a(1) : 0;
                            this.m = iA2;
                            if (iA2 != 0) {
                                throw new xs4(null, null, true, 1);
                            }
                            if (iA == 1) {
                                ns4Var2.a((ns4Var2.a(2) + 1) * 8);
                            }
                            if (!ns4Var2.e()) {
                                throw new xs4(null, null, true, 1);
                            }
                            this.n = ns4Var2.a(6);
                            int iA3 = ns4Var2.a(4);
                            int iA4 = ns4Var2.a(3);
                            if (iA3 != 0 || iA4 != 0) {
                                throw new xs4(null, null, true, 1);
                            }
                            if (iA == 0) {
                                int iD = ns4Var2.d();
                                int iB = ns4Var2.b();
                                a aVarA = b.a(ns4Var2, true);
                                this.u = aVarA.c;
                                this.r = aVarA.a;
                                this.t = aVarA.b;
                                int iB2 = iB - ns4Var2.b();
                                ns4Var2.b(iD);
                                byte[] bArr2 = new byte[(iB2 + 7) / 8];
                                ns4Var2.a(bArr2, iB2);
                                uz2 uz2Var = new uz2();
                                uz2Var.a = this.e;
                                uz2Var.k = "audio/mp4a-latm";
                                uz2Var.h = this.u;
                                uz2Var.x = this.t;
                                uz2Var.y = this.r;
                                uz2Var.m = Collections.singletonList(bArr2);
                                uz2Var.c = this.a;
                                vz2 vz2Var = new vz2(uz2Var);
                                if (!vz2Var.equals(this.f)) {
                                    this.f = vz2Var;
                                    this.s = 1024000000 / ((long) vz2Var.A);
                                    this.d.a(vz2Var);
                                }
                            } else {
                                int iA5 = ns4Var2.a((ns4Var2.a(2) + 1) * 8);
                                int iB3 = ns4Var2.b();
                                a aVarA2 = b.a(ns4Var2, true);
                                this.u = aVarA2.c;
                                this.r = aVarA2.a;
                                this.t = aVarA2.b;
                                ns4Var2.c(iA5 - (iB3 - ns4Var2.b()));
                            }
                            int iA6 = ns4Var2.a(3);
                            this.o = iA6;
                            if (iA6 == 0) {
                                ns4Var2.c(8);
                            } else if (iA6 == 1) {
                                ns4Var2.c(9);
                            } else if (iA6 == 3 || iA6 == 4 || iA6 == 5) {
                                ns4Var2.c(6);
                            } else {
                                if (iA6 != 6 && iA6 != 7) {
                                    defpackage.ud.g();
                                    return;
                                }
                                ns4Var2.c(1);
                            }
                            boolean zE2 = ns4Var2.e();
                            this.p = zE2;
                            this.q = 0L;
                            if (zE2) {
                                if (iA == 1) {
                                    this.q = ns4Var2.a((ns4Var2.a(2) + 1) * 8);
                                } else {
                                    do {
                                        zE = ns4Var2.e();
                                        this.q = (this.q << 8) + ((long) ns4Var2.a(8));
                                    } while (zE);
                                }
                            }
                            if (ns4Var2.e()) {
                                ns4Var2.c(8);
                            }
                        }
                        if (this.m != 0) {
                            throw new xs4(null, null, true, 1);
                        }
                        if (this.n != 0) {
                            throw new xs4(null, null, true, 1);
                        }
                        if (this.o != 0) {
                            throw new xs4(null, null, true, 1);
                        }
                        int i5 = 0;
                        while (true) {
                            int iA7 = ns4Var2.a(8);
                            i = i5 + iA7;
                            if (iA7 != 255) {
                                break;
                            } else {
                                i5 = i;
                            }
                        }
                        int iD2 = ns4Var2.d();
                        int i6 = iD2 & 7;
                        os4 os4Var3 = this.b;
                        if (i6 == 0) {
                            os4Var3.e(iD2 >> 3);
                        } else {
                            ns4Var2.a(os4Var3.a, i * 8);
                            this.b.e(0);
                        }
                        this.d.a(i, this.b);
                        long j = this.k;
                        if (j != C.TIME_UNSET) {
                            this.d.a(j, 1, i, 0, null);
                            this.k += this.s;
                        }
                        if (this.p) {
                            ns4Var2.c((int) this.q);
                        }
                        this.g = 0;
                    } else {
                        continue;
                    }
                }
            } else if (os4Var.k() == 86) {
                this.g = 1;
            }
        }
    }

    @Override // yads.zm2
    public final void b() {
    }

    @Override // yads.zm2
    public final void a(zs2 zs2Var, t26 t26Var) {
        t26Var.a();
        t26Var.b();
        this.d = zs2Var.a(t26Var.d, 1);
        t26Var.b();
        this.e = t26Var.e;
    }

    @Override // yads.zm2
    public final void a(int i, long j) {
        if (j != C.TIME_UNSET) {
            this.k = j;
        }
    }

    @Override // yads.zm2
    public final void a() {
        this.g = 0;
        this.k = C.TIME_UNSET;
        this.l = false;
    }
}
