package io.appmetrica.analytics.adrevenue.other.impl;

import android.os.Bundle;
import com.facebook.ads.AdSDKNotificationListener;
import defpackage.aa4;
import defpackage.b36;
import defpackage.n05;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.AdRevenueConstants;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenue;
import io.appmetrica.analytics.modulesapi.internal.common.InternalClientModuleFacade;
import java.math.BigDecimal;
import java.util.Currency;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class i implements AdSDKNotificationListener {
    public final ClientContext a;
    public final h b;

    public i(ClientContext clientContext, h hVar) {
        this.a = clientContext;
        this.b = hVar;
    }

    public final void onAdEvent(String str, Bundle bundle) throws JSONException {
        if (aa4.e(str, "impression")) {
            InternalClientModuleFacade internalClientModuleFacade = this.a.getInternalClientModuleFacade();
            this.b.getClass();
            BigDecimal bigDecimal = BigDecimal.ZERO;
            Currency currency = Currency.getInstance("USD");
            b36 b36Var = new b36("source", "facebook");
            b36 b36Var2 = new b36(AdRevenueConstants.ORIGINAL_SOURCE_KEY, "ad-revenue-other");
            b36 b36Var3 = new b36(AdRevenueConstants.ORIGINAL_AD_TYPE_KEY, "null");
            JSONObject jSONObject = new JSONObject();
            for (String str2 : bundle.keySet()) {
                Object obj = bundle.get(str2);
                jSONObject.put(str2, obj != null ? obj.toString() : null);
            }
            internalClientModuleFacade.reportAdRevenue(new ModuleAdRevenue(bigDecimal, currency, null, "facebook", null, null, null, null, null, n05.d(b36Var, b36Var2, b36Var3, new b36("raw_payload", jSONObject.toString())), true));
        }
    }
}
