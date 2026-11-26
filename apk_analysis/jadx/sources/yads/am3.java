package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class am3 extends u13 {
    public static final am3 a = new am3();
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
        int i = 0;
        for (Object objA : list) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            long jLongValue = l.longValue();
            if (i != 0) {
                objA = zo2.a(ty5.a, Long.valueOf(jLongValue), objA);
            }
            objA.getClass();
            l = (Long) objA;
            i = i2;
        }
        return l;
    }

    @Override // yads.u13
    public final String c() {
        return "mul";
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
