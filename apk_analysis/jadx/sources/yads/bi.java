package yads;

import defpackage.k57;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class bi extends fi {
    public bi() {
        super(xo2.COLOR);
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object aVar;
        Object objB = gi.b(c(), list, f());
        if (objB instanceof l20) {
            return objB;
        }
        if (!(objB instanceof String)) {
            gi.a(c(), list, this.a, objB, f());
            throw null;
        }
        try {
            aVar = new l20(k20.a((String) objB));
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) == null) {
            return aVar;
        }
        gi.a(c(), "Unable to convert value to Color, expected format #AARRGGBB.", list);
        throw null;
    }
}
