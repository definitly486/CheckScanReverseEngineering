package yads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ud3 implements lk {
    public final ad3 a = new ad3();

    @Override // yads.lk
    public final Object a(JSONObject jSONObject) throws JSONException, rg4 {
        if (!jSONObject.has("value") || jSONObject.isNull("value")) {
            defpackage.qg.g("Native Ad json has not required attributes");
            return null;
        }
        return this.a.a(jSONObject.getJSONObject("value"));
    }
}
