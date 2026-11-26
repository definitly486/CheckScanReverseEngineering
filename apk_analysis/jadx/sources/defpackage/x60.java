package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class x60 implements n60 {
    public final a10 a;
    public final el0 b;
    public final zs7 c;
    public final zs7 d;

    public x60(a10 a10Var, el0 el0Var) {
        this.a = a10Var;
        this.b = el0Var;
        zs7 zs7VarB = bt7.b(1, 0, null, 6);
        this.c = zs7VarB;
        this.d = zs7VarB;
    }

    @Override // defpackage.n60
    public final Object A(boolean z, p40 p40Var) {
        return this.a.x(z, p40Var);
    }

    @Override // defpackage.n60
    public final Object B(o40 o40Var) {
        return this.a.g(o40Var);
    }

    @Override // defpackage.n60
    public final Object C(boolean z, l40 l40Var) {
        return this.a.k(z, l40Var);
    }

    @Override // defpackage.n60
    public final tb7 b(String str) {
        return new tb7(new v60(this, str, null));
    }

    @Override // defpackage.n60
    public final zs7 c() {
        return this.d;
    }

    @Override // defpackage.n60
    public final Object d(k40 k40Var) {
        return this.a.b(k40Var);
    }

    @Override // defpackage.n60
    public final Object e(boolean z, m40 m40Var) {
        return this.b.e(z, m40Var);
    }

    @Override // defpackage.n60
    public final de3 f(int i) {
        return s57.a(new tb7(new t60(this, i, null)));
    }

    @Override // defpackage.n60
    public final tb7 fetchAlfaIdLink() {
        return new tb7(new o60(this, null));
    }

    @Override // defpackage.n60
    public final Object g(int i, String str, Integer num, t73 t73Var) {
        return this.a.f(i, str, num, t73Var);
    }

    @Override // defpackage.n60
    public final Object h(c40 c40Var) {
        return this.a.s(c40Var);
    }

    @Override // defpackage.n60
    public final de3 i() {
        return s57.a(new tb7(new s60(this, null)));
    }

    @Override // defpackage.n60
    public final Object j(int i, u40 u40Var) {
        Object objI = this.b.i(new yv3(i), u40Var);
        return objI == a32.COROUTINE_SUSPENDED ? objI : j59.a;
    }

    @Override // defpackage.n60
    public final de3 k(long j) {
        return s57.a(new tb7(new w60(this, j, null)));
    }

    @Override // defpackage.n60
    public final Object l(boolean z, b40.e eVar) {
        return this.a.o(z, eVar);
    }

    @Override // defpackage.n60
    public final Object m(boolean z, g40 g40Var) {
        return this.a.q(z, g40Var);
    }

    @Override // defpackage.n60
    public final Object n(boolean z, r40 r40Var) {
        return this.a.u(z, r40Var);
    }

    @Override // defpackage.n60
    public final Object o(boolean z, e40 e40Var) {
        return this.a.h(z, e40Var);
    }

    @Override // defpackage.n60
    public final tb7 p(u37 u37Var, String str, String str2) {
        u37Var.getClass();
        str.getClass();
        str2.getClass();
        return new tb7(new u60(u37Var, this, str, str2, null));
    }

    @Override // defpackage.n60
    public final Object q(i40 i40Var) {
        return this.a.c(i40Var);
    }

    @Override // defpackage.n60
    public final tb7 r() {
        return new tb7(new p60(this, null));
    }

    @Override // defpackage.n60
    public final Object s(boolean z, f40 f40Var) {
        return this.a.j(z, f40Var);
    }

    @Override // defpackage.n60
    public final Object t(int i, t40 t40Var) {
        Object objT = this.a.t(i, t40Var);
        return objT == a32.COROUTINE_SUSPENDED ? objT : j59.a;
    }

    @Override // defpackage.n60
    public final void u() {
        this.c.e(j59.a);
    }

    @Override // defpackage.n60
    public final Object v(s40 s40Var) {
        return this.a.z(s40Var);
    }

    @Override // defpackage.n60
    public final Object w(m60 m60Var, boolean z, f02 f02Var) {
        return this.a.v(m60Var.a(), m60Var.b(), z, f02Var);
    }

    @Override // defpackage.n60
    public final Object x(boolean z, j40 j40Var) {
        return this.a.r(z, j40Var);
    }

    @Override // defpackage.n60
    public final de3 y(int i) {
        return s57.a(new tb7(new q60(this, i, null)));
    }

    @Override // defpackage.n60
    public final tb7 z(int i, int i2) {
        return new tb7(new r60(this, i, i2, null));
    }
}
