package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class g25 implements ln0 {
    public final tq3 a;

    public g25(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final f25 a(ys4 ys4Var, JSONObject jSONObject) {
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "get", w36.c);
        String str = (String) wq3.a("name", jSONObject);
        String str2 = (String) wq3.a(ys4Var, jSONObject, "new_value_variable_name");
        if (str2 == null) {
            m36 m36Var = j25.a;
            str2 = "new_value";
        }
        return new f25(as2VarA, str, str2, wq3.d(ys4Var, jSONObject, "set", this.a.k1), oq3.a(ys4Var, jSONObject, "value_type", j25.a, fd1.d, uq3.a));
    }
}
