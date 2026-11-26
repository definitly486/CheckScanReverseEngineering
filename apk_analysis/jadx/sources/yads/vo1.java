package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class vo1 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new xo1(pq3.b(tr4VarB, jSONObject, "height_variable_name", zD, null), pq3.b(tr4VarB, jSONObject, "width_variable_name", zD, null));
    }
}
