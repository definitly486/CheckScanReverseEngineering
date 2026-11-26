package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class rs0 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        ss0 ss0Var = (ss0) xq3Var;
        return new os0(qq3.a(ys4Var, ss0Var.a, jSONObject, FirebaseAnalytics.Param.INDEX, w36.b, bt4.e), qq3.a(ys4Var, ss0Var.b, jSONObject, "variable_name", w36.c));
    }
}
