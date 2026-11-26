package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class l21 implements qv5 {
    public final tq3 a;

    public l21(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        zw2 zw2Var = ((n21) xq3Var).a;
        tq3 tq3Var = this.a;
        return new i21(qq3.a(ys4Var, zw2Var, jSONObject, FirebaseAnalytics.Param.ITEMS, tq3Var.B1, tq3Var.z1, m21.a));
    }
}
