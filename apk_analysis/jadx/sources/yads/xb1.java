package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class xb1 implements qv5 {
    public final tq3 a;

    public xb1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        zw2 zw2Var = ((zb1) xq3Var).a;
        tq3 tq3Var = this.a;
        af1 af1Var = (af1) qq3.b(ys4Var, zw2Var, jSONObject, "space_between_centers", tq3Var.x3, tq3Var.v3);
        if (af1Var == null) {
            af1Var = yb1.a;
        }
        return new ub1(af1Var);
    }
}
