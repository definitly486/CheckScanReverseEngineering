package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ro0 extends u13 {
    public final List a;
    public final xo2 b;

    public ro0() {
        xo2 xo2Var = xo2.NUMBER;
        this.a = u96.i(new w13(xo2Var, 0), new w13(xo2.DICT, 0), new w13(xo2.STRING));
        this.b = xo2Var;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        Double d = (Double) obj;
        Object objA = jo0.a(list, (Object) d, false);
        Number number = objA instanceof Number ? (Number) objA : null;
        return number != null ? Double.valueOf(number.doubleValue()) : d;
    }

    @Override // yads.u13
    public final xo2 d() {
        return this.b;
    }

    @Override // yads.u13
    public final boolean e() {
        return false;
    }

    @Override // yads.u13
    public final List a() {
        return this.a;
    }
}
