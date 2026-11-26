package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class t61 implements qv5 {
    public final tq3 a;

    public t61(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final q61 a(ys4 ys4Var, v61 v61Var, JSONObject jSONObject) {
        as2 as2VarB = qq3.b(ys4Var, v61Var.a, jSONObject, "background_color", w36.f, bt4.a);
        zw2 zw2Var = v61Var.b;
        tq3 tq3Var = this.a;
        af1 af1Var = (af1) qq3.b(ys4Var, zw2Var, jSONObject, "radius", tq3Var.x3, tq3Var.v3);
        if (af1Var == null) {
            af1Var = u61.a;
        }
        zw2 zw2Var2 = v61Var.c;
        tq3 tq3Var2 = this.a;
        return new q61(as2VarB, af1Var, (l42) qq3.b(ys4Var, zw2Var2, jSONObject, "stroke", tq3Var2.F7, tq3Var2.D7));
    }
}
