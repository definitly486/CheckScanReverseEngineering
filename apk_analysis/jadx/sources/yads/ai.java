package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ai extends fi {
    public ai() {
        super(xo2.BOOLEAN);
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objB = gi.b(c(), list, f());
        Boolean bool = objB instanceof Boolean ? (Boolean) objB : null;
        if (bool != null) {
            return bool;
        }
        gi.a(c(), list, this.a, objB, f());
        throw null;
    }
}
