package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.ir7;
import defpackage.k57;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class lp2 {
    public static Set a(JSONArray jSONArray) {
        Object aVar;
        try {
            ir7 ir7Var = new ir7();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                ir7Var.add(new jp2(kp2.valueOf(jSONObject.getString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)), jSONObject.getString("value")));
            }
            aVar = defpackage.l1.d(ir7Var);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) != null) {
            Objects.toString(jSONArray);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        return (Set) aVar;
    }

    public static String a(Set set) throws JSONException {
        if (set == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            jp2 jp2Var = (jp2) it.next();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, jp2Var.a.name());
            jSONObject.put("value", jp2Var.b);
            jSONArray = jSONArray.put(jSONObject);
        }
        if (jSONArray != null) {
            return jSONArray.toString();
        }
        return null;
    }

    public static Set a(String str) {
        Object aVar;
        try {
            aVar = a(new JSONArray(str));
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        return (Set) aVar;
    }
}
