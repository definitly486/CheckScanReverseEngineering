package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class xs5 extends u13 {
    public static final xs5 a = new xs5();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.STRING;
        w13 w13Var = new w13(xo2Var, 0);
        xo2 xo2Var2 = xo2.INTEGER;
        b = u96.i(w13Var, new w13(xo2Var2, 0), new w13(xo2Var2, 0));
        c = xo2Var;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        String str = (String) obj;
        Object obj2 = list.get(1);
        obj2.getClass();
        long jLongValue = ((Long) obj2).longValue();
        Object obj3 = list.get(2);
        obj3.getClass();
        long jLongValue2 = ((Long) obj3).longValue();
        if (jLongValue < 0 || jLongValue2 > str.length()) {
            wo2.a("substring", "Indexes are out of bounds.", list);
            throw null;
        }
        if (jLongValue <= jLongValue2) {
            return str.substring((int) jLongValue, (int) jLongValue2);
        }
        wo2.a("substring", "Indexes should be in ascending order.", list);
        throw null;
    }

    @Override // yads.u13
    public final String c() {
        return "substring";
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
