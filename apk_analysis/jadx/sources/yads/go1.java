package yads;

import com.tapjoy.TJAdUnitConstants;
import defpackage.j59;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class go1 {
    public static final List a = u96.i("native_ad_view", "timer_container", "timer_value", "skip_button", "linear_progress_view", "video_progress", "mute_button");

    public static void a(JSONObject jSONObject, tn1 tn1Var, defpackage.bm3 bm3Var) {
        Object obj;
        JSONObject jSONObjectOptJSONObject;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("extensions");
        if (jSONArrayOptJSONArray != null) {
            int length = jSONArrayOptJSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                if (defpackage.aa4.e((jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject(TJAdUnitConstants.String.BEACON_PARAMS)) == null) ? null : jSONObjectOptJSONObject.optString("view_name"), "native_ad_view")) {
                    tn1Var = tn1.BLOCK_INNER_AD;
                    break;
                }
            }
        }
        bm3Var.invoke(jSONObject, tn1Var);
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            try {
                obj = jSONObject.get(itKeys.next());
            } catch (JSONException unused) {
                obj = null;
            }
            if (obj instanceof JSONObject) {
                a((JSONObject) obj, tn1Var, bm3Var);
            } else if (obj instanceof JSONArray) {
                a((JSONArray) obj, tn1Var, bm3Var);
            }
        }
    }

    public static final j59 a(go1 go1Var, List list, JSONObject jSONObject, tn1 tn1Var) {
        Object obj;
        go1Var.getClass();
        String str = null;
        if (jSONObject.has("view_name")) {
            try {
                obj = jSONObject.get("view_name");
            } catch (JSONException unused) {
                obj = null;
            }
            if (obj instanceof String) {
                str = (String) obj;
            }
        }
        if (str != null) {
            list.add(new sn1(tn1Var, str));
        }
        return j59.a;
    }

    public final ArrayList a(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        a(jSONObject, tn1.BLOCK, new defpackage.xz1(1, this, arrayList));
        return arrayList;
    }

    public static void a(JSONArray jSONArray, tn1 tn1Var, defpackage.bm3 bm3Var) {
        Object obj;
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            try {
                obj = jSONArray.get(i);
            } catch (JSONException unused) {
                obj = null;
            }
            if (obj instanceof JSONObject) {
                a((JSONObject) obj, tn1Var, bm3Var);
            } else if (obj instanceof JSONArray) {
                a((JSONArray) obj, tn1Var, bm3Var);
            }
        }
    }
}
