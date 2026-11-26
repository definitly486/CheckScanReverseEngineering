package yads;

import defpackage.j59;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ot2 {
    public static HashMap a(JSONObject jSONObject) {
        HashMap map = new HashMap();
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("report_data");
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject2.get(next));
            }
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
        return map;
    }
}
