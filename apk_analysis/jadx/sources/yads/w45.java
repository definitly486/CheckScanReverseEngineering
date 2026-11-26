package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class w45 {
    public static u45 a(String str) throws JSONException {
        new v45();
        JSONObject jSONObject = new JSONObject(zo.b(str));
        HashMap map = new HashMap();
        String string = jSONObject.getString(TtmlNode.TAG_BODY);
        JSONObject jSONObject2 = jSONObject.getJSONObject("headers");
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, jSONObject2.getString(next));
        }
        return new u45(map, string);
    }
}
