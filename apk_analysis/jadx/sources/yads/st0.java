package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class st0 implements ln0 {
    public final tq3 a;

    public st0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new it0((lt0) wq3.a(ys4Var, jSONObject, FirebaseAnalytics.Param.CONTENT, this.a.c0));
    }
}
