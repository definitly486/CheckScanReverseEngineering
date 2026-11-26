package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class cf1 implements kv5 {
    public static ff1 a(ys4 ys4Var, ff1 ff1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new ff1(pq3.b(tr4VarB, jSONObject, "unit", ef1.b, zD, ff1Var != null ? ff1Var.a : null, g12.d, uq3.a), pq3.a(tr4VarB, jSONObject, "value", w36.b, zD, ff1Var != null ? ff1Var.b : null, bt4.e, ef1.c));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
