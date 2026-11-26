package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class qs0 implements kv5 {
    public static ss0 a(ys4 ys4Var, ss0 ss0Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new ss0(pq3.a(tr4VarB, jSONObject, FirebaseAnalytics.Param.INDEX, w36.b, zD, ss0Var != null ? ss0Var.a : null, bt4.e, uq3.a), pq3.a(tr4VarB, jSONObject, "variable_name", w36.c, zD, ss0Var != null ? ss0Var.b : null));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
