package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class k71 implements ln0 {
    public final tq3 a;

    public k71(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "data", w36.g);
        String str = (String) wq3.a(ys4Var, jSONObject, "data_element_name");
        if (str == null) {
            str = "it";
        }
        return new j71(as2VarA, str, wq3.a(ys4Var, jSONObject, "prototypes", this.a.g2, n71.a));
    }
}
