package yads;

import defpackage.id9;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class p63 extends u13 {
    public static final p63 a = new p63();
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
        Object objA = ((id9) yo2Var.b).a((String) obj);
        String str2 = objA instanceof q46 ? ((q46) objA).a : null;
        if (str2 != null) {
            return new q46(str2);
        }
        String strB = gi.b(str);
        if (strB != null) {
            return new q46(strB);
        }
        wo2.a("getStoredUrlValue", "Unable to convert value to Url.", list);
        throw null;
    }

    @Override // yads.u13
    public final String c() {
        return "getStoredUrlValue";
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
