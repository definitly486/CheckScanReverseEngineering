package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ps0 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        y50 y50Var = oq3.a;
        return new os0(oq3.a(ys4Var, jSONObject, FirebaseAnalytics.Param.INDEX, s36Var, nl3Var, uq3.a), oq3.a(ys4Var, jSONObject, "variable_name", w36.c));
    }
}
