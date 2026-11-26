package yads;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class ii5 extends rb5 {
    public final cw i;
    public final gi5 j;
    public final byte[] k;
    public final lw l;

    public ii5(hi5 hi5Var, cw cwVar, gi5 gi5Var, byte[] bArr) {
        this.i = cwVar;
        this.j = gi5Var;
        this.k = bArr;
        this.l = new lw(cwVar, hi5Var.c, bArr, gi5Var);
    }

    @Override // yads.rb5
    public final void a() {
        this.l.j = true;
    }

    @Override // yads.rb5
    public final Object b() throws IOException {
        float f;
        this.l.a();
        gi5 gi5Var = this.j;
        if (gi5Var == null) {
            return null;
        }
        int i = gi5Var.e + 1;
        gi5Var.e = i;
        pk2 pk2Var = gi5Var.a;
        long j = gi5Var.b;
        long j2 = gi5Var.d;
        if (j == -1 || j == 0) {
            int i2 = gi5Var.c;
            f = i2 != 0 ? (i * 100.0f) / i2 : -1.0f;
        } else {
            f = (j2 * 100.0f) / j;
        }
        pk2Var.a(j, j2, f);
        return null;
    }
}
