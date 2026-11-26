package yads;

import com.monetization.ads.mediation.banner.MediatedBannerSize;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class z54 {
    public static JSONObject a(x54 x54Var, String str, MediatedBannerSize mediatedBannerSize) {
        String str2 = x54Var.b;
        Map map = x54Var.h;
        Map map2 = x54Var.c;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("adapter", str2);
            if (map != null) {
                jSONObject.put("bidding_info", new JSONObject(map));
            }
            jSONObject.put("network_data", new JSONObject(map2));
            jSONObject.put("bidder_token", str);
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }
}
