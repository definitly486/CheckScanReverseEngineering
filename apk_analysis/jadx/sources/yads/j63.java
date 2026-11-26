package yads;

import defpackage.id9;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class j63 extends u13 {
    public static final j63 a = new j63();
    public static final List b;
    public static final xo2 c;

    static {
        xo2 xo2Var = xo2.STRING;
        b = u96.i(new w13(xo2Var, 0), new w13(xo2Var, 0));
        c = xo2.COLOR;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        Object obj2 = list.get(1);
        obj2.getClass();
        int iA = k20.a((String) obj2);
        Object objA = ((id9) yo2Var.b).a((String) obj);
        l20 l20Var = objA instanceof l20 ? (l20) objA : null;
        return l20Var == null ? new l20(iA) : l20Var;
    }

    @Override // yads.u13
    public final String c() {
        return "getStoredColorValue";
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
