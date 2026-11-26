package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ms0 implements qv5 {
    public final tq3 a;

    public ms0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        ns0 ns0Var = (ns0) xq3Var;
        as2 as2VarB = qq3.b(ys4Var, ns0Var.a, jSONObject, FirebaseAnalytics.Param.INDEX, w36.b, bt4.e);
        zw2 zw2Var = ns0Var.b;
        tq3 tq3Var = this.a;
        return new js0((oe2) qq3.a(ys4Var, zw2Var, jSONObject, "value", tq3Var.Z8, tq3Var.X8), as2VarB, qq3.a(ys4Var, ns0Var.c, jSONObject, "variable_name", w36.c));
    }
}
