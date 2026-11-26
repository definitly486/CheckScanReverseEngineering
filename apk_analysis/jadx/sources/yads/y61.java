package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class y61 implements kv5 {
    public final tq3 a;

    public y61(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final b71 a(ys4 ys4Var, b71 b71Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new b71(pq3.a(tr4VarB, jSONObject, "color", w36.f, zD, b71Var != null ? b71Var.a : null, bt4.a, uq3.a), pq3.a(tr4VarB, jSONObject, "corner_radius", w36.b, zD, b71Var != null ? b71Var.b : null, bt4.e, a71.a), pq3.b(tr4VarB, jSONObject, "paddings", zD, b71Var != null ? b71Var.c : null, this.a.Y2));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
