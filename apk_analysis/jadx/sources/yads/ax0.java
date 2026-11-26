package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ax0 implements kv5 {
    public final tq3 a;

    public ax0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final lx0 a(ys4 ys4Var, lx0 lx0Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new lx0(pq3.a(tr4VarB, jSONObject, "container_id", w36.c, zD, lx0Var != null ? lx0Var.a : null), pq3.c(tr4VarB, jSONObject, "on_fail_actions", zD, lx0Var != null ? lx0Var.b : null, this.a.l1), pq3.c(tr4VarB, jSONObject, "on_success_actions", zD, lx0Var != null ? lx0Var.c : null, this.a.l1), pq3.a(tr4VarB, jSONObject, "request", zD, lx0Var != null ? lx0Var.d : null, this.a.T0));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
