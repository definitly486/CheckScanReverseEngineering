package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class yl2 implements zm2 {
    public final String b;
    public String c;
    public k06 d;
    public int f;
    public int g;
    public long h;
    public vz2 i;
    public int j;
    public final os4 a = new os4(new byte[18]);
    public int e = 0;
    public long k = C.TIME_UNSET;

    public yl2(String str) {
        this.b = str;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x00ea A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:42:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:44:0x0101  */
    /* JADX WARN: Code duplicated, block: B:45:0x0108  */
    @Override // yads.zm2
    public final void a(os4 os4Var) {
        int i;
        byte b;
        boolean z;
        int i2;
        int i3;
        byte b2;
        int i4;
        byte b3;
        int i5;
        byte b4;
        if (this.d == null) {
            defpackage.ud.g();
            return;
        }
        while (true) {
            int i6 = os4Var.c - os4Var.b;
            if (i6 <= 0) {
                return;
            }
            int i7 = this.e;
            if (i7 == 0) {
                while (os4Var.c - os4Var.b > 0) {
                    int i8 = this.g << 8;
                    this.g = i8;
                    int iK = i8 | os4Var.k();
                    this.g = iK;
                    if (iK == 2147385345 || iK == -25230976 || iK == 536864768 || iK == -14745368) {
                        byte[] bArr = this.a.a;
                        bArr[0] = (byte) ((iK >> 24) & 255);
                        bArr[1] = (byte) ((iK >> 16) & 255);
                        bArr[2] = (byte) ((iK >> 8) & 255);
                        bArr[3] = (byte) (iK & 255);
                        this.f = 4;
                        this.g = 0;
                        this.e = 1;
                        break;
                    }
                }
            } else if (i7 == 1) {
                byte[] bArr2 = this.a.a;
                int iMin = Math.min(i6, 18 - this.f);
                os4Var.a(bArr2, this.f, iMin);
                int i9 = this.f + iMin;
                this.f = i9;
                if (i9 == 18) {
                    byte[] bArr3 = this.a.a;
                    if (this.i == null) {
                        vz2 vz2VarA = zl2.a(bArr3, this.c, this.b);
                        this.i = vz2VarA;
                        this.d.a(vz2VarA);
                    }
                    byte b5 = bArr3[0];
                    if (b5 != -2) {
                        if (b5 == -1) {
                            i5 = ((bArr3[7] & 3) << 12) | ((bArr3[6] & 255) << 4);
                            b4 = bArr3[9];
                        } else if (b5 != 31) {
                            i = ((bArr3[5] & 3) << 12) | ((bArr3[6] & 255) << 4);
                            b = bArr3[7];
                        } else {
                            i5 = ((bArr3[7] & 255) << 4) | ((bArr3[6] & 3) << 12);
                            b4 = bArr3[8];
                        }
                        i2 = (i5 | ((b4 & 60) >> 2)) + 1;
                        z = true;
                        if (z) {
                            i2 = (i2 * 16) / 14;
                        }
                        this.j = i2;
                        if (b5 != -2) {
                            if (b5 != -1) {
                                i3 = (bArr3[4] & 7) << 4;
                                b3 = bArr3[7];
                            } else if (b5 != 31) {
                                i3 = (bArr3[4] & 1) << 6;
                                b2 = bArr3[5];
                            } else {
                                i3 = (bArr3[5] & 7) << 4;
                                b3 = bArr3[6];
                            }
                            i4 = b3 & 60;
                            this.h = (int) ((((long) ((((i4 >> 2) | i3) + 1) * 32)) * 1000000) / ((long) this.i.A));
                            this.a.e(0);
                            this.d.a(18, this.a);
                            this.e = 2;
                        } else {
                            i3 = (bArr3[5] & 1) << 6;
                            b2 = bArr3[4];
                        }
                        i4 = b2 & 252;
                        this.h = (int) ((((long) ((((i4 >> 2) | i3) + 1) * 32)) * 1000000) / ((long) this.i.A));
                        this.a.e(0);
                        this.d.a(18, this.a);
                        this.e = 2;
                    } else {
                        i = ((bArr3[4] & 3) << 12) | ((bArr3[7] & 255) << 4);
                        b = bArr3[6];
                    }
                    i2 = (i | ((b & 240) >> 4)) + 1;
                    z = false;
                    if (z) {
                        i2 = (i2 * 16) / 14;
                    }
                    this.j = i2;
                    if (b5 != -2) {
                        if (b5 != -1) {
                            i3 = (bArr3[4] & 7) << 4;
                            b3 = bArr3[7];
                        } else if (b5 != 31) {
                            i3 = (bArr3[4] & 1) << 6;
                            b2 = bArr3[5];
                        } else {
                            i3 = (bArr3[5] & 7) << 4;
                            b3 = bArr3[6];
                        }
                        i4 = b3 & 60;
                        this.h = (int) ((((long) ((((i4 >> 2) | i3) + 1) * 32)) * 1000000) / ((long) this.i.A));
                        this.a.e(0);
                        this.d.a(18, this.a);
                        this.e = 2;
                    } else {
                        i3 = (bArr3[5] & 1) << 6;
                        b2 = bArr3[4];
                    }
                    i4 = b2 & 252;
                    this.h = (int) ((((long) ((((i4 >> 2) | i3) + 1) * 32)) * 1000000) / ((long) this.i.A));
                    this.a.e(0);
                    this.d.a(18, this.a);
                    this.e = 2;
                }
            } else {
                if (i7 != 2) {
                    defpackage.ud.g();
                    return;
                }
                int iMin2 = Math.min(i6, this.j - this.f);
                this.d.a(iMin2, os4Var);
                int i10 = this.f + iMin2;
                this.f = i10;
                int i11 = this.j;
                if (i10 == i11) {
                    long j = this.k;
                    if (j != C.TIME_UNSET) {
                        this.d.a(j, 1, i11, 0, null);
                        this.k += this.h;
                    }
                    this.e = 0;
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
        this.c = t26Var.e;
        t26Var.b();
        this.d = zs2Var.a(t26Var.d, 1);
    }

    @Override // yads.zm2
    public final void a(int i, long j) {
        if (j != C.TIME_UNSET) {
            this.k = j;
        }
    }

    @Override // yads.zm2
    public final void a() {
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.k = C.TIME_UNSET;
    }
}
