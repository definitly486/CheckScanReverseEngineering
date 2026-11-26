package yads;

import androidx.core.view.InputDeviceCompat;

/* JADX INFO: loaded from: classes6.dex */
public final class ph5 implements u26 {
    public final oh5 a;
    public final os4 b = new os4(32);
    public int c;
    public int d;
    public boolean e;
    public boolean f;

    public ph5(oh5 oh5Var) {
        this.a = oh5Var;
    }

    @Override // yads.u26
    public final void a(int i, os4 os4Var) {
        boolean z = (i & 1) != 0;
        int iK = z ? os4Var.b + os4Var.k() : -1;
        if (this.f) {
            if (!z) {
                return;
            }
            this.f = false;
            os4Var.e(iK);
            this.d = 0;
        }
        while (true) {
            int i2 = os4Var.c - os4Var.b;
            if (i2 <= 0) {
                return;
            }
            int i3 = this.d;
            if (i3 < 3) {
                if (i3 == 0) {
                    int iK2 = os4Var.k();
                    os4Var.e(os4Var.b - 1);
                    if (iK2 == 255) {
                        this.f = true;
                        return;
                    }
                }
                int iMin = Math.min(os4Var.c - os4Var.b, 3 - this.d);
                os4Var.a(this.b.a, this.d, iMin);
                int i4 = this.d + iMin;
                this.d = i4;
                if (i4 == 3) {
                    this.b.e(0);
                    this.b.d(3);
                    os4 os4Var2 = this.b;
                    os4Var2.e(os4Var2.b + 1);
                    int iK3 = this.b.k();
                    int iK4 = this.b.k();
                    this.e = (iK3 & 128) != 0;
                    int i5 = (((iK3 & 15) << 8) | iK4) + 3;
                    this.c = i5;
                    byte[] bArr = this.b.a;
                    if (bArr.length < i5) {
                        this.b.a(Math.min(InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(i5, bArr.length * 2)));
                    }
                }
            } else {
                int iMin2 = Math.min(i2, this.c - i3);
                os4Var.a(this.b.a, this.d, iMin2);
                int i6 = this.d + iMin2;
                this.d = i6;
                int i7 = this.c;
                if (i6 == i7) {
                    boolean z2 = this.e;
                    os4 os4Var3 = this.b;
                    if (z2) {
                        byte[] bArr2 = os4Var3.a;
                        int i8 = -1;
                        for (int i9 = 0; i9 < i7; i9++) {
                            i8 = u56.n[((i8 >>> 24) ^ (bArr2[i9] & 255)) & 255] ^ (i8 << 8);
                        }
                        int i10 = u56.a;
                        if (i8 != 0) {
                            this.f = true;
                            return;
                        }
                        this.b.d(this.c - 4);
                    } else {
                        os4Var3.d(i7);
                    }
                    this.b.e(0);
                    this.a.a(this.b);
                    this.d = 0;
                } else {
                    continue;
                }
            }
        }
    }

    @Override // yads.u26
    public final void a() {
        this.f = true;
    }

    @Override // yads.u26
    public final void a(vx5 vx5Var, zs2 zs2Var, t26 t26Var) {
        this.a.a(vx5Var, zs2Var, t26Var);
        this.f = true;
    }
}
