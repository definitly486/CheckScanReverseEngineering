package yads;

import defpackage.nl3;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class qq3 {
    public static List a(ys4 ys4Var, zw2 zw2Var, JSONObject jSONObject, defpackage.cl4 cl4Var, defpackage.cl4 cl4Var2, st3 st3Var) {
        Object objA;
        if (zw2Var.b && jSONObject.has("color_map")) {
            return wq3.b(ys4Var, jSONObject, "color_map", cl4Var2, st3Var);
        }
        int i = zw2Var.a;
        if (i != 2) {
            if (i == 3) {
                return wq3.b(ys4Var, jSONObject, ((xw2) zw2Var).c, cl4Var2, st3Var);
            }
            return null;
        }
        List list = (List) ((yw2) zw2Var).c;
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        qv5 qv5Var = (qv5) cl4Var.getValue();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                objA = qv5Var.a(ys4Var, (xq3) list.get(i2), jSONObject);
            } catch (ft4 e) {
                ys4Var.a().b(e);
                objA = null;
            }
            if (objA != null) {
                arrayList.add(objA);
            }
        }
        if (st3Var.a(arrayList)) {
            return arrayList;
        }
        ys4Var.a().b(gt4.a(jSONObject, "color_map", arrayList));
        return null;
    }

    public static Object b(ys4 ys4Var, zw2 zw2Var, JSONObject jSONObject, String str, defpackage.cl4 cl4Var, defpackage.cl4 cl4Var2) {
        if (zw2Var.b && jSONObject.has(str)) {
            return wq3.c(ys4Var, jSONObject, str, cl4Var2);
        }
        int i = zw2Var.a;
        if (i != 2) {
            if (i == 3) {
                return wq3.c(ys4Var, jSONObject, ((xw2) zw2Var).c, cl4Var2);
            }
            return null;
        }
        try {
            return ((qv5) cl4Var.getValue()).a(ys4Var, (xq3) ((yw2) zw2Var).c, jSONObject);
        } catch (ft4 e) {
            ys4Var.a().b(e);
            return null;
        }
    }

    public static List c(ys4 ys4Var, zw2 zw2Var, JSONObject jSONObject, String str, defpackage.cl4 cl4Var, defpackage.cl4 cl4Var2) {
        Object objA;
        if (zw2Var.b && jSONObject.has(str)) {
            return wq3.d(ys4Var, jSONObject, str, cl4Var2);
        }
        int i = zw2Var.a;
        if (i != 2) {
            if (i == 3) {
                return wq3.d(ys4Var, jSONObject, ((xw2) zw2Var).c, cl4Var2);
            }
            return null;
        }
        List list = (List) ((yw2) zw2Var).c;
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        qv5 qv5Var = (qv5) cl4Var.getValue();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                objA = qv5Var.a(ys4Var, (xq3) list.get(i2), jSONObject);
            } catch (ft4 e) {
                ys4Var.a().b(e);
                objA = null;
            }
            if (objA != null) {
                arrayList.add(objA);
            }
        }
        return arrayList;
    }

    public static as2 b(ys4 ys4Var, zw2 zw2Var, JSONObject jSONObject, String str, n36 n36Var) {
        if (zw2Var.b && jSONObject.has(str)) {
            return oq3.a(ys4Var, jSONObject, str, n36Var, uq3.b);
        }
        int i = zw2Var.a;
        if (i == 2) {
            return (as2) ((yw2) zw2Var).c;
        }
        if (i == 3) {
            return oq3.a(ys4Var, jSONObject, ((xw2) zw2Var).c, n36Var, uq3.b);
        }
        return null;
    }

    public static as2 b(ys4 ys4Var, zw2 zw2Var, JSONObject jSONObject, String str, n36 n36Var, nl3 nl3Var) {
        if (zw2Var.b && jSONObject.has(str)) {
            return oq3.a(ys4Var, jSONObject, str, n36Var, nl3Var);
        }
        int i = zw2Var.a;
        if (i == 2) {
            return (as2) ((yw2) zw2Var).c;
        }
        if (i == 3) {
            return oq3.a(ys4Var, jSONObject, ((xw2) zw2Var).c, n36Var, nl3Var);
        }
        return null;
    }

    public static as2 b(ys4 ys4Var, zw2 zw2Var, JSONObject jSONObject, String str, n36 n36Var, nl3 nl3Var, l66 l66Var) {
        if (zw2Var.b && jSONObject.has(str)) {
            return oq3.a(ys4Var, jSONObject, str, n36Var, nl3Var, l66Var, (as2) null);
        }
        int i = zw2Var.a;
        if (i == 2) {
            return (as2) ((yw2) zw2Var).c;
        }
        if (i == 3) {
            return oq3.a(ys4Var, jSONObject, ((xw2) zw2Var).c, n36Var, nl3Var, l66Var, (as2) null);
        }
        return null;
    }

    public static Object a(zw2 zw2Var, JSONObject jSONObject, String str) {
        return a(zw2Var, jSONObject, str, uq3.b, uq3.a);
    }

    public static Object a(ys4 ys4Var, zw2 zw2Var, JSONObject jSONObject, String str) {
        return a(ys4Var, zw2Var, jSONObject, str, uq3.b, uq3.a);
    }

    public static Object a(zw2 zw2Var, JSONObject jSONObject, String str, nl3 nl3Var, l66 l66Var) {
        if (zw2Var.b && jSONObject.has(str)) {
            return wq3.a(jSONObject, str, nl3Var, l66Var);
        }
        int i = zw2Var.a;
        if (i == 2) {
            return ((yw2) zw2Var).c;
        }
        if (i == 3) {
            return wq3.a(jSONObject, ((xw2) zw2Var).c, nl3Var, l66Var);
        }
        throw gt4.a(str, jSONObject);
    }

    public static Object a(ys4 ys4Var, zw2 zw2Var, JSONObject jSONObject, String str, defpackage.cl4 cl4Var, defpackage.cl4 cl4Var2) {
        if (zw2Var.b && jSONObject.has(str)) {
            return wq3.a(ys4Var, jSONObject, str, cl4Var2);
        }
        int i = zw2Var.a;
        if (i != 2) {
            if (i == 3) {
                return wq3.a(ys4Var, jSONObject, ((xw2) zw2Var).c, cl4Var2);
            }
            throw gt4.a(str, jSONObject);
        }
        try {
            return ((qv5) cl4Var.getValue()).a(ys4Var, (xq3) ((yw2) zw2Var).c, jSONObject);
        } catch (ft4 e) {
            ft4 ft4Var = gt4.a;
            throw gt4.a(jSONObject, str, (Exception) e);
        }
    }

    public static Object a(ys4 ys4Var, zw2 zw2Var, JSONObject jSONObject, String str, nl3 nl3Var, l66 l66Var) {
        if (zw2Var.b && jSONObject.has(str)) {
            return wq3.a(ys4Var, jSONObject, str, nl3Var, l66Var);
        }
        int i = zw2Var.a;
        if (i == 2) {
            return ((yw2) zw2Var).c;
        }
        if (i == 3) {
            return wq3.a(ys4Var, jSONObject, ((xw2) zw2Var).c, nl3Var, l66Var);
        }
        return null;
    }

    public static as2 a(ys4 ys4Var, zw2 zw2Var, JSONObject jSONObject, String str, n36 n36Var) {
        if (zw2Var.b && jSONObject.has(str)) {
            return oq3.a(ys4Var, jSONObject, str, n36Var);
        }
        int i = zw2Var.a;
        if (i == 2) {
            return (as2) ((yw2) zw2Var).c;
        }
        if (i == 3) {
            return oq3.a(ys4Var, jSONObject, ((xw2) zw2Var).c, n36Var);
        }
        throw gt4.a(str, jSONObject);
    }

    public static as2 a(ys4 ys4Var, zw2 zw2Var, JSONObject jSONObject, String str, n36 n36Var, nl3 nl3Var) {
        if (zw2Var.b && jSONObject.has(str)) {
            y50 y50Var = oq3.a;
            return oq3.a(ys4Var, jSONObject, str, n36Var, nl3Var, uq3.a);
        }
        int i = zw2Var.a;
        if (i == 2) {
            return (as2) ((yw2) zw2Var).c;
        }
        if (i == 3) {
            String str2 = ((xw2) zw2Var).c;
            y50 y50Var2 = oq3.a;
            return oq3.a(ys4Var, jSONObject, str2, n36Var, nl3Var, uq3.a);
        }
        throw gt4.a(str, jSONObject);
    }

    public static as2 a(ys4 ys4Var, zw2 zw2Var, JSONObject jSONObject, String str, l66 l66Var) {
        u36 u36Var = w36.c;
        if (zw2Var.b && jSONObject.has(str)) {
            y50 y50Var = oq3.a;
            return oq3.a(ys4Var, jSONObject, str, u36Var, uq3.b, l66Var);
        }
        int i = zw2Var.a;
        if (i == 2) {
            return (as2) ((yw2) zw2Var).c;
        }
        if (i == 3) {
            String str2 = ((xw2) zw2Var).c;
            y50 y50Var2 = oq3.a;
            return oq3.a(ys4Var, jSONObject, str2, u36Var, uq3.b, l66Var);
        }
        throw gt4.a(str, jSONObject);
    }

    public static as2 a(ys4 ys4Var, zw2 zw2Var, JSONObject jSONObject, String str, n36 n36Var, nl3 nl3Var, l66 l66Var) {
        if (zw2Var.b && jSONObject.has(str)) {
            return oq3.a(ys4Var, jSONObject, str, n36Var, nl3Var, l66Var);
        }
        int i = zw2Var.a;
        if (i == 2) {
            return (as2) ((yw2) zw2Var).c;
        }
        if (i == 3) {
            return oq3.a(ys4Var, jSONObject, ((xw2) zw2Var).c, n36Var, nl3Var, l66Var);
        }
        throw gt4.a(str, jSONObject);
    }

    public static as2 a(ys4 ys4Var, zw2 zw2Var, JSONObject jSONObject, String str, n36 n36Var, nl3 nl3Var, as2 as2Var) {
        if (zw2Var.b && jSONObject.has(str)) {
            y50 y50Var = oq3.a;
            return oq3.a(ys4Var, jSONObject, str, n36Var, nl3Var, uq3.a, as2Var);
        }
        int i = zw2Var.a;
        if (i == 2) {
            return (as2) ((yw2) zw2Var).c;
        }
        if (i != 3) {
            return null;
        }
        String str2 = ((xw2) zw2Var).c;
        y50 y50Var2 = oq3.a;
        return oq3.a(ys4Var, jSONObject, str2, n36Var, nl3Var, uq3.a, as2Var);
    }

    public static as2 a(ys4 ys4Var, zw2 zw2Var, JSONObject jSONObject, String str, n36 n36Var, nl3 nl3Var, l66 l66Var, as2 as2Var) {
        if (zw2Var.b && jSONObject.has(str)) {
            return oq3.a(ys4Var, jSONObject, str, n36Var, nl3Var, l66Var, as2Var);
        }
        int i = zw2Var.a;
        if (i == 2) {
            return (as2) ((yw2) zw2Var).c;
        }
        if (i == 3) {
            return oq3.a(ys4Var, jSONObject, ((xw2) zw2Var).c, n36Var, nl3Var, l66Var, as2Var);
        }
        return null;
    }

    public static List a(ys4 ys4Var, zw2 zw2Var, JSONObject jSONObject, String str, defpackage.cl4 cl4Var, defpackage.cl4 cl4Var2, st3 st3Var) {
        Object objA;
        if (zw2Var.b && jSONObject.has(str)) {
            return wq3.a(ys4Var, jSONObject, str, cl4Var2, st3Var);
        }
        int i = zw2Var.a;
        if (i != 2) {
            if (i == 3) {
                return wq3.a(ys4Var, jSONObject, ((xw2) zw2Var).c, cl4Var2, st3Var);
            }
            throw gt4.a(str, jSONObject);
        }
        List list = (List) ((yw2) zw2Var).c;
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        qv5 qv5Var = (qv5) cl4Var.getValue();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                objA = qv5Var.a(ys4Var, (xq3) list.get(i2), jSONObject);
            } catch (ft4 e) {
                ys4Var.a().b(e);
                objA = null;
            }
            if (objA != null) {
                arrayList.add(objA);
            }
        }
        if (st3Var.a(arrayList)) {
            return arrayList;
        }
        throw gt4.a(jSONObject, str, arrayList);
    }

    public static List a(ys4 ys4Var, zw2 zw2Var, JSONObject jSONObject, nl3 nl3Var, st3 st3Var) {
        l66 l66Var = uq3.a;
        if (zw2Var.b && jSONObject.has("transition_triggers")) {
            return wq3.a(ys4Var, jSONObject, "transition_triggers", nl3Var, st3Var, l66Var);
        }
        int i = zw2Var.a;
        if (i == 2) {
            return (List) ((yw2) zw2Var).c;
        }
        if (i == 3) {
            return wq3.a(ys4Var, jSONObject, ((xw2) zw2Var).c, nl3Var, st3Var, l66Var);
        }
        return null;
    }
}
