package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class s61 implements kv5 {
    public final tq3 a;

    public s61(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final v61 a(ys4 ys4Var, v61 v61Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new v61(pq3.b(tr4VarB, jSONObject, "background_color", w36.f, zD, v61Var != null ? v61Var.a : null, bt4.a, uq3.a), pq3.b(tr4VarB, jSONObject, "radius", zD, v61Var != null ? v61Var.b : null, this.a.w3), pq3.b(tr4VarB, jSONObject, "stroke", zD, v61Var != null ? v61Var.c : null, this.a.E7));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
