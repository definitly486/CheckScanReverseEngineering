package yads;

import defpackage.k57;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ti extends vi {
    public ti() {
        super(xo2.COLOR);
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object aVar;
        Object objA = gi.a(c(), list);
        Object obj = null;
        l20 l20Var = objA instanceof l20 ? (l20) objA : null;
        if (l20Var != null) {
            return l20Var;
        }
        String str = objA instanceof String ? (String) objA : null;
        if (str != null) {
            try {
                aVar = new l20(k20.a(str));
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            obj = (l20) (aVar instanceof k57.a ? null : aVar);
        }
        return obj == null ? list.get(2) : obj;
    }
}
