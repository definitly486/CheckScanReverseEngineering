package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class et5 implements lk {
    @Override // yads.lk
    public final Object a(JSONObject jSONObject) throws rg4 {
        String strOptString = jSONObject.optString("value");
        if (strOptString != null && strOptString.length() != 0 && !strOptString.equals("null")) {
            return strOptString;
        }
        defpackage.qg.g("Native Ad json has not required attributes");
        return null;
    }
}
