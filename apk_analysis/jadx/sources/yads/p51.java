package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class p51 implements kv5 {
    public final tq3 a;

    public p51(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new u51(pq3.b(tr4VarB, jSONObject, "corner_radius", w36.b, zD, null, bt4.e, r51.b), pq3.b(tr4VarB, jSONObject, "corners_radius", zD, (zw2) null, this.a.t2), pq3.b(tr4VarB, jSONObject, "has_shadow", w36.a, zD, null, bt4.c, uq3.a), pq3.b(tr4VarB, jSONObject, "shadow", zD, (zw2) null, this.a.I6), pq3.b(tr4VarB, jSONObject, "stroke", zD, (zw2) null, this.a.E7));
    }
}
