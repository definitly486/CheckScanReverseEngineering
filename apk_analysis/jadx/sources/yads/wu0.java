package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class wu0 implements kv5 {
    public final tq3 a;

    public wu0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new mx0(pq3.b(tr4VarB, jSONObject, "action", zD, (zw2) null, this.a.l1), pq3.c(tr4VarB, jSONObject, "actions", zD, null, this.a.l1), pq3.a(tr4VarB, jSONObject, "text", w36.c, zD, (zw2) null));
    }
}
