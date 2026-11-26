package com.android.billingclient.api;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class BillingConfig {
    private final String countryCode;

    public BillingConfig(String str) {
        this.countryCode = new JSONObject(str).optString(RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE);
    }

    public static BillingConfig forCountryCode(String str) {
        return new BillingConfig(null, str);
    }

    public String getCountryCode() {
        return this.countryCode;
    }

    private BillingConfig(String str, String str2) {
        this.countryCode = str2;
    }
}
