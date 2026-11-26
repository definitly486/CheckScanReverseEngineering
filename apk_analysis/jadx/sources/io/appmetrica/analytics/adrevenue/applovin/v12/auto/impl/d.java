package io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl;

import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.b36;
import defpackage.n05;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.AdRevenueConstants;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenue;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdType;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class d {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:50:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e7  */
    /* JADX WARN: Multi-variable type inference failed */
    public static ModuleAdRevenue a(Bundle bundle) {
        b36 b36Var;
        Double dValueOf = Double.valueOf(0.0d);
        String string = bundle.getString(FirebaseAnalytics.Param.AD_FORMAT);
        ModuleAdType moduleAdType = null;
        if (bundle.containsKey("revenue")) {
            double d = bundle.getDouble("revenue");
            b36Var = (Double.isInfinite(d) || Double.isNaN(d) || d < 0.0d) ? new b36(dValueOf, String.valueOf(d)) : new b36(Double.valueOf(d), null);
        } else {
            b36Var = new b36(dValueOf, "no-value");
        }
        double dDoubleValue = ((Number) b36Var.b).doubleValue();
        String str = (String) b36Var.c;
        LinkedHashMap linkedHashMapF = n05.f(new b36("source", "applovin"), new b36(AdRevenueConstants.ORIGINAL_SOURCE_KEY, "ad-revenue-applovin-v12-auto"), new b36(AdRevenueConstants.ORIGINAL_AD_TYPE_KEY, string == null ? "null" : string));
        if (str != null) {
            linkedHashMapF.put("original_ad_revenue", str);
        }
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(dDoubleValue);
        Currency currency = Currency.getInstance("USD");
        if (string != null) {
            switch (string) {
                case "NATIVE":
                    moduleAdType = ModuleAdType.NATIVE;
                    break;
                case "REWARD":
                    moduleAdType = ModuleAdType.REWARDED;
                    break;
                case "APPOPEN":
                    moduleAdType = ModuleAdType.APP_OPEN;
                    break;
                case "MREC":
                    moduleAdType = ModuleAdType.MREC;
                    break;
                case "INTER":
                    moduleAdType = ModuleAdType.INTERSTITIAL;
                    break;
                case "REWARDED":
                    moduleAdType = ModuleAdType.REWARDED;
                    break;
                case "BANNER":
                    moduleAdType = ModuleAdType.BANNER;
                    break;
                default:
                    moduleAdType = ModuleAdType.OTHER;
                    break;
            }
        }
        return new ModuleAdRevenue(bigDecimalValueOf, currency, moduleAdType, bundle.getString("network_name"), bundle.getString("max_ad_unit_id"), null, bundle.getString("third_party_ad_placement_id"), null, bundle.getString("precision"), linkedHashMapF, true);
    }
}
