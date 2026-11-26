package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ik0 extends as {
    public final hk0 e;

    public ik0(hk0 hk0Var, long j, long j2) {
        super(j, j2);
        this.e = hk0Var;
    }

    @Override // yads.ly3
    public final long a() {
        long j = this.d;
        if (j >= this.b && j <= this.c) {
            return this.e.a(j);
        }
        defpackage.qz0.e();
        return 0L;
    }

    @Override // yads.ly3
    public final long b() {
        long j = this.d;
        if (j < this.b || j > this.c) {
            defpackage.qz0.e();
            return 0L;
        }
        hk0 hk0Var = this.e;
        return hk0Var.d.a(j - hk0Var.f);
    }
}
