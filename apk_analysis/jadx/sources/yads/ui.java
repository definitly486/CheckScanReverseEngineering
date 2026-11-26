package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ui extends vi {
    public final List c;

    public ui() {
        super(xo2.COLOR);
        this.c = u96.i(new w13(xo2.ARRAY, 0), new w13(xo2.INTEGER, 0), new w13(xo2.STRING, 0));
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objA = gi.a(c(), list);
        l20 l20VarA = gi.a(objA instanceof String ? (String) objA : null);
        if (l20VarA != null) {
            return l20VarA;
        }
        Object obj = list.get(2);
        obj.getClass();
        l20 l20VarA2 = gi.a((String) obj);
        if (l20VarA2 != null) {
            return l20VarA2;
        }
        gi.a(c(), "Unable to convert value to Color, expected format #AARRGGBB.", list);
        throw null;
    }

    @Override // yads.vi, yads.u13
    public final List a() {
        return this.c;
    }
}
