package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class pn1 implements y0 {
    public final sn0 a;
    public final jo1 b;
    public final k16 c;
    public final boolean d;

    public pn1(sn0 sn0Var, jo1 jo1Var, k16 k16Var, boolean z) {
        this.a = sn0Var;
        this.b = jo1Var;
        this.c = k16Var;
        this.d = z;
    }

    @Override // yads.y0
    public final u0 a(JSONObject jSONObject) throws JSONException, rg4 {
        String strOptString = jSONObject.optString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        if (strOptString == null || strOptString.length() == 0 || strOptString.equals("null")) {
            defpackage.qg.g("Native Ad json has not required attributes");
            return null;
        }
        this.c.getClass();
        JSONArray jSONArray = jSONObject.getJSONArray("trackingUrls");
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            arrayList.add(jSONArray.getString(i));
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("design");
        mn0 mn0VarA = jSONObjectOptJSONObject != null ? this.a.a(jSONObjectOptJSONObject) : null;
        fo1 fo1VarA = mn0VarA != null ? this.b.a(mn0VarA, this.d) : null;
        if (fo1VarA != null) {
            return new nn1(strOptString, fo1VarA, arrayList);
        }
        defpackage.qg.g("Native Ad json has not required attributes");
        return null;
    }
}
