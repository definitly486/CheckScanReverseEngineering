package yads;

import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class pq3 {
    public static final l66 a = new defpackage.sg(12);

    public static zw2 a(tr4 tr4Var, JSONObject jSONObject, boolean z, zw2 zw2Var, nl3 nl3Var, st3 st3Var) {
        List listA = wq3.a(tr4Var, jSONObject, "transition_triggers", nl3Var, st3Var, uq3.a);
        if (listA != null) {
            return new yw2(listA, z);
        }
        String strA = a(tr4Var, jSONObject, "transition_triggers");
        if (strA != null) {
            return new xw2(strA, z);
        }
        if (zw2Var != null) {
            return ax2.a(zw2Var, z);
        }
        zw2 zw2Var2 = z ? ww2.c : vw2.c;
        zw2Var2.getClass();
        return zw2Var2;
    }

    public static zw2 b(tr4 tr4Var, JSONObject jSONObject, String str, n36 n36Var, boolean z, zw2 zw2Var, nl3 nl3Var, l66 l66Var) {
        as2 as2VarA = oq3.a(tr4Var, jSONObject, str, n36Var, nl3Var, l66Var, (as2) null);
        if (as2VarA != null) {
            return new yw2(as2VarA, z);
        }
        String strA = a(tr4Var, jSONObject, str);
        if (strA != null) {
            return new xw2(strA, z);
        }
        if (zw2Var != null) {
            return ax2.a(zw2Var, z);
        }
        zw2 zw2Var2 = z ? ww2.c : vw2.c;
        zw2Var2.getClass();
        return zw2Var2;
    }

    public static zw2 c(tr4 tr4Var, JSONObject jSONObject, String str, boolean z, zw2 zw2Var, defpackage.cl4 cl4Var) {
        List listD = wq3.d(tr4Var, jSONObject, str, cl4Var);
        if (listD != null) {
            return new yw2(listD, z);
        }
        String strA = a(tr4Var, jSONObject, str);
        if (strA != null) {
            return new xw2(strA, z);
        }
        if (zw2Var != null) {
            return ax2.a(zw2Var, z);
        }
        zw2 zw2Var2 = z ? ww2.c : vw2.c;
        zw2Var2.getClass();
        return zw2Var2;
    }

    public static zw2 b(tr4 tr4Var, JSONObject jSONObject, String str, n36 n36Var, boolean z, zw2 zw2Var) {
        return b(tr4Var, jSONObject, str, n36Var, z, zw2Var, uq3.b, uq3.a);
    }

    public static /* synthetic */ boolean a(String str) {
        return !str.isEmpty();
    }

    public static zw2 a(tr4 tr4Var, JSONObject jSONObject, String str, boolean z, zw2 zw2Var) {
        return a(tr4Var, jSONObject, str, z, zw2Var, uq3.b, uq3.a);
    }

    public static zw2 b(tr4 tr4Var, JSONObject jSONObject, String str, boolean z, zw2 zw2Var, nl3 nl3Var, l66 l66Var) {
        Object objA = wq3.a(tr4Var, jSONObject, str, nl3Var, l66Var);
        if (objA != null) {
            return new yw2(objA, z);
        }
        String strA = a(tr4Var, jSONObject, str);
        if (strA != null) {
            return new xw2(strA, z);
        }
        if (zw2Var != null) {
            return ax2.a(zw2Var, z);
        }
        zw2 zw2Var2 = z ? ww2.c : vw2.c;
        zw2Var2.getClass();
        return zw2Var2;
    }

    public static zw2 a(tr4 tr4Var, JSONObject jSONObject, String str, n36 n36Var, boolean z, zw2 zw2Var) {
        return a(tr4Var, jSONObject, str, n36Var, z, zw2Var, uq3.b, uq3.a);
    }

    public static zw2 a(tr4 tr4Var, JSONObject jSONObject, String str, boolean z, zw2 zw2Var, nl3 nl3Var, l66 l66Var) {
        zw2 zw2VarA;
        try {
            return new yw2(wq3.a(jSONObject, str, nl3Var, l66Var), z);
        } catch (ft4 e) {
            if (e.b != ht4.MISSING_VALUE || (zw2VarA = a(z, a(tr4Var, jSONObject, str), zw2Var)) == null) {
                throw e;
            }
            return zw2VarA;
        }
    }

    public static zw2 b(tr4 tr4Var, JSONObject jSONObject, String str, boolean z, zw2 zw2Var, defpackage.cl4 cl4Var) {
        Object objC = wq3.c(tr4Var, jSONObject, str, cl4Var);
        if (objC != null) {
            return new yw2(objC, z);
        }
        String strA = a(tr4Var, jSONObject, str);
        if (strA != null) {
            return new xw2(strA, z);
        }
        if (zw2Var != null) {
            return ax2.a(zw2Var, z);
        }
        zw2 zw2Var2 = z ? ww2.c : vw2.c;
        zw2Var2.getClass();
        return zw2Var2;
    }

    public static zw2 a(tr4 tr4Var, JSONObject jSONObject, String str, boolean z, zw2 zw2Var, defpackage.cl4 cl4Var) {
        zw2 zw2VarA;
        try {
            return new yw2(wq3.a(tr4Var, jSONObject, str, cl4Var), z);
        } catch (ft4 e) {
            if (e.b != ht4.MISSING_VALUE || (zw2VarA = a(z, a(tr4Var, jSONObject, str), zw2Var)) == null) {
                throw e;
            }
            return zw2VarA;
        }
    }

    public static zw2 b(tr4 tr4Var, JSONObject jSONObject, String str, boolean z, zw2 zw2Var) {
        return b(tr4Var, jSONObject, str, z, zw2Var, uq3.b, uq3.a);
    }

    public static zw2 a(tr4 tr4Var, JSONObject jSONObject, String str, n36 n36Var, boolean z, zw2 zw2Var, nl3 nl3Var, l66 l66Var) {
        zw2 zw2VarA;
        try {
            return new yw2(oq3.a(tr4Var, jSONObject, str, n36Var, nl3Var, l66Var), z);
        } catch (ft4 e) {
            if (e.b != ht4.MISSING_VALUE || (zw2VarA = a(z, a(tr4Var, jSONObject, str), zw2Var)) == null) {
                throw e;
            }
            return zw2VarA;
        }
    }

    public static zw2 a(tr4 tr4Var, JSONObject jSONObject, String str, boolean z, zw2 zw2Var, defpackage.cl4 cl4Var, st3 st3Var) {
        zw2 zw2VarA;
        try {
            return new yw2(wq3.a(tr4Var, jSONObject, str, cl4Var, st3Var), z);
        } catch (ft4 e) {
            if (e.b != ht4.MISSING_VALUE || (zw2VarA = a(z, a(tr4Var, jSONObject, str), zw2Var)) == null) {
                throw e;
            }
            return zw2VarA;
        }
    }

    public static String a(ys4 ys4Var, JSONObject jSONObject, String str) {
        return (String) wq3.a(ys4Var, jSONObject, defpackage.bj.c("$", str), uq3.b, a);
    }

    public static zw2 a(boolean z, String str, zw2 zw2Var) {
        if (str != null) {
            return new xw2(str, z);
        }
        if (zw2Var != null) {
            return ax2.a(zw2Var, z);
        }
        if (!z) {
            return null;
        }
        zw2 zw2Var2 = z ? ww2.c : vw2.c;
        zw2Var2.getClass();
        return zw2Var2;
    }
}
