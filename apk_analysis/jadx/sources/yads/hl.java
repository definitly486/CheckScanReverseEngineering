package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class hl extends u13 {
    public static final hl a = new hl();
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
        Object obj = list.get(0);
        obj.getClass();
        double dDoubleValue = ((Double) obj).doubleValue();
        Object obj2 = list.get(1);
        obj2.getClass();
        return Double.valueOf(Math.atan2(dDoubleValue, ((Double) obj2).doubleValue()));
    }

    @Override // yads.u13
    public final String c() {
        return "atan2";
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
