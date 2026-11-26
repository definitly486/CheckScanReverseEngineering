package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class gl7 {
    public final byte[] a;
    public int b;
    public int c;
    public boolean d;
    public final boolean e;
    public gl7 f;
    public gl7 g;

    public gl7(byte[] bArr, int i, int i2, boolean z) {
        bArr.getClass();
        this.a = bArr;
        this.b = i;
        this.c = i2;
        this.d = z;
        this.e = false;
    }

    public final gl7 a() {
        gl7 gl7Var = this.f;
        if (gl7Var == this) {
            gl7Var = null;
        }
        gl7 gl7Var2 = this.g;
        gl7Var2.getClass();
        gl7Var2.f = this.f;
        gl7 gl7Var3 = this.f;
        gl7Var3.getClass();
        gl7Var3.g = this.g;
        this.f = null;
        this.g = null;
        return gl7Var;
    }

    public final void b(gl7 gl7Var) {
        gl7Var.getClass();
        gl7Var.g = this;
        gl7Var.f = this.f;
        gl7 gl7Var2 = this.f;
        gl7Var2.getClass();
        gl7Var2.g = gl7Var;
        this.f = gl7Var;
    }

    public final gl7 c() {
        this.d = true;
        return new gl7(this.a, this.b, this.c, true);
    }

    public final void d(gl7 gl7Var, int i) {
        gl7Var.getClass();
        byte[] bArr = gl7Var.a;
        if (!gl7Var.e) {
            ah.f("only owner can write");
            return;
        }
        int i2 = gl7Var.c;
        int i3 = i2 + i;
        if (i3 > 8192) {
            if (gl7Var.d) {
                mi2.b();
                return;
            }
            int i4 = gl7Var.b;
            if (i3 - i4 > 8192) {
                mi2.b();
                return;
            }
            aq5.g(0, i4, i2, bArr, bArr);
            i2 = gl7Var.c - gl7Var.b;
            gl7Var.c = i2;
            gl7Var.b = 0;
        }
        int i5 = this.b;
        aq5.g(i2, i5, i5 + i, this.a, bArr);
        gl7Var.c += i;
        this.b += i;
    }

    public gl7() {
        this.a = new byte[8192];
        this.e = true;
        this.d = false;
    }
}
