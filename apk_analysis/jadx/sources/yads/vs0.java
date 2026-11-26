package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class vs0 implements kv5 {
    public final tq3 a;

    public vs0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final xs0 a(ys4 ys4Var, xs0 xs0Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new xs0(pq3.a(tr4VarB, jSONObject, FirebaseAnalytics.Param.INDEX, w36.b, zD, xs0Var != null ? xs0Var.a : null, bt4.e, uq3.a), pq3.a(tr4VarB, jSONObject, "value", zD, xs0Var != null ? xs0Var.b : null, this.a.Y8), pq3.a(tr4VarB, jSONObject, "variable_name", w36.c, zD, xs0Var != null ? xs0Var.c : null));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
