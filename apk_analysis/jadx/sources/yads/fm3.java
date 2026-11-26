package yads;

import defpackage.u96;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class fm3 extends u13 {
    public static final fm3 a = new fm3();
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
        Long l = 0L;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Object objA = zo2.a(az5.a, Long.valueOf(l.longValue()), it.next());
            objA.getClass();
            l = (Long) objA;
        }
        return l;
    }

    @Override // yads.u13
    public final String c() {
        return "sum";
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
