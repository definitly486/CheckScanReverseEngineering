package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class sl3 extends u13 {
    public static final sl3 a = new sl3();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.INTEGER;
        b = u96.i(new w13(xo2Var, 0), new w13(xo2Var, 0));
        c = xo2Var;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objT = defpackage.qn1.T(list);
        objT.getClass();
        Long l = (Long) objT;
        long jLongValue = l.longValue();
        Object objB0 = defpackage.qn1.b0(list);
        objB0.getClass();
        int iSignum = Long.signum(((Long) objB0).longValue());
        if (iSignum != 0) {
            if (jLongValue != Long.MIN_VALUE) {
                return Long.valueOf(Math.abs(jLongValue) * ((long) iSignum));
            }
            if (iSignum != -1) {
                wo2.a("copySign", "Integer overflow.", list);
                throw null;
            }
        }
        return l;
    }

    @Override // yads.u13
    public final String c() {
        return "copySign";
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
