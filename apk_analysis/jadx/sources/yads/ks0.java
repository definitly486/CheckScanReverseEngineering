package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ks0 implements ln0 {
    public final tq3 a;

    public ks0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new js0((oe2) wq3.a(ys4Var, jSONObject, "value", this.a.X8), oq3.a(ys4Var, jSONObject, FirebaseAnalytics.Param.INDEX, w36.b, bt4.e), oq3.a(ys4Var, jSONObject, "variable_name", w36.c));
    }
}
