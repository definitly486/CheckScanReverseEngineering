package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class z43 extends u13 {
    public static final z43 a = new z43();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.INTEGER;
        b = u96.h(new w13(xo2Var, 0));
        c = xo2Var;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        long jLongValue = ((Long) obj).longValue();
        if (jLongValue >= 0) {
            return Long.valueOf(((((jLongValue / 1000) / 60) / 60) / 24) / 7);
        }
        defpackage.qg.h("Failed to evaluate [getIntervalTotalWeeks(-1)]. Expecting non-negative number of milliseconds.");
        return null;
    }

    @Override // yads.u13
    public final String c() {
        return "getIntervalTotalWeeks";
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
