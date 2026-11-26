package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class h42 implements kv5 {
    public final tq3 a;

    public h42(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new k42(pq3.b(tr4VarB, jSONObject, "item_spacing", zD, (zw2) null, this.a.w3), pq3.b(tr4VarB, jSONObject, "max_visible_items", w36.b, zD, null, bt4.e, j42.c));
    }
}
