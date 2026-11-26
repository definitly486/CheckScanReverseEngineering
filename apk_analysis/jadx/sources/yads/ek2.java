package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ek2 extends u13 {
    public static final ek2 a = new ek2();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.NUMBER;
        b = u96.i(new w13(xo2Var, 0), new w13(xo2Var, 0));
        c = xo2Var;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objT = defpackage.qn1.T(list);
        objT.getClass();
        double dDoubleValue = ((Double) objT).doubleValue();
        Object objB0 = defpackage.qn1.b0(list);
        objB0.getClass();
        double dDoubleValue2 = ((Double) objB0).doubleValue();
        if (dDoubleValue2 != 0.0d) {
            return Double.valueOf(dDoubleValue % dDoubleValue2);
        }
        wo2.a("mod", "Division by zero is not supported.", list);
        throw null;
    }

    @Override // yads.u13
    public final String c() {
        return "mod";
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
