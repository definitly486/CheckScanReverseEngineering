package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class wr4 extends u13 {
    public static final wr4 a = new wr4();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.INTEGER;
        w13 w13Var = new w13(xo2Var, 0);
        w13 w13Var2 = new w13(xo2Var, 0);
        xo2 xo2Var2 = xo2.STRING;
        b = u96.i(w13Var, w13Var2, new w13(xo2Var2, 0));
        c = xo2Var2;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        String strValueOf = String.valueOf(((Long) obj).longValue());
        Object obj2 = list.get(1);
        obj2.getClass();
        long jLongValue = ((Long) obj2).longValue();
        Object obj3 = list.get(2);
        obj3.getClass();
        return defpackage.bj.c(strValueOf, qs5.a(yo2Var, uo2Var, (int) (jLongValue - ((long) strValueOf.length())), (String) obj3));
    }

    @Override // yads.u13
    public final String c() {
        return "padEnd";
    }

    @Override // yads.u13
    public final xo2 d() {
        return c;
    }

    @Override // yads.u13
    public final boolean e() {
        return d;
    }

    @Override // yads.u13
    public final List a() {
        return b;
    }
}
