package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class pj extends u13 {
    public static final pj a = new pj();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.NUMBER;
        b = u96.h(new w13(xo2Var, 0));
        c = xo2Var;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objT = defpackage.qn1.T(list);
        objT.getClass();
        double dDoubleValue = ((Double) objT).doubleValue();
        double dAsin = Math.asin(dDoubleValue);
        if (!Double.isNaN(dAsin) && Math.abs(dAsin) <= 1.0E10d) {
            return Double.valueOf(dAsin);
        }
        e26.a("asin", dDoubleValue);
        throw null;
    }

    @Override // yads.u13
    public final String c() {
        return "asin";
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
