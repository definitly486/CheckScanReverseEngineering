package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class oo0 extends u13 {
    public final List a;
    public final xo2 b;

    public oo0() {
        xo2 xo2Var = xo2.COLOR;
        this.a = u96.i(new w13(xo2Var, 0), new w13(xo2.DICT, 0), new w13(xo2.STRING));
        this.b = xo2Var;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        int i = ((l20) obj).a;
        Object objA = jo0.a(list, (Object) new l20(i), false);
        l20 l20VarA = gi.a(objA instanceof String ? (String) objA : null);
        return l20VarA == null ? new l20(i) : l20VarA;
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
