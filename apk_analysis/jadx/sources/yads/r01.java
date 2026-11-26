package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class r01 implements ln0 {
    public final tq3 a;

    public r01(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        u36 u36Var = w36.c;
        l66 l66Var = u01.a;
        y50 y50Var = oq3.a;
        return new q01((oe2) wq3.a(ys4Var, jSONObject, "value", this.a.X8), oq3.a(ys4Var, jSONObject, "path", u36Var, uq3.b, l66Var), oq3.a(ys4Var, jSONObject, "variable_name", u36Var));
    }
}
