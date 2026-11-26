package com.tapjoy.internal;

import com.tapjoy.TapjoyConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class y0 {
    public final String a;

    public y0(JSONObject jSONObject) {
        this.a = null;
        jSONObject.optString(TapjoyConstants.TJC_CURRENCY_ID);
        this.a = jSONObject.optString("currency_type");
    }
}
