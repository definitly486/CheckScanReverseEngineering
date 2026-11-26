package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class e03 {
    public final k06 a;
    public l06 d;
    public cm0 e;
    public int f;
    public int g;
    public int h;
    public int i;
    public boolean l;
    public final e06 b = new e06();
    public final os4 c = new os4();
    public final os4 j = new os4(1);
    public final os4 k = new os4();

    public e03(k06 k06Var, l06 l06Var, cm0 cm0Var) {
        this.a = k06Var;
        this.d = l06Var;
        this.e = cm0Var;
        this.d = l06Var;
        this.e = cm0Var;
        k06Var.a(l06Var.a.f);
        b();
    }

    public final int a(int i, int i2) {
        os4 os4Var;
        d06 d06VarA = a();
        if (d06VarA == null) {
            return 0;
        }
        int length = d06VarA.d;
        if (length != 0) {
            os4Var = this.b.n;
        } else {
            byte[] bArr = d06VarA.e;
            int i3 = u56.a;
            os4 os4Var2 = this.k;
            int length2 = bArr.length;
            os4Var2.a = bArr;
            os4Var2.c = length2;
            os4Var2.b = 0;
            length = bArr.length;
            os4Var = os4Var2;
        }
        e06 e06Var = this.b;
        boolean z = e06Var.k && e06Var.l[this.f];
        boolean z2 = z || i2 != 0;
        os4 os4Var3 = this.j;
        os4Var3.a[0] = (byte) ((z2 ? 128 : 0) | length);
        os4Var3.e(0);
        this.a.a(1, this.j);
        this.a.a(length, os4Var);
        if (!z2) {
            return length + 1;
        }
        if (!z) {
            this.c.c(8);
            os4 os4Var4 = this.c;
            byte[] bArr2 = os4Var4.a;
            bArr2[0] = 0;
            bArr2[1] = 1;
            bArr2[2] = 0;
            bArr2[3] = (byte) (i2 & 255);
            bArr2[4] = (byte) ((i >> 24) & 255);
            bArr2[5] = (byte) ((i >> 16) & 255);
            bArr2[6] = (byte) ((i >> 8) & 255);
            bArr2[7] = (byte) (i & 255);
            this.a.a(8, os4Var4);
            return length + 9;
        }
        os4 os4Var5 = this.b.n;
        int iP = os4Var5.p();
        os4Var5.e(os4Var5.b - 2);
        int i4 = (iP * 6) + 2;
        if (i2 != 0) {
            this.c.c(i4);
            byte[] bArr3 = this.c.a;
            os4Var5.a(bArr3, 0, i4);
            int i5 = (((bArr3[2] & 255) << 8) | (bArr3[3] & 255)) + i2;
            bArr3[2] = (byte) ((i5 >> 8) & 255);
            bArr3[3] = (byte) (i5 & 255);
            os4Var5 = this.c;
        }
        this.a.a(i4, os4Var5);
        return length + 1 + i4;
    }

    public final void b() {
        e06 e06Var = this.b;
        e06Var.d = 0;
        e06Var.p = 0L;
        e06Var.q = false;
        e06Var.k = false;
        e06Var.o = false;
        e06Var.m = null;
        this.f = 0;
        this.h = 0;
        this.g = 0;
        this.i = 0;
        this.l = false;
    }

    public final d06 a() {
        if (!this.l) {
            return null;
        }
        e06 e06Var = this.b;
        cm0 cm0Var = e06Var.a;
        int i = u56.a;
        int i2 = cm0Var.a;
        d06 d06Var = e06Var.m;
        if (d06Var == null) {
            d06Var = this.d.a.k[i2];
        }
        if (d06Var == null || !d06Var.a) {
            return null;
        }
        return d06Var;
    }
}
