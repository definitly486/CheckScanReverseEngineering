package yads;

import androidx.media3.common.C;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class cy2 implements ws2 {
    public zs2 e;
    public k06 f;
    public h84 h;
    public ky2 i;
    public int j;
    public int k;
    public by2 l;
    public int m;
    public long n;
    public final byte[] a = new byte[42];
    public final os4 b = new os4(new byte[32768], 0);
    public final boolean c = false;
    public final dy2 d = new dy2();
    public int g = 0;

    /* JADX WARN: Code duplicated, block: B:131:0x02c6  */
    @Override // yads.ws2
    public final int a(xs2 xs2Var, qx4 qx4Var) throws xs4 {
        int i;
        h84 h84Var;
        ky2 ky2Var;
        sh5 rh5Var;
        boolean z;
        long j;
        boolean zA;
        boolean z2;
        int i2 = this.g;
        h84 h84Var2 = null;
        if (i2 == 0) {
            boolean z3 = this.c;
            wk0 wk0Var = (wk0) xs2Var;
            wk0Var.f = 0;
            long j2 = wk0Var.d + ((long) 0);
            h84 h84VarA = new ob3().a(wk0Var, !z3 ? null : mb3.b);
            if (h84VarA != null && h84VarA.b.length != 0) {
                h84Var2 = h84VarA;
            }
            wk0Var.a((int) ((wk0Var.d + ((long) wk0Var.f)) - j2));
            this.h = h84Var2;
            this.g = 1;
            return 0;
        }
        if (i2 == 1) {
            byte[] bArr = this.a;
            wk0 wk0Var2 = (wk0) xs2Var;
            wk0Var2.b(bArr, 0, bArr.length, false);
            wk0Var2.f = 0;
            this.g = 2;
            return 0;
        }
        int i3 = 24;
        if (i2 == 2) {
            byte[] bArr2 = new byte[4];
            ((wk0) xs2Var).a(bArr2, 0, 4, false);
            if ((((((long) bArr2[2]) & 255) << 8) | ((((long) bArr2[0]) & 255) << 24) | ((((long) bArr2[1]) & 255) << 16) | (((long) bArr2[3]) & 255)) == 1716281667) {
                this.g = 3;
                return 0;
            }
            defpackage.e2.h("Failed to read FLAC stream marker.", null);
            return 0;
        }
        int i4 = 7;
        if (i2 == 3) {
            ky2 ky2Var2 = this.i;
            boolean z4 = false;
            while (!z4) {
                wk0 wk0Var3 = (wk0) xs2Var;
                wk0Var3.f = 0;
                ns4 ns4Var = new ns4(new byte[4]);
                wk0Var3.b(ns4Var.a, 0, 4, false);
                boolean zE = ns4Var.e();
                int iA = ns4Var.a(i4);
                int iA2 = ns4Var.a(i3) + 4;
                if (iA == 0) {
                    byte[] bArr3 = new byte[38];
                    wk0Var3.a(bArr3, 0, 38, false);
                    ky2Var2 = new ky2(bArr3, 4);
                    i = i3;
                } else {
                    if (ky2Var2 == null) {
                        defpackage.mi2.b();
                        return 0;
                    }
                    if (iA == 3) {
                        os4 os4Var = new os4(iA2);
                        wk0Var3.a(os4Var.a, 0, iA2, false);
                        i = i3;
                        ky2Var = new ky2(ky2Var2.a, ky2Var2.b, ky2Var2.c, ky2Var2.d, ky2Var2.e, ky2Var2.g, ky2Var2.h, ky2Var2.j, fy2.a(os4Var), ky2Var2.l);
                    } else {
                        i = i3;
                        if (iA == 4) {
                            os4 os4Var2 = new os4(iA2);
                            wk0Var3.a(os4Var2.a, 0, iA2, false);
                            os4Var2.e(os4Var2.b + 4);
                            h84 h84VarA2 = dj6.a(Arrays.asList(dj6.a(os4Var2, false, false).a));
                            h84 h84Var3 = ky2Var2.l;
                            if (h84Var3 != null) {
                                if (h84VarA2 == null) {
                                    h84VarA2 = h84Var3;
                                } else {
                                    g84[] g84VarArr = h84VarA2.b;
                                    if (g84VarArr.length == 0) {
                                        h84VarA2 = h84Var3;
                                    } else {
                                        h84VarA2 = new h84((g84[]) u56.a((Object[]) h84Var3.b, (Object[]) g84VarArr));
                                    }
                                }
                            }
                            ky2Var = new ky2(ky2Var2.a, ky2Var2.b, ky2Var2.c, ky2Var2.d, ky2Var2.e, ky2Var2.g, ky2Var2.h, ky2Var2.j, ky2Var2.k, h84VarA2);
                        } else if (iA == 6) {
                            os4 os4Var3 = new os4(iA2);
                            wk0Var3.a(os4Var3.a, 0, iA2, false);
                            os4Var3.e(os4Var3.b + 4);
                            int iA3 = os4Var3.a();
                            String strA = os4Var3.a(os4Var3.a(), az.a);
                            String strA2 = os4Var3.a(os4Var3.a(), az.c);
                            int iA4 = os4Var3.a();
                            int iA5 = os4Var3.a();
                            int iA6 = os4Var3.a();
                            int iA7 = os4Var3.a();
                            int iA8 = os4Var3.a();
                            byte[] bArr4 = new byte[iA8];
                            os4Var3.a(bArr4, 0, iA8);
                            h84 h84Var4 = new h84(oe3.a(new zu4(iA3, strA, strA2, iA4, iA5, iA6, iA7, bArr4)));
                            h84 h84Var5 = ky2Var2.l;
                            if (h84Var5 == null) {
                                h84Var = h84Var4;
                            } else {
                                g84[] g84VarArr2 = h84Var4.b;
                                h84Var = g84VarArr2.length == 0 ? h84Var5 : new h84((g84[]) u56.a((Object[]) h84Var5.b, (Object[]) g84VarArr2));
                            }
                            ky2Var2 = new ky2(ky2Var2.a, ky2Var2.b, ky2Var2.c, ky2Var2.d, ky2Var2.e, ky2Var2.g, ky2Var2.h, ky2Var2.j, ky2Var2.k, h84Var);
                        } else {
                            wk0Var3.a(iA2);
                        }
                    }
                    ky2Var2 = ky2Var;
                }
                int i5 = u56.a;
                this.i = ky2Var2;
                z4 = zE;
                i3 = i;
                i4 = 7;
            }
            this.i.getClass();
            this.j = Math.max(this.i.c, 6);
            k06 k06Var = this.f;
            int i6 = u56.a;
            k06Var.a(this.i.a(this.a, this.h));
            this.g = 4;
            return 0;
        }
        long j3 = 0;
        if (i2 == 4) {
            wk0 wk0Var4 = (wk0) xs2Var;
            wk0Var4.f = 0;
            byte[] bArr5 = new byte[2];
            wk0Var4.b(bArr5, 0, 2, false);
            int i7 = (bArr5[1] & 255) | ((bArr5[0] & 255) << 8);
            if ((i7 >> 2) != 16382) {
                wk0Var4.f = 0;
                defpackage.e2.h("First frame does not start with sync code.", null);
                return 0;
            }
            wk0Var4.f = 0;
            this.k = i7;
            zs2 zs2Var = this.e;
            int i8 = u56.a;
            long j4 = wk0Var4.d;
            long j5 = wk0Var4.c;
            this.i.getClass();
            ky2 ky2Var3 = this.i;
            if (ky2Var3.k != null) {
                rh5Var = new iy2(ky2Var3, j4);
            } else if (j5 == -1 || ky2Var3.j <= 0) {
                long j6 = ky2Var3.j;
                rh5Var = new rh5(j6 == 0 ? C.TIME_UNSET : (j6 * 1000000) / ((long) ky2Var3.e), 0L);
            } else {
                by2 by2Var = new by2(ky2Var3, this.k, j4, j5);
                this.l = by2Var;
                rh5Var = by2Var.a;
            }
            zs2Var.a(rh5Var);
            this.g = 5;
            return 0;
        }
        if (i2 != 5) {
            defpackage.ud.g();
            return 0;
        }
        this.f.getClass();
        this.i.getClass();
        by2 by2Var2 = this.l;
        if (by2Var2 != null && by2Var2.c != null) {
            return by2Var2.a((wk0) xs2Var, qx4Var);
        }
        if (this.n == -1) {
            ky2 ky2Var4 = this.i;
            wk0 wk0Var5 = (wk0) xs2Var;
            wk0Var5.f = 0;
            wk0Var5.a(1, false);
            byte[] bArr6 = new byte[1];
            wk0Var5.b(bArr6, 0, 1, false);
            boolean z5 = (bArr6[0] & 1) == 1;
            wk0Var5.a(2, false);
            i4 = z5 ? 7 : 6;
            os4 os4Var4 = new os4(i4);
            byte[] bArr7 = os4Var4.a;
            int i9 = 0;
            while (i9 < i4) {
                int iD = wk0Var5.d(bArr7, i9, i4 - i9);
                if (iD == -1) {
                    break;
                }
                i9 += iD;
            }
            os4Var4.d(i9);
            wk0Var5.f = 0;
            try {
                long jQ = os4Var4.q();
                if (!z5) {
                    jQ *= (long) ky2Var4.b;
                }
                j3 = jQ;
                z2 = true;
            } catch (NumberFormatException unused) {
                z2 = false;
            }
            if (!z2) {
                throw new xs4(null, null, true, 1);
            }
            this.n = j3;
        } else {
            os4 os4Var5 = this.b;
            int i10 = os4Var5.c;
            if (i10 < 32768) {
                int iC = ((wk0) xs2Var).c(os4Var5.a, i10, 32768 - i10);
                z = iC == -1;
                os4 os4Var6 = this.b;
                if (!z) {
                    os4Var6.d(i10 + iC);
                } else if (os4Var6.c - os4Var6.b == 0) {
                    long j7 = this.n * 1000000;
                    ky2 ky2Var5 = this.i;
                    int i11 = u56.a;
                    this.f.a(j7 / ((long) ky2Var5.e), 1, this.m, 0, null);
                    return -1;
                }
            } else {
                z = false;
            }
            os4 os4Var7 = this.b;
            int i12 = os4Var7.b;
            int i13 = this.m;
            int i14 = this.j;
            if (i13 < i14) {
                os4Var7.e(os4Var7.b + Math.min(i14 - i13, os4Var7.c - i12));
            }
            os4 os4Var8 = this.b;
            this.i.getClass();
            int i15 = os4Var8.b;
            while (true) {
                if (i15 > os4Var8.c - 16) {
                    if (z) {
                        while (true) {
                            int i16 = os4Var8.c;
                            if (i15 <= i16 - this.j) {
                                os4Var8.e(i15);
                                try {
                                    zA = ey2.a(os4Var8, this.i, this.k, this.d);
                                } catch (IndexOutOfBoundsException unused2) {
                                    zA = false;
                                }
                                if (os4Var8.b > os4Var8.c) {
                                    zA = false;
                                }
                                if (zA) {
                                    os4Var8.e(i15);
                                    j = this.d.a;
                                    break;
                                }
                                i15++;
                            } else {
                                os4Var8.e(i16);
                            }
                        }
                    } else {
                        os4Var8.e(i15);
                    }
                    j = -1;
                    break;
                }
                os4Var8.e(i15);
                if (ey2.a(os4Var8, this.i, this.k, this.d)) {
                    os4Var8.e(i15);
                    j = this.d.a;
                    break;
                }
                i15++;
            }
            os4 os4Var9 = this.b;
            int i17 = os4Var9.b - i12;
            os4Var9.e(i12);
            this.f.a(i17, this.b);
            int i18 = this.m + i17;
            this.m = i18;
            if (j != -1) {
                long j8 = this.n * 1000000;
                ky2 ky2Var6 = this.i;
                int i19 = u56.a;
                this.f.a(j8 / ((long) ky2Var6.e), 1, i18, 0, null);
                this.m = 0;
                this.n = j;
            }
            os4 os4Var10 = this.b;
            int i20 = os4Var10.c;
            int i21 = os4Var10.b;
            int i22 = i20 - i21;
            if (i22 < 16) {
                byte[] bArr8 = os4Var10.a;
                System.arraycopy(bArr8, i21, bArr8, 0, i22);
                this.b.e(0);
                this.b.d(i22);
            }
        }
        return 0;
    }

    @Override // yads.ws2
    public final void release() {
    }

    @Override // yads.ws2
    public final boolean a(xs2 xs2Var) {
        wk0 wk0Var = (wk0) xs2Var;
        h84 h84VarA = new ob3().a(wk0Var, mb3.b);
        if (h84VarA != null) {
            int length = h84VarA.b.length;
        }
        byte[] bArr = new byte[4];
        wk0Var.b(bArr, 0, 4, false);
        return (((((((long) bArr[0]) & 255) << 24) | ((((long) bArr[1]) & 255) << 16)) | ((((long) bArr[2]) & 255) << 8)) | (255 & ((long) bArr[3]))) == 1716281667;
    }

    @Override // yads.ws2
    public final void a(zs2 zs2Var) {
        this.e = zs2Var;
        this.f = zs2Var.a(0, 1);
        zs2Var.a();
    }

    public static ws2[] a() {
        return new ws2[]{new cy2()};
    }

    @Override // yads.ws2
    public final void a(long j, long j2) {
        if (j == 0) {
            this.g = 0;
        } else {
            by2 by2Var = this.l;
            if (by2Var != null) {
                by2Var.a(j2);
            }
        }
        this.n = j2 != 0 ? -1L : 0L;
        this.m = 0;
        this.b.c(0);
    }
}
