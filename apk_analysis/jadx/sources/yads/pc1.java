package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class pc1 implements kv5 {
    public final tq3 a;

    public pc1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new rc1(pq3.c(tr4VarB, jSONObject, "on_fail_actions", zD, null, this.a.l1), pq3.c(tr4VarB, jSONObject, "on_success_actions", zD, null, this.a.l1));
    }
}
