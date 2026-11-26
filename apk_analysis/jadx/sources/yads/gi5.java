package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class gi5 implements kw {
    public final pk2 a;
    public final long b;
    public final int c;
    public long d;
    public int e;

    public gi5(pk2 pk2Var, long j, int i, long j2, int i2) {
        this.a = pk2Var;
        this.b = j;
        this.c = i;
        this.d = j2;
        this.e = i2;
    }

    @Override // yads.kw
    public final void a(long j, long j2, long j3) {
        float f;
        float f2;
        float f3;
        long j4 = this.d + j3;
        this.d = j4;
        pk2 pk2Var = this.a;
        long j5 = this.b;
        if (j5 == -1 || j5 == 0) {
            int i = this.c;
            if (i != 0) {
                f2 = this.e * 100.0f;
                f3 = i;
            } else {
                f = -1.0f;
            }
            pk2Var.a(j5, j4, f);
        }
        f2 = j4 * 100.0f;
        f3 = j5;
        f = f2 / f3;
        pk2Var.a(j5, j4, f);
    }
}
