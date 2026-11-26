package yads;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class et {
    public final t64 a;
    public final defpackage.xb4 b;

    public et() {
        t64 t64Var = new t64();
        defpackage.xb4 xb4Var = zq3.a;
        this.a = t64Var;
        this.b = xb4Var;
    }

    public final la a(JSONObject jSONObject) {
        String string;
        try {
            try {
                defpackage.xb4 xb4Var = zq3.a;
                string = jSONObject.getString("ad_unit_id");
                if (string == null || string.length() == 0 || "null".equals(string)) {
                    throw new JSONException("Json value can not be null or empty");
                }
            } catch (JSONException unused) {
                defpackage.xb4 xb4Var2 = zq3.a;
                string = jSONObject.getString("block_id");
                if (string == null || string.length() == 0 || "null".equals(string)) {
                    throw new JSONException("Json value can not be null or empty");
                }
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("networks");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                ArrayList arrayList = new ArrayList();
                int length = jSONArrayOptJSONArray.length();
                for (int i = 0; i < length; i++) {
                    x54 x54VarB = this.a.b(jSONArrayOptJSONArray.getJSONObject(i));
                    if (x54VarB != null) {
                        arrayList.add(x54VarB);
                    }
                }
                if (!arrayList.isEmpty()) {
                    return new la(string, jSONObject.toString(), arrayList);
                }
            }
        } catch (JSONException unused2) {
        }
        return null;
    }

    public final dt b(JSONObject jSONObject) {
        JSONObject jSONObject2;
        o74 o74Var;
        String string;
        try {
            jSONObject2 = jSONObject.getJSONObject("mediation_prefetch_settings");
        } catch (Exception unused) {
            jSONObject2 = null;
        }
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ad_unit_id_settings");
            ArrayList arrayList = new ArrayList();
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                int length = jSONArrayOptJSONArray.length();
                for (int i = 0; i < length; i++) {
                    la laVarA = a(jSONArrayOptJSONArray.getJSONObject(i));
                    if (laVarA != null) {
                        arrayList.add(laVarA);
                    }
                }
            }
            if (jSONObject2 == null || (string = jSONObject2.toString()) == null) {
                o74Var = null;
            } else {
                defpackage.xb4 xb4Var = this.b;
                xb4Var.getClass();
                o74Var = (o74) xb4Var.a(defpackage.ev0.a(o74.CREATOR.serializer()), string);
            }
            if (arrayList.isEmpty() && o74Var == null) {
                return null;
            }
            return new dt(arrayList, o74Var);
        } catch (JSONException unused2) {
            return null;
        }
    }
}
