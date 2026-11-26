package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ac implements y0 {
    public final v46 a;
    public final k16 b;

    public ac(v46 v46Var, k16 k16Var) {
        this.a = v46Var;
        this.b = k16Var;
    }

    @Override // yads.y0
    public final u0 a(JSONObject jSONObject) throws rg4, JSONException {
        String strOptString = jSONObject.optString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        if (strOptString == null || strOptString.length() == 0 || strOptString.equals("null")) {
            defpackage.qg.g("Native Ad json has not required attributes");
            return null;
        }
        this.a.getClass();
        String strA = v46.a("url", jSONObject);
        String strA2 = br3.a("optOutUrl", jSONObject);
        if (strA2 == null) {
            strA2 = "";
        }
        String str = strA2;
        this.b.getClass();
        JSONArray jSONArray = jSONObject.getJSONArray("trackingUrls");
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            arrayList.add(jSONArray.getString(i));
        }
        return new yb(strOptString, strA, str, jSONObject.optBoolean("darkTheme"), arrayList, jSONObject.optBoolean("showInline"));
    }
}
