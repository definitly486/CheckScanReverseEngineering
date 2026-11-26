package yads;

import defpackage.id9;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class q63 extends u13 {
    public static final q63 a = new q63();
    public static final List b;
    public static final xo2 c;

    static {
        w13 w13Var = new w13(xo2.STRING, 0);
        xo2 xo2Var = xo2.URL;
        b = u96.i(w13Var, new w13(xo2Var, 0));
        c = xo2Var;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        Object objA = ((id9) yo2Var.b).a((String) obj);
        String str = objA instanceof q46 ? ((q46) objA).a : null;
        if (str != null) {
            return new q46(str);
        }
        Object obj2 = list.get(1);
        obj2.getClass();
        return (q46) obj2;
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
