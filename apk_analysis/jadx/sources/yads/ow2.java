package yads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ow2 implements lk {
    public final ud3 a;

    public ow2(ud3 ud3Var) {
        this.a = ud3Var;
    }

    @Override // yads.lk
    public final Object a(JSONObject jSONObject) throws JSONException, rg4 {
        rd3 rd3VarA = null;
        if (!jSONObject.has("value")) {
            defpackage.qg.g("Native Ad json has not required attributes");
            return null;
        }
        if (!jSONObject.isNull("value")) {
            ud3 ud3Var = this.a;
            if (!jSONObject.has("value") || jSONObject.isNull("value")) {
                defpackage.qg.g("Native Ad json has not required attributes");
                return null;
            }
            rd3VarA = ud3Var.a.a(jSONObject.getJSONObject("value"));
        }
        return new mw2(rd3VarA);
    }
}
