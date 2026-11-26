package yads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class t64 {
    public static cb5 a(JSONObject jSONObject) {
        Object next;
        try {
            if (!jSONObject.has("format_parameters")) {
                return null;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("format_parameters");
            if (!jSONObject2.has("bridge_ad_type")) {
                return null;
            }
            String strOptString = jSONObject2.optString("bridge_ad_type");
            if (strOptString.length() == 0) {
                return null;
            }
            k54.c.getClass();
            Iterator<E> it = k54.g.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!defpackage.aa4.e(((k54) next).b, strOptString));
            k54 k54Var = (k54) next;
            if (k54Var == null) {
                return null;
            }
            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("configuration");
            Long lValueOf = (jSONObjectOptJSONObject == null || !jSONObjectOptJSONObject.has("rewarded_delay")) ? null : Long.valueOf(jSONObjectOptJSONObject.optLong("rewarded_delay"));
            if (lValueOf != null && lValueOf.longValue() <= 0) {
                lValueOf = null;
            }
            return new cb5(k54Var, new ab5(lValueOf));
        } catch (JSONException unused) {
            return null;
        }
    }

    public final x54 b(JSONObject jSONObject) {
        j5 j5Var;
        try {
            defpackage.xb4 xb4Var = zq3.a;
            String string = jSONObject.getString("adapter");
            if (string == null || string.length() == 0 || "null".equals(string)) {
                throw new JSONException("Json value can not be null or empty");
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("network_data");
            defpackage.uz4 uz4Var = new defpackage.uz4();
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                uz4Var.put(next, jSONObject2.getString(next));
            }
            defpackage.uz4 uz4VarB = uz4Var.b();
            if (uz4VarB.isEmpty()) {
                return null;
            }
            List listB = zq3.b("click_tracking_urls", jSONObject);
            List listB2 = zq3.b("impression_tracking_urls", jSONObject);
            List listB3 = zq3.b("ad_response_tracking_urls", jSONObject);
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("bidding_info");
            Map mapA = jSONObjectOptJSONObject != null ? zq3.a(jSONObjectOptJSONObject) : null;
            if (jSONObject.has("impression_data")) {
                try {
                    String string2 = jSONObject.getString("impression_data");
                    if (string2.length() == 0 || "null".equals(string2)) {
                        throw new JSONException("Json has not required attributes");
                    }
                    j5Var = new j5(string2);
                } catch (Exception unused) {
                    j5Var = null;
                }
            } else {
                j5Var = null;
            }
            return new x54(string, uz4VarB, listB2, listB, listB3, j5Var, mapA, a(jSONObject));
        } catch (JSONException unused2) {
            return null;
        }
    }
}
