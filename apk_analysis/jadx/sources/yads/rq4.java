package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class rq4 {
    public static String a(String str) {
        JSONObject jSONObjectA;
        if (str == null || (jSONObjectA = zq3.a(str)) == null || !jSONObjectA.has("response")) {
            return null;
        }
        return jSONObjectA.optString("response");
    }
}
