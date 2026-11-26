package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ia implements aa {
    public final m9 a;
    public final iq4 b;

    public ia(m9 m9Var, iq4 iq4Var) {
        this.a = m9Var;
        this.b = iq4Var;
    }

    @Override // defpackage.aa
    public final mz7<fy5> a(long j) {
        return this.a.a(j);
    }

    @Override // defpackage.aa
    public final mz7<px5> b(long j) {
        return this.a.b(j);
    }

    @Override // defpackage.aa
    public final p08 e(int i, long j) {
        mz7<cx3> mz7VarE = this.a.e(j, i, 10);
        da daVar = new da(ga.f, 0);
        mz7VarE.getClass();
        return new p08(mz7VarE, daVar);
    }

    @Override // defpackage.aa
    public final mz7<vl2> f(long j) {
        return this.a.f(j);
    }

    @Override // defpackage.aa
    public final mz7<List<rr6>> g(long j) {
        return this.a.g(j);
    }

    @Override // defpackage.aa
    public final e08 h(String str, int i, Integer num, Integer num2) {
        str.getClass();
        mz7<a57<ah6>> mz7VarH = this.a.h(str, i, num, num2);
        ca caVar = new ca(fa.f);
        mz7VarH.getClass();
        return new e08(mz7VarH, caVar);
    }

    @Override // defpackage.aa
    public final mz7<List<kx5>> i(long j) {
        return this.a.k(j);
    }

    @Override // defpackage.aa
    public final mz7<rx5> j(long j) {
        return this.a.j(j);
    }

    @Override // defpackage.aa
    public final p08 k(String str) {
        mz7<ja> mz7VarA = this.b.a(new y9(str));
        ba baVar = new ba(ha.f);
        mz7VarA.getClass();
        return new p08(mz7VarA, baVar);
    }

    @Override // defpackage.aa
    public final qp1 l(i63 i63Var) {
        return this.a.i(i63Var);
    }
}
