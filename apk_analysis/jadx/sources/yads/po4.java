package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class po4 extends u13 {
    public static final po4 a = new po4();
    public static final List b = u96.h(new w13(xo2.NUMBER, 0));
    public static final xo2 c = xo2.INTEGER;
    public static final boolean d = true;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objT = defpackage.qn1.T(list);
        objT.getClass();
        double dDoubleValue = ((Double) objT).doubleValue();
        if (dDoubleValue >= -9.223372036854776E18d && dDoubleValue <= 9.223372036854776E18d) {
            return Long.valueOf((long) dDoubleValue);
        }
        wo2.a("toInteger", "Unable to convert value to Integer.", list);
        throw null;
    }

    @Override // yads.u13
    public final String c() {
        return "toInteger";
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
