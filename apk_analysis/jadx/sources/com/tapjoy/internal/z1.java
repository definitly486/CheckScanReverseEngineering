package com.tapjoy.internal;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class z1 {
    public final String a;
    public final Date b;
    public final Double c;
    public final String d;

    public z1(JSONObject jSONObject) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.a = jSONObject.optString(TtmlNode.ATTR_ID);
        this.c = Double.valueOf(jSONObject.optDouble("revenue"));
        this.d = jSONObject.optString("revenue_currency_code");
        try {
            this.b = new SimpleDateFormat("yyyy-MM-dd", Locale.ROOT).parse(jSONObject.optString("date"));
        } catch (ParseException unused) {
            this.b = null;
        }
    }
}
