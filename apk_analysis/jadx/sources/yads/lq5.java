package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class lq5 implements xs2 {
    public final wk0 a;
    public final long b;

    public lq5(wk0 wk0Var, long j) {
        this.a = wk0Var;
        if (wk0Var.d >= j) {
            this.b = j;
        } else {
            defpackage.mi2.b();
            throw null;
        }
    }

    @Override // yads.xs2
    public final boolean a(byte[] bArr, int i, int i2, boolean z) {
        return this.a.a(bArr, 0, i2, z);
    }

    @Override // yads.xs2
    public final boolean b(byte[] bArr, int i, int i2, boolean z) {
        return this.a.b(bArr, 0, i2, z);
    }

    @Override // yads.tc0
    public final int c(byte[] bArr, int i, int i2) {
        return this.a.c(bArr, i, i2);
    }

    @Override // yads.xs2
    public final long e() {
        wk0 wk0Var = this.a;
        return (wk0Var.d + ((long) wk0Var.f)) - this.b;
    }

    @Override // yads.xs2
    public final long f() {
        return this.a.d - this.b;
    }

    @Override // yads.xs2
    public final void c() {
        this.a.f = 0;
    }

    @Override // yads.xs2
    public final void a(int i) {
        this.a.a(i);
    }

    @Override // yads.xs2
    public final void b(byte[] bArr, int i, int i2) {
        this.a.a(bArr, i, i2, false);
    }

    @Override // yads.xs2
    public final void a(byte[] bArr, int i, int i2) {
        this.a.b(bArr, i, i2, false);
    }

    @Override // yads.xs2
    public final void b(int i) {
        this.a.a(i, false);
    }

    @Override // yads.xs2
    public final long a() {
        return this.a.c - this.b;
    }
}
