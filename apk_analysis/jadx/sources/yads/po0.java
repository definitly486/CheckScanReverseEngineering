package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class po0 extends u13 {
    public final List a;
    public final xo2 b;

    public po0() {
        xo2 xo2Var = xo2.STRING;
        this.a = u96.i(new w13(xo2Var, 0), new w13(xo2.DICT, 0), new w13(xo2Var));
        this.b = xo2.COLOR;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        String str = (String) obj;
        Object objA = jo0.a(list, (Object) str, false);
        l20 l20VarA = gi.a(objA instanceof String ? (String) objA : null);
        if (l20VarA != null) {
            return l20VarA;
        }
        l20 l20VarA2 = gi.a(str);
        if (l20VarA2 != null) {
            return l20VarA2;
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

    @Override // yads.u13
    public final List a() {
        return this.a;
    }
}
