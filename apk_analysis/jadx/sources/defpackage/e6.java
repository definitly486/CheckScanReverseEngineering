package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class e6 implements j5 {
    public final e3 a;
    public final vc9 b;
    public final jf6 c;

    public e6(e3 e3Var, vc9 vc9Var, jf6 jf6Var) {
        this.a = e3Var;
        this.b = vc9Var;
        this.c = jf6Var;
    }

    @Override // defpackage.j5
    public final e08 a() {
        mz7<a57<j59>> mz7VarA = this.a.a();
        r5 r5Var = new r5(v5.f, 0);
        mz7VarA.getClass();
        return new e08(mz7VarA, r5Var);
    }

    @Override // defpackage.j5
    public final mz7<t99> b() {
        return this.a.b();
    }

    @Override // defpackage.j5
    public final mz7<a57<Long>> c() {
        return this.a.c();
    }

    @Override // defpackage.j5
    public final qp1 d(fm2 fm2Var) {
        return this.a.d(fm2Var);
    }

    @Override // defpackage.j5
    public final a75<va3> e() {
        return this.a.e();
    }

    @Override // defpackage.j5
    public final p08 f() {
        mz7<cq> mz7VarF = this.a.f();
        p5 p5Var = new p5(w5.f, 0);
        mz7VarF.getClass();
        return new p08(mz7VarF, p5Var);
    }

    @Override // defpackage.j5
    public final mz7<a57<j59>> g() {
        return this.a.m();
    }

    @Override // defpackage.j5
    public final qp1 h(kp3 kp3Var) {
        return this.a.h(kp3Var);
    }

    @Override // defpackage.j5
    public final p08 i() {
        mz7<jp3> mz7VarI = this.a.i();
        n5 n5Var = new n5(u5.g);
        mz7VarI.getClass();
        return new p08(mz7VarI, n5Var);
    }

    @Override // defpackage.j5
    public final p08 j(String str) {
        str.getClass();
        mz7<a57<b57>> mz7VarS = this.a.s(new y79(str));
        o5 o5Var = new o5(d6.f, 0);
        mz7VarS.getClass();
        return new p08(mz7VarS, o5Var);
    }

    @Override // defpackage.j5
    public final p08 k(String str) {
        mz7<a57<j59>> mz7VarN = this.a.n(new qy8(str));
        q5 q5Var = new q5(b6.f, 0);
        mz7VarN.getClass();
        return new p08(mz7VarN, q5Var);
    }

    @Override // defpackage.j5
    public final p08 l(String str, String str2) {
        mz7<a57<h3>> mz7VarR = this.a.r(new w99(str, str2));
        s5 s5Var = new s5(new a6(1), 0);
        mz7VarR.getClass();
        return new p08(mz7VarR, s5Var);
    }

    @Override // defpackage.j5
    public final Object m(y90 y90Var) {
        return this.a.q(y90Var);
    }

    @Override // defpackage.j5
    public final mz7<a57<b57>> n(String str) {
        str.getClass();
        return this.a.o(new f89(str));
    }

    @Override // defpackage.j5
    public final qp1 o(String str) {
        str.getClass();
        return this.a.j(str);
    }

    @Override // defpackage.j5
    public final p08 p() {
        mz7<a57<String>> mz7VarP = this.a.p(true);
        l5 l5Var = new l5(x5.f, 0);
        mz7VarP.getClass();
        return new p08(mz7VarP, l5Var);
    }

    @Override // defpackage.j5
    public final qp1 q(ArrayList arrayList) {
        return this.a.l(arrayList);
    }

    @Override // defpackage.j5
    public final u08 r() {
        mz7<a57<b57>> mz7VarA = this.b.a(20140579);
        m5 m5Var = new m5(z5.f);
        mz7VarA.getClass();
        p08 p08Var = new p08(mz7VarA, m5Var);
        wc9 wc9Var = wc9.Supported;
        nq5.a(wc9Var, "value is null");
        return new u08(p08Var, null, wc9Var);
    }

    @Override // defpackage.j5
    public final mz7<a57<ba9>> s() {
        return this.a.k();
    }
}
