package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class hm3 extends u13 {
    public static final hm3 a = new hm3();
    public static final List b = u96.h(new w13(xo2.INTEGER, 0));
    public static final xo2 c = xo2.NUMBER;
    public static final boolean d = true;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objT = defpackage.qn1.T(list);
        objT.getClass();
        return Double.valueOf(((Long) objT).longValue());
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
