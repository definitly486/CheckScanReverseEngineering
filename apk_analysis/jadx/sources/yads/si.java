package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class si extends vi {
    public si() {
        super(xo2.BOOLEAN);
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objA = gi.a(c(), list);
        Boolean bool = objA instanceof Boolean ? (Boolean) objA : null;
        return bool == null ? list.get(2) : bool;
    }
}
