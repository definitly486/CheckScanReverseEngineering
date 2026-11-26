package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class pb extends u13 {
    public static final pb a = new pb();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.DATETIME;
        b = u96.i(new w13(xo2Var, 0), new w13(xo2.INTEGER, 0));
        c = xo2Var;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        fd0 fd0Var = (fd0) obj;
        Object obj2 = list.get(1);
        obj2.getClass();
        return new fd0(fd0Var.b + ((Long) obj2).longValue(), fd0Var.c);
    }

    @Override // yads.u13
    public final String c() {
        return "addMillis";
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
