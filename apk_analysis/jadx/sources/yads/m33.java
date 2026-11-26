package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class m33 extends u13 {
    public static final m33 a = new m33();
    public static final List b;
    public static final xo2 c;

    static {
        w13 w13Var = new w13(xo2.STRING, 0);
        xo2 xo2Var = xo2.COLOR;
        b = u96.i(w13Var, new w13(xo2Var, 0));
        c = xo2Var;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        Object obj2 = list.get(1);
        obj2.getClass();
        int i = ((l20) obj2).a;
        Object obj3 = yo2Var.a.get((String) obj);
        l20 l20Var = obj3 instanceof l20 ? (l20) obj3 : null;
        return l20Var == null ? new l20(i) : l20Var;
    }

    @Override // yads.u13
    public final String c() {
        return "getColorValue";
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
