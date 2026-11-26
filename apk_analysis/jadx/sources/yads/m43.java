package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class m43 extends u13 {
    public static final m43 a = new m43();
    public static final List b = u96.h(new w13(xo2.DATETIME, 0));
    public static final xo2 c = xo2.INTEGER;
    public static final boolean d = true;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        return Long.valueOf(gd0.a((fd0) obj).get(11));
    }

    @Override // yads.u13
    public final String c() {
        return "getHours";
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
