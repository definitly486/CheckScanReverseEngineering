package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class mo0 extends u13 {
    public final List a = u96.i(new w13(xo2.DICT, 0), new w13(xo2.STRING));
    public final xo2 b = xo2.NUMBER;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objA = jo0.a(c(), list, f());
        Number number = objA instanceof Number ? (Number) objA : null;
        if (number != null) {
            return Double.valueOf(number.doubleValue());
        }
        jo0.a(c(), list, this.b, objA, f());
        throw null;
    }

    @Override // yads.u13
    public final xo2 d() {
        return this.b;
    }

    @Override // yads.u13
    public final boolean e() {
        return false;
    }

    public boolean f() {
        return false;
    }

    @Override // yads.u13
    public final List a() {
        return this.a;
    }
}
