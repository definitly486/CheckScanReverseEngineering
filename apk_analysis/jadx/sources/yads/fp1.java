package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class fp1 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new mp1(pq3.a(tr4VarB, jSONObject, "color", w36.f, zD, null, bt4.a, uq3.a), pq3.a(tr4VarB, jSONObject, "position", w36.d, zD, null, bt4.d, hp1.a));
    }
}
