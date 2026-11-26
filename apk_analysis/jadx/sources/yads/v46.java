package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class v46 {
    public static String a(String str, JSONObject jSONObject) throws rg4 {
        String strOptString = jSONObject.optString(str);
        if (strOptString == null || strOptString.length() == 0 || strOptString.equals("null")) {
            defpackage.qg.g("Native Ad json has not required attributes");
            return null;
        }
        if (strOptString.length() != 0) {
            return strOptString;
        }
        defpackage.qg.g("Native Ad json has not required attributes");
        return null;
    }
}
