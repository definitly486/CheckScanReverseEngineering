package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class zd1 implements qv5 {
    public final tq3 a;

    public zd1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final wd1 a(ys4 ys4Var, he1 he1Var, JSONObject jSONObject) {
        if (he1Var instanceof fe1) {
            c51 c51Var = (c51) this.a.K1.getValue();
            e51 e51Var = ((fe1) he1Var).a;
            c51Var.getClass();
            return new ud1(new z41(qq3.a(ys4Var, e51Var.a, jSONObject, "radius", w36.b, bt4.e, d51.a)));
        }
        if (he1Var instanceof ge1) {
            ((de1) this.a.i3.getValue()).getClass();
            return new vd1(new ae1());
        }
        defpackage.me0.e();
        return null;
    }
}
