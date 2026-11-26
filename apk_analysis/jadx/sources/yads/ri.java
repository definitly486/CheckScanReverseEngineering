package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ri extends fi {
    public ri() {
        super(xo2.NUMBER);
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objB = gi.b(c(), list, f());
        Number number = objB instanceof Number ? (Number) objB : null;
        if (number != null) {
            return Double.valueOf(number.doubleValue());
        }
        gi.a(c(), list, this.a, objB, f());
        throw null;
    }
}
