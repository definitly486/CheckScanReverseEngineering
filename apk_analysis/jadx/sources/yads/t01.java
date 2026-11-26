package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class t01 implements qv5 {
    public final tq3 a;

    public t01(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        v01 v01Var = (v01) xq3Var;
        zw2 zw2Var = v01Var.a;
        u36 u36Var = w36.c;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "path", u01.a);
        zw2 zw2Var2 = v01Var.b;
        tq3 tq3Var = this.a;
        return new q01((oe2) qq3.a(ys4Var, zw2Var2, jSONObject, "value", tq3Var.Z8, tq3Var.X8), as2VarA, qq3.a(ys4Var, v01Var.c, jSONObject, "variable_name", u36Var));
    }
}
