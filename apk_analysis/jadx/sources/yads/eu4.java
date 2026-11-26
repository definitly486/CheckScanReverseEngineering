package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class eu4 implements u26 {
    public final zm2 a;
    public final ns4 b = new ns4(new byte[10]);
    public int c = 0;
    public int d;
    public vx5 e;
    public boolean f;
    public boolean g;
    public boolean h;
    public int i;
    public int j;
    public boolean k;
    public long l;

    public eu4(zm2 zm2Var) {
        this.a = zm2Var;
    }

    @Override // yads.u26
    public final void a(int i, os4 os4Var) {
        int i2;
        int i3;
        int i4;
        if (this.e == null) {
            defpackage.ud.g();
            return;
        }
        int i5 = -1;
        int i6 = 0;
        if ((i & 1) != 0) {
            int i7 = this.c;
            if (i7 != 0 && i7 != 1) {
                if (i7 == 2) {
                    sv3.d("PesReader", "Unexpected start indicator reading extended header");
                } else {
                    if (i7 != 3) {
                        defpackage.ud.g();
                        return;
                    }
                    if (this.j != -1) {
                        sv3.d("PesReader", "Unexpected start indicator: expected " + this.j + " more bytes");
                    }
                    this.a.b();
                }
            }
            this.c = 1;
            this.d = 0;
        }
        int i8 = i;
        while (true) {
            int i9 = os4Var.c;
            int i10 = os4Var.b;
            int i11 = i9 - i10;
            if (i11 <= 0) {
                return;
            }
            int i12 = this.c;
            if (i12 == 0) {
                i2 = i5;
                i3 = i6;
                os4Var.e(i11 + i10);
            } else if (i12 != 1) {
                if (i12 == 2) {
                    if (a(os4Var, this.b.a, Math.min(10, this.i)) && a(os4Var, (byte[]) null, this.i)) {
                        this.b.b(i6);
                        long jB = C.TIME_UNSET;
                        this.l = C.TIME_UNSET;
                        if (this.f) {
                            this.b.c(4);
                            long jA = ((long) this.b.a(3)) << 30;
                            this.b.c(1);
                            long jA2 = ((long) (this.b.a(15) << 15)) | jA;
                            this.b.c(1);
                            long jA3 = jA2 | ((long) this.b.a(15));
                            this.b.c(1);
                            if (!this.h && this.g) {
                                this.b.c(4);
                                long jA4 = ((long) this.b.a(3)) << 30;
                                this.b.c(1);
                                long jA5 = jA4 | ((long) (this.b.a(15) << 15));
                                this.b.c(1);
                                long jA6 = jA5 | ((long) this.b.a(15));
                                this.b.c(1);
                                this.e.b(jA6);
                                this.h = true;
                            }
                            jB = this.e.b(jA3);
                            this.l = jB;
                        }
                        i8 |= this.k ? 4 : 0;
                        this.a.a(i8, jB);
                        this.c = 3;
                        this.d = 0;
                        i6 = 0;
                        i5 = -1;
                    }
                } else {
                    if (i12 != 3) {
                        defpackage.ud.g();
                        return;
                    }
                    int i13 = this.j;
                    int i14 = i13 == i5 ? i6 : i11 - i13;
                    if (i14 > 0) {
                        i11 -= i14;
                        os4Var.d(i10 + i11);
                    }
                    this.a.a(os4Var);
                    int i15 = this.j;
                    if (i15 != i5) {
                        int i16 = i15 - i11;
                        this.j = i16;
                        if (i16 == 0) {
                            this.a.b();
                            this.c = 1;
                            this.d = i6;
                        }
                    }
                }
                i2 = i5;
                i3 = i6;
            } else {
                i3 = i6;
                if (a(os4Var, this.b.a, 9)) {
                    this.b.b(i3);
                    int iA = this.b.a(24);
                    if (iA != 1) {
                        qt3.a(iA, "Unexpected start code prefix: ", "PesReader");
                        this.j = -1;
                        i4 = 0;
                        i2 = -1;
                    } else {
                        this.b.c(8);
                        int iA2 = this.b.a(16);
                        this.b.c(5);
                        this.k = this.b.e();
                        this.b.c(2);
                        this.f = this.b.e();
                        this.g = this.b.e();
                        this.b.c(6);
                        int iA3 = this.b.a(8);
                        this.i = iA3;
                        if (iA2 == 0) {
                            this.j = -1;
                        } else {
                            int i17 = (iA2 - 3) - iA3;
                            this.j = i17;
                            if (i17 < 0) {
                                sv3.d("PesReader", "Found negative packet payload size: " + this.j);
                                i2 = -1;
                                this.j = -1;
                            }
                            i4 = 2;
                        }
                        i2 = -1;
                        i4 = 2;
                    }
                    this.c = i4;
                    i3 = 0;
                    this.d = 0;
                } else {
                    i2 = -1;
                }
            }
            i6 = i3;
            i5 = i2;
        }
    }

    @Override // yads.u26
    public final void a() {
        this.c = 0;
        this.d = 0;
        this.h = false;
        this.a.a();
    }

    @Override // yads.u26
    public final void a(vx5 vx5Var, zs2 zs2Var, t26 t26Var) {
        this.e = vx5Var;
        this.a.a(zs2Var, t26Var);
    }

    public final boolean a(os4 os4Var, byte[] bArr, int i) {
        int iMin = Math.min(os4Var.c - os4Var.b, i - this.d);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            os4Var.e(os4Var.b + iMin);
        } else {
            os4Var.a(bArr, this.d, iMin);
        }
        int i2 = this.d + iMin;
        this.d = i2;
        return i2 == i;
    }
}
