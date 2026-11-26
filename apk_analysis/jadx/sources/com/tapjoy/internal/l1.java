package com.tapjoy.internal;

import android.content.SharedPreferences;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TJCurrencyParametersKt;
import com.tapjoy.TJEarnedCurrencyListener;
import com.tapjoy.TJGetCurrencyBalanceListener;
import defpackage.ni0;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class l1 extends e1 {
    public final r2 i = new r2();

    public final void a(TJGetCurrencyBalanceListener tJGetCurrencyBalanceListener, TJEarnedCurrencyListener tJEarnedCurrencyListener, SharedPreferences sharedPreferences) {
        sharedPreferences.getClass();
        r2 r2Var = this.i;
        String strC = ni0.c(this.h, "managed_currency/get/v2");
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
            jSONObject.optString(TJAdUnitConstants.String.MESSAGE);
            String str2 = strOptString == null ? "" : strOptString;
            if (!zOptBoolean) {
                if (tJGetCurrencyBalanceListener != null) {
                    tJGetCurrencyBalanceListener.onGetCurrencyBalanceResponseFailure("Failed to get currency balance");
                    return;
                }
                return;
            }
            int i = sharedPreferences.getInt(TJCurrencyParametersKt.PREF_SERVER_CURRENCY_BALANCE, -9999);
            if (i != -9999 && iOptInt > i && tJEarnedCurrencyListener != null) {
                tJEarnedCurrencyListener.onEarnedCurrency(strOptString, iOptInt - i);
            }
            sharedPreferences.edit().putInt(TJCurrencyParametersKt.PREF_SERVER_CURRENCY_BALANCE, iOptInt).apply();
            if (tJGetCurrencyBalanceListener != null) {
                tJGetCurrencyBalanceListener.onGetCurrencyBalanceResponse(str2, iOptInt);
            }
        } catch (Exception unused) {
            if (tJGetCurrencyBalanceListener != null) {
                tJGetCurrencyBalanceListener.onGetCurrencyBalanceResponseFailure("Failed to get currency balance");
            }
        }
    }
}
