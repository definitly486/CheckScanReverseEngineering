package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class i02 implements kv5 {
    public final tq3 a;

    public i02(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final k02 a(ys4 ys4Var, k02 k02Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new k02(pq3.a(tr4VarB, jSONObject, "color", w36.f, zD, k02Var != null ? k02Var.a : null, bt4.a, uq3.a), pq3.a(tr4VarB, jSONObject, "shape", zD, k02Var != null ? k02Var.b : null, this.a.O6), pq3.b(tr4VarB, jSONObject, "stroke", zD, k02Var != null ? k02Var.c : null, this.a.E7));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
