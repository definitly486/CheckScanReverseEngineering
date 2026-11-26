package yads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;

/* JADX INFO: loaded from: classes6.dex */
public final class h0 implements zm2 {
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

    public h0(String str) {
        ns4 ns4Var = new ns4(new byte[16]);
        this.a = ns4Var;
        this.b = new os4(ns4Var.a);
        this.f = 0;
        this.g = 0;
        this.h = false;
        this.l = C.TIME_UNSET;
        this.c = str;
    }

    @Override // yads.zm2
    public final void a(os4 os4Var) {
        if (this.e == null) {
            defpackage.ud.g();
            return;
        }
        while (true) {
            int i = os4Var.c - os4Var.b;
            if (i <= 0) {
                return;
            }
            int i2 = this.f;
            if (i2 == 0) {
                while (os4Var.c - os4Var.b > 0) {
                    if (this.h) {
                        int iK = os4Var.k();
                        this.h = iK == 172;
                        if (iK == 64 || iK == 65) {
                            boolean z = iK == 65;
                            this.f = 1;
                            byte[] bArr = this.b.a;
                            bArr[0] = -84;
                            bArr[1] = (byte) (z ? 65 : 64);
                            this.g = 2;
                            break;
                        }
                    } else {
                        this.h = os4Var.k() == 172;
                    }
                }
            } else if (i2 == 1) {
                byte[] bArr2 = this.b.a;
                int iMin = Math.min(i, 16 - this.g);
                os4Var.a(bArr2, this.g, iMin);
                int i3 = this.g + iMin;
                this.g = i3;
                if (i3 == 16) {
                    this.a.b(0);
                    i0 i0VarA = j0.a(this.a);
                    vz2 vz2Var = this.j;
                    if (vz2Var == null || 2 != vz2Var.z || i0VarA.a != vz2Var.A || !MimeTypes.AUDIO_AC4.equals(vz2Var.m)) {
                        uz2 uz2Var = new uz2();
                        uz2Var.a = this.d;
                        uz2Var.k = MimeTypes.AUDIO_AC4;
                        uz2Var.x = 2;
                        uz2Var.y = i0VarA.a;
                        uz2Var.c = this.c;
                        vz2 vz2Var2 = new vz2(uz2Var);
                        this.j = vz2Var2;
                        this.e.a(vz2Var2);
                    }
                    this.k = i0VarA.b;
                    this.i = (((long) i0VarA.c) * 1000000) / ((long) this.j.A);
                    this.b.e(0);
                    this.e.a(16, this.b);
                    this.f = 2;
                }
            } else if (i2 == 2) {
                int iMin2 = Math.min(i, this.k - this.g);
                this.e.a(iMin2, os4Var);
                int i4 = this.g + iMin2;
                this.g = i4;
                int i5 = this.k;
                if (i4 == i5) {
                    long j = this.l;
                    if (j != C.TIME_UNSET) {
                        this.e.a(j, 1, i5, 0, null);
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
