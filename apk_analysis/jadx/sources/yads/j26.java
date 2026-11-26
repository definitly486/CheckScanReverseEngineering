package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class j26 {
    public final byte[] a = new byte[10];
    public boolean b;
    public int c;
    public long d;
    public int e;
    public int f;
    public int g;

    public final void a(xs2 xs2Var) {
        if (this.b) {
            return;
        }
        int i = 0;
        xs2Var.a(this.a, 0, 10);
        xs2Var.c();
        byte[] bArr = this.a;
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b = bArr[7];
            if ((b & 254) == 186) {
                i = 40 << ((bArr[((b & 255) == 187 ? 1 : 0) != 0 ? '\t' : '\b'] >> 4) & 7);
            }
        }
        if (i == 0) {
            return;
        }
        this.b = true;
    }

    public final void a(k06 k06Var, long j, int i, int i2, int i3, j06 j06Var) {
        if (this.g <= i2 + i3) {
            if (this.b) {
                int i4 = this.c;
                int i5 = i4 + 1;
                this.c = i5;
                if (i4 == 0) {
                    this.d = j;
                    this.e = i;
                    this.f = 0;
                }
                int i6 = this.f + i2;
                this.f = i6;
                this.g = i3;
                if (i5 < 16 || i5 <= 0) {
                    return;
                }
                k06Var.a(this.d, this.e, i6, i3, j06Var);
                this.c = 0;
                return;
            }
            return;
        }
        defpackage.ah.f("TrueHD chunk samples must be contiguous in the sample queue.");
    }
}
