package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class j21 implements ln0 {
    public final tq3 a;

    public j21(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new i21(wq3.a(ys4Var, jSONObject, FirebaseAnalytics.Param.ITEMS, this.a.z1, m21.a));
    }
}
