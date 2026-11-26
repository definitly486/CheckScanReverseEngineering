package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class vo4 implements lk {
    public final o95 a = new o95();

    @Override // yads.lk
    public final Object a(JSONObject jSONObject) throws rg4 {
        String strOptString = jSONObject.optString("name");
        if (strOptString == null || strOptString.length() == 0 || strOptString.equals("null")) {
            defpackage.qg.g("Native Ad json has not required attributes");
            return null;
        }
        String strOptString2 = jSONObject.optString("value");
        if (strOptString2 != null && strOptString2.length() != 0 && !strOptString2.equals("null")) {
            return "review_count".equals(strOptString) ? this.a.a(strOptString2) : strOptString2;
        }
        defpackage.qg.g("Native Ad json has not required attributes");
        return null;
    }
}
