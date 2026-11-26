package yads;

import defpackage.kx6;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class kj6 implements lk {
    @Override // yads.lk
    public final Object a(JSONObject jSONObject) throws JSONException, rg4 {
        Object obj = jSONObject.get("value");
        if (obj instanceof JSONObject) {
            JSONObject jSONObject2 = (JSONObject) obj;
            return new r80(jSONObject2.getString("warningText"), kx6.d((float) jSONObject2.optDouble("warningSize", 0.11999999731779099d), 0.0f, 1.0f));
        }
        if (obj instanceof String) {
            return new r80((String) obj);
        }
        defpackage.qg.g("Native Ad json has not required attributes");
        return null;
    }
}
