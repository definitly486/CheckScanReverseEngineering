package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class pv1 implements kv5 {
    public final tq3 a;

    public pv1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new rv1(pq3.a(tr4VarB, jSONObject, "x", zD, (zw2) null, this.a.M2), pq3.a(tr4VarB, jSONObject, "y", zD, (zw2) null, this.a.M2));
    }
}
