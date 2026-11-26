package com.tapjoy;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class TJUserRevenue {
    public final List a;

    public TJUserRevenue(List<TJUserRevenueConversion> list) {
        this.a = Collections.unmodifiableList(list);
    }

    public List<TJUserRevenueConversion> getConversions() {
        return this.a;
    }

    public String toJson() {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ROOT);
        try {
            for (TJUserRevenueConversion tJUserRevenueConversion : this.a) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(TtmlNode.ATTR_ID, tJUserRevenueConversion.getId());
                jSONObject2.put("date", simpleDateFormat.format(tJUserRevenueConversion.getDate()));
                jSONObject2.put("revenue", tJUserRevenueConversion.getRevenue());
                jSONObject2.put("revenue_currency_code", tJUserRevenueConversion.getRevenueCurrencyCode());
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("conversions", jSONArray);
        } catch (JSONException e) {
            TapjoyLog.w("Exception in generating user revenue json: " + e.toString());
        }
        return jSONObject.toString();
    }
}
