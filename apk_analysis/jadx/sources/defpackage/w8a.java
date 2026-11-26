package defpackage;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class w8a {
    public static String a(ya5 ya5Var) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("name", ya5Var.a);
        JSONObject jSONObject2 = new JSONObject();
        for (Map.Entry<String, String> entry : ya5Var.b.entrySet()) {
            jSONObject2.put(entry.getKey(), entry.getValue());
        }
        jSONObject.put("data", jSONObject2);
        jSONObject.put("time", ya5Var.c);
        String string = jSONObject.toString(0);
        string.getClass();
        return string;
    }
}
