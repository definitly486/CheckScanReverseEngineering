package yads;

import android.content.Context;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;
import defpackage.ir7;
import defpackage.k57;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class pt3 {
    public final z0 a;

    public pt3(Context context, q84 q84Var) {
        this.a = new z0(context.getApplicationContext(), q84Var);
    }

    public final ot3 a(JSONObject jSONObject, yo yoVar) {
        mt2 mt2Var;
        ArrayList arrayList;
        Object objD;
        Object aVar;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("actions");
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList2 = new ArrayList();
            int length = jSONArrayOptJSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                z0 z0Var = this.a;
                z0Var.getClass();
                String strOptString = jSONObject2.optString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                if (strOptString == null || strOptString.length() == 0 || strOptString.equals("null")) {
                    defpackage.qg.g("Native Ad json has not required attributes");
                    return null;
                }
                Map mapE = z0Var.f;
                if (mapE == null) {
                    mapE = defpackage.n05.e(new defpackage.b36("adtune", new ac(z0Var.b, z0Var.c)), new defpackage.b36("divkit_adtune", new pn1(z0Var.d, z0Var.e, z0Var.c, yoVar.b)), new defpackage.b36(TJAdUnitConstants.String.CLOSE, new c10()), new defpackage.b36("deeplink", new si0(z0Var.a, z0Var.b)));
                    z0Var.f = mapE;
                }
                y0 y0Var = (y0) mapE.get(strOptString);
                if (y0Var != null) {
                    arrayList2.add(y0Var.a(jSONObject2));
                }
            }
            mt2Var = null;
            arrayList = arrayList2;
        } else {
            mt2Var = null;
            arrayList = null;
        }
        String strA = a("falseClickUrl", jSONObject);
        mt2 mt2Var2 = strA != null ? new mt2(strA, jSONObject.optLong("falseClickInterval", 0L)) : mt2Var;
        ir7 ir7Var = new ir7();
        String strA2 = a("trackingUrl", jSONObject);
        if (strA2 != null) {
            ir7Var.add(strA2);
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("trackingUrls");
        if (jSONArrayOptJSONArray2 != null) {
            defpackage.ar4 ar4VarE = u96.e();
            int length2 = jSONArrayOptJSONArray2.length();
            for (int i2 = 0; i2 < length2; i2++) {
                try {
                    aVar = jSONArrayOptJSONArray2.getString(i2);
                } catch (Throwable th) {
                    aVar = new k57.a(th);
                }
                if (!(aVar instanceof k57.a)) {
                    ar4VarE.add((String) aVar);
                }
            }
            objD = u96.d(ar4VarE);
        } else {
            objD = mt2Var;
        }
        if (objD != null) {
            ir7Var.addAll(objD);
        }
        return new ot3(arrayList, mt2Var2, defpackage.qn1.t0(defpackage.l1.d(ir7Var)), a("url", jSONObject), jSONObject.optLong("clickableDelay", 0L), jSONObject.optBoolean("webViewEnabled", false));
    }

    public static String a(String str, JSONObject jSONObject) throws rg4 {
        if (jSONObject.has(str)) {
            String strOptString = jSONObject.optString(str);
            if (strOptString != null && strOptString.length() != 0 && !strOptString.equals("null")) {
                return strOptString;
            }
            defpackage.qg.g("Native Ad json has not required attributes");
        }
        return null;
    }
}
