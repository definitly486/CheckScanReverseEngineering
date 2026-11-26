package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class r92 implements qv5 {
    public final tq3 a;

    public r92(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        t92 t92Var = (t92) xq3Var;
        as2 as2VarB = qq3.b(ys4Var, t92Var.a, jSONObject, "corner_radius", w36.b, bt4.e, s92.a);
        zw2 zw2Var = t92Var.b;
        tq3 tq3Var = this.a;
        return new o92(as2VarB, (l42) qq3.b(ys4Var, zw2Var, jSONObject, "stroke", tq3Var.F7, tq3Var.D7));
    }
}
