package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class hw0 implements kv5 {
    public final tq3 a;

    public hw0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final jw0 a(ys4 ys4Var, jw0 jw0Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new jw0(pq3.a(tr4VarB, jSONObject, "lifetime", w36.b, zD, jw0Var != null ? jw0Var.a : null, bt4.e, uq3.a), pq3.a(tr4VarB, jSONObject, "name", w36.c, zD, jw0Var != null ? jw0Var.b : null), pq3.a(tr4VarB, jSONObject, "value", zD, jw0Var != null ? jw0Var.c : null, this.a.Y8));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
