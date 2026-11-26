package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class xi extends vi {
    public xi() {
        super(xo2.NUMBER);
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objA = gi.a(c(), list);
        Number number = objA instanceof Number ? (Number) objA : null;
        return number != null ? Double.valueOf(number.doubleValue()) : list.get(2);
    }
}
