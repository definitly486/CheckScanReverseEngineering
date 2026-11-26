package yads;

import defpackage.u96;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
public final class cj extends u13 {
    public static final cj a = new cj();
    public static final List b = u96.h(new w13(xo2.ARRAY, 0));
    public static final xo2 c = xo2.STRING;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objT = defpackage.qn1.T(list);
        objT.getClass();
        return ((JSONArray) objT).toString();
    }

    @Override // yads.u13
    public final String c() {
        return "toString";
    }

    @Override // yads.u13
    public final xo2 d() {
        return c;
    }

    @Override // yads.u13
    public final boolean e() {
        return false;
    }

    @Override // yads.u13
    public final List a() {
        return b;
    }
}
