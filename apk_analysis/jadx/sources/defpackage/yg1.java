package defpackage;

import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class yg1 {
    public final zg1 a;
    public final jv6 b;
    public final jf6 c;
    public final fu1 d;
    public final j67 e;
    public final xd1 f;
    public final z68 g;
    public final gy6 h;
    public final fu1 i;

    public yg1(zg1 zg1Var, jv6 jv6Var, jf6 jf6Var, fu1 fu1Var, j67 j67Var, xd1 xd1Var) {
        this.a = zg1Var;
        this.b = jv6Var;
        this.c = jf6Var;
        this.d = fu1Var;
        this.e = j67Var;
        this.f = xd1Var;
        z68 z68VarA = px.a(kx2.b);
        this.g = z68VarA;
        this.h = bf3.b(z68VarA);
        this.i = new fu1();
    }

    public final void a(hv6 hv6Var) {
        z68 z68Var;
        Object value;
        ArrayList arrayListV0;
        do {
            z68Var = this.g;
            value = z68Var.getValue();
            arrayListV0 = qn1.v0((List) value);
            arrayListV0.add(hv6Var);
        } while (!z68Var.a(value, arrayListV0));
    }

    public final void b() {
        zg1 zg1Var = this.a;
        h08 h08VarH = zg1Var.h();
        mz7<List<kg1>> mz7VarK = zg1Var.k();
        be beVar = new be(new rg1(this));
        mz7VarK.getClass();
        cp2 cp2VarG = yb8.g(h08VarH.c(new h08(mz7VarK, beVar)).i(ne7.c).f(ne7.d), null, null, 3);
        this.i.b(cp2VarG);
        this.d.b(cp2VarG);
    }

    public final zp1 c(hv6 hv6Var) {
        int i = 1;
        if (qa8.n(hv6Var.c()) != null) {
            jf6 jf6Var = this.e.a;
            jf6Var.d0(jf6Var.f() + 1);
            int iF = jf6Var.f();
            if (iF == 1) {
                kd.g.a.b.e.a();
            } else if (iF == 2) {
                kd.g.a.C0255a.e.a();
            } else if (iF == 4) {
                kd.b.e.a();
            }
        }
        mz7<Long> mz7VarD = this.a.d(hv6Var);
        jd jdVar = new jd(new m70(i, this, hv6Var));
        mz7VarD.getClass();
        return new zp1(new h08(mz7VarD, jdVar), new lg1(this, 0));
    }

    public final void d() {
        jf6 jf6Var = this.c;
        if (jf6Var.G0()) {
            if (jf6Var.e0() > 0) {
                jf6Var.E(jf6Var.e0() - 1);
                jf6Var.e0();
            } else {
                jf6Var.E(10);
                this.i.d();
            }
        }
    }

    public final rp1 e(long j, hv6 hv6Var, nl3 nl3Var) {
        qp1 qp1VarB = this.a.b(hv6Var.b(), "WAITING");
        e08 e08VarA = this.b.a(hv6Var);
        wg1 wg1Var = new wg1(nl3Var, this, j, hv6Var);
        int i = 1;
        return qp1VarB.c(new pq1(new h08(e08VarA, new up0(wg1Var, i)), new vp0(new xg1(nl3Var, 0), i)));
    }

    public final qp1 f(long j, hv6 hv6Var, a57<iv6> a57Var) {
        zg1 zg1Var = this.a;
        if (a57Var == null) {
            return zg1Var.j(new kg1(j, hv6Var.b(), "FNS_NOT_RESPONDING", new Gson().j(hv6Var), null));
        }
        String strB = hv6Var.b();
        nz6.a aVar = nz6.Companion;
        int i = a57Var.a.e;
        aVar.getClass();
        return zg1Var.j(new kg1(j, strB, nz6.a.a(i).name(), new Gson().j(hv6Var), new Gson().j(a57Var.b)));
    }
}
