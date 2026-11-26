package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class h10 implements lk {
    @Override // yads.lk
    public final Object a(JSONObject jSONObject) throws rg4 {
        if (jSONObject.has("value") && jSONObject.isNull("value")) {
            return new g10(f10.IMAGE, null);
        }
        f10 f10Var = f10.TEXT;
        String strOptString = jSONObject.optString("value");
        if (strOptString != null && strOptString.length() != 0 && !strOptString.equals("null")) {
            return new g10(f10Var, strOptString);
        }
        defpackage.qg.g("Native Ad json has not required attributes");
        return null;
    }
}
