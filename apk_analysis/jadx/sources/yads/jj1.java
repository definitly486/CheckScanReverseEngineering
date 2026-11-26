package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class jj1 implements qv5 {
    public final tq3 a;

    public jj1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final gj1 a(ys4 ys4Var, mj1 mj1Var, JSONObject jSONObject) {
        if (!(mj1Var instanceof kj1)) {
            if (mj1Var instanceof lj1) {
                return new fj1(((i42) this.a.t7.getValue()).a(ys4Var, ((lj1) mj1Var).a, jSONObject));
            }
            defpackage.me0.e();
            return null;
        }
        xb1 xb1Var = (xb1) this.a.K2.getValue();
        zb1 zb1Var = ((kj1) mj1Var).a;
        xb1Var.getClass();
        zw2 zw2Var = zb1Var.a;
        tq3 tq3Var = xb1Var.a;
        af1 af1Var = (af1) qq3.b(ys4Var, zw2Var, jSONObject, "space_between_centers", tq3Var.x3, tq3Var.v3);
        if (af1Var == null) {
            af1Var = yb1.a;
        }
        return new ej1(new ub1(af1Var));
    }
}
