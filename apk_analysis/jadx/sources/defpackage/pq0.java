package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class pq0 implements rp0 {
    public final np0 a;
    public final jf6 b;
    public final hi0<Boolean> c;

    public pq0(np0 np0Var, jf6 jf6Var) {
        this.a = np0Var;
        this.b = jf6Var;
        this.c = hi0.i(Boolean.valueOf(jf6Var.p0()));
        hi0.i(j59.a);
    }

    @Override // defpackage.rp0
    public final tb7 a(int i, boolean z) {
        return new tb7(new oq0(this, i, z, null));
    }

    @Override // defpackage.rp0
    public final mz7 b(fc0 fc0Var, int i, Integer num) {
        fc0Var.getClass();
        return this.a.b(fc0Var, i, num);
    }

    @Override // defpackage.rp0
    public final p08 c(int i, Integer num) {
        mz7<j26<sx5>> mz7VarN = this.a.n(num, i, 10);
        xp0 xp0Var = new xp0(kq0.g, 0);
        mz7VarN.getClass();
        return new p08(mz7VarN, xp0Var);
    }

    @Override // defpackage.rp0
    public final p08 d(Integer num) {
        mz7<j26<iq6>> mz7VarP = this.a.p(num, 0, 10);
        zp0 zp0Var = new zp0(gq0.g, 0);
        mz7VarP.getClass();
        return new p08(mz7VarP, zp0Var);
    }

    @Override // defpackage.rp0
    public final void e() {
        jf6 jf6Var = this.b;
        jf6Var.f0();
        this.c.onNext(Boolean.valueOf(jf6Var.p0()));
    }

    @Override // defpackage.rp0
    public final p08 f(Integer num, Integer num2, int i, int i2) {
        mz7<j26<sx5>> mz7VarK = this.a.k(num, num2, i, i2, 10);
        vv vvVar = new vv(lq0.f, 1);
        mz7VarK.getClass();
        return new p08(mz7VarK, vvVar);
    }

    @Override // defpackage.rp0
    public final p08 g(int i, int i2) {
        mz7<j26<o81>> mz7VarG = this.a.g(i, i2, 10);
        yv yvVar = new yv(eq0.g, 1);
        mz7VarG.getClass();
        return new p08(mz7VarG, yvVar);
    }

    @Override // defpackage.rp0
    public final p08 h(String str, int i, Integer num) {
        mz7<j26<sx5>> mz7VarL = this.a.l(num, str, i, 10);
        aq0 aq0Var = new aq0(cq0.f, 0);
        mz7VarL.getClass();
        return new p08(mz7VarL, aq0Var);
    }

    @Override // defpackage.rp0
    public final qp1 i(int i, boolean z) {
        return this.a.o(new d63(i, z));
    }

    @Override // defpackage.rp0
    public final p08 j(String str, int i, Integer num) {
        mz7<j26<iq6>> mz7VarD = this.a.d(num, str, i, 10);
        yp0 yp0Var = new yp0(nq0.f, 0);
        mz7VarD.getClass();
        return new p08(mz7VarD, yp0Var);
    }

    @Override // defpackage.rp0
    public final p08 k(int i, Integer num) {
        mz7<j26<iq6>> mz7VarP = this.a.p(num, i, 10);
        up0 up0Var = new up0(fq0.f, 0);
        mz7VarP.getClass();
        return new p08(mz7VarP, up0Var);
    }

    @Override // defpackage.rp0
    public final p08 l(int i, Integer num) {
        mz7<j26<sx5>> mz7VarI = this.a.i(num, i, 10);
        sp0 sp0Var = new sp0(hq0.f, 0);
        mz7VarI.getClass();
        return new p08(mz7VarI, sp0Var);
    }

    @Override // defpackage.rp0
    public final hi0<Boolean> m() {
        return this.c;
    }

    @Override // defpackage.rp0
    public final tb7 n(int i, int i2) {
        return new tb7(new bq0(this, i2, i, null));
    }

    @Override // defpackage.rp0
    public final p08 o(int i, Integer num) {
        mz7<j26<iq6>> mz7VarH = this.a.h(num, i, 10);
        tp0 tp0Var = new tp0(iq0.g, 0);
        mz7VarH.getClass();
        return new p08(mz7VarH, tp0Var);
    }

    @Override // defpackage.rp0
    public final p08 p(Integer num, Integer num2, int i) {
        mz7<j26<iq6>> mz7VarE = this.a.e(num2, num, i, 10);
        vp0 vp0Var = new vp0(mq0.f, 0);
        mz7VarE.getClass();
        return new p08(mz7VarE, vp0Var);
    }

    @Override // defpackage.rp0
    public final p08 q(Integer num) {
        mz7<j26<iq6>> mz7VarH = this.a.h(num, 0, 10);
        q7 q7Var = new q7(jq0.g);
        mz7VarH.getClass();
        return new p08(mz7VarH, q7Var);
    }

    @Override // defpackage.rp0
    public final Object r(int i, mh9 mh9Var) {
        return this.a.c(fc0.BOTTOM_SHEET, i, null, mh9Var);
    }

    @Override // defpackage.rp0
    public final p08 s(int i) {
        mz7<j26<o81>> mz7VarG = this.a.g(i, 0, 100);
        wp0 wp0Var = new wp0(dq0.f, 0);
        mz7VarG.getClass();
        return new p08(mz7VarG, wp0Var);
    }

    @Override // defpackage.rp0
    public final qp1 t(int i, boolean z) {
        return this.a.j(new d63(i, z));
    }
}
