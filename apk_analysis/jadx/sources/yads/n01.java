package yads;

import defpackage.ta8;
import defpackage.u96;
import defpackage.vv9;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class n01 implements yy0 {
    public static m01 a(vq0 vq0Var, m01 m01Var, List list) {
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            String str = (String) obj;
            try {
                m01Var = m01Var.get(str);
                if (defpackage.aa4.e(m01Var, l01.a)) {
                    o01.a(vq0Var, new RuntimeException("Element with path '" + defpackage.qn1.a0(defpackage.qn1.o0(list, i2), "/", null, null, 0, null, 62) + "' is not a structure"));
                    return null;
                }
                if (m01Var == null) {
                    o01.a(vq0Var, new RuntimeException("Element with path '" + defpackage.qn1.a0(defpackage.qn1.o0(list, i2), "/", null, null, 0, null, 62) + "' is not found"));
                    return null;
                }
                i = i2;
            } catch (NumberFormatException e) {
                o01.a(vq0Var, new RuntimeException(defpackage.me0.c("Unable to use '", str, "' as array index"), e));
                return null;
            }
        }
        return m01Var;
    }

    public final boolean a(q01 q01Var, vq0 vq0Var, fs2 fs2Var) {
        String str = (String) q01Var.c.a(fs2Var);
        String str2 = (String) q01Var.a.a(fs2Var);
        List listY = ta8.Y(str2, new String[]{"/"});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listY) {
            if (((String) obj).length() > 0) {
                arrayList.add(obj);
            }
        }
        Object objC = o01.c(q01Var.b, fs2Var);
        if (str2.length() > 0 && arrayList.isEmpty()) {
            o01.a(vq0Var, new RuntimeException(defpackage.me0.c("Malformed path '", str2, "': all path segments are empty")));
            return true;
        }
        l76.a(vq0Var, str, fs2Var, new vv9(this, vq0Var, arrayList, objC, 1));
        return true;
    }

    public static final u66 a(n01 n01Var, vq0 vq0Var, List list, Object obj, u66 u66Var) {
        if (u66Var instanceof m66) {
            m66 m66Var = (m66) u66Var;
            n01Var.getClass();
            Object objB = m66Var.b();
            objB.getClass();
            JSONArray jSONArray = (JSONArray) objB;
            m01 m01VarA = a(vq0Var, new j01(jSONArray), defpackage.qn1.P(list));
            if (m01VarA != null && a(vq0Var, m01VarA, (String) defpackage.qn1.b0(list), obj)) {
                m66Var.b(jSONArray);
                return u66Var;
            }
        } else if (u66Var instanceof p66) {
            p66 p66Var = (p66) u66Var;
            n01Var.getClass();
            Object objB2 = p66Var.b();
            objB2.getClass();
            JSONObject jSONObject = (JSONObject) objB2;
            m01 m01VarA2 = a(vq0Var, new k01(jSONObject), defpackage.qn1.P(list));
            if (m01VarA2 != null && a(vq0Var, m01VarA2, (String) defpackage.qn1.b0(list), obj)) {
                p66Var.b(jSONObject);
            }
        } else {
            o01.a(vq0Var, new RuntimeException("Action requires array or dictionary variable"));
            return u66Var;
        }
        return u66Var;
    }

    public static boolean a(vq0 vq0Var, m01 m01Var, String str, Object obj) {
        try {
            m01Var.a(obj, str);
            return true;
        } catch (IndexOutOfBoundsException e) {
            o01.a(vq0Var, new RuntimeException(defpackage.me0.c("Position '", str, "' is out of array bounds"), e));
            return false;
        } catch (NumberFormatException e2) {
            o01.a(vq0Var, new RuntimeException(defpackage.me0.c("Unable to use '", str, "' as array index"), e2));
            return false;
        }
    }

    @Override // yads.yy0
    public final boolean a(String str, ry0 ry0Var, vq0 vq0Var, fs2 fs2Var) {
        if (ry0Var instanceof py0) {
            return a(((py0) ry0Var).a, vq0Var, fs2Var);
        }
        return false;
    }
}
