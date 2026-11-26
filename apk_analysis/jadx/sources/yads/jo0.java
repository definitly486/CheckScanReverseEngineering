package yads;

import defpackage.j59;
import defpackage.k57;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class jo0 {
    public static final Object a(String str, List list, boolean z) {
        Object aVar;
        Object aVar2;
        JSONObject jSONObject = (JSONObject) defpackage.qn1.T(list);
        int size = list.size() - 1;
        for (int i = 1; i < size; i++) {
            Object obj = list.get(i);
            obj.getClass();
            String str2 = (String) obj;
            try {
                jSONObject.getClass();
                Object objOpt = jSONObject.opt(str2);
                jSONObject = objOpt instanceof JSONObject ? (JSONObject) objOpt : null;
                aVar2 = j59.a;
            } catch (Throwable th) {
                aVar2 = new k57.a(th);
            }
            if (k57.a(aVar2) != null) {
                b(str, list, str2, z);
                throw null;
            }
        }
        Object objB0 = defpackage.qn1.b0(list);
        objB0.getClass();
        String str3 = (String) objB0;
        try {
            jSONObject.getClass();
            aVar = jSONObject.get(str3);
        } catch (Throwable th2) {
            aVar = new k57.a(th2);
        }
        if (k57.a(aVar) == null) {
            return aVar;
        }
        b(str, list, str3, z);
        throw null;
    }

    public static final void b(String str, List list, String str2, boolean z) {
        a(str, list, defpackage.me0.c("Missing property \"", str2, "\" in the dict."), z);
        throw null;
    }

    public static final void a(String str, List list, xo2 xo2Var, Object obj, boolean z) {
        String simpleName;
        if (!defpackage.aa4.e(obj, JSONObject.NULL)) {
            if (!(obj instanceof Number)) {
                if (!(obj instanceof JSONObject)) {
                    simpleName = obj instanceof JSONArray ? "Array" : obj.getClass().getSimpleName();
                } else {
                    simpleName = "Dict";
                }
            } else {
                simpleName = "Number";
            }
        } else {
            simpleName = "Null";
        }
        a(str, list, defpackage.n2.d("Incorrect value type: expected ", xo2Var.a(), ", got ", simpleName, "."), z);
        throw null;
    }

    public static final void a(String str, List list, String str2, boolean z) {
        wo2.a(defpackage.qn1.a0(list.subList(1, list.size()), null, defpackage.cg.d(str, "(", z ? "" : "<dict>, "), ")", 0, new defpackage.uf(3), 25), str2);
        throw null;
    }

    public static final CharSequence a(Object obj) {
        return wo2.b(obj);
    }

    public static final Object a(List list, Object obj, boolean z) {
        int i = !z ? 1 : 0;
        Object obj2 = list.get(i);
        JSONObject jSONObjectOptJSONObject = obj2 instanceof JSONObject ? (JSONObject) obj2 : null;
        if (jSONObjectOptJSONObject != null) {
            int size = list.size() - 1;
            for (int i2 = i + 1; i2 < size; i2++) {
                Object obj3 = list.get(i2);
                obj3.getClass();
                jSONObjectOptJSONObject = jSONObjectOptJSONObject.optJSONObject((String) obj3);
                if (jSONObjectOptJSONObject != null) {
                }
            }
            Object objB0 = defpackage.qn1.b0(list);
            objB0.getClass();
            return jSONObjectOptJSONObject.opt((String) objB0);
        }
        return obj;
    }
}
