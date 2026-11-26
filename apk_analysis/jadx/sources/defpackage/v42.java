package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class v42 implements t42 {
    public final h42 a;
    public final z32 b;

    public v42(h42 h42Var, z32 z32Var) {
        this.a = h42Var;
        this.b = z32Var;
    }

    @Override // defpackage.t42
    public final mz7<vl2> a(long j) {
        return this.a.a(j);
    }

    @Override // defpackage.t42
    public final mz7<n32> b(long j) {
        return this.a.b(j);
    }

    @Override // defpackage.t42
    public final mz7<n32> c(long j) {
        return this.a.c(j);
    }

    @Override // defpackage.t42
    public final mz7<b42> d(long j) {
        return this.a.d(j);
    }

    @Override // defpackage.t42
    public final p08 e(int i, long j) {
        mz7<cx3> mz7VarE = this.a.e(j, i, 10);
        jv jvVar = new jv(u42.f, 2);
        mz7VarE.getClass();
        return new p08(mz7VarE, jvVar);
    }

    @Override // defpackage.t42
    public final qp1 f(h63 h63Var) {
        return this.a.f(h63Var);
    }
}
