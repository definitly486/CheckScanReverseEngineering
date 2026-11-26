package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class za4 implements zm2 {
    public final os4 a;
    public final ab4 b;
    public final String c;
    public k06 d;
    public String e;
    public int f = 0;
    public int g;
    public boolean h;
    public boolean i;
    public long j;
    public int k;
    public long l;

    public za4(String str) {
        os4 os4Var = new os4(4);
        this.a = os4Var;
        os4Var.a[0] = -1;
        this.b = new ab4();
        this.l = C.TIME_UNSET;
        this.c = str;
    }

    @Override // yads.zm2
    public final void a(os4 os4Var) {
        if (this.d == null) {
            defpackage.ud.g();
            return;
        }
        while (true) {
            int i = os4Var.c;
            int i2 = os4Var.b;
            int i3 = i - i2;
            if (i3 <= 0) {
                return;
            }
            int i4 = this.f;
            if (i4 == 0) {
                byte[] bArr = os4Var.a;
                while (true) {
                    if (i2 >= i) {
                        os4Var.e(i);
                        break;
                    }
                    byte b = bArr[i2];
                    boolean z = (b & 255) == 255;
                    boolean z2 = this.i && (b & 224) == 224;
                    this.i = z;
                    if (z2) {
                        os4Var.e(i2 + 1);
                        this.i = false;
                        this.a.a[1] = bArr[i2];
                        this.g = 2;
                        this.f = 1;
                        break;
                    }
                    i2++;
                }
            } else if (i4 == 1) {
                int iMin = Math.min(i3, 4 - this.g);
                os4Var.a(this.a.a, this.g, iMin);
                int i5 = this.g + iMin;
                this.g = i5;
                if (i5 >= 4) {
                    this.a.e(0);
                    if (this.b.a(this.a.a())) {
                        ab4 ab4Var = this.b;
                        this.k = ab4Var.c;
                        if (!this.h) {
                            long j = ((long) ab4Var.g) * 1000000;
                            int i6 = ab4Var.d;
                            this.j = j / ((long) i6);
                            uz2 uz2Var = new uz2();
                            uz2Var.a = this.e;
                            uz2Var.k = ab4Var.b;
                            uz2Var.l = 4096;
                            uz2Var.x = ab4Var.e;
                            uz2Var.y = i6;
                            uz2Var.c = this.c;
                            this.d.a(new vz2(uz2Var));
                            this.h = true;
                        }
                        this.a.e(0);
                        this.d.a(4, this.a);
                        this.f = 2;
                    } else {
                        this.g = 0;
                        this.f = 1;
                    }
                }
            } else {
                if (i4 != 2) {
                    defpackage.ud.g();
                    return;
                }
                int iMin2 = Math.min(i3, this.k - this.g);
                this.d.a(iMin2, os4Var);
                int i7 = this.g + iMin2;
                this.g = i7;
                int i8 = this.k;
                if (i7 >= i8) {
                    long j2 = this.l;
                    if (j2 != C.TIME_UNSET) {
                        this.d.a(j2, 1, i8, 0, null);
                        this.l += this.j;
                    }
                    this.g = 0;
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
        this.e = t26Var.e;
        t26Var.b();
        this.d = zs2Var.a(t26Var.d, 1);
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
        this.i = false;
        this.l = C.TIME_UNSET;
    }
}
