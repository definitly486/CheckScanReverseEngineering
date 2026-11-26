package com.tapjoy.internal;

import android.content.SharedPreferences;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TJCurrencyParametersKt;
import com.tapjoy.TJSpendCurrencyListener;
import defpackage.j59;
import defpackage.ni0;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class w1 extends e1 {
    public final Integer i;
    public final r2 j = new r2();

    public w1(Integer num) {
        this.i = num;
    }

    public final void a(TJSpendCurrencyListener tJSpendCurrencyListener, SharedPreferences sharedPreferences) {
        sharedPreferences.getClass();
        r2 r2Var = this.j;
        String strC = ni0.c(this.h, "managed_currency/spend/v2");
        Map mapA = a();
        String string = b().toString();
        r2Var.getClass();
        try {
            String str = r2.a(mapA, strC, string).b;
            if (str == null) {
                str = "{}";
            }
            JSONObject jSONObject = new JSONObject(str);
            boolean zOptBoolean = jSONObject.optBoolean(FirebaseAnalytics.Param.SUCCESS);
            String strOptString = jSONObject.optString("currency_name");
            int iOptInt = jSONObject.optInt("balance");
            String strOptString2 = jSONObject.optString(TJAdUnitConstants.String.MESSAGE);
            if (strOptString == null) {
                strOptString = "";
            }
            if (strOptString2 == null) {
                strOptString2 = "";
            }
            if (!zOptBoolean && strOptString2.equals("BalanceTooLowError")) {
                q.a.c();
                if (tJSpendCurrencyListener != null) {
                    tJSpendCurrencyListener.onSpendCurrencyResponseFailure(strOptString2);
                    return;
                }
                return;
            }
            if (!zOptBoolean) {
                if (tJSpendCurrencyListener != null) {
                    tJSpendCurrencyListener.onSpendCurrencyResponseFailure("Failed to spend currency");
                }
            } else {
                sharedPreferences.edit().putInt(TJCurrencyParametersKt.PREF_SERVER_CURRENCY_BALANCE, iOptInt).apply();
                if (tJSpendCurrencyListener != null) {
                    tJSpendCurrencyListener.onSpendCurrencyResponse(strOptString, iOptInt);
                }
            }
        } catch (Exception unused) {
            if (tJSpendCurrencyListener != null) {
                tJSpendCurrencyListener.onSpendCurrencyResponseFailure("Failed to spend currency");
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
