package yads;

import defpackage.u96;
import java.util.List;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes6.dex */
public final class ss4 extends u13 {
    public static final ss4 a = new ss4();
    public static final List b = u96.h(new w13(xo2.INTEGER, 0));
    public static final xo2 c = xo2.DATETIME;
    public static final boolean d = true;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objT = defpackage.qn1.T(list);
        objT.getClass();
        return new fd0(((Long) objT).longValue() * 1000, TimeZone.getTimeZone("UTC"));
    }

    @Override // yads.u13
    public final String c() {
        return "parseUnixTime";
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
