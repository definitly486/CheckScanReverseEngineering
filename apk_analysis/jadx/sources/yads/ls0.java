package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ls0 implements kv5 {
    public final tq3 a;

    public ls0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final ns0 a(ys4 ys4Var, ns0 ns0Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new ns0(pq3.b(tr4VarB, jSONObject, FirebaseAnalytics.Param.INDEX, w36.b, zD, ns0Var != null ? ns0Var.a : null, bt4.e, uq3.a), pq3.a(tr4VarB, jSONObject, "value", zD, ns0Var != null ? ns0Var.b : null, this.a.Y8), pq3.a(tr4VarB, jSONObject, "variable_name", w36.c, zD, ns0Var != null ? ns0Var.c : null));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
