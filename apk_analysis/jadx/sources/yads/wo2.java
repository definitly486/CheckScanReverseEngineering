package yads;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class wo2 {
    public static final void a(cz5 cz5Var, Object obj, Object obj2) {
        xo2 xo2Var;
        String strC;
        xo2 xo2Var2;
        xo2 xo2Var3;
        String str = b(obj) + " " + cz5Var + " " + b(obj2);
        if (obj.getClass().equals(obj2.getClass())) {
            xo2 xo2Var4 = xo2.INTEGER;
            if (obj instanceof Long) {
                xo2Var = xo2.INTEGER;
            } else if (obj instanceof Double) {
                xo2Var = xo2.NUMBER;
            } else if (obj instanceof Boolean) {
                xo2Var = xo2.BOOLEAN;
            } else if (obj instanceof String) {
                xo2Var = xo2.STRING;
            } else if (obj instanceof fd0) {
                xo2Var = xo2.DATETIME;
            } else if (obj instanceof l20) {
                xo2Var = xo2.COLOR;
            } else if (obj instanceof q46) {
                xo2Var = xo2.URL;
            } else if (obj instanceof JSONObject) {
                xo2Var = xo2.DICT;
            } else {
                if (!(obj instanceof JSONArray)) {
                    throw new vo2("Unable to find type for ".concat(obj.getClass().getName()));
                }
                xo2Var = xo2.ARRAY;
            }
            strC = defpackage.ni0.c(xo2Var.a(), " type");
        } else {
            xo2 xo2Var5 = xo2.INTEGER;
            if (obj instanceof Long) {
                xo2Var2 = xo2.INTEGER;
            } else if (obj instanceof Double) {
                xo2Var2 = xo2.NUMBER;
            } else if (obj instanceof Boolean) {
                xo2Var2 = xo2.BOOLEAN;
            } else if (obj instanceof String) {
                xo2Var2 = xo2.STRING;
            } else if (obj instanceof fd0) {
                xo2Var2 = xo2.DATETIME;
            } else if (obj instanceof l20) {
                xo2Var2 = xo2.COLOR;
            } else if (obj instanceof q46) {
                xo2Var2 = xo2.URL;
            } else if (obj instanceof JSONObject) {
                xo2Var2 = xo2.DICT;
            } else {
                if (!(obj instanceof JSONArray)) {
                    throw new vo2("Unable to find type for ".concat(obj.getClass().getName()));
                }
                xo2Var2 = xo2.ARRAY;
            }
            String strA = xo2Var2.a();
            if (obj2 instanceof Long) {
                xo2Var3 = xo2.INTEGER;
            } else if (obj2 instanceof Double) {
                xo2Var3 = xo2.NUMBER;
            } else if (obj2 instanceof Boolean) {
                xo2Var3 = xo2.BOOLEAN;
            } else if (obj2 instanceof String) {
                xo2Var3 = xo2.STRING;
            } else if (obj2 instanceof fd0) {
                xo2Var3 = xo2.DATETIME;
            } else if (obj2 instanceof l20) {
                xo2Var3 = xo2.COLOR;
            } else if (obj2 instanceof q46) {
                xo2Var3 = xo2.URL;
            } else if (obj2 instanceof JSONObject) {
                xo2Var3 = xo2.DICT;
            } else {
                if (!(obj2 instanceof JSONArray)) {
                    throw new vo2("Unable to find type for ".concat(obj2.getClass().getName()));
                }
                xo2Var3 = xo2.ARRAY;
            }
            strC = defpackage.pg.g("different types: ", strA, " and ", xo2Var3.a());
        }
        a(str, "Operator '" + cz5Var + "' cannot be applied to " + strC + ".", (RuntimeException) null);
        throw null;
    }

    public static final String b(Object obj) {
        if (obj instanceof JSONArray) {
            return "<array>";
        }
        if (obj instanceof JSONObject) {
            return "<dict>";
        }
        return obj instanceof String ? defpackage.ch.c(obj, "'", "'") : obj.toString();
    }

    public static final CharSequence c(Object obj) {
        return b(obj);
    }

    public static final void a(String str, String str2, RuntimeException runtimeException) {
        throw new vo2(runtimeException, defpackage.pg.g("Failed to evaluate [", str, "]. ", str2));
    }

    public static void a(String str, String str2, List list) {
        a(a(str, list), str2, (RuntimeException) null);
        throw null;
    }

    public static final void a(String str, ArrayList arrayList, String str2, vo2 vo2Var) {
        a(a(str, arrayList), str2, vo2Var);
        throw null;
    }

    public static final String a(String str, List list) {
        return defpackage.qn1.a0(list, null, defpackage.ni0.c(str, "("), ")", 0, new defpackage.ws0(9), 25);
    }

    public static final CharSequence a(Object obj) {
        return b(obj);
    }

    public static final String a(String str, ArrayList arrayList) {
        if (arrayList.size() > 1) {
            return defpackage.qn1.a0(arrayList.subList(1, arrayList.size()), StringUtils.COMMA, defpackage.ni0.c(str, "("), ")", 0, null, 56);
        }
        return defpackage.ni0.c(str, "()");
    }

    public static /* synthetic */ void a(String str, String str2) {
        a(str, str2, (RuntimeException) null);
        throw null;
    }

    public static final String a(List list) {
        return defpackage.qn1.a0(list, ", ", null, null, 0, new defpackage.yc2(8), 30);
    }
}
