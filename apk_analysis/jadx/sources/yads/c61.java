package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class c61 implements ln0 {
    public final tq3 a;

    public c61(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new b61(wq3.a(ys4Var, jSONObject, FirebaseAnalytics.Param.ITEMS, this.a.U1, f61.a));
    }
}
