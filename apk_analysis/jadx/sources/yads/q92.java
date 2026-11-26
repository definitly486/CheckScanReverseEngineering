package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class q92 implements kv5 {
    public final tq3 a;

    public q92(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new t92(pq3.b(tr4VarB, jSONObject, "corner_radius", w36.b, zD, null, bt4.e, s92.a), pq3.b(tr4VarB, jSONObject, "stroke", zD, (zw2) null, this.a.E7));
    }
}
