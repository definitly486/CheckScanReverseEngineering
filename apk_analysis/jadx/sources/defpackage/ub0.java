package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ub0 implements pb0 {
    public final x80 a;
    public final hi0<String> b = hi0.i(new String());

    public ub0(x80 x80Var) {
        this.a = x80Var;
    }

    @Override // defpackage.pb0
    public final mz7<d41> a() {
        return this.a.a();
    }

    @Override // defpackage.pb0
    public final mz7<v99> b() {
        return this.a.b();
    }

    @Override // defpackage.pb0
    public final qp1 c() {
        return this.a.c();
    }

    @Override // defpackage.pb0
    public final qp1 d() {
        return this.a.d();
    }

    @Override // defpackage.pb0
    public final tb7 e() {
        return new tb7(new sb0(this, null));
    }

    @Override // defpackage.pb0
    public final hi0<String> f() {
        return this.b;
    }

    @Override // defpackage.pb0
    public final p08 g(String str) {
        mz7<ic> mz7VarH = this.a.h(new jc(str));
        y3 y3Var = new y3(tb0.f, 1);
        mz7VarH.getClass();
        return new p08(mz7VarH, y3Var);
    }

    @Override // defpackage.pb0
    public final mz7<a57<bw1>> h(r76 r76Var) {
        return this.a.e(r76Var);
    }

    @Override // defpackage.pb0
    public final e08 i() {
        mz7<a57<uc>> mz7VarI = this.a.i();
        qb0 qb0Var = new qb0(rb0.f, 0);
        mz7VarI.getClass();
        return new e08(mz7VarI, qb0Var);
    }

    @Override // defpackage.pb0
    public final qp1 j(xm1 xm1Var) {
        return this.a.g(xm1Var);
    }

    @Override // defpackage.pb0
    public final mz7 k() {
        return this.a.f(0);
    }
}
