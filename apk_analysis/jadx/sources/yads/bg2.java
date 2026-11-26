package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class bg2 implements qv5 {
    public final tq3 a;

    public bg2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final uf2 a(ys4 ys4Var, lg2 lg2Var, JSONObject jSONObject) {
        if (lg2Var instanceof jg2) {
            xr5 xr5Var = (xr5) this.a.ba.getValue();
            yr5 yr5Var = ((jg2) lg2Var).a;
            xr5Var.getClass();
            return new sf2(new ur5((String) qq3.a(yr5Var.a, jSONObject, "name"), qq3.a(ys4Var, yr5Var.b, jSONObject, "value", w36.c)));
        }
        if (lg2Var instanceof hg2) {
            bp4 bp4Var = (bp4) this.a.M9.getValue();
            cp4 cp4Var = ((hg2) lg2Var).a;
            bp4Var.getClass();
            return new qf2(new yo4((String) qq3.a(cp4Var.a, jSONObject, "name"), qq3.a(ys4Var, cp4Var.b, jSONObject, "value", w36.d, bt4.d)));
        }
        if (lg2Var instanceof gg2) {
            sm3 sm3Var = (sm3) this.a.G9.getValue();
            tm3 tm3Var = ((gg2) lg2Var).a;
            sm3Var.getClass();
            return new pf2(new pm3((String) qq3.a(tm3Var.a, jSONObject, "name"), qq3.a(ys4Var, tm3Var.b, jSONObject, "value", w36.b, bt4.e)));
        }
        if (lg2Var instanceof dg2) {
            su suVar = (su) this.a.l.getValue();
            tu tuVar = ((dg2) lg2Var).a;
            suVar.getClass();
            return new mf2(new pu((String) qq3.a(tuVar.a, jSONObject, "name"), qq3.a(ys4Var, tuVar.b, jSONObject, "value", w36.a, bt4.c)));
        }
        if (lg2Var instanceof eg2) {
            w30 w30Var = (w30) this.a.r.getValue();
            x30 x30Var = ((eg2) lg2Var).a;
            w30Var.getClass();
            return new nf2(new t30((String) qq3.a(x30Var.a, jSONObject, "name"), qq3.a(ys4Var, x30Var.b, jSONObject, "value", w36.f, bt4.a)));
        }
        if (lg2Var instanceof kg2) {
            n56 n56Var = (n56) this.a.ha.getValue();
            o56 o56Var = ((kg2) lg2Var).a;
            n56Var.getClass();
            return new tf2(new k56((String) qq3.a(o56Var.a, jSONObject, "name"), qq3.a(ys4Var, o56Var.b, jSONObject, "value", w36.e, bt4.b)));
        }
        if (lg2Var instanceof fg2) {
            fp0 fp0Var = (fp0) this.a.D.getValue();
            gp0 gp0Var = ((fg2) lg2Var).a;
            fp0Var.getClass();
            return new of2(new cp0((String) qq3.a(gp0Var.a, jSONObject, "name"), qq3.a(ys4Var, gp0Var.b, jSONObject, "value", w36.h)));
        }
        if (lg2Var instanceof cg2) {
            mj mjVar = (mj) this.a.f.getValue();
            nj njVar = ((cg2) lg2Var).a;
            mjVar.getClass();
            return new lf2(new jj((String) qq3.a(njVar.a, jSONObject, "name"), qq3.a(ys4Var, njVar.b, jSONObject, "value", w36.g)));
        }
        if (lg2Var instanceof ig2) {
            return new rf2(((i25) this.a.S9.getValue()).a(ys4Var, ((ig2) lg2Var).a, jSONObject));
        }
        defpackage.me0.e();
        return null;
    }
}
