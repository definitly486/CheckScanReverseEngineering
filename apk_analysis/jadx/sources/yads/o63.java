package yads;

import defpackage.id9;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class o63 extends u13 {
    public static final o63 a = new o63();
    public static final List b;
    public static final xo2 c;

    static {
        xo2 xo2Var = xo2.STRING;
        b = u96.i(new w13(xo2Var, 0), new w13(xo2Var, 0));
        c = xo2Var;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        Object obj2 = list.get(1);
        obj2.getClass();
        String str = (String) obj2;
        Object objA = ((id9) yo2Var.b).a((String) obj);
        String str2 = objA instanceof String ? (String) objA : null;
        return str2 == null ? str : str2;
    }

    @Override // yads.u13
    public final String c() {
        return "getStoredStringValue";
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
