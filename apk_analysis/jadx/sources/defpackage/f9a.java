package defpackage;

import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class f9a {
    public final fv9 a(JSONObject jSONObject) throws JSONException {
        fv9.a.C0187a c0187a;
        JSONObject jSONObject2 = jSONObject.getJSONObject("text");
        JSONObject jSONObject3 = jSONObject.getJSONObject("assets");
        ArrayList arrayList = null;
        fv9.b bVar = new fv9.b(jSONObject2.optString(TJAdUnitConstants.String.TITLE, null), jSONObject2.optString(TtmlNode.TAG_BODY, null), jSONObject2.optString(DynamicLink.Builder.KEY_DOMAIN, null));
        JSONArray jSONArrayOptJSONArray = jSONObject3.optJSONArray("first_frame");
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList2 = new ArrayList();
            int length = jSONArrayOptJSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject == null) {
                    c0187a = null;
                } else {
                    String strOptString = jSONObjectOptJSONObject.optString("url", null);
                    if (TextUtils.isEmpty(strOptString)) {
                        y14.r(null, "VastYandexAdInfoParser: Invalid first_frame url");
                    } else {
                        try {
                            c0187a = new fv9.a.C0187a(strOptString, jSONObjectOptJSONObject.getInt(TJAdUnitConstants.String.WIDTH), jSONObjectOptJSONObject.getInt(TJAdUnitConstants.String.HEIGHT));
                        } catch (JSONException e) {
                            y14.r(null, "VastYandexAdInfoParser: Invalid first_frame dimension: " + e);
                            c0187a = null;
                        }
                    }
                    c0187a = null;
                }
                if (c0187a != null) {
                    arrayList2.add(c0187a);
                }
            }
            arrayList = arrayList2;
        }
        return new fv9(bVar, new fv9.a(arrayList));
    }
}
