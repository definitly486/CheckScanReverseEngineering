package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class wi extends vi {
    public wi() {
        super(xo2.INTEGER);
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objA = gi.a(c(), list);
        if (objA instanceof Integer) {
            return Long.valueOf(((Number) objA).intValue());
        }
        return objA instanceof Long ? objA : list.get(2);
    }
}
