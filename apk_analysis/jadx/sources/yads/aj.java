package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class aj extends vi {
    public aj() {
        super(xo2.URL);
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objA = gi.a(c(), list);
        String strB = gi.b(objA instanceof String ? (String) objA : null);
        return strB != null ? new q46(strB) : list.get(2);
    }
}
