package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class s01 implements kv5 {
    public final tq3 a;

    public s01(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final v01 a(ys4 ys4Var, v01 v01Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        u36 u36Var = w36.c;
        return new v01(pq3.a(tr4VarB, jSONObject, "path", u36Var, zD, v01Var != null ? v01Var.a : null, uq3.b, u01.a), pq3.a(tr4VarB, jSONObject, "value", zD, v01Var != null ? v01Var.b : null, this.a.Y8), pq3.a(tr4VarB, jSONObject, "variable_name", u36Var, zD, v01Var != null ? v01Var.c : null));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
