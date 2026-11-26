package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class gj2 implements kv5 {
    public final tq3 a;

    public gj2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final ij2 a(ys4 ys4Var, ij2 ij2Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new ij2(pq3.b(tr4VarB, jSONObject, "constrained", w36.a, zD, ij2Var != null ? ij2Var.a : null, bt4.c, uq3.a), pq3.b(tr4VarB, jSONObject, "max_size", zD, ij2Var != null ? ij2Var.b : null, this.a.R6), pq3.b(tr4VarB, jSONObject, "min_size", zD, ij2Var != null ? ij2Var.c : null, this.a.R6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
