package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class yi extends vi {
    public yi() {
        super(xo2.STRING);
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objA = gi.a(c(), list);
        String str = objA instanceof String ? (String) objA : null;
        return str == null ? list.get(2) : str;
    }
}
