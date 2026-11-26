package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class uo0 extends u13 {
    public final List a;
    public final xo2 b;

    public uo0() {
        xo2 xo2Var = xo2.URL;
        this.a = u96.i(new w13(xo2Var, 0), new w13(xo2.DICT, 0), new w13(xo2.STRING));
        this.b = xo2Var;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        String strB;
        Object obj = list.get(0);
        obj.getClass();
        String str = ((q46) obj).a;
        Object objA = jo0.a(list, (Object) new q46(str), false);
        String str2 = objA instanceof String ? (String) objA : null;
        return (str2 == null || (strB = gi.b(str2)) == null) ? new q46(str) : new q46(strB);
    }

    @Override // yads.u13
    public final xo2 d() {
        return this.b;
    }

    @Override // yads.u13
    public final boolean e() {
        return false;
    }

    @Override // yads.u13
    public final List a() {
        return this.a;
    }
}
