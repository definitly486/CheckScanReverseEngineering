package io.appmetrica.analytics.push.impl;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class E2 implements v2 {
    @Override // io.appmetrica.analytics.push.impl.v2
    public final void a(Context context, t2 t2Var) throws JSONException {
        x2 x2Var = r.a(context).e;
        if (x2Var != null) {
            x2Var.a(t2Var.b, t2Var.a, System.currentTimeMillis());
        }
        X1 x1 = X1.b;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("token", t2Var.b);
        x1.onPushTokenUpdated(jSONObject.toString(), t2Var.a);
    }
}
