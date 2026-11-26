package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class lf1 implements kv5 {
    public final tq3 a;

    public lf1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new rf1(pq3.c(tr4VarB, jSONObject, "background", zD, null, this.a.G1), pq3.b(tr4VarB, jSONObject, "border", zD, (zw2) null, this.a.M1), pq3.b(tr4VarB, jSONObject, "next_focus_ids", zD, (zw2) null, this.a.C3), pq3.c(tr4VarB, jSONObject, "on_blur", zD, null, this.a.l1), pq3.c(tr4VarB, jSONObject, "on_focus", zD, null, this.a.l1));
    }
}
