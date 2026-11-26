package com.tapjoy.internal;

import android.content.SharedPreferences;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TJAwardCurrencyListener;
import com.tapjoy.TJCurrencyParametersKt;
import com.tapjoy.TJVerifierKt;
import defpackage.j59;
import defpackage.ni0;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class d1 extends e1 {
    public final Integer i;
    public final r2 j = new r2();

    public d1(Integer num) {
        this.i = num;
    }

    public final void a(TJAwardCurrencyListener tJAwardCurrencyListener, SharedPreferences sharedPreferences, JSONObject jSONObject) throws JSONException {
        sharedPreferences.getClass();
        jSONObject.getClass();
        JSONObject jSONObjectB = b();
        try {
            u.a(jSONObjectB, TJVerifierKt.TJC_TIMESTAMP, Long.valueOf(jSONObject.getLong(TJVerifierKt.TJC_TIMESTAMP)));
            JSONObject jSONObject2 = jSONObjectB.getJSONObject("sdk");
            jSONObject2.getClass();
            u.a(jSONObject2, TJVerifierKt.TJC_VERIFIER, jSONObject.getString(TJVerifierKt.TJC_VERIFIER));
            JSONObject jSONObject3 = jSONObjectB.getJSONObject(FirebaseAnalytics.Param.CURRENCY);
            jSONObject3.getClass();
            u.a(jSONObject3, TJVerifierKt.TJC_GUID, jSONObject.getString(TJVerifierKt.TJC_GUID));
        } catch (JSONException unused) {
        }
        r2 r2Var = this.j;
        String strC = ni0.c(this.h, "managed_currency/award/v2");
        Map mapA = a();
        String string = jSONObjectB.toString();
        r2Var.getClass();
        try {
            String str = r2.a(mapA, strC, string).b;
            if (str == null) {
                str = "{}";
            }
            JSONObject jSONObject4 = new JSONObject(str);
            boolean zOptBoolean = jSONObject4.optBoolean(FirebaseAnalytics.Param.SUCCESS);
            String strOptString = jSONObject4.optString("currency_name");
            int iOptInt = jSONObject4.optInt("balance");
            String strOptString2 = jSONObject4.optString(TJAdUnitConstants.String.MESSAGE);
            if (strOptString == null) {
                strOptString = "";
            }
            if (strOptString2 == null) {
                strOptString2 = "";
            }
            if (zOptBoolean) {
                sharedPreferences.edit().putInt(TJCurrencyParametersKt.PREF_SERVER_CURRENCY_BALANCE, iOptInt).apply();
                if (tJAwardCurrencyListener != null) {
                    tJAwardCurrencyListener.onAwardCurrencyResponse(strOptString, iOptInt);
                }
            } else if (tJAwardCurrencyListener != null) {
                if (strOptString2.length() == 0) {
                    strOptString2 = "Failed to award currency";
                }
                tJAwardCurrencyListener.onAwardCurrencyResponseFailure(strOptString2);
            }
        } catch (Exception unused2) {
            if (tJAwardCurrencyListener != null) {
                tJAwardCurrencyListener.onAwardCurrencyResponseFailure("Failed to award currency");
            }
        }
    }

    @Override // com.tapjoy.internal.e1
    public final JSONObject b() throws JSONException {
        JSONObject jSONObjectB = super.b();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("amount", this.i);
        j59 j59Var = j59.a;
        jSONObjectB.put(FirebaseAnalytics.Param.CURRENCY, jSONObject);
        return jSONObjectB;
    }
}
