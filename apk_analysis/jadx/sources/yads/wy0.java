package yads;

import defpackage.lj7;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class wy0 implements yy0 {
    public static final u66 a(vq0 vq0Var, Object obj, String str, u66 u66Var) throws JSONException {
        if (!(u66Var instanceof p66)) {
            o01.a(vq0Var, new IllegalArgumentException("dict_set_value action requires dict variable"));
            return u66Var;
        }
        Object objB = u66Var.b();
        JSONObject jSONObject = objB instanceof JSONObject ? (JSONObject) objB : null;
        if (jSONObject == null) {
            o01.a(vq0Var, new IllegalArgumentException("Invalid variable value"));
            return u66Var;
        }
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            jSONObject2.put(next, jSONObject.get(next));
        }
        if (obj != null) {
            ((p66) u66Var).b(jSONObject2.put(str, obj));
            return u66Var;
        }
        jSONObject2.remove(str);
        ((p66) u66Var).b(jSONObject2);
        return u66Var;
    }

    public static void a(wt0 wt0Var, vq0 vq0Var, fs2 fs2Var) {
        String str = (String) wt0Var.c.a(fs2Var);
        String str2 = (String) wt0Var.a.a(fs2Var);
        oe2 oe2Var = wt0Var.b;
        l76.a(vq0Var, str, fs2Var, new lj7(vq0Var, oe2Var != null ? o01.c(oe2Var, fs2Var) : null, str2));
    }

    @Override // yads.yy0
    public final boolean a(String str, ry0 ry0Var, vq0 vq0Var, fs2 fs2Var) {
        if (!(ry0Var instanceof dy0)) {
            return false;
        }
        a(((dy0) ry0Var).a, vq0Var, fs2Var);
        return true;
    }
}
