package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class bt5 extends u13 {
    public static final bt5 a = new bt5();
    public static final List b = u96.h(new w13(xo2.STRING, 0));
    public static final xo2 c = xo2.NUMBER;
    public static final boolean d = true;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objT = defpackage.qn1.T(list);
        objT.getClass();
        try {
            double d2 = Double.parseDouble((String) objT);
            if (d2 != Double.POSITIVE_INFINITY && d2 != Double.NEGATIVE_INFINITY) {
                return Double.valueOf(d2);
            }
            wo2.a("toNumber", "Unable to convert value to Number.", list);
            throw null;
        } catch (NumberFormatException e) {
            wo2.a(wo2.a("toNumber", list), "Unable to convert value to Number.", e);
            throw null;
        }
    }

    @Override // yads.u13
    public final String c() {
        return "toNumber";
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
