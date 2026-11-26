package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class dm1 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new gm1(pq3.b(tr4VarB, jSONObject, "allow_empty", w36.a, zD, null, bt4.c, uq3.a), pq3.b(tr4VarB, jSONObject, "label_id", w36.c, zD, (zw2) null), pq3.b(tr4VarB, jSONObject, "variable", zD, null));
    }
}
