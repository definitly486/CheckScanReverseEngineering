package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class y63 extends u13 {
    public static final y63 a = new y63();
    public static final List b;
    public static final xo2 c;

    static {
        xo2 xo2Var = xo2.STRING;
        b = u96.i(new w13(xo2Var, 0), new w13(xo2Var, 0));
        c = xo2.URL;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        Object obj2 = list.get(1);
        obj2.getClass();
        String str = (String) obj2;
        Object obj3 = yo2Var.a.get((String) obj);
        String str2 = obj3 instanceof q46 ? ((q46) obj3).a : null;
        if (str2 != null) {
            return new q46(str2);
        }
        String strB = gi.b(str);
        if (strB != null) {
            return new q46(strB);
        }
        wo2.a("getUrlValue", "Unable to convert value to Url.", list);
        throw null;
    }

    @Override // yads.u13
    public final String c() {
        return "getUrlValue";
    }

    @Override // yads.u13
    public final xo2 d() {
        return c;
    }

    @Override // yads.u13
    public final boolean e() {
        return false;
    }

    @Override // yads.u13
    public final List a() {
        return b;
    }
}
