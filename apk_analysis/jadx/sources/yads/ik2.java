package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ik2 extends u13 {
    public static final ik2 a = new ik2();
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
        int i = 0;
        for (Object objA : list) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            double dDoubleValue = dValueOf.doubleValue();
            if (i != 0) {
                objA = zo2.a(zy5.a, Double.valueOf(dDoubleValue), objA);
            }
            objA.getClass();
            dValueOf = (Double) objA;
            i = i2;
        }
        return dValueOf;
    }

    @Override // yads.u13
    public final String c() {
        return "sub";
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
