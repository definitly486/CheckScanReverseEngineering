package yads;

import defpackage.lda;
import defpackage.u96;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import yads.u13;
import yads.xo2;

/* JADX INFO: loaded from: classes6.dex */
public abstract class u13 {
    static {
        new o13();
    }

    public abstract Object a(yo2 yo2Var, uo2 uo2Var, List list);

    public abstract List a();

    public final s13 a(List list, defpackage.bm3 bm3Var) {
        int size = a().size();
        int size2 = b() ? Integer.MAX_VALUE : a().size();
        if (list.size() < size || list.size() > size2) {
            return new p13(size);
        }
        int size3 = list.size();
        for (int i = 0; i < size3; i++) {
            List listA = a();
            int iG = u96.g(a());
            if (i <= iG) {
                iG = i;
            }
            xo2 xo2Var = ((w13) listA.get(iG)).a;
            if (!((Boolean) bm3Var.invoke(list.get(i), xo2Var)).booleanValue()) {
                return new q13(xo2Var, (xo2) list.get(i));
            }
        }
        return r13.a;
    }

    public final Object b(yo2 yo2Var, uo2 uo2Var, List list) {
        xo2 xo2Var;
        xo2 xo2Var2;
        Object objA = a(yo2Var, uo2Var, list);
        xo2 xo2Var3 = xo2.INTEGER;
        boolean z = objA instanceof Long;
        if (z) {
            xo2Var = xo2.INTEGER;
        } else if (objA instanceof Double) {
            xo2Var = xo2.NUMBER;
        } else if (objA instanceof Boolean) {
            xo2Var = xo2.BOOLEAN;
        } else if (objA instanceof String) {
            xo2Var = xo2.STRING;
        } else if (objA instanceof fd0) {
            xo2Var = xo2.DATETIME;
        } else if (objA instanceof l20) {
            xo2Var = xo2.COLOR;
        } else if (objA instanceof q46) {
            xo2Var = xo2.URL;
        } else if (objA instanceof JSONObject) {
            xo2Var = xo2.DICT;
        } else {
            if (!(objA instanceof JSONArray)) {
                if (objA == null) {
                    defpackage.qg.h("Unable to find type for null");
                    return null;
                }
                defpackage.qg.h("Unable to find type for ".concat(objA.getClass().getName()));
                return null;
            }
            xo2Var = xo2.ARRAY;
        }
        if (xo2Var == d()) {
            return objA;
        }
        if (z) {
            xo2Var2 = xo2.INTEGER;
        } else if (objA instanceof Double) {
            xo2Var2 = xo2.NUMBER;
        } else if (objA instanceof Boolean) {
            xo2Var2 = xo2.BOOLEAN;
        } else if (objA instanceof String) {
            xo2Var2 = xo2.STRING;
        } else if (objA instanceof fd0) {
            xo2Var2 = xo2.DATETIME;
        } else if (objA instanceof l20) {
            xo2Var2 = xo2.COLOR;
        } else if (objA instanceof q46) {
            xo2Var2 = xo2.URL;
        } else if (objA instanceof JSONObject) {
            xo2Var2 = xo2.DICT;
        } else {
            if (!(objA instanceof JSONArray)) {
                if (objA == null) {
                    defpackage.qg.h("Unable to find type for null");
                    return null;
                }
                defpackage.qg.h("Unable to find type for ".concat(objA.getClass().getName()));
                return null;
            }
            xo2Var2 = xo2.ARRAY;
        }
        throw new vo2("Function " + this + " returned " + xo2Var2 + ", but " + d() + " was expected.");
    }

    public abstract String c();

    public abstract xo2 d();

    public abstract boolean e();

    public final String toString() {
        return defpackage.qn1.a0(a(), null, defpackage.ni0.c(c(), "("), ")", 0, new defpackage.xr2(4), 25);
    }

    public static final boolean a(xo2 xo2Var, xo2 xo2Var2) {
        return xo2Var == xo2Var2;
    }

    public final s13 a(List list) {
        return a(list, new lda());
    }

    public static final boolean a(u13 u13Var, xo2 xo2Var, xo2 xo2Var2) {
        if (xo2Var != xo2Var2) {
            u13Var.getClass();
            if (xo2Var != xo2.INTEGER || t13.a[xo2Var2.ordinal()] != 1) {
                return false;
            }
        }
        return true;
    }

    public static final CharSequence a(w13 w13Var) {
        boolean zB = w13Var.b();
        xo2 xo2VarA = w13Var.a();
        if (!zB) {
            return xo2VarA.toString();
        }
        return "vararg " + xo2VarA;
    }

    public final s13 b(List list) {
        return a(list, new defpackage.bm3() { // from class: kda
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return Boolean.valueOf(u13.a(this.b, (xo2) obj, (xo2) obj2));
            }
        });
    }

    public final boolean b() {
        w13 w13Var = (w13) defpackage.qn1.c0(a());
        if (w13Var != null) {
            return w13Var.b;
        }
        return false;
    }
}
