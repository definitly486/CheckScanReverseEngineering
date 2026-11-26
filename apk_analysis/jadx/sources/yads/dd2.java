package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class dd2 implements kv5 {
    public final tq3 a;

    public dd2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new gd2(pq3.b(tr4VarB, jSONObject, "pivot_x", zD, (zw2) null, this.a.P5), pq3.b(tr4VarB, jSONObject, "pivot_y", zD, (zw2) null, this.a.P5), pq3.b(tr4VarB, jSONObject, "rotation", w36.d, zD, null, bt4.d, uq3.a));
    }
}
