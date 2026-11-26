package yads;

import com.my.tracker.ads.AdFormat;
import defpackage.k57;
import defpackage.ta8;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class h54 {
    public static i54 a(String str) {
        Long l;
        JSONObject jSONObject = new JSONObject(str);
        JSONObject jSONObject2 = jSONObject.has("default_timeout") ? jSONObject : null;
        if (jSONObject2 != null) {
            long jOptLong = jSONObject2.optLong("default_timeout");
            Long lValueOf = Long.valueOf(jOptLong);
            if (jOptLong <= 0) {
                defpackage.fg.c("default_timeout must be positive");
                return null;
            }
            l = lValueOf;
        } else {
            l = null;
        }
        return new i54(l, !jSONObject.has(AdFormat.BANNER) ? null : a(AdFormat.BANNER, jSONObject), !jSONObject.has(AdFormat.INTERSTITIAL) ? null : a(AdFormat.INTERSTITIAL, jSONObject), !jSONObject.has(AdFormat.REWARDED) ? null : a(AdFormat.REWARDED, jSONObject), !jSONObject.has("native") ? null : a("native", jSONObject), jSONObject.has("appOpenAd") ? a("appOpenAd", jSONObject) : null);
    }

    public static i54 b(String str) {
        Object aVar;
        if (str == null || ta8.M(str)) {
            return null;
        }
        try {
            aVar = a(str);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        return (i54) (aVar instanceof k57.a ? null : aVar);
    }

    public static Map a(String str, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONObject(str);
        defpackage.uz4 uz4Var = new defpackage.uz4();
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            long j = jSONObject2.getLong(next);
            if (j > 0) {
                uz4Var.put(next, Long.valueOf(j));
            } else {
                defpackage.c9.f(defpackage.n2.d("timeout for format=", str, " network=", next, " must be positive"));
                return null;
            }
        }
        return uz4Var.b();
    }
}
