package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class j02 implements qv5 {
    public final tq3 a;

    public j02(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        k02 k02Var = (k02) xq3Var;
        as2 as2VarA = qq3.a(ys4Var, k02Var.a, jSONObject, "color", w36.f, bt4.a);
        zw2 zw2Var = k02Var.b;
        tq3 tq3Var = this.a;
        f02 f02Var = (f02) qq3.a(ys4Var, zw2Var, jSONObject, "shape", tq3Var.P6, tq3Var.N6);
        zw2 zw2Var2 = k02Var.c;
        tq3 tq3Var2 = this.a;
        return new g02(as2VarA, f02Var, (l42) qq3.b(ys4Var, zw2Var2, jSONObject, "stroke", tq3Var2.F7, tq3Var2.D7));
    }
}
