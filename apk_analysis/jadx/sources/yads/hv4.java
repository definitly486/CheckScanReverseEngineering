package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class hv4 implements k66 {
    @Override // yads.k66
    public final String a(String str, JSONObject jSONObject) throws rg4 {
        String strOptString = jSONObject.optString(str);
        if (strOptString != null && strOptString.length() != 0 && !strOptString.equals("null")) {
            return strOptString;
        }
        defpackage.qg.g("Native Ad json has not required attributes");
        return null;
    }
}
