package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class bj extends fi {
    public bj() {
        super(xo2.STRING);
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objB = gi.b(c(), list, f());
        String str = objB instanceof String ? (String) objB : null;
        if (str != null) {
            return str;
        }
        gi.a(c(), list, this.a, objB, f());
        throw null;
    }
}
