package yads;

import defpackage.k57;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class t20 extends u13 {
    public final List a = u96.i(new w13(xo2.DICT, 0), new w13(xo2.STRING));
    public final xo2 b = xo2.COLOR;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object aVar;
        Object objA = jo0.a(c(), list, f());
        if (!(objA instanceof String)) {
            jo0.a(c(), list, this.b, objA, f());
            throw null;
        }
        try {
            aVar = new l20(k20.a((String) objA));
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) == null) {
            return aVar;
        }
        gi.a("dict", c(), list, "Unable to convert value to Color, expected format #AARRGGBB.", false);
        throw null;
    }

    @Override // yads.u13
    public final xo2 d() {
        return this.b;
    }

    @Override // yads.u13
    public final boolean e() {
        return false;
    }

    public boolean f() {
        return false;
    }

    @Override // yads.u13
    public final List a() {
        return this.a;
    }
}
