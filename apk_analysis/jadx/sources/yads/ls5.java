package yads;

import defpackage.ta8;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ls5 extends u13 {
    public static final ls5 a = new ls5();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.STRING;
        b = u96.i(new w13(xo2Var, 0), new w13(xo2Var, 0));
        c = xo2.BOOLEAN;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        Object obj2 = list.get(1);
        obj2.getClass();
        return Boolean.valueOf(ta8.D((String) obj, (String) obj2, false));
    }

    @Override // yads.u13
    public final String c() {
        return "contains";
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
