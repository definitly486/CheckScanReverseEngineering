package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class c30 extends u13 {
    public static final c30 a = new c30();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.NUMBER;
        b = u96.i(new w13(xo2Var, 0), new w13(xo2Var, 0), new w13(xo2Var, 0));
        c = xo2.COLOR;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        try {
            Object obj = list.get(0);
            obj.getClass();
            int iA = u20.a(((Double) obj).doubleValue());
            Object obj2 = list.get(1);
            obj2.getClass();
            int iA2 = u20.a(((Double) obj2).doubleValue());
            Object obj3 = list.get(2);
            obj3.getClass();
            return new l20((iA << 16) | (-16777216) | (iA2 << 8) | u20.a(((Double) obj3).doubleValue()));
        } catch (IllegalArgumentException unused) {
            wo2.a("rgb", "Value out of range 0..1.", list);
            throw null;
        }
    }

    @Override // yads.u13
    public final String c() {
        return "rgb";
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
