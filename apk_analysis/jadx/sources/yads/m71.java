package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class m71 implements qv5 {
    public final tq3 a;

    public m71(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        t71 t71Var = (t71) xq3Var;
        as2 as2VarA = qq3.a(ys4Var, t71Var.a, jSONObject, "data", w36.g);
        String str = (String) qq3.a(ys4Var, t71Var.b, jSONObject, "data_element_name");
        if (str == null) {
            str = "it";
        }
        zw2 zw2Var = t71Var.c;
        tq3 tq3Var = this.a;
        return new j71(as2VarA, str, qq3.a(ys4Var, zw2Var, jSONObject, "prototypes", tq3Var.i2, tq3Var.g2, n71.a));
    }
}
