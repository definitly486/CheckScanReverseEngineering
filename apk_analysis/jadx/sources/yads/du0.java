package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class du0 implements kv5 {
    public final tq3 a;

    public du0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final fu0 a(ys4 ys4Var, fu0 fu0Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new fu0(pq3.c(tr4VarB, jSONObject, "on_fail_actions", zD, fu0Var != null ? fu0Var.a : null, this.a.l1), pq3.c(tr4VarB, jSONObject, "on_success_actions", zD, fu0Var != null ? fu0Var.b : null, this.a.l1), pq3.a(tr4VarB, jSONObject, "url", w36.e, zD, fu0Var != null ? fu0Var.c : null, bt4.b, uq3.a));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
