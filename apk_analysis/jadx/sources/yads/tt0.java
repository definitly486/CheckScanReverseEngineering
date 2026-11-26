package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class tt0 implements kv5 {
    public final tq3 a;

    public tt0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return new vt0(pq3.a(zs4.b(ys4Var), jSONObject, FirebaseAnalytics.Param.CONTENT, ys4Var.d(), (zw2) null, this.a.d0));
    }
}
