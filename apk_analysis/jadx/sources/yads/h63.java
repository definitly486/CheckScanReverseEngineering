package yads;

import defpackage.id9;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class h63 extends u13 {
    public static final h63 a = new h63();
    public static final List b;
    public static final xo2 c;

    static {
        w13 w13Var = new w13(xo2.STRING, 0);
        xo2 xo2Var = xo2.BOOLEAN;
        b = u96.i(w13Var, new w13(xo2Var, 0));
        c = xo2Var;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        Object obj2 = list.get(1);
        obj2.getClass();
        Boolean bool = (Boolean) obj2;
        Object objA = ((id9) yo2Var.b).a((String) obj);
        Boolean bool2 = objA instanceof Boolean ? (Boolean) objA : null;
        return bool2 == null ? bool : bool2;
    }

    @Override // yads.u13
    public final String c() {
        return "getStoredBooleanValue";
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
