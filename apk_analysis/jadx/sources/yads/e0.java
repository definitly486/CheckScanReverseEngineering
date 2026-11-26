package yads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;

/* JADX INFO: loaded from: classes6.dex */
public final class e0 implements zm2 {
    public final ns4 a;
    public final os4 b;
    public final String c;
    public String d;
    public k06 e;
    public int f;
    public int g;
    public boolean h;
    public long i;
    public vz2 j;
    public int k;
    public long l;

    public e0(String str) {
        ns4 ns4Var = new ns4(new byte[128]);
        this.a = ns4Var;
        this.b = new os4(ns4Var.a);
        this.f = 0;
        this.l = C.TIME_UNSET;
        this.c = str;
    }

    /* JADX WARN: Code duplicated, block: B:123:0x01f0  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // yads.zm2
    public final void a(os4 os4Var) {
        int i;
        int i2;
        int i3;
        String str;
        int iA;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        if (this.e == null) {
            defpackage.ud.g();
            return;
        }
        while (true) {
            int i11 = os4Var.c - os4Var.b;
            if (i11 <= 0) {
                return;
            }
            int i12 = this.f;
            if (i12 == 0) {
                while (os4Var.c - os4Var.b > 0) {
                    if (this.h) {
                        int iK = os4Var.k();
                        if (iK == 119) {
                            this.h = false;
                            this.f = 1;
                            byte[] bArr = this.b.a;
                            bArr[0] = 11;
                            bArr[1] = 119;
                            this.g = 2;
                            break;
                        }
                        this.h = iK == 11;
                    } else {
                        this.h = os4Var.k() == 11;
                    }
                }
            } else if (i12 == 1) {
                byte[] bArr2 = this.b.a;
                int iMin = Math.min(i11, 128 - this.g);
                os4Var.a(bArr2, this.g, iMin);
                int i13 = this.g + iMin;
                this.g = i13;
                if (i13 == 128) {
                    this.a.b(0);
                    ns4 ns4Var = this.a;
                    int iD = ns4Var.d();
                    ns4Var.c(40);
                    Object[] objArr = ns4Var.a(5) > 10;
                    ns4Var.b(iD);
                    int i14 = -1;
                    if (objArr == true) {
                        ns4Var.c(16);
                        int iA2 = ns4Var.a(2);
                        if (iA2 == 0) {
                            i14 = 0;
                        } else if (iA2 == 1) {
                            i14 = 1;
                        } else if (iA2 == 2) {
                            i14 = 2;
                        }
                        ns4Var.c(3);
                        iA = (ns4Var.a(11) + 1) * 2;
                        int iA3 = ns4Var.a(2);
                        if (iA3 == 3) {
                            i6 = f0.c[ns4Var.a(2)];
                            i4 = 3;
                            i5 = 6;
                        } else {
                            int iA4 = ns4Var.a(2);
                            i4 = iA4;
                            i5 = f0.a[iA4];
                            i6 = f0.b[iA3];
                        }
                        i3 = i5 * 256;
                        int iA5 = ns4Var.a(3);
                        boolean zE = ns4Var.e();
                        i2 = f0.d[iA5] + (zE ? 1 : 0);
                        ns4Var.c(10);
                        if (ns4Var.e()) {
                            ns4Var.c(8);
                        }
                        if (iA5 == 0) {
                            ns4Var.c(5);
                            if (ns4Var.e()) {
                                ns4Var.c(8);
                            }
                        }
                        if (i14 == 1 && ns4Var.e()) {
                            ns4Var.c(16);
                        }
                        if (ns4Var.e()) {
                            if (iA5 > 2) {
                                ns4Var.c(2);
                            }
                            if ((iA5 & 1) == 0 || iA5 <= 2) {
                                i8 = 6;
                            } else {
                                i8 = 6;
                                ns4Var.c(6);
                            }
                            if ((iA5 & 4) != 0) {
                                ns4Var.c(i8);
                            }
                            if (zE && ns4Var.e()) {
                                ns4Var.c(5);
                            }
                            if (i14 == 0) {
                                if (ns4Var.e()) {
                                    i9 = 6;
                                    ns4Var.c(6);
                                } else {
                                    i9 = 6;
                                }
                                if (iA5 == 0 && ns4Var.e()) {
                                    ns4Var.c(i9);
                                }
                                if (ns4Var.e()) {
                                    ns4Var.c(i9);
                                }
                                int i15 = 2;
                                int iA6 = ns4Var.a(2);
                                if (iA6 == 1) {
                                    ns4Var.c(5);
                                } else {
                                    if (iA6 == 2) {
                                        ns4Var.c(12);
                                    } else if (iA6 == 3) {
                                        int iA7 = ns4Var.a(5);
                                        if (ns4Var.e()) {
                                            ns4Var.c(5);
                                            if (ns4Var.e()) {
                                                ns4Var.c(4);
                                            }
                                            if (ns4Var.e()) {
                                                ns4Var.c(4);
                                            }
                                            if (ns4Var.e()) {
                                                ns4Var.c(4);
                                            }
                                            if (ns4Var.e()) {
                                                ns4Var.c(4);
                                            }
                                            if (ns4Var.e()) {
                                                ns4Var.c(4);
                                            }
                                            if (ns4Var.e()) {
                                                ns4Var.c(4);
                                            }
                                            if (ns4Var.e()) {
                                                ns4Var.c(4);
                                            }
                                            if (ns4Var.e()) {
                                                if (ns4Var.e()) {
                                                    ns4Var.c(4);
                                                }
                                                if (ns4Var.e()) {
                                                    ns4Var.c(4);
                                                }
                                            }
                                        }
                                        if (ns4Var.e()) {
                                            ns4Var.c(5);
                                            if (ns4Var.e()) {
                                                ns4Var.c(7);
                                                if (ns4Var.e()) {
                                                    i10 = 8;
                                                    ns4Var.c(8);
                                                } else {
                                                    i10 = 8;
                                                }
                                            } else {
                                                i10 = 8;
                                            }
                                        } else {
                                            i10 = 8;
                                        }
                                        ns4Var.c((iA7 + 2) * i10);
                                        if (ns4Var.c != 0) {
                                            ns4Var.c = 0;
                                            ns4Var.b++;
                                            ns4Var.a();
                                        }
                                    }
                                    i15 = 2;
                                }
                                if (iA5 < i15) {
                                    if (ns4Var.e()) {
                                        ns4Var.c(14);
                                    }
                                    if (iA5 == 0 && ns4Var.e()) {
                                        ns4Var.c(14);
                                    }
                                }
                                if (ns4Var.e()) {
                                    if (i4 == 0) {
                                        ns4Var.c(5);
                                    } else {
                                        for (int i16 = 0; i16 < i5; i16++) {
                                            if (ns4Var.e()) {
                                                ns4Var.c(5);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if (ns4Var.e()) {
                            ns4Var.c(5);
                            if (iA5 == 2) {
                                ns4Var.c(4);
                            }
                            if (iA5 >= 6) {
                                ns4Var.c(2);
                            }
                            if (ns4Var.e()) {
                                ns4Var.c(8);
                            }
                            if (iA5 == 0 && ns4Var.e()) {
                                ns4Var.c(8);
                            }
                            if (iA3 < 3) {
                                ns4Var.f();
                            }
                        }
                        if (i14 == 0 && i4 != 3) {
                            ns4Var.f();
                        }
                        if (i14 == 2 && (i4 == 3 || ns4Var.e())) {
                            i7 = 6;
                            ns4Var.c(6);
                        } else {
                            i7 = 6;
                        }
                        str = (ns4Var.e() && ns4Var.a(i7) == 1 && ns4Var.a(8) == 1) ? MimeTypes.AUDIO_E_AC3_JOC : MimeTypes.AUDIO_E_AC3;
                        i14 = i6;
                    } else {
                        ns4Var.c(32);
                        int iA8 = ns4Var.a(2);
                        String str2 = iA8 == 3 ? null : MimeTypes.AUDIO_AC3;
                        int iA9 = f0.a(iA8, ns4Var.a(6));
                        ns4Var.c(8);
                        int iA10 = ns4Var.a(3);
                        if ((iA10 & 1) == 0 || iA10 == 1) {
                            i = 2;
                        } else {
                            i = 2;
                            ns4Var.c(2);
                        }
                        if ((iA10 & 4) != 0) {
                            ns4Var.c(i);
                        }
                        if (iA10 == i) {
                            ns4Var.c(i);
                        }
                        i14 = iA8 < 3 ? f0.b[iA8] : -1;
                        i2 = f0.d[iA10] + (ns4Var.e() ? 1 : 0);
                        i3 = 1536;
                        str = str2;
                        iA = iA9;
                    }
                    int i17 = i2;
                    vz2 vz2Var = this.j;
                    if (vz2Var == null || i17 != vz2Var.z || i14 != vz2Var.A || !u56.a(str, vz2Var.m)) {
                        uz2 uz2Var = new uz2();
                        uz2Var.a = this.d;
                        uz2Var.k = str;
                        uz2Var.x = i17;
                        uz2Var.y = i14;
                        uz2Var.c = this.c;
                        vz2 vz2Var2 = new vz2(uz2Var);
                        this.j = vz2Var2;
                        this.e.a(vz2Var2);
                    }
                    this.k = iA;
                    this.i = (((long) i3) * 1000000) / ((long) this.j.A);
                    this.b.e(0);
                    this.e.a(128, this.b);
                    this.f = 2;
                }
            } else if (i12 == 2) {
                int iMin2 = Math.min(i11, this.k - this.g);
                this.e.a(iMin2, os4Var);
                int i18 = this.g + iMin2;
                this.g = i18;
                int i19 = this.k;
                if (i18 == i19) {
                    long j = this.l;
                    if (j != C.TIME_UNSET) {
                        this.e.a(j, 1, i19, 0, null);
                        this.l += this.i;
                    }
                    this.f = 0;
                }
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
        this.d = t26Var.e;
        t26Var.b();
        this.e = zs2Var.a(t26Var.d, 1);
    }

    @Override // yads.zm2
    public final void a(int i, long j) {
        if (j != C.TIME_UNSET) {
            this.l = j;
        }
    }

    @Override // yads.zm2
    public final void a() {
        this.f = 0;
        this.g = 0;
        this.h = false;
        this.l = C.TIME_UNSET;
    }
}
