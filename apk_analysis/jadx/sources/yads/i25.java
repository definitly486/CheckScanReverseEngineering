package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class i25 implements qv5 {
    public final tq3 a;

    public i25(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final f25 a(ys4 ys4Var, k25 k25Var, JSONObject jSONObject) {
        as2 as2VarA = qq3.a(ys4Var, k25Var.a, jSONObject, "get", w36.c);
        String str = (String) qq3.a(k25Var.b, jSONObject, "name");
        String str2 = (String) qq3.a(ys4Var, k25Var.c, jSONObject, "new_value_variable_name");
        if (str2 == null) {
            m36 m36Var = j25.a;
            str2 = "new_value";
        }
        zw2 zw2Var = k25Var.d;
        tq3 tq3Var = this.a;
        return new f25(as2VarA, str, str2, qq3.c(ys4Var, zw2Var, jSONObject, "set", tq3Var.m1, tq3Var.k1), qq3.a(ys4Var, k25Var.e, jSONObject, "value_type", j25.a, fd1.d));
    }
}
