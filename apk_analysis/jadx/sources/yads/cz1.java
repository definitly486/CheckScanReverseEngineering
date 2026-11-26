package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class cz1 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        u36 u36Var = w36.c;
        return new ez1(pq3.b(tr4VarB, jSONObject, "text", u36Var, zD, (zw2) null), pq3.a(tr4VarB, jSONObject, "value", u36Var, zD, (zw2) null));
    }
}
