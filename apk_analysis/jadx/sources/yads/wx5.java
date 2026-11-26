package yads;

import defpackage.u96;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class wx5 extends u13 {
    public static final wx5 a = new wx5();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.STRING;
        b = u96.h(new w13(xo2Var, 0));
        c = xo2Var;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        String lowerCase = ((String) obj).toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return lowerCase;
    }

    @Override // yads.u13
    public final String c() {
        return "toLowerCase";
    }

    @Override // yads.u13
    public final xo2 d() {
        return c;
    }

    @Override // yads.u13
    public final boolean e() {
        return d;
    }

    @Override // yads.u13
    public final List a() {
        return b;
    }
}
