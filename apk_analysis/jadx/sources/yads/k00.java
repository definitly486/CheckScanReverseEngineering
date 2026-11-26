package yads;

import com.tapjoy.TJAdUnitConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class k00 implements lk {
    @Override // yads.lk
    public final Object a(JSONObject jSONObject) throws JSONException, rg4 {
        String str = new String[]{"value"}[0];
        if (!jSONObject.has(str) || jSONObject.isNull(str)) {
            defpackage.qg.g("Native Ad json has not required attributes");
            return null;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("value");
        String[] strArr = {"url", TJAdUnitConstants.String.SIZE};
        for (int i = 0; i < 2; i++) {
            String str2 = strArr[i];
            if (!jSONObject2.has(str2) || jSONObject2.isNull(str2)) {
                defpackage.qg.g("Native Ad json has not required attributes");
                return null;
            }
        }
        return new j00(v46.a("url", jSONObject2), jSONObject2.optInt(TJAdUnitConstants.String.SIZE));
    }
}
