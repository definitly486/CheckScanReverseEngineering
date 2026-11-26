package yads;

import defpackage.k57;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class gi {
    public static final void a(String str, List list, boolean z) {
        Object obj = list.get(0);
        obj.getClass();
        int length = ((JSONArray) obj).length();
        Object obj2 = list.get(1);
        obj2.getClass();
        long jLongValue = ((Long) obj2).longValue();
        if (jLongValue < length) {
            return;
        }
        a("array", str, list, "Requested index (" + jLongValue + ") out of bounds array size (" + length + ").", z);
        throw null;
    }

    public static final Object b(String str, List list, boolean z) {
        a(str, list, z);
        Object obj = list.get(0);
        obj.getClass();
        Object obj2 = list.get(1);
        obj2.getClass();
        return ((JSONArray) obj).get((int) ((Long) obj2).longValue());
    }

    public static final String b(String str) {
        Object aVar;
        if (str == null) {
            return null;
        }
        try {
            aVar = new q46(p46.a(str));
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        q46 q46Var = (q46) aVar;
        if (q46Var != null) {
            return q46Var.a;
        }
        return null;
    }

    public static final Object a(String str, List list) {
        Object aVar;
        try {
            a(str, list, false);
            Object obj = list.get(0);
            obj.getClass();
            Object obj2 = list.get(1);
            obj2.getClass();
            aVar = ((JSONArray) obj).get((int) ((Long) obj2).longValue());
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            return null;
        }
        return aVar;
    }

    public static final l20 a(String str) {
        Object aVar;
        if (str == null) {
            return null;
        }
        try {
            aVar = new l20(k20.a(str));
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        return (l20) (aVar instanceof k57.a ? null : aVar);
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
        a("array", str, list, defpackage.n2.d("Incorrect value type: expected ", xo2Var.a(), ", got ", simpleName, "."), z);
        throw null;
    }

    public static void a(String str, String str2, List list) {
        a("array", str, list, str2, false);
        throw null;
    }

    public static final void a(String str, String str2, List list, String str3, boolean z) {
        String strC;
        if (z) {
            strC = "";
        } else {
            strC = defpackage.me0.c("<", str, ">, ");
        }
        wo2.a(defpackage.qn1.a0(list.subList(1, list.size()), null, defpackage.cg.d(str2, "(", strC), ")", 0, new defpackage.yq2(4), 25), str3);
        throw null;
    }

    public static final CharSequence a(Object obj) {
        return wo2.b(obj);
    }
}
