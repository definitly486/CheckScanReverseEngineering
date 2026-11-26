package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ut0 implements qv5 {
    public final tq3 a;

    public ut0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        zw2 zw2Var = ((vt0) xq3Var).a;
        tq3 tq3Var = this.a;
        return new it0((lt0) qq3.a(ys4Var, zw2Var, jSONObject, FirebaseAnalytics.Param.CONTENT, tq3Var.e0, tq3Var.c0));
    }
}
