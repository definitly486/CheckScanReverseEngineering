package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class sv5 implements ll9 {
    public final bu0 a;
    public int b;
    public int c;

    public sv5(bu0 bu0Var, int i) {
        this.a = bu0Var;
        this.b = i;
    }

    @Override // defpackage.ll9
    public final int a() {
        return this.b;
    }

    @Override // defpackage.ll9
    public final void b(byte b) {
        this.a.A0(b);
        this.b--;
        this.c++;
    }

    @Override // defpackage.ll9
    public final int q() {
        return this.c;
    }

    @Override // defpackage.ll9
    public final void write(byte[] bArr, int i, int i2) {
        this.a.write(bArr, i, i2);
        this.b -= i2;
        this.c += i2;
    }
}
