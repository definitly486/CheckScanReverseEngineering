package yads;

import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class vq3 {
    /* JADX WARN: Code duplicated, block: B:8:0x0021  */
    public static JSONObject a(JSONObject jSONObject, int i) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = jSONObject.opt(next);
            if (objOpt instanceof JSONObject) {
                if (i == 0) {
                    objOpt = "...";
                } else {
                    objOpt = a((JSONObject) objOpt, i - 1);
                }
            } else if (objOpt instanceof JSONArray) {
                if (i == 0) {
                    objOpt = "...";
                } else {
                    objOpt = a((JSONArray) objOpt, i - 1);
                }
            }
            jSONObject2.put(next, objOpt);
        }
        return jSONObject2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public static JSONArray a(JSONArray jSONArray, int i) throws JSONException {
        JSONArray jSONArray2 = new JSONArray();
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            Object objOpt = jSONArray.opt(i2);
            if (objOpt instanceof JSONObject) {
                if (i == 0) {
                    objOpt = "...";
                } else {
                    objOpt = a((JSONObject) objOpt, i - 1);
                }
            } else if (objOpt instanceof JSONArray) {
                if (i == 0) {
                    objOpt = "...";
                } else {
                    objOpt = a((JSONArray) objOpt, i - 1);
                }
            }
            jSONArray2.put(objOpt);
        }
        return jSONArray2;
    }
}
