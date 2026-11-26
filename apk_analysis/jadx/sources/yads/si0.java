package yads;

import android.content.Context;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.u96;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class si0 implements y0 {
    public final v46 a;
    public final ey4 b;
    public final j16 c;

    public si0(Context context, v46 v46Var) {
        ey4 ey4Var = new ey4(context, v46Var);
        j16 j16Var = new j16();
        this.a = v46Var;
        this.b = ey4Var;
        this.c = j16Var;
    }

    @Override // yads.y0
    public final u0 a(JSONObject jSONObject) throws rg4, JSONException {
        List listD;
        String strOptString = jSONObject.optString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        JSONArray jSONArray = null;
        if (strOptString == null || strOptString.length() == 0 || strOptString.equals("null")) {
            defpackage.qg.g("Native Ad json has not required attributes");
            return null;
        }
        this.a.getClass();
        String strA = v46.a("fallbackUrl", jSONObject);
        this.c.getClass();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("fallbackTrackingUrls");
        List listA = jSONArrayOptJSONArray == null ? null : j16.a(jSONArrayOptJSONArray);
        if (jSONObject.has("preferredPackages")) {
            jSONArray = jSONObject.getJSONArray("preferredPackages");
        } else if (jSONObject.has("preferredLinks")) {
            jSONArray = jSONObject.getJSONArray("preferredLinks");
        }
        ey4 ey4Var = this.b;
        ey4Var.getClass();
        if (jSONArray == null) {
            listD = defpackage.kx2.b;
        } else {
            defpackage.ar4 ar4VarE = u96.e();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    ar4VarE.add(ey4Var.a.a(jSONObjectOptJSONObject));
                }
            }
            listD = u96.d(ar4VarE);
        }
        return new pi0(strOptString, strA, listA, listD);
    }
}
