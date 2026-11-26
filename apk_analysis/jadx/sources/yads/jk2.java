package yads;

import defpackage.u96;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class jk2 extends u13 {
    public static final jk2 a = new jk2();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.NUMBER;
        b = u96.h(new w13(xo2Var));
        c = xo2Var;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Double dValueOf = Double.valueOf(0.0d);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Object objA = zo2.a(az5.a, Double.valueOf(dValueOf.doubleValue()), it.next());
            objA.getClass();
            dValueOf = (Double) objA;
        }
        return dValueOf;
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
