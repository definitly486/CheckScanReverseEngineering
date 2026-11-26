package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class h25 implements kv5 {
    public final tq3 a;

    public h25(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final k25 a(ys4 ys4Var, k25 k25Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new k25(pq3.a(tr4VarB, jSONObject, "get", w36.c, zD, k25Var != null ? k25Var.a : null), pq3.a(tr4VarB, jSONObject, "name", zD, k25Var != null ? k25Var.b : null), pq3.b(tr4VarB, jSONObject, "new_value_variable_name", zD, k25Var != null ? k25Var.c : null), pq3.c(tr4VarB, jSONObject, "set", zD, k25Var != null ? k25Var.d : null, this.a.l1), pq3.a(tr4VarB, jSONObject, "value_type", j25.a, zD, k25Var != null ? k25Var.e : null, fd1.d, uq3.a));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
