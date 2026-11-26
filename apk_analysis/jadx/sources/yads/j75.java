package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class j75 {
    public static JSONObject a(Map map, j5 j5Var, String str) throws JSONException {
        Object lowerCase;
        Object objOptString;
        Object objOptString2;
        Object objOptString3;
        JSONObject jSONObject = new JSONObject();
        Object obj = map.get("ad_type");
        if (obj == null) {
            obj = JSONObject.NULL;
        }
        jSONObject.put("ad_type", obj);
        Object obj2 = map.get("ad_unit_id");
        if (obj2 == null) {
            obj2 = JSONObject.NULL;
        }
        jSONObject.put("ad_unit_id", obj2);
        Object obj3 = map.get("sdk_version");
        if (obj3 == null) {
            obj3 = JSONObject.NULL;
        }
        jSONObject.put("sdk_version", obj3);
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
        } else {
            lowerCase = JSONObject.NULL;
        }
        jSONObject.put("ad_network", lowerCase);
        Object obj4 = map.get("ad_id");
        if (obj4 != null) {
            jSONObject.put("banner_id", obj4);
        }
        JSONObject jSONObject2 = null;
        String str2 = j5Var != null ? j5Var.b : null;
        if (str2 != null) {
            try {
                jSONObject2 = new JSONObject(str2);
            } catch (Throwable unused) {
            }
        }
        if (jSONObject2 == null || (objOptString = jSONObject2.optString("revenue")) == null) {
            objOptString = JSONObject.NULL;
        }
        jSONObject.put("ad_revenue", objOptString);
        if (jSONObject2 == null || (objOptString2 = jSONObject2.optString(FirebaseAnalytics.Param.CURRENCY)) == null) {
            objOptString2 = JSONObject.NULL;
        }
        jSONObject.put(FirebaseAnalytics.Param.CURRENCY, objOptString2);
        if (jSONObject2 == null || (objOptString3 = jSONObject2.optString("precision")) == null) {
            objOptString3 = JSONObject.NULL;
        }
        jSONObject.put("precision", objOptString3);
        return jSONObject;
    }

    public static JSONObject b(String str, Map map) throws JSONException {
        Object lowerCase;
        JSONObject jSONObject = new JSONObject();
        Object obj = map.get("ad_type");
        if (obj == null) {
            obj = JSONObject.NULL;
        }
        jSONObject.put("ad_type", obj);
        Object obj2 = map.get("ad_unit_id");
        if (obj2 == null) {
            obj2 = JSONObject.NULL;
        }
        jSONObject.put("ad_unit_id", obj2);
        Object obj3 = map.get("sdk_version");
        if (obj3 == null) {
            obj3 = JSONObject.NULL;
        }
        jSONObject.put("sdk_version", obj3);
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
        } else {
            lowerCase = JSONObject.NULL;
        }
        jSONObject.put("ad_network", lowerCase);
        Object obj4 = map.get("ad_id");
        if (obj4 != null) {
            jSONObject.put("banner_id", obj4);
        }
        return jSONObject;
    }

    public static JSONObject c(String str, Map map) throws JSONException {
        Object lowerCase;
        JSONObject jSONObject = new JSONObject();
        Object obj = map.get("ad_type");
        if (obj == null) {
            obj = JSONObject.NULL;
        }
        jSONObject.put("ad_type", obj);
        Object obj2 = map.get("ad_unit_id");
        if (obj2 == null) {
            obj2 = JSONObject.NULL;
        }
        jSONObject.put("ad_unit_id", obj2);
        Object obj3 = map.get("sdk_version");
        if (obj3 == null) {
            obj3 = JSONObject.NULL;
        }
        jSONObject.put("sdk_version", obj3);
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
        } else {
            lowerCase = JSONObject.NULL;
        }
        jSONObject.put("ad_network", lowerCase);
        Object obj4 = map.get("ad_id");
        if (obj4 != null) {
            jSONObject.put("banner_id", obj4);
        }
        return jSONObject;
    }

    public static JSONObject d(String str, Map map) throws JSONException {
        Object lowerCase;
        JSONObject jSONObject = new JSONObject();
        Object obj = map.get("ad_type");
        if (obj == null) {
            obj = JSONObject.NULL;
        }
        jSONObject.put("ad_type", obj);
        Object obj2 = map.get("ad_unit_id");
        if (obj2 == null) {
            obj2 = JSONObject.NULL;
        }
        jSONObject.put("ad_unit_id", obj2);
        Object obj3 = map.get("sdk_version");
        if (obj3 == null) {
            obj3 = JSONObject.NULL;
        }
        jSONObject.put("sdk_version", obj3);
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
        } else {
            lowerCase = JSONObject.NULL;
        }
        jSONObject.put("ad_network", lowerCase);
        return jSONObject;
    }

    public static JSONObject a(String str, Map map) throws JSONException {
        Object lowerCase;
        JSONObject jSONObject = new JSONObject();
        Object obj = map.get("ad_type");
        if (obj == null) {
            obj = JSONObject.NULL;
        }
        jSONObject.put("ad_type", obj);
        Object obj2 = map.get("ad_unit_id");
        if (obj2 == null) {
            obj2 = JSONObject.NULL;
        }
        jSONObject.put("ad_unit_id", obj2);
        Object obj3 = map.get("sdk_version");
        if (obj3 == null) {
            obj3 = JSONObject.NULL;
        }
        jSONObject.put("sdk_version", obj3);
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
        } else {
            lowerCase = JSONObject.NULL;
        }
        jSONObject.put("ad_network", lowerCase);
        return jSONObject;
    }

    public static JSONObject a(Map map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        Object obj = map.get("ad_type");
        if (obj == null) {
            obj = JSONObject.NULL;
        }
        jSONObject.put("ad_type", obj);
        Object obj2 = map.get("ad_unit_id");
        if (obj2 == null) {
            obj2 = JSONObject.NULL;
        }
        jSONObject.put("ad_unit_id", obj2);
        Object obj3 = map.get("sdk_version");
        if (obj3 == null) {
            obj3 = JSONObject.NULL;
        }
        jSONObject.put("sdk_version", obj3);
        return jSONObject;
    }
}
