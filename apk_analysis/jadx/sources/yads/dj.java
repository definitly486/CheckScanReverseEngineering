package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class dj extends fi {
    public dj() {
        super(xo2.URL);
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        String strB;
        Object objB = gi.b(c(), list, f());
        String str = objB instanceof String ? (String) objB : null;
        if (str != null && (strB = gi.b(str)) != null) {
            return new q46(strB);
        }
        gi.a(c(), list, this.a, objB, f());
        throw null;
    }
}
