package yads;

import defpackage.nl3;
import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ty0 {
    public static final u66 a(vq0 vq0Var, nl3 nl3Var, u66 u66Var) {
        if (!(u66Var instanceof m66)) {
            vq0Var.getClass();
            o01.a(vq0Var, new IllegalArgumentException("Action requires array variable"));
            return u66Var;
        }
        Object objB = u66Var.b();
        JSONArray jSONArray = objB instanceof JSONArray ? (JSONArray) objB : null;
        if (jSONArray != null) {
            ((m66) u66Var).b((JSONArray) nl3Var.invoke(jSONArray));
            return u66Var;
        }
        vq0Var.getClass();
        o01.a(vq0Var, new IllegalArgumentException("Invalid variable value"));
        return u66Var;
    }

    public static final void a(vq0 vq0Var, String str, fs2 fs2Var, nl3 nl3Var) {
        l76.a(vq0Var, str, fs2Var, new defpackage.yt0(5, vq0Var, nl3Var));
    }

    public static final JSONArray a(JSONArray jSONArray, nl3 nl3Var) throws JSONException {
        int length = jSONArray.length();
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            Object obj = jSONArray.get(i);
            if (obj == null) {
                obj = null;
            }
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        nl3Var.invoke(arrayList2);
        return new JSONArray((Collection) arrayList2);
    }
}
