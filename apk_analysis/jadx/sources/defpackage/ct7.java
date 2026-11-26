package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ct7 extends r1<zs7<?>> {
    public long a = -1;
    public c31 b;

    @Override // defpackage.r1
    public final boolean a(p1 p1Var) {
        zs7 zs7Var = (zs7) p1Var;
        if (this.a >= 0) {
            return false;
        }
        long j = zs7Var.j;
        if (j < zs7Var.k) {
            zs7Var.k = j;
        }
        this.a = j;
        return true;
    }

    @Override // defpackage.r1
    public final e02[] b(p1 p1Var) {
        long j = this.a;
        this.a = -1L;
        this.b = null;
        return ((zs7) p1Var).w(j);
    }
}
