package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class xl3 extends u13 {
    public static final xl3 a = new xl3();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.INTEGER;
        b = u96.h(new w13(xo2Var));
        c = xo2Var;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        if (list.isEmpty()) {
            wo2.a("min", "Function requires non empty argument list.", list);
            throw null;
        }
        Long lValueOf = Long.MAX_VALUE;
        for (Object obj : list) {
            long jLongValue = lValueOf.longValue();
            obj.getClass();
            lValueOf = Long.valueOf(Math.min(jLongValue, ((Long) obj).longValue()));
        }
        return lValueOf;
    }

    @Override // yads.u13
    public final String c() {
        return "min";
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
