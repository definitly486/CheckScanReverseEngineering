package yads;

import defpackage.j59;
import defpackage.k57;
import defpackage.u96;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class zq3 {
    public static final defpackage.xb4 a = defpackage.bd4.a(new defpackage.uf0(8));

    public static Map a(JSONObject jSONObject) {
        defpackage.uz4 uz4Var = new defpackage.uz4();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strOptString = jSONObject.optString(next);
            if (strOptString != null && strOptString.length() != 0 && !"null".equals(strOptString)) {
                uz4Var.put(next, strOptString);
            }
        }
        return uz4Var.b();
    }

    public static List b(String str, JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return null;
        }
        defpackage.ar4 ar4VarE = u96.e();
        int length = jSONArrayOptJSONArray.length();
        for (int i = 0; i < length; i++) {
            String strOptString = jSONArrayOptJSONArray.optString(i);
            if (strOptString != null && strOptString.length() != 0 && !"null".equals(strOptString)) {
                ar4VarE.add(strOptString);
            }
        }
        return u96.d(ar4VarE);
    }

    public static final JSONObject a(String str) {
        Object aVar;
        try {
            aVar = new JSONObject(str);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        return (JSONObject) aVar;
    }

    public static final Integer a(String str, JSONObject jSONObject) {
        Object aVar;
        try {
            aVar = Integer.valueOf(jSONObject.getInt(str));
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        return (Integer) aVar;
    }

    public static final j59 a(defpackage.dc4 dc4Var) {
        dc4Var.a = false;
        dc4Var.b = true;
        return j59.a;
    }
}
