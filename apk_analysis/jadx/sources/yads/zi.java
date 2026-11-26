package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class zi extends vi {
    public final List c;

    public zi() {
        super(xo2.URL);
        this.c = u96.i(new w13(xo2.ARRAY, 0), new w13(xo2.INTEGER, 0), new w13(xo2.STRING, 0));
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objA = gi.a(c(), list);
        String strB = gi.b(objA instanceof String ? (String) objA : null);
        if (strB != null) {
            return new q46(strB);
        }
        Object obj = list.get(2);
        obj.getClass();
        String strB2 = gi.b((String) obj);
        if (strB2 != null) {
            return new q46(strB2);
        }
        gi.a(c(), "Unable to convert value to Url.", list);
        throw null;
    }

    @Override // yads.vi, yads.u13
    public final List a() {
        return this.c;
    }
}
