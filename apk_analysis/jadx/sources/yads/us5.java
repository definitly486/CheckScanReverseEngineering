package yads;

import defpackage.ra8;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class us5 extends u13 {
    public static final us5 a = new us5();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.STRING;
        b = u96.i(new w13(xo2Var, 0), new w13(xo2Var, 0), new w13(xo2Var, 0));
        c = xo2Var;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        String str = (String) obj;
        Object obj2 = list.get(1);
        obj2.getClass();
        String str2 = (String) obj2;
        Object obj3 = list.get(2);
        obj3.getClass();
        return str2.length() == 0 ? str : ra8.y(str, str2, (String) obj3);
    }

    @Override // yads.u13
    public final String c() {
        return "replaceAll";
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
