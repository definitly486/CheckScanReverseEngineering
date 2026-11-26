package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class sm1 implements kv5 {
    public static vm1 a(ys4 ys4Var, vm1 vm1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "allow_empty", w36.a, zD, vm1Var != null ? vm1Var.a : null, bt4.c, uq3.a);
        u36 u36Var = w36.c;
        return new vm1(zw2VarB, pq3.a(tr4VarB, jSONObject, "label_id", u36Var, zD, vm1Var != null ? vm1Var.b : null), pq3.a(tr4VarB, jSONObject, "pattern", u36Var, zD, vm1Var != null ? vm1Var.c : null), pq3.a(tr4VarB, jSONObject, "variable", zD, vm1Var != null ? vm1Var.d : null));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
