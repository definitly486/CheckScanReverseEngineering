package yads;

import android.content.Context;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;
import defpackage.k57;
import defpackage.ra8;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class dy4 {
    public final v46 a;
    public final gt2 b;

    public dy4(Context context, v46 v46Var) {
        this.a = v46Var;
        this.b = new gt2(context, this);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a9  */
    public final by4 a(JSONObject jSONObject) throws JSONException, rg4 {
        defpackage.uz4 uz4Var;
        Object aVar;
        Object next;
        String strOptString;
        Object obj;
        JSONObject jSONObject2 = jSONObject.has("deeplinkLaunchParams") ? jSONObject.getJSONObject("deeplinkLaunchParams") : jSONObject;
        String strOptString2 = jSONObject2.optString("package");
        if (strOptString2 == null || strOptString2.length() == 0 || strOptString2.equals("null")) {
            defpackage.qg.g("Native Ad json has not required attributes");
            return null;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject(TJAdUnitConstants.String.EXTRAS);
        gt2 gt2Var = this.b;
        gt2Var.getClass();
        if (jSONObjectOptJSONObject == null) {
            uz4Var = null;
        } else {
            defpackage.uz4 uz4Var2 = new defpackage.uz4();
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            while (itKeys.hasNext()) {
                String next2 = itKeys.next();
                if (!jSONObjectOptJSONObject.isNull(next2)) {
                    Object ct2Var = jSONObjectOptJSONObject.get(next2);
                    if (ct2Var instanceof JSONObject) {
                        et2 et2Var = gt2Var.a;
                        JSONObject jSONObject3 = (JSONObject) ct2Var;
                        String strOptString3 = jSONObject3.optString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                        try {
                            obj = jSONObject3.get("value");
                        } catch (JSONException unused) {
                            obj = null;
                        }
                        if (defpackage.aa4.e(strOptString3, "parcelable") && defpackage.aa4.e(obj, "null")) {
                            ct2Var = ft2.a;
                        } else if (defpackage.aa4.e(strOptString3, "intent") && (obj instanceof JSONObject)) {
                            ct2Var = new ct2(et2Var.a, et2Var.b.a((JSONObject) obj));
                        } else {
                            ct2Var = null;
                        }
                    }
                    if (ct2Var != null) {
                        uz4Var2.put(next2, ct2Var);
                    }
                }
            }
            defpackage.uz4 uz4VarB = uz4Var2.b();
            if (uz4VarB.isEmpty()) {
                uz4Var = null;
            } else {
                uz4Var = uz4VarB;
            }
        }
        try {
            aVar = Integer.valueOf(jSONObject2.getInt("flags"));
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        Integer num = (Integer) aVar;
        String strA = br3.a("launchMode", jSONObject2);
        ui0.b.getClass();
        Iterator<E> it = ui0.f.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!ra8.v(((ui0) next).name(), strA, true));
        ui0 ui0Var = (ui0) next;
        if (ui0Var == null) {
            ui0Var = ui0.DEFAULT;
        }
        String strA2 = br3.a("className", jSONObject2);
        if (strA2 == null) {
            this.a.getClass();
            strOptString = v46.a("url", jSONObject);
        } else {
            strOptString = jSONObject.optString("url");
        }
        String str = strOptString;
        String strA3 = br3.a("deeplinkType", jSONObject);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("trackingUrls");
        List listA = jSONArrayOptJSONArray == null ? null : j16.a(jSONArrayOptJSONArray);
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("fallbackTrackingUrls");
        return new by4(strOptString2, str, uz4Var, num, ui0Var, listA, jSONArrayOptJSONArray2 != null ? j16.a(jSONArrayOptJSONArray2) : null, strA3, strA2);
    }
}
